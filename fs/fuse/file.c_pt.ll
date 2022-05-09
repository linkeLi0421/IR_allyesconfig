; ModuleID = '/llk/IR_all_yes/fs/fuse/file.c_pt.bc'
source_filename = "../fs/fuse/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fuse_do_open\22, \22a\22\09"
module asm "\09.weak\09__crc_fuse_do_open\09\09\09\09"
module asm "\09.long\09__crc_fuse_do_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fuse_do_open:\09\09\09\09\09"
module asm "\09.asciz \09\22fuse_do_open\22\09\09\09\09\09"
module asm "__kstrtabns_fuse_do_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fuse_sync_release\22, \22a\22\09"
module asm "\09.weak\09__crc_fuse_sync_release\09\09\09\09"
module asm "\09.long\09__crc_fuse_sync_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fuse_sync_release:\09\09\09\09\09"
module asm "\09.asciz \09\22fuse_sync_release\22\09\09\09\09\09"
module asm "__kstrtabns_fuse_sync_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fuse_direct_io\22, \22a\22\09"
module asm "\09.weak\09__crc_fuse_direct_io\09\09\09\09"
module asm "\09.long\09__crc_fuse_direct_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fuse_direct_io:\09\09\09\09\09"
module asm "\09.asciz \09\22fuse_direct_io\22\09\09\09\09\09"
module asm "__kstrtabns_fuse_direct_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fuse_file_poll\22, \22a\22\09"
module asm "\09.weak\09__crc_fuse_file_poll\09\09\09\09"
module asm "\09.long\09__crc_fuse_file_poll\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fuse_file_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22fuse_file_poll\22\09\09\09\09\09"
module asm "__kstrtabns_fuse_file_poll:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fuse_file = type { ptr, ptr, i64, i64, i64, %struct.refcount_struct, i32, %struct.list_head, %struct.anon.82, %struct.rb_node, %struct.wait_queue_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.82 = type { %struct.mutex, i64, i64, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.rb_root = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fuse_open_in = type { i32, i32 }
%struct.fuse_args = type { i64, i32, i16, i16, i16, [3 x %struct.fuse_in_arg], [2 x %struct.fuse_arg], ptr }
%struct.fuse_in_arg = type { i32, ptr }
%struct.fuse_arg = type { i32, ptr }
%struct.fuse_open_out = type { i64, i32, i32 }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.81 = type { ptr }
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
%struct.fuse_inode = type { %struct.inode, i64, i64, ptr, i64, i32, i16, i64, i64, %union.anon.85, i32, %struct.mutex, %struct.spinlock }
%union.anon.85 = type { %struct.anon.87 }
%struct.anon.87 = type { i8, i64, i64, i64, %struct.timespec64, i64, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fuse_release_args = type { %struct.fuse_args, %struct.fuse_release_in, ptr }
%struct.fuse_release_in = type { i64, i32, i32, i64 }
%struct.fuse_fsync_in = type { i64, i32, i32 }
%struct.fuse_io_args = type { %union.anon.88, %struct.fuse_args_pages, ptr, ptr }
%union.anon.88 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.fuse_write_in, %struct.fuse_write_out, i8 }
%struct.fuse_write_in = type { i64, i64, i32, i32, i64, i32, i32 }
%struct.fuse_write_out = type { i32, i32 }
%struct.fuse_args_pages = type { %struct.fuse_args, ptr, ptr, i32 }
%struct.fuse_read_in = type { i64, i64, i32, i32, i64, i32, i32 }
%struct.fuse_io_priv = type { %struct.kref, i32, %struct.spinlock, i32, i32, i32, i64, i8, i8, i32, ptr, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.34, %union.anon.35 }
%union.anon.34 = type { ptr }
%union.anon.35 = type { i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.fuse_page_desc = type { i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.page = type { i32, %union.anon.9, %union.anon.49, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.49 = type { %struct.atomic_t }
%struct.fuse_writepage_args = type { %struct.fuse_io_args, %struct.rb_node, %struct.list_head, ptr, ptr, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.fuse_poll_in = type { i64, i64, i32, i32 }
%struct.fuse_poll_out = type { i32, i32 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.anon.86 = type { %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, %struct.rb_root }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fuse_sync_bucket = type { %struct.atomic_t, %struct.wait_queue_head, %struct.callback_head }
%struct.fuse_lseek_in = type { i64, i64, i32, i32 }
%struct.fuse_lseek_out = type { i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.32, %struct.list_head, %struct.list_head, %union.anon.33 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.spinlock, i32 }
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.5, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.fuse_flush_in = type { i64, i32, i32, i64 }
%struct.fuse_lk_in = type { i64, i64, %struct.fuse_file_lock, i32, i32 }
%struct.fuse_file_lock = type { i64, i64, i32, i32 }
%struct.fuse_lk_out = type { %struct.fuse_file_lock }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.fuse_fallocate_in = type { i64, i64, i64, i32, i32 }
%struct.fuse_copy_file_range_in = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vm_fault = type { %struct.anon.7, i32, ptr, ptr, %union.anon.8, ptr, ptr, ptr, ptr, ptr }
%struct.anon.7 = type { ptr, i32, i32, i32 }
%union.anon.8 = type { i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fuse_fill_wb_data = type { ptr, ptr, ptr, ptr, i32 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.91, [64 x ptr], %union.anon.92 }
%union.anon.91 = type { %struct.list_head }
%union.anon.92 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.anon.89 = type { %struct.fuse_read_in, i64 }
%struct.fuse_bmap_in = type { i64, i32, i32 }
%struct.fuse_bmap_out = type { i64 }

@fuse_file_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ff->readdir.lock\00", [46 x i8] zeroinitializer }, align 32
@fuse_file_alloc.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ff->poll_wait\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_fuse_do_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_fuse_do_open = external dso_local constant [0 x i8], align 1
@__ksymtab_fuse_do_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fuse_do_open to i32), ptr @__kstrtab_fuse_do_open, ptr @__kstrtabns_fuse_do_open }, section "___ksymtab_gpl+fuse_do_open", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/fuse/file.c\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_fuse_sync_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_fuse_sync_release = external dso_local constant [0 x i8], align 1
@__ksymtab_fuse_sync_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fuse_sync_release to i32), ptr @__kstrtab_fuse_sync_release, ptr @__kstrtabns_fuse_sync_release }, section "___ksymtab_gpl+fuse_sync_release", align 4
@__kstrtab_fuse_direct_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_fuse_direct_io = external dso_local constant [0 x i8], align 1
@__ksymtab_fuse_direct_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fuse_direct_io to i32), ptr @__kstrtab_fuse_direct_io, ptr @__kstrtabns_fuse_direct_io }, section "___ksymtab_gpl+fuse_direct_io", align 4
@__kstrtab_fuse_file_poll = external dso_local constant [0 x i8], align 1
@__kstrtabns_fuse_file_poll = external dso_local constant [0 x i8], align 1
@__ksymtab_fuse_file_poll = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fuse_file_poll to i32), ptr @__kstrtab_fuse_file_poll, ptr @__kstrtabns_fuse_file_poll }, section "___ksymtab_gpl+fuse_file_poll", align 4
@fuse_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @fuse_file_llseek, ptr null, ptr null, ptr @fuse_file_read_iter, ptr @fuse_file_write_iter, ptr null, ptr null, ptr null, ptr @fuse_file_poll, ptr @fuse_file_ioctl, ptr @fuse_file_compat_ioctl, ptr @fuse_file_mmap, i32 0, ptr @fuse_open, ptr @fuse_flush, ptr @fuse_release, ptr @fuse_fsync, ptr null, ptr @fuse_file_lock, ptr null, ptr null, ptr null, ptr @fuse_file_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @fuse_file_fallocate, ptr null, ptr @fuse_copy_file_range, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fuse_file_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @fuse_writepage, ptr @fuse_readpage, ptr @fuse_writepages, ptr @__set_page_dirty_nobuffers, ptr null, ptr @fuse_readahead, ptr @fuse_write_begin, ptr @fuse_write_end, ptr @fuse_bmap, ptr null, ptr null, ptr null, ptr @fuse_direct_IO, ptr null, ptr null, ptr null, ptr @fuse_launder_page, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fuse_init_file_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&fi->page_waitq\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@fuse_direct_IO.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&io->lock\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@fuse_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr @fuse_vma_close, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @fuse_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@fuse_writepage_add_to_bucket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 1029]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 4294967201, i64 4294967278]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1026, i64 1030]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 74, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 77, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 350, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"fuse_file_operations\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 3139, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"fuse_file_aops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 3160, i32 46 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 3183, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 271, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 717, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 695, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 723, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 2841, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 87, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 260, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 678, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"fuse_file_vm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 2392, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 788, i32 2 }
@___asan_gen_.102 = private constant [18 x i8] c"../fs/fuse/file.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1891, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 1152, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1182, i32 9 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_fuse_direct_io, ptr @__ksymtab_fuse_do_open, ptr @__ksymtab_fuse_file_poll, ptr @__ksymtab_fuse_sync_release, ptr @fuse_file_alloc.__key, ptr @.str, ptr @fuse_file_alloc.__key.1, ptr @.str.2, ptr @.str.3, ptr @fuse_file_operations, ptr @fuse_file_aops, ptr @fuse_init_file_inode.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fuse_direct_IO.__key, ptr @.str.10, ptr @init_completion.__key, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @fuse_file_vm_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_file_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_file_alloc.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_file_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_init_file_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_direct_IO.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fuse_file_alloc(ptr noundef %fm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 4197824, i32 noundef 240) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !72

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fm, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 4197824, i32 noundef 96) #15
  %release_args = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %release_args to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i28, ptr %release_args, align 4
  %tobool7.not = icmp eq ptr %call7.i.i28, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %write_entry = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %write_entry to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %write_entry, ptr %write_entry, align 8
  %prev.i = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %write_entry, ptr %prev.i, align 4
  %readdir = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %readdir, ptr noundef nonnull @.str, ptr noundef nonnull @fuse_file_alloc.__key) #12
  %count = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %count, align 8
  %polled_node = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %polled_node to i32
  %8 = ptrtoint ptr %polled_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %polled_node, align 8
  %poll_wait = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %poll_wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @fuse_file_alloc.__key.1) #12
  %9 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fm, align 4
  %khctr = getelementptr inbounds %struct.fuse_conn, ptr %10, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %khctr, i32 noundef 8) #12
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %khctr) #12
  %kh = getelementptr inbounds %struct.fuse_file, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %kh to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i2.i, ptr %kh, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end9 ], [ null, %if.then8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_file_free(ptr noundef %ff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %release_args = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 1
  %0 = ptrtoint ptr %release_args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_args, align 4
  tail call void @kfree(ptr noundef %1) #12
  %readdir = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 8
  tail call void @mutex_destroy(ptr noundef %readdir) #12
  tail call void @kfree(ptr noundef %ff) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fuse_file_open(ptr noundef %fm, i64 noundef %nodeid, i32 noundef %open_flags, i1 noundef zeroext %isdir) local_unnamed_addr #0 align 64 {
entry:
  %inarg.i = alloca %struct.fuse_open_in, align 8
  %args.i = alloca %struct.fuse_args, align 8
  %outarg = alloca %struct.fuse_open_out, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm, align 4
  %cond = select i1 %isdir, i32 27, i32 14
  %call = tail call ptr @fuse_file_alloc(ptr noundef %fm)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %entry.cleanup45_crit_edge, label %if.end

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup45

if.end:                                           ; preds = %entry
  %fh = getelementptr inbounds %struct.fuse_file, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %fh to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %fh, align 8
  %or = select i1 %isdir, i32 10, i32 2
  %open_flags6 = getelementptr inbounds %struct.fuse_file, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %open_flags6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %open_flags6, align 4
  %no_opendir = getelementptr inbounds %struct.fuse_conn, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %no_opendir to i32
  call void @__asan_loadN_noabort(i32 %4, i32 7)
  %bf.load = load i56, ptr %no_opendir, align 1
  br i1 %isdir, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = and i56 %bf.load, 4398046511104
  %tobool8.not = icmp eq i56 %5, 0
  br i1 %tobool8.not, label %cond.true.if.then14_crit_edge, label %cond.true.if.then41_crit_edge

cond.true.if.then41_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

cond.true.if.then14_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

cond.false:                                       ; preds = %if.end
  %6 = and i56 %bf.load, 8796093022208
  %tobool13.not = icmp eq i56 %6, 0
  br i1 %tobool13.not, label %cond.false.if.then14_crit_edge, label %cond.false.if.end43_crit_edge

cond.false.if.end43_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

cond.false.if.then14_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then14:                                        ; preds = %cond.false.if.then14_crit_edge, %cond.true.if.then14_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %outarg) #12
  %7 = getelementptr inbounds %struct.fuse_open_out, ptr %outarg, i32 0, i32 1
  %8 = call ptr @memset(ptr %outarg, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inarg.i) #12
  %9 = getelementptr inbounds %struct.fuse_open_in, ptr %inarg.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #12
  %10 = getelementptr inbounds i8, ptr %args.i, i32 16
  %11 = call ptr @memset(ptr %10, i32 0, i32 48)
  %12 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %inarg.i, align 8
  %and.i = and i32 %open_flags, -449
  store i32 %and.i, ptr %inarg.i, align 8
  %13 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fm, align 4
  %atomic_o_trunc.i = getelementptr inbounds %struct.fuse_conn, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %atomic_o_trunc.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 7)
  %bf.load.i = load i56, ptr %atomic_o_trunc.i, align 1
  %16 = and i56 %bf.load.i, 2251799813685248
  %tobool.not.i = icmp eq i56 %16, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then14.if.end.i_crit_edge

if.then14.if.end.i_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %and2.i = and i32 %open_flags, -961
  %17 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and2.i, ptr %inarg.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then14.if.end.i_crit_edge
  %18 = and i56 %bf.load.i, 17592186044416
  %tobool8.not.i = icmp eq i56 %18, 0
  br i1 %tobool8.not.i, label %if.end.i.fuse_send_open.exit_crit_edge, label %land.lhs.true.i

if.end.i.fuse_send_open.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_send_open.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %19 = ptrtoint ptr %inarg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inarg.i, align 8
  %and10.i = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.fuse_send_open.exit_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.fuse_send_open.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_send_open.exit

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %call.i = tail call zeroext i1 @capable(i32 noundef 4) #12
  br i1 %call.i, label %land.lhs.true12.i.fuse_send_open.exit_crit_edge, label %if.then13.i

land.lhs.true12.i.fuse_send_open.exit_crit_edge:  ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_send_open.exit

if.then13.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %9, align 4
  %or.i = or i32 %22, 1
  store i32 %or.i, ptr %9, align 4
  br label %fuse_send_open.exit

fuse_send_open.exit:                              ; preds = %if.then13.i, %land.lhs.true12.i.fuse_send_open.exit_crit_edge, %land.lhs.true.i.fuse_send_open.exit_crit_edge, %if.end.i.fuse_send_open.exit_crit_edge
  %opcode16.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %23 = ptrtoint ptr %opcode16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %opcode16.i, align 8
  %24 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %nodeid, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %25 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %26 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %inarg.i, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 3
  %28 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6
  %29 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %out_args.i, align 4
  %value24.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 0, i32 1
  %30 = ptrtoint ptr %value24.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %outarg, ptr %value24.i, align 8
  %call25.i = call i32 @fuse_simple_request(ptr noundef %fm, ptr noundef nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inarg.i) #12
  %31 = zext i32 %call25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call25.i, label %cleanup [
    i32 0, label %if.end39
    i32 -38, label %if.else24
  ]

if.else24:                                        ; preds = %fuse_send_open.exit
  %no_opendir27 = getelementptr inbounds %struct.fuse_conn, ptr %1, i32 0, i32 26
  %32 = ptrtoint ptr %no_opendir27 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 7)
  %bf.load28 = load i56, ptr %no_opendir27, align 1
  br i1 %isdir, label %if.end39.thread, label %if.end39.thread73

if.end39.thread:                                  ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set = or i56 %bf.load28, 4398046511104
  %33 = ptrtoint ptr %no_opendir27 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 7)
  store i56 %bf.set, ptr %no_opendir27, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg) #12
  br label %if.then41

if.end39.thread73:                                ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set34 = or i56 %bf.load28, 8796093022208
  %34 = ptrtoint ptr %no_opendir27 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 7)
  store i56 %bf.set34, ptr %no_opendir27, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg) #12
  br label %if.end43

cleanup:                                          ; preds = %fuse_send_open.exit
  call void @__sanitizer_cov_trace_pc() #14
  %release_args.i = getelementptr inbounds %struct.fuse_file, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %release_args.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %release_args.i, align 4
  call void @kfree(ptr noundef %36) #12
  %readdir.i = getelementptr inbounds %struct.fuse_file, ptr %call, i32 0, i32 8
  call void @mutex_destroy(ptr noundef %readdir.i) #12
  call void @kfree(ptr noundef nonnull %call) #12
  %37 = inttoptr i32 %call25.i to ptr
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg) #12
  br label %cleanup45

if.end39:                                         ; preds = %fuse_send_open.exit
  %38 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %outarg, align 8
  %40 = ptrtoint ptr %fh to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %fh, align 8
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %7, align 8
  %43 = ptrtoint ptr %open_flags6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %open_flags6, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %outarg) #12
  br i1 %isdir, label %if.end39.if.then41_crit_edge, label %if.end39.if.end43_crit_edge

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end39.if.then41_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then41

if.then41:                                        ; preds = %if.end39.if.then41_crit_edge, %if.end39.thread, %cond.true.if.then41_crit_edge
  %44 = ptrtoint ptr %open_flags6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %open_flags6, align 4
  %and = and i32 %45, -2
  store i32 %and, ptr %open_flags6, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39.if.end43_crit_edge, %if.end39.thread73, %cond.false.if.end43_crit_edge
  %nodeid44 = getelementptr inbounds %struct.fuse_file, ptr %call, i32 0, i32 4
  %46 = ptrtoint ptr %nodeid44 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %nodeid, ptr %nodeid44, align 8
  br label %cleanup45

cleanup45:                                        ; preds = %if.end43, %cleanup, %entry.cleanup45_crit_edge
  %retval.1 = phi ptr [ %call, %if.end43 ], [ %37, %cleanup ], [ inttoptr (i32 -12 to ptr), %entry.cleanup45_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_do_open(ptr noundef %fm, i64 noundef %nodeid, ptr nocapture noundef %file, i1 noundef zeroext %isdir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_flags, align 4
  %call = tail call ptr @fuse_file_open(ptr noundef %fm, i64 noundef %nodeid, i32 noundef %1, i1 noundef zeroext %isdir)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %private_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i, i32 %3, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_finish_open(ptr noundef %inode, ptr noundef %file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %open_flags = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_flags, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #12
  br label %if.end7

if.else:                                          ; preds = %entry
  %and3 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else.if.end7_crit_edge, label %if.then5

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.else.if.end7_crit_edge, %if.then
  %atomic_o_trunc = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %10 = ptrtoint ptr %atomic_o_trunc to i32
  call void @__asan_loadN_noabort(i32 %10, i32 7)
  %bf.load = load i56, ptr %atomic_o_trunc, align 1
  %11 = and i56 %bf.load, 2251799813685248
  %tobool8.not = icmp eq i56 %11, 0
  br i1 %tobool8.not, label %if.end7.if.else17_crit_edge, label %land.lhs.true

if.end7.if.else17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17

land.lhs.true:                                    ; preds = %if.end7
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %12 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f_flags, align 4
  %and9 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.else17_crit_edge, label %if.then11

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else17

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %attr_version = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_version, i32 noundef 8) #12
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %attr_version) #12
  %attr_version14 = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %attr_version14 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i2.i, ptr %attr_version14, align 8
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef 0)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @truncate_pagecache(ptr noundef %inode, i64 noundef 0) #12
  %call16 = tail call i32 @file_update_time(ptr noundef %file) #12
  tail call void @fuse_invalidate_attr_mask(ptr noundef %inode, i32 noundef 1728) #12
  br label %if.end24

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %if.end7.if.else17_crit_edge
  %15 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %open_flags, align 4
  %and19 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then21, label %if.else17.if.end24_crit_edge

if.else17.if.end24_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %call22 = tail call i32 @invalidate_inode_pages2(ptr noundef %18) #12
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else17.if.end24_crit_edge, %if.then11
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %19 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f_mode, align 8
  %and25 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end34_crit_edge, label %land.lhs.true27

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true27:                                  ; preds = %if.end24
  %21 = ptrtoint ptr %atomic_o_trunc to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load28 = load i56, ptr %atomic_o_trunc, align 1
  %22 = and i56 %bf.load28, 562949953421312
  %tobool32.not = icmp eq i56 %22, 0
  br i1 %tobool32.not, label %land.lhs.true27.if.end34_crit_edge, label %if.then33

land.lhs.true27.if.end34_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %land.lhs.true27
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %23 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_inode.i.i, align 8
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data, align 4
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %24, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %write_entry.i = getelementptr inbounds %struct.fuse_file, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %write_entry.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %write_entry.i, align 4
  %cmp.i.not.i = icmp eq ptr %28, %write_entry.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then33.fuse_link_write_file.exit_crit_edge

if.then33.fuse_link_write_file.exit_crit_edge:    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_link_write_file.exit

if.then.i:                                        ; preds = %if.then33
  %29 = getelementptr inbounds %struct.fuse_inode, ptr %24, i32 0, i32 9
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %write_entry.i, ptr noundef %29, ptr noundef %31) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.fuse_link_write_file.exit_crit_edge

if.then.i.fuse_link_write_file.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_link_write_file.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %write_entry.i, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %write_entry.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %write_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fuse_file, ptr %26, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %write_entry.i, ptr %29, align 4
  br label %fuse_link_write_file.exit

fuse_link_write_file.exit:                        ; preds = %if.end.i.i.i, %if.then.i.fuse_link_write_file.exit_crit_edge, %if.then33.fuse_link_write_file.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %if.end34

if.end34:                                         ; preds = %fuse_link_write_file.exit, %land.lhs.true27.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !75
  %18 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !76
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !77
  %37 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !78

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !79
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #12
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #12
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !80
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %48 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_invalidate_attr_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_open_common(ptr noundef %inode, ptr noundef %file, i1 noundef zeroext %isdir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %atomic_o_trunc = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %atomic_o_trunc to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load = load i56, ptr %atomic_o_trunc, align 1
  %9 = and i56 %bf.load, 2251799813685248
  %tobool2.not = icmp eq i56 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %10 = and i56 %bf.load, 562949953421312
  %tobool7 = icmp ne i56 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool7, %land.rhs ]
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.end
  %call23 = tail call i32 @generic_file_open(ptr noundef %inode, ptr noundef %file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.end
  br i1 %11, label %if.then29, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  tail call void @fuse_set_nowrite(ptr noundef %inode) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end26.if.end37_crit_edge
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %15 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %nodeid.i, align 8
  %17 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_flags, align 4
  %call.i = tail call ptr @fuse_file_open(ptr noundef %3, i64 noundef %16, i32 noundef %18, i1 noundef zeroext %isdir) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %fuse_do_open.exit, label %fuse_do_open.exit.thread

fuse_do_open.exit.thread:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %private_data.i, align 4
  tail call void @fuse_finish_open(ptr noundef %inode, ptr noundef %file)
  br label %if.end47

fuse_do_open.exit:                                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call.i to i32
  br label %if.end47

if.end47:                                         ; preds = %fuse_do_open.exit, %fuse_do_open.exit.thread
  %err.0 = phi i32 [ %20, %fuse_do_open.exit ], [ 0, %fuse_do_open.exit.thread ]
  br i1 %11, label %if.then52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fuse_release_nowrite(ptr noundef %inode) #12
  %i_rwsem.i85 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i85) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end47.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %land.end.cleanup_crit_edge ], [ %call23, %if.end.cleanup_crit_edge ], [ %err.0, %if.then52 ], [ %err.0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_set_nowrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_release_nowrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_file_release(ptr noundef %inode, ptr noundef %ff, i32 noundef %open_flags, ptr noundef %id, i1 noundef zeroext %isdir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %release_args = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 1
  %0 = ptrtoint ptr %release_args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %release_args, align 4
  %cond = select i1 %isdir, i32 29, i32 18
  tail call fastcc void @fuse_prepare_release(ptr noundef %inode, ptr noundef %ff, i32 noundef %open_flags, i32 noundef %cond)
  %flock = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 11
  %2 = ptrtoint ptr %flock to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %flock, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %release_flags = getelementptr inbounds %struct.fuse_release_args, ptr %1, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %release_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %release_flags, align 4
  %or = or i32 %4, 2
  store i32 %or, ptr %release_flags, align 4
  %5 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ff, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %scramble_key.i = getelementptr inbounds %struct.fuse_conn, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %id to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.041.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %sum.040.i = phi i32 [ 0, %if.then ], [ %add8.i, %for.body.i.for.body.i_crit_edge ]
  %v1.039.i = phi i32 [ 0, %if.then ], [ %add18.i, %for.body.i.for.body.i_crit_edge ]
  %v0.038.i = phi i32 [ %9, %if.then ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %v1.039.i, 4
  %shr4.i = lshr i32 %v1.039.i, 5
  %xor.i = xor i32 %shl.i, %shr4.i
  %add.i = add i32 %xor.i, %v1.039.i
  %and.i = and i32 %sum.040.i, 3
  %arrayidx.i = getelementptr i32, ptr %scramble_key.i, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add5.i = add i32 %11, %sum.040.i
  %xor6.i = xor i32 %add5.i, %add.i
  %add7.i = add i32 %xor6.i, %v0.038.i
  %add8.i = add i32 %sum.040.i, -1640531527
  %shl9.i = shl i32 %add7.i, 4
  %shr10.i = lshr i32 %add7.i, 5
  %xor11.i = xor i32 %shl9.i, %shr10.i
  %add12.i = add i32 %xor11.i, %add7.i
  %shr13.i = lshr i32 %add8.i, 11
  %and14.i = and i32 %shr13.i, 3
  %arrayidx15.i = getelementptr i32, ptr %scramble_key.i, i32 %and14.i
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.i, align 4
  %add16.i = add i32 %13, %add8.i
  %xor17.i = xor i32 %add12.i, %add16.i
  %add18.i = add i32 %xor17.i, %v1.039.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %fuse_lock_owner_id.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fuse_lock_owner_id.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv19.i = zext i32 %add7.i to i64
  %conv20.i = zext i32 %add18.i to i64
  %shl21.i = shl nuw i64 %conv20.i, 32
  %add22.i = or i64 %shl21.i, %conv19.i
  %lock_owner = getelementptr inbounds %struct.fuse_release_args, ptr %1, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %lock_owner to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add22.i, ptr %lock_owner, align 8
  br label %if.end

if.end:                                           ; preds = %fuse_lock_owner_id.exit, %entry.if.end_crit_edge
  %call3 = tail call ptr @igrab(ptr noundef %inode) #12
  %inode4 = getelementptr inbounds %struct.fuse_release_args, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %inode4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %inode4, align 8
  %16 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ff, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %destroy = getelementptr inbounds %struct.fuse_conn, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %destroy to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load7 = load i56, ptr %destroy, align 1
  %21 = and i56 %bf.load7, 4096
  %tobool10 = icmp ne i56 %21, 0
  tail call fastcc void @fuse_file_put(ptr noundef %ff, i1 noundef zeroext %tobool10, i1 noundef zeroext %isdir)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_prepare_release(ptr noundef %fi, ptr noundef %ff, i32 noundef %flags, i32 noundef %opcode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ff, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %release_args = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 1
  %4 = ptrtoint ptr %release_args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_args, align 4
  %tobool.not = icmp eq ptr %fi, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !72

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %fi, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %write_entry = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %write_entry) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %write_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %write_entry to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %write_entry, align 4
  %prev.i = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %polled_node = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 9
  %14 = ptrtoint ptr %polled_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %polled_node, align 8
  %16 = ptrtoint ptr %polled_node to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp = icmp eq i32 %15, %16
  br i1 %cmp, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %polled_files = getelementptr inbounds %struct.fuse_conn, ptr %3, i32 0, i32 14
  tail call void @rb_erase(ptr noundef %polled_node, ptr noundef %polled_files) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %3) #12
  %poll_wait = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %poll_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #12
  %fh = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 3
  %17 = ptrtoint ptr %fh to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fh, align 8
  %inarg = getelementptr inbounds %struct.fuse_release_args, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %inarg, align 8
  %flags13 = getelementptr inbounds %struct.fuse_release_args, ptr %5, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %flags, ptr %flags13, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 24, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %5, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %inarg, ptr %value, align 4
  %opcode20 = getelementptr inbounds %struct.fuse_args, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %opcode20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %opcode, ptr %opcode20, align 8
  %nodeid = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 4
  %25 = ptrtoint ptr %nodeid to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %nodeid, align 8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %5, align 8
  %force = getelementptr inbounds %struct.fuse_args, ptr %5, i32 0, i32 4
  %28 = ptrtoint ptr %force to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %force, align 8
  %bf.set27 = or i16 %bf.load, -24576
  store i16 %bf.set27, ptr %force, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @fuse_lock_owner_id(ptr nocapture noundef readonly %fc, ptr noundef %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scramble_key = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 33
  %0 = ptrtoint ptr %id to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %sum.040 = phi i32 [ 0, %entry ], [ %add8, %for.body.for.body_crit_edge ]
  %v1.039 = phi i32 [ 0, %entry ], [ %add18, %for.body.for.body_crit_edge ]
  %v0.038 = phi i32 [ %0, %entry ], [ %add7, %for.body.for.body_crit_edge ]
  %shl = shl i32 %v1.039, 4
  %shr4 = lshr i32 %v1.039, 5
  %xor = xor i32 %shl, %shr4
  %add = add i32 %xor, %v1.039
  %and = and i32 %sum.040, 3
  %arrayidx = getelementptr i32, ptr %scramble_key, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add5 = add i32 %2, %sum.040
  %xor6 = xor i32 %add5, %add
  %add7 = add i32 %xor6, %v0.038
  %add8 = add i32 %sum.040, -1640531527
  %shl9 = shl i32 %add7, 4
  %shr10 = lshr i32 %add7, 5
  %xor11 = xor i32 %shl9, %shr10
  %add12 = add i32 %xor11, %add7
  %shr13 = lshr i32 %add8, 11
  %and14 = and i32 %shr13, 3
  %arrayidx15 = getelementptr i32, ptr %scramble_key, i32 %and14
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx15, align 4
  %add16 = add i32 %4, %add8
  %xor17 = xor i32 %add12, %add16
  %add18 = add i32 %xor17, %v1.039
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %conv19 = zext i32 %add7 to i64
  %conv20 = zext i32 %add18 to i64
  %shl21 = shl nuw i64 %conv20, 32
  %add22 = or i64 %shl21, %conv19
  ret i64 %add22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_file_put(ptr noundef %ff, i1 noundef zeroext %sync, i1 noundef zeroext %isdir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #12, !srcloc !83
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end26_crit_edge, label %if.then10.i.i.i, !prof !78

if.end5.i.i.i.if.end26_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #12
  br label %if.end26

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  %release_args = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 1
  %1 = ptrtoint ptr %release_args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %release_args, align 4
  %3 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ff, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %no_opendir = getelementptr inbounds %struct.fuse_conn, ptr %6, i32 0, i32 26
  %7 = ptrtoint ptr %no_opendir to i32
  call void @__asan_loadN_noabort(i32 %7, i32 7)
  %bf.load = load i56, ptr %no_opendir, align 1
  br i1 %isdir, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %8 = and i56 %bf.load, 4398046511104
  %tobool3.not = icmp eq i56 %8, 0
  br i1 %tobool3.not, label %cond.true.if.else_crit_edge, label %cond.true.if.end25.sink.split_crit_edge

cond.true.if.end25.sink.split_crit_edge:          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.sink.split

cond.true.if.else_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

cond.false:                                       ; preds = %if.then
  %9 = and i56 %bf.load, 8796093022208
  %tobool10.not = icmp eq i56 %9, 0
  br i1 %tobool10.not, label %cond.false.if.else_crit_edge, label %cond.false.if.end25.sink.split_crit_edge

cond.false.if.end25.sink.split_crit_edge:         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.sink.split

cond.false.if.else_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %cond.false.if.else_crit_edge, %cond.true.if.else_crit_edge
  br i1 %sync, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ff, align 8
  %call16 = tail call i32 @fuse_simple_request(ptr noundef %11, ptr noundef %2) #12
  br label %if.end25.sink.split

if.else18:                                        ; preds = %if.else
  %end = getelementptr inbounds %struct.fuse_args, ptr %2, i32 0, i32 7
  %12 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @fuse_release_end, ptr %end, align 4
  %13 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ff, align 8
  %call20 = tail call i32 @fuse_simple_background(ptr noundef %14, ptr noundef %2, i32 noundef 36032) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else18.if.end25_crit_edge, label %if.else18.if.end25.sink.split_crit_edge

if.else18.if.end25.sink.split_crit_edge:          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.sink.split

if.else18.if.end25_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25.sink.split:                              ; preds = %if.else18.if.end25.sink.split_crit_edge, %if.then14, %cond.false.if.end25.sink.split_crit_edge, %cond.true.if.end25.sink.split_crit_edge
  %inode.i43 = getelementptr inbounds %struct.fuse_release_args, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %inode.i43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inode.i43, align 8
  tail call void @iput(ptr noundef %16) #12
  tail call void @kfree(ptr noundef %2) #12
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.else18.if.end25_crit_edge
  tail call void @kfree(ptr noundef %ff) #12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then10.i.i.i, %if.end5.i.i.i.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_release_common(ptr noundef %file, i1 noundef zeroext %isdir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  tail call void @fuse_file_release(ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %file, i1 noundef zeroext %isdir)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_sync_release(ptr noundef %fi, ptr noundef %ff, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.fuse_file, ptr %ff, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count, i32 noundef 4) #12
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !72

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 350, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @fuse_prepare_release(ptr noundef %fi, ptr noundef %ff, i32 noundef %flags, i32 noundef 18)
  tail call fastcc void @fuse_file_put(ptr noundef %ff, i1 noundef zeroext true, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_fsync_common(ptr nocapture noundef readonly %file, i64 %start, i64 %end, i32 noundef %datasync, i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_fsync_in, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #12
  %10 = getelementptr inbounds i8, ptr %args, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg) #12
  %12 = getelementptr inbounds %struct.fuse_fsync_in, ptr %inarg, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %inarg, i32 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %13, align 8
  %fh = getelementptr inbounds %struct.fuse_file, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %fh to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %fh, align 8
  %17 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %inarg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool.not = icmp ne i32 %datasync, 0
  %cond = zext i1 %tobool.not to i32
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %12, align 8
  %opcode2 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %19 = ptrtoint ptr %opcode2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %opcode, ptr %opcode2, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %nodeid.i, align 8
  %22 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %23 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %24 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %inarg, ptr %value, align 8
  %call6 = call i32 @fuse_simple_request(ptr noundef %7, ptr noundef nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #12
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_simple_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fuse_read_args_fill(ptr noundef %ia, ptr nocapture noundef readonly %file, i64 noundef %pos, i32 noundef %count, i32 noundef %opcode) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ap = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1
  %fh = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fh to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %fh, align 8
  %4 = ptrtoint ptr %ia to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %ia, align 8
  %offset = getelementptr inbounds %struct.fuse_read_in, ptr %ia, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %pos, ptr %offset, align 8
  %size = getelementptr inbounds %struct.fuse_read_in, ptr %ia, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %size, align 8
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %flags = getelementptr inbounds %struct.fuse_read_in, ptr %ia, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags, align 8
  %opcode6 = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %opcode6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %opcode, ptr %opcode6, align 8
  %nodeid = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %nodeid to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %nodeid, align 8
  %13 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %ap, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 40, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ia, ptr %value, align 4
  %out_argvar = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %out_argvar to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %out_argvar, align 8
  %bf.set = or i16 %bf.load, 512
  store i16 %bf.set, ptr %out_argvar, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %out_numargs, align 2
  %out_args = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %count, ptr %out_args, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fuse_write_update_attr(ptr noundef %inode, i64 noundef %pos, i32 noundef %written) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %attr_version = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_version, i32 noundef 8) #12
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %attr_version) #12
  %attr_version3 = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %attr_version3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i2.i, ptr %attr_version3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written)
  %cmp = icmp sgt i32 %written, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %7 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %pos)
  %cmp4 = icmp slt i64 %8, %pos
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %pos)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0.off0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call void @fuse_invalidate_attr_mask(ptr noundef %inode, i32 noundef 1728) #12
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_direct_io(ptr noundef %io, ptr noundef %iter, ptr nocapture noundef %ppos, i32 noundef %flags) #0 align 64 {
entry:
  %start.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  %and1 = and i32 %flags, 2
  %iocb = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 10
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %max_write = getelementptr inbounds %struct.fuse_conn, ptr %13, i32 0, i32 9
  %max_read = getelementptr inbounds %struct.fuse_conn, ptr %13, i32 0, i32 8
  %cond.in = select i1 %tobool.not, ptr %max_read, ptr %max_write
  %14 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond = load i32, ptr %cond.in, align 4
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ppos, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 8
  %19 = lshr i64 %16, 12
  %conv = trunc i64 %19 to i32
  %conv3 = zext i32 %18 to i64
  %add = add i64 %16, 17592186044415
  %sub = add i64 %add, %conv3
  %20 = lshr i64 %sub, 12
  %conv5 = trunc i64 %20 to i32
  %max_pages6 = getelementptr inbounds %struct.fuse_conn, ptr %13, i32 0, i32 10
  %21 = ptrtoint ptr %max_pages6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_pages6, align 4
  %call7 = tail call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef %22) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 144) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup114_crit_edge, label %if.then.i

entry.cleanup114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.then.i:                                        ; preds = %entry
  %io1.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %io1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %io, ptr %io1.i, align 8
  %descs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %mul.i.i = mul i32 %call7, 12
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3520) #16
  %add.ptr.i.i = getelementptr ptr, ptr %call9.i.i.i.i, i32 %call7
  %25 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i, ptr %descs.i, align 4
  %pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i.i.i, ptr %pages.i, align 8
  %tobool6.not.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup114

if.end:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool10.not = icmp eq i32 %and1, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %7, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %writepages.i.i = getelementptr inbounds %struct.fuse_inode, ptr %7, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  %27 = ptrtoint ptr %writepages.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.047.i.i = load ptr, ptr %writepages.i.i, align 4
  %tobool.not48.i.i = icmp eq ptr %n.047.i.i, null
  br i1 %tobool.not48.i.i, label %land.lhs.true.fuse_range_is_writeback.exit.thread_crit_edge, label %land.lhs.true.while.body.i.i_crit_edge

land.lhs.true.while.body.i.i_crit_edge:           ; preds = %land.lhs.true
  br label %while.body.i.i

land.lhs.true.fuse_range_is_writeback.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_range_is_writeback.exit.thread

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %land.lhs.true.while.body.i.i_crit_edge
  %n.049.i.i = phi ptr [ %n.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %n.047.i.i, %land.lhs.true.while.body.i.i_crit_edge ]
  %inode.i.i = getelementptr i8, ptr %n.049.i.i, i32 24
  %28 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inode.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %29, %7
  br i1 %cmp.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !78

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 403, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %offset.i.i = getelementptr i8, ptr %n.049.i.i, i32 -136
  %30 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %offset.i.i, align 8
  %shr.i.i = lshr i64 %31, 12
  %conv.i.i = trunc i64 %shr.i.i to i32
  %num_pages.i.i = getelementptr i8, ptr %n.049.i.i, i32 -16
  %32 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_pages.i.i, align 8
  %add.i.i = add i32 %33, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv)
  %cmp22.not.i.i = icmp ugt i32 %add.i.i, %conv
  br i1 %cmp22.not.i.i, label %if.else.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i, i32 0, i32 1
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv5)
  %cmp25.i.i = icmp ugt i32 %conv.i.i, %conv5
  br i1 %cmp25.i.i, label %if.then27.i.i, label %fuse_range_is_writeback.exit

if.then27.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i, i32 0, i32 2
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then27.i.i, %if.then24.i.i
  %n.1.in.i.i = phi ptr [ %rb_right.i.i, %if.then24.i.i ], [ %rb_left.i.i, %if.then27.i.i ]
  %34 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.fuse_range_is_writeback.exit.thread_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

cleanup.i.i.fuse_range_is_writeback.exit.thread_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_range_is_writeback.exit.thread

fuse_range_is_writeback.exit.thread:              ; preds = %cleanup.i.i.fuse_range_is_writeback.exit.thread_crit_edge, %land.lhs.true.fuse_range_is_writeback.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %if.end20

fuse_range_is_writeback.exit:                     ; preds = %if.else.i.i
  %add.ptr.le.i.i = getelementptr i8, ptr %n.049.i.i, i32 -144
  %phi.cmp.i.not = icmp eq ptr %add.ptr.le.i.i, null
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br i1 %phi.cmp.i.not, label %fuse_range_is_writeback.exit.if.end20_crit_edge, label %if.then13

fuse_range_is_writeback.exit.if.end20_crit_edge:  ; preds = %fuse_range_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then13:                                        ; preds = %fuse_range_is_writeback.exit
  br i1 %tobool.not, label %if.then15, label %if.end20.critedge

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  tail call void @fuse_set_nowrite(ptr noundef %7) #12
  tail call void @fuse_release_nowrite(ptr noundef %7) #12
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  br label %land.rhs

if.end20.critedge:                                ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fuse_set_nowrite(ptr noundef %7) #12
  tail call void @fuse_release_nowrite(ptr noundef %7) #12
  br label %land.end

if.end20:                                         ; preds = %fuse_range_is_writeback.exit.if.end20_crit_edge, %fuse_range_is_writeback.exit.thread, %if.end.if.end20_crit_edge
  br i1 %tobool.not, label %if.end20.land.rhs_crit_edge, label %if.end20.land.end_crit_edge

if.end20.land.end_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

if.end20.land.rhs_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %if.end20.land.rhs_crit_edge, %if.then15
  %35 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp.i = icmp eq i8 %36, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end20.land.end_crit_edge, %if.end20.critedge
  %37 = phi i1 [ false, %if.end20.land.end_crit_edge ], [ %cmp.i, %land.rhs ], [ false, %if.end20.critedge ]
  %should_dirty = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 8
  %frombool = zext i1 %37 to i8
  %38 = ptrtoint ptr %should_dirty to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %should_dirty, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not395 = icmp eq i32 %18, 0
  br i1 %tobool24.not395, label %land.end.if.then102_crit_edge, label %while.body.lr.ph

land.end.if.then102_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

while.body.lr.ph:                                 ; preds = %land.end
  %storemerge.v.i = select i1 %tobool.not, i16 3072, i16 5120
  %39 = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 5
  %iov_offset.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 3
  %async = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.then.i270.while.body_crit_edge, %while.body.lr.ph
  %max_pages.0405 = phi i32 [ %call7, %while.body.lr.ph ], [ %call93, %if.then.i270.while.body_crit_edge ]
  %ia.0403 = phi ptr [ %call7.i.i.i, %while.body.lr.ph ], [ %call7.i.i.i265, %if.then.i270.while.body_crit_edge ]
  %res.0400 = phi i32 [ 0, %while.body.lr.ph ], [ %add82, %if.then.i270.while.body_crit_edge ]
  %count.0399 = phi i32 [ %18, %while.body.lr.ph ], [ %sub81, %if.then.i270.while.body_crit_edge ]
  %pos.0396 = phi i64 [ %16, %while.body.lr.ph ], [ %add84, %if.then.i270.while.body_crit_edge ]
  %40 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 108
  %44 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %files, align 4
  %46 = call i32 @llvm.umin.i32(i32 %count.0399, i32 %cond)
  %ap = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1
  %47 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp.i.i = icmp eq i8 %48, 1
  br i1 %cmp.i.i, label %fuse_get_user_pages.exit.thread, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp97.not.i = icmp eq i32 %46, 0
  br i1 %cmp97.not.i, label %while.cond.preheader.i.fuse_get_user_pages.exit.thread440_crit_edge, label %land.rhs.lr.ph.i

while.cond.preheader.i.fuse_get_user_pages.exit.thread440_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_get_user_pages.exit.thread440

land.rhs.lr.ph.i:                                 ; preds = %while.cond.preheader.i
  %num_pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 3
  %pages.i191 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 1
  %descs.i192 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %max_pages.0405, i32 %50)
  %cmp8.i390 = icmp ugt i32 %max_pages.0405, %50
  br i1 %cmp8.i390, label %land.rhs.lr.ph.i.while.body.i_crit_edge, label %land.rhs.lr.ph.i.fuse_get_user_pages.exit.thread440_crit_edge

land.rhs.lr.ph.i.fuse_get_user_pages.exit.thread440_crit_edge: ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_get_user_pages.exit.thread440

land.rhs.lr.ph.i.while.body.i_crit_edge:          ; preds = %land.rhs.lr.ph.i
  br label %while.body.i

fuse_get_user_pages.exit.thread:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %39, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = ptrtoint ptr %iov_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iov_offset.i.i, align 4
  %add.i.i193 = add i32 %57, %55
  %call.i.i = call i32 @iov_iter_single_seg_count(ptr noundef %iter) #12
  %58 = call i32 @llvm.umin.i32(i32 %call.i.i, i32 %46) #12
  %59 = inttoptr i32 %add.i.i193 to ptr
  %value6.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 6, i32 0, i32 1
  %value.i = getelementptr %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %value6.sink.i = select i1 %tobool.not, ptr %value6.i, ptr %value.i
  %60 = ptrtoint ptr %value6.sink.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %value6.sink.i, align 8
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %58) #12
  br label %if.end36

land.rhs.i:                                       ; preds = %cleanup.i
  %61 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_pages.i, align 8
  %cmp8.i = icmp ugt i32 %max_pages.0405, %62
  br i1 %cmp8.i, label %land.rhs.i.while.body.i_crit_edge, label %land.rhs.i.fuse_get_user_pages.exit_crit_edge

land.rhs.i.fuse_get_user_pages.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_get_user_pages.exit

land.rhs.i.while.body.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i.while.body.i_crit_edge, %land.rhs.lr.ph.i.while.body.i_crit_edge
  %63 = phi i32 [ %62, %land.rhs.i.while.body.i_crit_edge ], [ %50, %land.rhs.lr.ph.i.while.body.i_crit_edge ]
  %nbytes.098.i391 = phi i32 [ %add.i, %land.rhs.i.while.body.i_crit_edge ], [ 0, %land.rhs.lr.ph.i.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start.i) #12
  %64 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %start.i, align 4, !annotation !85
  %65 = ptrtoint ptr %pages.i191 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pages.i191, align 8
  %arrayidx10.i = getelementptr ptr, ptr %66, i32 %63
  %sub.i = sub i32 %46, %nbytes.098.i391
  %sub12.i = sub i32 %max_pages.0405, %63
  %call13.i = call i32 @iov_iter_get_pages(ptr noundef %iter, ptr noundef %arrayidx10.i, i32 noundef %sub.i, i32 noundef %sub12.i, ptr noundef nonnull %start.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %fuse_get_user_pages.exit.thread447, label %if.end16.i

fuse_get_user_pages.exit.thread447:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #12
  %user_pages.i450 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 4
  %67 = ptrtoint ptr %user_pages.i450 to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load.i451 = load i16, ptr %user_pages.i450, align 8
  %storemerge.i452 = or i16 %bf.load.i451, %storemerge.v.i
  store i16 %storemerge.i452, ptr %user_pages.i450, align 8
  br label %land.lhs.true33

if.end16.i:                                       ; preds = %while.body.i
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %call13.i) #12
  %add.i = add i32 %call13.i, %nbytes.098.i391
  %68 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %start.i, align 4
  %add17.i = add i32 %69, %call13.i
  %sub19.i = add i32 %add17.i, 4095
  %div88.i = lshr i32 %sub19.i, 12
  %70 = ptrtoint ptr %descs.i192 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %descs.i192, align 4
  %72 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_pages.i, align 8
  %offset.i = getelementptr %struct.fuse_page_desc, ptr %71, i32 %73, i32 1
  %74 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %69, ptr %offset.i, align 4
  %75 = load ptr, ptr %descs.i192, align 4
  %76 = load i32, ptr %num_pages.i, align 8
  %add.i89.i = add i32 %76, %div88.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i89.i, i32 %76)
  %cmp7.i.i = icmp ugt i32 %add.i89.i, %76
  br i1 %cmp7.i.i, label %if.end16.i.for.body.i.i_crit_edge, label %if.end16.i.cleanup.i_crit_edge

if.end16.i.cleanup.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end16.i.for.body.i.i_crit_edge:                ; preds = %if.end16.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end16.i.for.body.i.i_crit_edge
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %76, %if.end16.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.fuse_page_desc, ptr %75, i32 %i.08.i.i
  %offset.i.i196 = getelementptr %struct.fuse_page_desc, ptr %75, i32 %i.08.i.i, i32 1
  %77 = ptrtoint ptr %offset.i.i196 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i.i196, align 4
  %sub.i.i = sub i32 4096, %78
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add.i89.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.cleanup.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.cleanup.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i.i.cleanup.i_crit_edge, %if.end16.i.cleanup.i_crit_edge
  %80 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_pages.i, align 8
  %add25.i = add i32 %81, %div88.i
  store i32 %add25.i, ptr %num_pages.i, align 8
  %sub26.i = sub i32 0, %add17.i
  %and.i197 = and i32 %sub26.i, 4095
  %82 = ptrtoint ptr %descs.i192 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %descs.i192, align 4
  %sub29.i = add i32 %add25.i, -1
  %arrayidx30.i = getelementptr %struct.fuse_page_desc, ptr %83, i32 %sub29.i
  %84 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx30.i, align 4
  %sub31.i = sub i32 %85, %and.i197
  store i32 %sub31.i, ptr %arrayidx30.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start.i) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add.i)
  %cmp.i198 = icmp ugt i32 %46, %add.i
  br i1 %cmp.i198, label %land.rhs.i, label %cleanup.i.fuse_get_user_pages.exit_crit_edge

cleanup.i.fuse_get_user_pages.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_get_user_pages.exit

fuse_get_user_pages.exit.thread440:               ; preds = %land.rhs.lr.ph.i.fuse_get_user_pages.exit.thread440_crit_edge, %while.cond.preheader.i.fuse_get_user_pages.exit.thread440_crit_edge
  %user_pages.i443 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 4
  %86 = ptrtoint ptr %user_pages.i443 to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load.i444 = load i16, ptr %user_pages.i443, align 8
  %storemerge.i445 = or i16 %bf.load.i444, %storemerge.v.i
  store i16 %storemerge.i445, ptr %user_pages.i443, align 8
  br label %if.end36

fuse_get_user_pages.exit:                         ; preds = %cleanup.i.fuse_get_user_pages.exit_crit_edge, %land.rhs.i.fuse_get_user_pages.exit_crit_edge
  %user_pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 4
  %87 = ptrtoint ptr %user_pages.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i = load i16, ptr %user_pages.i, align 8
  %storemerge.i = or i16 %bf.load.i, %storemerge.v.i
  store i16 %storemerge.i, ptr %user_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add17.i)
  %tobool32.not = icmp sgt i32 %add17.i, -1
  br i1 %tobool32.not, label %fuse_get_user_pages.exit.if.end36_crit_edge, label %fuse_get_user_pages.exit.land.lhs.true33_crit_edge

fuse_get_user_pages.exit.land.lhs.true33_crit_edge: ; preds = %fuse_get_user_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true33

fuse_get_user_pages.exit.if.end36_crit_edge:      ; preds = %fuse_get_user_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true33:                                  ; preds = %fuse_get_user_pages.exit.land.lhs.true33_crit_edge, %fuse_get_user_pages.exit.thread447
  %ret.2.i455 = phi i32 [ %call13.i, %fuse_get_user_pages.exit.thread447 ], [ %add17.i, %fuse_get_user_pages.exit.land.lhs.true33_crit_edge ]
  %nbytes.096.i454 = phi i32 [ %nbytes.098.i391, %fuse_get_user_pages.exit.thread447 ], [ %add.i, %fuse_get_user_pages.exit.land.lhs.true33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes.096.i454)
  %tobool34.not = icmp eq i32 %nbytes.096.i454, 0
  br i1 %tobool34.not, label %land.lhs.true33.if.then102_crit_edge, label %land.lhs.true33.if.end36_crit_edge

land.lhs.true33.if.end36_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true33.if.then102_crit_edge:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then102

if.end36:                                         ; preds = %land.lhs.true33.if.end36_crit_edge, %fuse_get_user_pages.exit.if.end36_crit_edge, %fuse_get_user_pages.exit.thread440, %fuse_get_user_pages.exit.thread
  %retval.0.i327 = phi i32 [ 0, %fuse_get_user_pages.exit.thread ], [ %ret.2.i455, %land.lhs.true33.if.end36_crit_edge ], [ 0, %fuse_get_user_pages.exit.if.end36_crit_edge ], [ 0, %fuse_get_user_pages.exit.thread440 ]
  %nbytes.0324 = phi i32 [ %58, %fuse_get_user_pages.exit.thread ], [ %nbytes.096.i454, %land.lhs.true33.if.end36_crit_edge ], [ %add.i, %fuse_get_user_pages.exit.if.end36_crit_edge ], [ 0, %fuse_get_user_pages.exit.thread440 ]
  br i1 %tobool.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end36
  %call39 = call zeroext i1 @capable(i32 noundef 4) #12
  br i1 %call39, label %if.then38.if.end41_crit_edge, label %if.then40

if.then38.if.end41_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %write_flags = getelementptr inbounds %struct.fuse_write_in, ptr %ia.0403, i32 0, i32 3
  %88 = ptrtoint ptr %write_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %write_flags, align 4
  %or = or i32 %89, 4
  store i32 %or, ptr %write_flags, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.then38.if.end41_crit_edge
  %io.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 2
  %90 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %io.i, align 8
  %iocb1.i = getelementptr inbounds %struct.fuse_io_priv, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %iocb1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %iocb1.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %private_data.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %fh.i.i = getelementptr inbounds %struct.fuse_file, ptr %97, i32 0, i32 3
  %100 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %fh.i.i, align 8
  %102 = ptrtoint ptr %ia.0403 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %ia.0403, align 8
  %offset.i.i199 = getelementptr inbounds %struct.fuse_write_in, ptr %ia.0403, i32 0, i32 1
  %103 = ptrtoint ptr %offset.i.i199 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %pos.0396, ptr %offset.i.i199, align 8
  %size.i.i = getelementptr inbounds %struct.fuse_write_in, ptr %ia.0403, i32 0, i32 2
  %104 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %nbytes.0324, ptr %size.i.i, align 8
  %opcode.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 16, ptr %opcode.i.i, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_file, ptr %97, i32 0, i32 4
  %106 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %nodeid.i.i, align 8
  %108 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %ap, align 8
  %in_numargs.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 2
  %109 = ptrtoint ptr %in_numargs.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 2, ptr %in_numargs.i.i, align 4
  %110 = load ptr, ptr %97, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %minor.i.i = getelementptr inbounds %struct.fuse_conn, ptr %112, i32 0, i32 28
  %113 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %minor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %114)
  %cmp.i.i200 = icmp ult i32 %114, 9
  %spec.select.i.i = select i1 %cmp.i.i200, i32 24, i32 40
  %115 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 5
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %spec.select.i.i, ptr %115, align 4
  %value.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %117 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %ia.0403, ptr %value.i.i, align 8
  %arrayidx14.i.i = getelementptr %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 5, i32 1
  %118 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %nbytes.0324, ptr %arrayidx14.i.i, align 4
  %out_numargs.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 3
  %119 = ptrtoint ptr %out_numargs.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %out_numargs.i.i, align 2
  %out_args.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 6
  %120 = ptrtoint ptr %out_args.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 8, ptr %out_args.i.i, align 4
  %out.i.i = getelementptr inbounds %struct.anon.90, ptr %ia.0403, i32 0, i32 1
  %value20.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 6, i32 0, i32 1
  %121 = ptrtoint ptr %value20.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %out.i.i, ptr %value20.i.i, align 8
  %122 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %93, align 8
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %f_flags.i.i, align 4
  %ki_flags.i.i = getelementptr inbounds %struct.kiocb, ptr %93, i32 0, i32 4
  %126 = ptrtoint ptr %ki_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ki_flags.i.i, align 8
  %and.i.i = shl i32 %127, 11
  %128 = and i32 %and.i.i, 4096
  %and2.i.i = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %flags.1.v.i.i = select i1 %tobool3.not.i.i, i32 %128, i32 1052672
  %flags.1.i.i = or i32 %flags.1.v.i.i, %125
  %flags.i = getelementptr inbounds %struct.fuse_write_in, ptr %ia.0403, i32 0, i32 5
  %129 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %flags.1.i.i, ptr %flags.i, align 8
  %cmp.not.i = icmp eq ptr %45, null
  br i1 %cmp.not.i, label %if.end41.if.end.i_crit_edge, label %if.then.i201

if.end41.if.end.i_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i201:                                     ; preds = %if.end41
  %write_flags.i = getelementptr inbounds %struct.fuse_write_in, ptr %ia.0403, i32 0, i32 3
  %130 = ptrtoint ptr %write_flags.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %write_flags.i, align 4
  %or.i = or i32 %131, 2
  store i32 %or.i, ptr %write_flags.i, align 4
  %132 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %99, align 4
  %scramble_key.i.i = getelementptr inbounds %struct.fuse_conn, ptr %133, i32 0, i32 33
  %134 = ptrtoint ptr %45 to i32
  br label %for.body.i.i206

for.body.i.i206:                                  ; preds = %for.body.i.i206.for.body.i.i206_crit_edge, %if.then.i201
  %i.041.i.i = phi i32 [ 0, %if.then.i201 ], [ %inc.i.i204, %for.body.i.i206.for.body.i.i206_crit_edge ]
  %sum.040.i.i = phi i32 [ 0, %if.then.i201 ], [ %add8.i.i, %for.body.i.i206.for.body.i.i206_crit_edge ]
  %v1.039.i.i = phi i32 [ 0, %if.then.i201 ], [ %add18.i.i, %for.body.i.i206.for.body.i.i206_crit_edge ]
  %v0.038.i.i = phi i32 [ %134, %if.then.i201 ], [ %add7.i.i, %for.body.i.i206.for.body.i.i206_crit_edge ]
  %shl.i.i = shl i32 %v1.039.i.i, 4
  %shr4.i.i = lshr i32 %v1.039.i.i, 5
  %xor.i.i = xor i32 %shl.i.i, %shr4.i.i
  %add.i.i202 = add i32 %xor.i.i, %v1.039.i.i
  %and.i38.i = and i32 %sum.040.i.i, 3
  %arrayidx.i.i203 = getelementptr i32, ptr %scramble_key.i.i, i32 %and.i38.i
  %135 = ptrtoint ptr %arrayidx.i.i203 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i.i203, align 4
  %add5.i.i = add i32 %136, %sum.040.i.i
  %xor6.i.i = xor i32 %add5.i.i, %add.i.i202
  %add7.i.i = add i32 %xor6.i.i, %v0.038.i.i
  %add8.i.i = add i32 %sum.040.i.i, -1640531527
  %shl9.i.i = shl i32 %add7.i.i, 4
  %shr10.i.i = lshr i32 %add7.i.i, 5
  %xor11.i.i = xor i32 %shl9.i.i, %shr10.i.i
  %add12.i.i = add i32 %xor11.i.i, %add7.i.i
  %shr13.i.i = lshr i32 %add8.i.i, 11
  %and14.i.i = and i32 %shr13.i.i, 3
  %arrayidx15.i.i = getelementptr i32, ptr %scramble_key.i.i, i32 %and14.i.i
  %137 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx15.i.i, align 4
  %add16.i.i = add i32 %138, %add8.i.i
  %xor17.i.i = xor i32 %add12.i.i, %add16.i.i
  %add18.i.i = add i32 %xor17.i.i, %v1.039.i.i
  %inc.i.i204 = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i.i205 = icmp eq i32 %inc.i.i204, 32
  br i1 %exitcond.not.i.i205, label %fuse_lock_owner_id.exit.i, label %for.body.i.i206.for.body.i.i206_crit_edge

for.body.i.i206.for.body.i.i206_crit_edge:        ; preds = %for.body.i.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i206

fuse_lock_owner_id.exit.i:                        ; preds = %for.body.i.i206
  call void @__sanitizer_cov_trace_pc() #14
  %conv19.i.i = zext i32 %add7.i.i to i64
  %conv20.i.i = zext i32 %add18.i.i to i64
  %shl21.i.i = shl nuw i64 %conv20.i.i, 32
  %add22.i.i = or i64 %shl21.i.i, %conv19.i.i
  %lock_owner.i = getelementptr inbounds %struct.fuse_write_in, ptr %ia.0403, i32 0, i32 4
  %139 = ptrtoint ptr %lock_owner.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %add22.i.i, ptr %lock_owner.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %fuse_lock_owner_id.exit.i, %if.end41.if.end.i_crit_edge
  %async.i = getelementptr inbounds %struct.fuse_io_priv, ptr %91, i32 0, i32 1
  %140 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %async.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i207 = icmp eq i32 %141, 0
  br i1 %tobool.not.i207, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i = call fastcc i32 @fuse_async_req_send(ptr noundef %99, ptr noundef nonnull %ia.0403, i32 noundef %nbytes.0324) #12
  br label %if.end44

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call i32 @fuse_simple_request(ptr noundef %99, ptr noundef %ap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %if.end7.i.if.end44_crit_edge

if.end7.i.if.end44_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true.i:                                  ; preds = %if.end7.i
  %142 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %out.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %nbytes.0324)
  %cmp10.i = icmp ugt i32 %143, %nbytes.0324
  br i1 %cmp10.i, label %land.lhs.true.i.if.then48_crit_edge, label %land.lhs.true.i.if.end44_crit_edge

land.lhs.true.i.if.end44_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true.i.if.then48_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.else:                                          ; preds = %if.end36
  %io.i210 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 2
  %144 = ptrtoint ptr %io.i210 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %io.i210, align 8
  %iocb.i = getelementptr inbounds %struct.fuse_io_priv, ptr %145, i32 0, i32 10
  %146 = ptrtoint ptr %iocb.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %iocb.i, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %private_data.i211 = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 16
  %150 = ptrtoint ptr %private_data.i211 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %private_data.i211, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %151, align 8
  %fh.i.i213 = getelementptr inbounds %struct.fuse_file, ptr %151, i32 0, i32 3
  %154 = ptrtoint ptr %fh.i.i213 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %fh.i.i213, align 8
  %156 = ptrtoint ptr %ia.0403 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %ia.0403, align 8
  %offset.i.i214 = getelementptr inbounds %struct.fuse_read_in, ptr %ia.0403, i32 0, i32 1
  %157 = ptrtoint ptr %offset.i.i214 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %pos.0396, ptr %offset.i.i214, align 8
  %size.i.i215 = getelementptr inbounds %struct.fuse_read_in, ptr %ia.0403, i32 0, i32 2
  %158 = ptrtoint ptr %size.i.i215 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %nbytes.0324, ptr %size.i.i215, align 8
  %f_flags.i.i216 = getelementptr inbounds %struct.file, ptr %149, i32 0, i32 7
  %159 = ptrtoint ptr %f_flags.i.i216 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %f_flags.i.i216, align 4
  %flags.i.i = getelementptr inbounds %struct.fuse_read_in, ptr %ia.0403, i32 0, i32 5
  %161 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %flags.i.i, align 8
  %opcode6.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 1
  %162 = ptrtoint ptr %opcode6.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 15, ptr %opcode6.i.i, align 8
  %nodeid.i.i217 = getelementptr inbounds %struct.fuse_file, ptr %151, i32 0, i32 4
  %163 = ptrtoint ptr %nodeid.i.i217 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %nodeid.i.i217, align 8
  %165 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %ap, align 8
  %in_numargs.i.i218 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 2
  %166 = ptrtoint ptr %in_numargs.i.i218 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 1, ptr %in_numargs.i.i218, align 4
  %in_args.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 5
  %167 = ptrtoint ptr %in_args.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 40, ptr %in_args.i.i, align 4
  %value.i.i219 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %168 = ptrtoint ptr %value.i.i219 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %ia.0403, ptr %value.i.i219, align 8
  %out_argvar.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 4
  %169 = ptrtoint ptr %out_argvar.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %bf.load.i.i = load i16, ptr %out_argvar.i.i, align 8
  %bf.set.i.i = or i16 %bf.load.i.i, 512
  store i16 %bf.set.i.i, ptr %out_argvar.i.i, align 8
  %out_numargs.i.i220 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 3
  %170 = ptrtoint ptr %out_numargs.i.i220 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 1, ptr %out_numargs.i.i220, align 2
  %out_args.i.i221 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 0, i32 6
  %171 = ptrtoint ptr %out_args.i.i221 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %nbytes.0324, ptr %out_args.i.i221, align 4
  %cmp.not.i222 = icmp eq ptr %45, null
  br i1 %cmp.not.i222, label %if.else.if.end.i261_crit_edge, label %if.then.i225

if.else.if.end.i261_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i261

if.then.i225:                                     ; preds = %if.else
  %read_flags.i = getelementptr inbounds %struct.fuse_read_in, ptr %ia.0403, i32 0, i32 3
  %172 = ptrtoint ptr %read_flags.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %read_flags.i, align 4
  %or.i223 = or i32 %173, 2
  store i32 %or.i223, ptr %read_flags.i, align 4
  %174 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %153, align 4
  %scramble_key.i.i224 = getelementptr inbounds %struct.fuse_conn, ptr %175, i32 0, i32 33
  %176 = ptrtoint ptr %45 to i32
  br label %for.body.i.i252

for.body.i.i252:                                  ; preds = %for.body.i.i252.for.body.i.i252_crit_edge, %if.then.i225
  %i.041.i.i226 = phi i32 [ 0, %if.then.i225 ], [ %inc.i.i250, %for.body.i.i252.for.body.i.i252_crit_edge ]
  %sum.040.i.i227 = phi i32 [ 0, %if.then.i225 ], [ %add8.i.i239, %for.body.i.i252.for.body.i.i252_crit_edge ]
  %v1.039.i.i228 = phi i32 [ 0, %if.then.i225 ], [ %add18.i.i249, %for.body.i.i252.for.body.i.i252_crit_edge ]
  %v0.038.i.i229 = phi i32 [ %176, %if.then.i225 ], [ %add7.i.i238, %for.body.i.i252.for.body.i.i252_crit_edge ]
  %shl.i.i230 = shl i32 %v1.039.i.i228, 4
  %shr4.i.i231 = lshr i32 %v1.039.i.i228, 5
  %xor.i.i232 = xor i32 %shl.i.i230, %shr4.i.i231
  %add.i.i233 = add i32 %xor.i.i232, %v1.039.i.i228
  %and.i.i234 = and i32 %sum.040.i.i227, 3
  %arrayidx.i.i235 = getelementptr i32, ptr %scramble_key.i.i224, i32 %and.i.i234
  %177 = ptrtoint ptr %arrayidx.i.i235 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i.i235, align 4
  %add5.i.i236 = add i32 %178, %sum.040.i.i227
  %xor6.i.i237 = xor i32 %add5.i.i236, %add.i.i233
  %add7.i.i238 = add i32 %xor6.i.i237, %v0.038.i.i229
  %add8.i.i239 = add i32 %sum.040.i.i227, -1640531527
  %shl9.i.i240 = shl i32 %add7.i.i238, 4
  %shr10.i.i241 = lshr i32 %add7.i.i238, 5
  %xor11.i.i242 = xor i32 %shl9.i.i240, %shr10.i.i241
  %add12.i.i243 = add i32 %xor11.i.i242, %add7.i.i238
  %shr13.i.i244 = lshr i32 %add8.i.i239, 11
  %and14.i.i245 = and i32 %shr13.i.i244, 3
  %arrayidx15.i.i246 = getelementptr i32, ptr %scramble_key.i.i224, i32 %and14.i.i245
  %179 = ptrtoint ptr %arrayidx15.i.i246 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx15.i.i246, align 4
  %add16.i.i247 = add i32 %180, %add8.i.i239
  %xor17.i.i248 = xor i32 %add12.i.i243, %add16.i.i247
  %add18.i.i249 = add i32 %xor17.i.i248, %v1.039.i.i228
  %inc.i.i250 = add nuw nsw i32 %i.041.i.i226, 1
  %exitcond.not.i.i251 = icmp eq i32 %inc.i.i250, 32
  br i1 %exitcond.not.i.i251, label %fuse_lock_owner_id.exit.i258, label %for.body.i.i252.for.body.i.i252_crit_edge

for.body.i.i252.for.body.i.i252_crit_edge:        ; preds = %for.body.i.i252
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i252

fuse_lock_owner_id.exit.i258:                     ; preds = %for.body.i.i252
  call void @__sanitizer_cov_trace_pc() #14
  %conv19.i.i253 = zext i32 %add7.i.i238 to i64
  %conv20.i.i254 = zext i32 %add18.i.i249 to i64
  %shl21.i.i255 = shl nuw i64 %conv20.i.i254, 32
  %add22.i.i256 = or i64 %shl21.i.i255, %conv19.i.i253
  %lock_owner.i257 = getelementptr inbounds %struct.fuse_read_in, ptr %ia.0403, i32 0, i32 4
  %181 = ptrtoint ptr %lock_owner.i257 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %add22.i.i256, ptr %lock_owner.i257, align 8
  br label %if.end.i261

if.end.i261:                                      ; preds = %fuse_lock_owner_id.exit.i258, %if.else.if.end.i261_crit_edge
  %async.i259 = getelementptr inbounds %struct.fuse_io_priv, ptr %145, i32 0, i32 1
  %182 = ptrtoint ptr %async.i259 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %async.i259, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i260 = icmp eq i32 %183, 0
  br i1 %tobool.not.i260, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call fastcc i32 @fuse_async_req_send(ptr noundef %153, ptr noundef nonnull %ia.0403, i32 noundef %nbytes.0324) #12
  br label %if.end44

if.end6.i:                                        ; preds = %if.end.i261
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = call i32 @fuse_simple_request(ptr noundef %153, ptr noundef %ap) #12
  br label %if.end44

if.end44:                                         ; preds = %if.end6.i, %if.then4.i, %land.lhs.true.i.if.end44_crit_edge, %if.end7.i.if.end44_crit_edge, %if.then5.i
  %nres.0 = phi i32 [ %nbytes.0324, %if.then5.i ], [ %call8.i, %if.end7.i.if.end44_crit_edge ], [ %nbytes.0324, %if.then4.i ], [ %call7.i, %if.end6.i ], [ %143, %land.lhs.true.i.if.end44_crit_edge ]
  %184 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %async, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool45.not = icmp eq i32 %185, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nres.0)
  %cmp46 = icmp slt i32 %nres.0, 0
  %or.cond = select i1 %tobool45.not, i1 true, i1 %cmp46
  br i1 %or.cond, label %if.end44.if.then48_crit_edge, label %if.end44.if.end56_crit_edge

if.end44.if.end56_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.end44.if.then48_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.then48:                                        ; preds = %if.end44.if.then48_crit_edge, %land.lhs.true.i.if.then48_crit_edge
  %cmp46340 = phi i1 [ %cmp46, %if.end44.if.then48_crit_edge ], [ true, %land.lhs.true.i.if.then48_crit_edge ]
  %nres.0338 = phi i32 [ %nres.0, %if.end44.if.then48_crit_edge ], [ -5, %land.lhs.true.i.if.then48_crit_edge ]
  %186 = ptrtoint ptr %should_dirty to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %should_dirty, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool51 = icmp ne i8 %187, 0
  call fastcc void @fuse_release_user_pages(ptr noundef %ap, i1 noundef zeroext %tobool51)
  %pages.i264 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0403, i32 0, i32 1, i32 1
  %188 = ptrtoint ptr %pages.i264 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pages.i264, align 8
  call void @kfree(ptr noundef %189) #12
  call void @kfree(ptr noundef nonnull %ia.0403) #12
  br i1 %cmp46340, label %if.then55, label %if.then48.if.end56_crit_edge

if.then48.if.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then55:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %nbytes.0324) #12
  br label %if.end103

if.end56:                                         ; preds = %if.then48.if.end56_crit_edge, %if.end44.if.end56_crit_edge
  %nres.0337342 = phi i32 [ %nres.0338, %if.then48.if.end56_crit_edge ], [ %nres.0, %if.end44.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.0324, i32 %nres.0337342)
  %cmp57 = icmp ult i32 %nbytes.0324, %nres.0337342
  br i1 %cmp57, label %do.end, label %if.end56.if.end73_crit_edge, !prof !72

if.end56.if.end73_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

do.end:                                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1489, i32 noundef 9, ptr noundef null) #12
  br label %if.end73

if.end73:                                         ; preds = %do.end, %if.end56.if.end73_crit_edge
  %sub81 = sub i32 %count.0399, %nres.0337342
  %add82 = add i32 %nres.0337342, %res.0400
  %conv83 = sext i32 %nres.0337342 to i64
  %add84 = add i64 %pos.0396, %conv83
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.0324, i32 %nres.0337342)
  %cmp85.not = icmp eq i32 %nbytes.0324, %nres.0337342
  br i1 %cmp85.not, label %if.end89, label %if.then87

if.then87:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  %sub88 = sub i32 %nbytes.0324, %nres.0337342
  call void @iov_iter_revert(ptr noundef %iter, i32 noundef %sub88) #12
  br label %if.end103

if.end89:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub81)
  %tobool90.not = icmp eq i32 %sub81, 0
  br i1 %tobool90.not, label %if.end89.if.end103_crit_edge, label %if.then91

if.end89.if.end103_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then91:                                        ; preds = %if.end89
  %190 = ptrtoint ptr %max_pages6 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %max_pages6, align 4
  %call93 = call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef %191) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %192 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i265 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %192, i32 noundef 3520, i32 noundef 144) #15
  %tobool.not.i266 = icmp eq ptr %call7.i.i.i265, null
  br i1 %tobool.not.i266, label %if.then91.if.end103_crit_edge, label %if.then.i270

if.then91.if.end103_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end103

if.then.i270:                                     ; preds = %if.then91
  %io1.i267 = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i265, i32 0, i32 2
  %193 = ptrtoint ptr %io1.i267 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %io, ptr %io1.i267, align 8
  %descs.i268 = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i265, i32 0, i32 1, i32 2
  %mul.i.i269 = mul i32 %call93, 12
  %call9.i.i.i.i299 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i269, i32 noundef 3520) #16
  %add.ptr.i.i302 = getelementptr ptr, ptr %call9.i.i.i.i299, i32 %call93
  %194 = ptrtoint ptr %descs.i268 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %add.ptr.i.i302, ptr %descs.i268, align 4
  %pages.i303 = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i265, i32 0, i32 1, i32 1
  %195 = ptrtoint ptr %pages.i303 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call9.i.i.i.i299, ptr %pages.i303, align 8
  %tobool6.not.i304 = icmp eq ptr %call9.i.i.i.i299, null
  br i1 %tobool6.not.i304, label %if.then7.i306, label %if.then.i270.while.body_crit_edge

if.then.i270.while.body_crit_edge:                ; preds = %if.then.i270
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then7.i306:                                    ; preds = %if.then.i270
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i265) #12
  br label %if.end103

if.then102:                                       ; preds = %land.lhs.true33.if.then102_crit_edge, %land.end.if.then102_crit_edge
  %pos.0.lcssa = phi i64 [ %16, %land.end.if.then102_crit_edge ], [ %pos.0396, %land.lhs.true33.if.then102_crit_edge ]
  %res.0.lcssa = phi i32 [ 0, %land.end.if.then102_crit_edge ], [ %res.0400, %land.lhs.true33.if.then102_crit_edge ]
  %ia.0.lcssa = phi ptr [ %call7.i.i.i, %land.end.if.then102_crit_edge ], [ %ia.0403, %land.lhs.true33.if.then102_crit_edge ]
  %err.2 = phi i32 [ 0, %land.end.if.then102_crit_edge ], [ %ret.2.i455, %land.lhs.true33.if.then102_crit_edge ]
  %pages.i309 = getelementptr inbounds %struct.fuse_io_args, ptr %ia.0.lcssa, i32 0, i32 1, i32 1
  %196 = ptrtoint ptr %pages.i309 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pages.i309, align 8
  call void @kfree(ptr noundef %197) #12
  call void @kfree(ptr noundef nonnull %ia.0.lcssa) #12
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.then7.i306, %if.then91.if.end103_crit_edge, %if.end89.if.end103_crit_edge, %if.then87, %if.then55
  %err.2362 = phi i32 [ %err.2, %if.then102 ], [ %retval.0.i327, %if.then7.i306 ], [ %nres.0338, %if.then55 ], [ %retval.0.i327, %if.then87 ], [ %retval.0.i327, %if.then91.if.end103_crit_edge ], [ %retval.0.i327, %if.end89.if.end103_crit_edge ]
  %res.2361 = phi i32 [ %res.0.lcssa, %if.then102 ], [ %add82, %if.then7.i306 ], [ %res.0400, %if.then55 ], [ %add82, %if.then87 ], [ %add82, %if.then91.if.end103_crit_edge ], [ %add82, %if.end89.if.end103_crit_edge ]
  %pos.2360 = phi i64 [ %pos.0.lcssa, %if.then102 ], [ %add84, %if.then7.i306 ], [ %pos.0396, %if.then55 ], [ %add84, %if.then87 ], [ %add84, %if.then91.if.end103_crit_edge ], [ %add84, %if.end89.if.end103_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.2361)
  %cmp104 = icmp sgt i32 %res.2361, 0
  br i1 %cmp104, label %if.then106, label %if.end103.cleanup114_crit_edge

if.end103.cleanup114_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %pos.2360, ptr %ppos, align 8
  br label %cleanup114

cleanup114:                                       ; preds = %if.then106, %if.end103.cleanup114_crit_edge, %if.then7.i, %entry.cleanup114_crit_edge
  %retval.0 = phi i32 [ -12, %if.then7.i ], [ -12, %entry.cleanup114_crit_edge ], [ %res.2361, %if.then106 ], [ %err.2362, %if.end103.cleanup114_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_release_user_pages(ptr nocapture noundef readonly %ap, i1 noundef zeroext %should_dirty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 3
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  br i1 %should_dirty, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @set_page_dirty_lock(ptr noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 8
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.09
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %9 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.6) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !87
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_release_user_pages, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %14) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.09, 1
  %19 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_pages, align 8
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_flush_writepages(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %queued_writes = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 1
  %writectr = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 2
  %4 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writectr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp10 = icmp sgt i32 %5, -1
  br i1 %cmp10, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %list_del_init.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %6 = ptrtoint ptr %queued_writes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %queued_writes, align 4
  %cmp.i.not = icmp eq ptr %7, %queued_writes
  br i1 %cmp.i.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %add.ptr = getelementptr i8, ptr %7, i32 -156
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i3.i, align 4
  tail call fastcc void @fuse_send_writepage(ptr noundef %3, ptr noundef %add.ptr, i64 noundef %call2)
  %16 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %writectr, align 8
  %cmp = icmp sgt i32 %17, -1
  br i1 %cmp, label %list_del_init.exit.land.rhs_crit_edge, label %list_del_init.exit.while.end_crit_edge

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

list_del_init.exit.land.rhs_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !92
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !93
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !72

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !94
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !96
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !97
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !98
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_send_writepage(ptr noundef %fm, ptr noundef %wpa, i64 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 4
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  %ap = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 8
  %mul = shl i32 %3, 12
  %conv = zext i32 %mul to i64
  %writectr = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 2
  %4 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %writectr, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %writectr, align 8
  %offset = getelementptr inbounds %struct.fuse_write_in, ptr %wpa, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %add = add i64 %7, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %size)
  %cmp.not = icmp ugt i64 %add, %size
  br i1 %cmp.not, label %if.else, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %size)
  %cmp9 = icmp ult i64 %7, %size
  br i1 %cmp9, label %if.then11, label %if.else.out_free_crit_edge

if.else.out_free_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i64 %size, %7
  %conv13 = trunc i64 %sub to i32
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %entry.if.end16_crit_edge
  %conv13.sink = phi i32 [ %conv13, %if.then11 ], [ %mul, %entry.if.end16_crit_edge ]
  %size14 = getelementptr inbounds %struct.fuse_write_in, ptr %wpa, i32 0, i32 2
  %8 = ptrtoint ptr %size14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv13.sink, ptr %size14, align 8
  %arrayidx = getelementptr %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv13.sink, ptr %arrayidx, align 4
  %force = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %force to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %force, align 8
  %bf.set21 = or i16 %bf.load, -24576
  store i16 %bf.set21, ptr %force, align 8
  %call22 = tail call i32 @fuse_simple_background(ptr noundef %fm, ptr noundef %ap, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call22)
  %cmp23 = icmp eq i32 %call22, -12
  br i1 %cmp23, label %if.then25, label %if.end16.if.end28_crit_edge

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %call26 = tail call i32 @fuse_simple_background(ptr noundef %fm, ptr noundef %ap, i32 noundef 35904) #12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end16.if.end28_crit_edge
  %err.0 = phi i32 [ %call26, %if.then25 ], [ %call22, %if.end16.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end28.cleanup_crit_edge, label %if.end28.out_free_crit_edge, !prof !78

if.end28.out_free_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

out_free:                                         ; preds = %if.end28.out_free_crit_edge, %if.else.out_free_crit_edge
  %11 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %writectr, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %writectr, align 8
  %writepages_entry = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 1
  %writepages = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  tail call void @rb_erase(ptr noundef %writepages_entry, ptr noundef %writepages) #12
  tail call fastcc void @fuse_writepage_finish(ptr noundef %wpa)
  %lock34 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %lock34) #12
  %next35 = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 3
  %13 = ptrtoint ptr %next35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next35, align 4
  %tobool36.not77 = icmp eq ptr %14, null
  br i1 %tobool36.not77, label %out_free.for.end_crit_edge, label %out_free.for.body_crit_edge

out_free.for.body_crit_edge:                      ; preds = %out_free
  br label %for.body

out_free.for.end_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %out_free.for.body_crit_edge
  %aux.078 = phi ptr [ %16, %for.body.for.body_crit_edge ], [ %14, %out_free.for.body_crit_edge ]
  %next37 = getelementptr inbounds %struct.fuse_writepage_args, ptr %aux.078, i32 0, i32 3
  %15 = ptrtoint ptr %next37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next37, align 4
  store ptr null, ptr %next37, align 4
  tail call fastcc void @fuse_writepage_free(ptr noundef nonnull %aux.078)
  %tobool36.not = icmp eq ptr %16, null
  br i1 %tobool36.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %out_free.for.end_crit_edge
  tail call fastcc void @fuse_writepage_free(ptr noundef %wpa)
  tail call void @_raw_spin_lock(ptr noundef %lock34) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end28.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %for_reclaim = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %0 = ptrtoint ptr %for_reclaim to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %for_reclaim, align 4
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !78

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1853, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %2 = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 4
  %cmp.not.i = icmp eq ptr %4, %2
  %add.ptr.i = getelementptr i8, ptr %4, i32 -40
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %tobool.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i, label %if.end.__fuse_write_file_get.exit_crit_edge, label %if.then.i

if.end.__fuse_write_file_get.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fuse_write_file_get.exit

if.then.i:                                        ; preds = %if.end
  %count.i.i = getelementptr inbounds %struct.fuse_file, ptr %spec.select.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #12, !srcloc !99
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !72

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__fuse_write_file_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__fuse_write_file_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fuse_write_file_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %__fuse_write_file_get.exit

__fuse_write_file_get.exit:                       ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__fuse_write_file_get.exit_crit_edge, %if.end.__fuse_write_file_get.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %call21 = tail call i32 @fuse_flush_times(ptr noundef %inode, ptr noundef %spec.select.i) #12
  br i1 %tobool.not.i, label %__fuse_write_file_get.exit.if.end24_crit_edge, label %if.then23

__fuse_write_file_get.exit.if.end24_crit_edge:    ; preds = %__fuse_write_file_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %__fuse_write_file_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fuse_file_put(ptr noundef nonnull %spec.select.i, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %__fuse_write_file_get.exit.if.end24_crit_edge
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_flush_times(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_file_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  %inarg = alloca %struct.fuse_poll_in, align 8
  %outarg = alloca %struct.fuse_poll_out, align 4
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inarg) #12
  %4 = getelementptr inbounds %struct.fuse_poll_in, ptr %inarg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fuse_poll_in, ptr %inarg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fuse_poll_in, ptr %inarg, i32 0, i32 3
  %fh2 = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %fh2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fh2, align 8
  %9 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %inarg, align 8
  %kh3 = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %kh3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %kh3, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %4, align 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outarg) #12
  %14 = ptrtoint ptr %outarg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %outarg, align 4, !annotation !85
  %15 = getelementptr inbounds %struct.fuse_poll_out, ptr %outarg, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %15, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #12
  %17 = call ptr @memset(ptr %args, i32 0, i32 64)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %no_poll = getelementptr inbounds %struct.fuse_conn, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %no_poll to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load = load i56, ptr %no_poll, align 1
  %21 = and i56 %bf.load, 268435456
  %tobool.not = icmp eq i56 %21, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %poll_wait = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_requested_events.exit_crit_edge, label %land.lhs.true.i

if.end.poll_requested_events.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_requested_events.exit

land.lhs.true.i:                                  ; preds = %if.end
  %22 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  %tobool3.not.i = icmp eq ptr %poll_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.cond.true.i_crit_edge, label %if.then.i

land.lhs.true.i.cond.true.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %23(ptr noundef %file, ptr noundef nonnull %poll_wait, ptr noundef nonnull %wait) #12
  br label %cond.true.i

cond.true.i:                                      ; preds = %if.then.i, %land.lhs.true.i.cond.true.i_crit_edge
  %_key.i = getelementptr inbounds %struct.poll_table_struct, ptr %wait, i32 0, i32 1
  %24 = ptrtoint ptr %_key.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %_key.i, align 4
  %phi.bo = and i32 %25, 10239
  br label %poll_requested_events.exit

poll_requested_events.exit:                       ; preds = %cond.true.i, %if.end.poll_requested_events.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 10239, %if.end.poll_requested_events.exit_crit_edge ]
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i, ptr %6, align 4
  %head.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 10, i32 1
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %28, %head.i
  br i1 %cmp.i.i.not, label %poll_requested_events.exit.if.end12_crit_edge, label %if.then9

poll_requested_events.exit.if.end12_crit_edge:    ; preds = %poll_requested_events.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %poll_requested_events.exit
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 8
  %or = or i32 %30, 1
  store i32 %or, ptr %5, align 8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_lock(ptr noundef %32) #12
  %polled_node.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %polled_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %polled_node.i, align 8
  %35 = ptrtoint ptr %polled_node.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %35)
  %cmp.i = icmp eq i32 %34, %35
  br i1 %cmp.i, label %if.then.i52, label %if.then9.fuse_register_polled_file.exit_crit_edge

if.then9.fuse_register_polled_file.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_register_polled_file.exit

if.then.i52:                                      ; preds = %if.then9
  %36 = ptrtoint ptr %kh3 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %kh3, align 8
  %polled_files.i.i = getelementptr inbounds %struct.fuse_conn, ptr %32, i32 0, i32 14
  %38 = ptrtoint ptr %polled_files.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %polled_files.i.i, align 4
  %tobool.not28.i.i = icmp eq ptr %39, null
  br i1 %tobool.not28.i.i, label %if.then.i52.do.end10.i_crit_edge, label %if.then.i52.while.body.i.i_crit_edge

if.then.i52.while.body.i.i_crit_edge:             ; preds = %if.then.i52
  br label %while.body.i.i

if.then.i52.do.end10.i_crit_edge:                 ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then.i52.while.body.i.i_crit_edge
  %40 = phi ptr [ %44, %cleanup.i.i.while.body.i.i_crit_edge ], [ %39, %if.then.i52.while.body.i.i_crit_edge ]
  %link.029.i.i = phi ptr [ %link.2.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %polled_files.i.i, %if.then.i52.while.body.i.i_crit_edge ]
  %kh1.i.i = getelementptr i8, ptr %40, i32 -160
  %41 = ptrtoint ptr %kh1.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %kh1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %37)
  %cmp.i.i53 = icmp ugt i64 %42, %37
  br i1 %cmp.i.i53, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %42, i64 %37)
  %cmp3.i.i = icmp ult i64 %42, %37
  br i1 %cmp3.i.i, label %if.then4.i.i, label %fuse_find_polled_node.exit.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %link.2.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %43 = ptrtoint ptr %link.2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %link.2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.do.end10.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

cleanup.i.i.do.end10.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

fuse_find_polled_node.exit.i:                     ; preds = %if.else.i.i
  %45 = ptrtoint ptr %link.029.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load ptr, ptr %link.029.i.i, align 4
  %tobool.not.i54 = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i54, label %fuse_find_polled_node.exit.i.do.end10.i_crit_edge, label %do.body5.i, !prof !78

fuse_find_polled_node.exit.i.do.end10.i_crit_edge: ; preds = %fuse_find_polled_node.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

do.body5.i:                                       ; preds = %fuse_find_polled_node.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/fuse/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2723, 0\0A.popsection", ""() #12, !srcloc !100
  unreachable

do.end10.i:                                       ; preds = %fuse_find_polled_node.exit.i.do.end10.i_crit_edge, %cleanup.i.i.do.end10.i_crit_edge, %if.then.i52.do.end10.i_crit_edge
  %link.026.i29.i = phi ptr [ %link.029.i.i, %fuse_find_polled_node.exit.i.do.end10.i_crit_edge ], [ %polled_files.i.i, %if.then.i52.do.end10.i_crit_edge ], [ %link.2.i.i, %cleanup.i.i.do.end10.i_crit_edge ]
  %parent.028.i = phi ptr [ inttoptr (i32 -1 to ptr), %fuse_find_polled_node.exit.i.do.end10.i_crit_edge ], [ null, %if.then.i52.do.end10.i_crit_edge ], [ %40, %cleanup.i.i.do.end10.i_crit_edge ]
  %46 = ptrtoint ptr %parent.028.i to i32
  %47 = ptrtoint ptr %polled_node.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %polled_node.i, align 4
  %rb_right.i23.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %rb_right.i23.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rb_right.i23.i, align 4
  %rb_left.i24.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 9, i32 2
  %49 = ptrtoint ptr %rb_left.i24.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_left.i24.i, align 4
  %50 = ptrtoint ptr %link.026.i29.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %polled_node.i, ptr %link.026.i29.i, align 4
  tail call void @rb_insert_color(ptr noundef %polled_node.i, ptr noundef %polled_files.i.i) #12
  br label %fuse_register_polled_file.exit

fuse_register_polled_file.exit:                   ; preds = %do.end10.i, %if.then9.fuse_register_polled_file.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %32) #12
  br label %if.end12

if.end12:                                         ; preds = %fuse_register_polled_file.exit, %poll_requested_events.exit.if.end12_crit_edge
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %51 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 40, ptr %opcode, align 8
  %nodeid = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %nodeid to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %nodeid, align 8
  %54 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %55 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %56 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %57 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %inarg, ptr %value, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %58 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %out_numargs, align 2
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %59 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %out_args, align 4
  %value20 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %60 = ptrtoint ptr %value20 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %outarg, ptr %value20, align 8
  %call21 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %args) #12
  %61 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call21, label %if.end12.cleanup_crit_edge [
    i32 0, label %if.then23
    i32 -38, label %if.then28
  ]

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %outarg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %outarg, align 4
  %64 = and i32 %63, 10239
  br label %cleanup

if.then28:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %no_poll30 = getelementptr inbounds %struct.fuse_conn, ptr %66, i32 0, i32 26
  %67 = ptrtoint ptr %no_poll30 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 7)
  %bf.load31 = load i56, ptr %no_poll30, align 1
  %bf.set = or i56 %bf.load31, 268435456
  store i56 %bf.set, ptr %no_poll30, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.then23, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 325, %if.then28 ], [ %64, %if.then23 ], [ 325, %entry.cleanup_crit_edge ], [ 8, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outarg) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inarg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_notify_poll_wakeup(ptr noundef %fc, ptr nocapture noundef readonly %outarg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %outarg, align 8
  tail call void @_raw_spin_lock(ptr noundef %fc) #12
  %polled_files.i = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 14
  %2 = ptrtoint ptr %polled_files.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %polled_files.i, align 4
  %tobool.not28.i = icmp eq ptr %3, null
  br i1 %tobool.not28.i, label %entry.if.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %8, %cleanup.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %link.029.i = phi ptr [ %link.2.i, %cleanup.i.while.body.i_crit_edge ], [ %polled_files.i, %entry.while.body.i_crit_edge ]
  %kh1.i = getelementptr i8, ptr %4, i32 -160
  %5 = ptrtoint ptr %kh1.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %kh1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %1)
  %cmp.i = icmp ugt i64 %6, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %1)
  %cmp3.i = icmp ult i64 %6, %1
  br i1 %cmp3.i, label %if.then4.i, label %fuse_find_polled_node.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then.i
  %link.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %7 = ptrtoint ptr %link.2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link.2.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

fuse_find_polled_node.exit:                       ; preds = %if.else.i
  %9 = ptrtoint ptr %link.029.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %link.029.i, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %fuse_find_polled_node.exit.if.end_crit_edge, label %if.then

fuse_find_polled_node.exit.if.end_crit_edge:      ; preds = %fuse_find_polled_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %fuse_find_polled_node.exit
  call void @__sanitizer_cov_trace_pc() #14
  %poll_wait = getelementptr i8, ptr %.pr, i32 12
  tail call void @__wake_up_sync(ptr noundef %poll_wait, i32 noundef 1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %fuse_find_polled_node.exit.if.end_crit_edge, %cleanup.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %fc) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fuse_init_file_inode(ptr noundef %inode, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fuse_file_operations, ptr %0, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %2 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fuse_file_aops, ptr %a_ops, align 8
  %3 = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %prev.i, align 4
  %queued_writes = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 1
  %6 = ptrtoint ptr %queued_writes to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %queued_writes, ptr %queued_writes, align 4
  %prev.i7 = getelementptr inbounds %struct.list_head, ptr %queued_writes, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queued_writes, ptr %prev.i7, align 4
  %writectr = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %writectr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %writectr, align 8
  %page_waitq = getelementptr inbounds %struct.anon.86, ptr %3, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %page_waitq, ptr noundef nonnull @.str.4, ptr noundef nonnull @fuse_init_file_inode.__key) #12
  %writepages = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  %9 = ptrtoint ptr %writepages to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %writepages, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_release_end(ptr nocapture noundef readnone %fm, ptr noundef %args, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inode = getelementptr inbounds %struct.fuse_release_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 8
  tail call void @iput(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %args) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_simple_background(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_single_seg_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_async_req_send(ptr noundef %fm, ptr noundef %ia, i32 noundef returned %num_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io1 = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 2
  %0 = ptrtoint ptr %io1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io1, align 8
  %lock = getelementptr inbounds %struct.fuse_io_priv, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #12, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %size = getelementptr inbounds %struct.fuse_io_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %add = add i32 %5, %num_bytes
  store i32 %add, ptr %size, align 4
  %reqs = getelementptr inbounds %struct.fuse_io_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqs, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %reqs, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %ap = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1
  %end = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 7
  %8 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fuse_aio_complete_req, ptr %end, align 4
  %should_dirty = getelementptr inbounds %struct.fuse_io_priv, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %should_dirty to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %should_dirty, align 1, !range !86
  %may_block = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %may_block to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %may_block, align 8
  %12 = shl nuw nsw i8 %10, 6
  %bf.shl = zext i8 %12 to i16
  %bf.clear = and i16 %bf.load, -65
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %may_block, align 8
  %call = tail call i32 @fuse_simple_background(ptr noundef %fm, ptr noundef %ap, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %kref_get.exit.if.end_crit_edge, label %if.then

kref_get.exit.if.end_crit_edge:                   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fuse_aio_complete_req(ptr noundef %fm, ptr noundef %ap, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %kref_get.exit.if.end_crit_edge
  ret i32 %num_bytes
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_aio_complete_req(ptr nocapture noundef readnone %fm, ptr noundef %args, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %io1 = getelementptr i8, ptr %args, i32 80
  %0 = ptrtoint ptr %io1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io1, align 8
  %should_dirty = getelementptr inbounds %struct.fuse_io_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %should_dirty to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %should_dirty, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  tail call fastcc void @fuse_release_user_pages(ptr noundef %args, i1 noundef zeroext %tobool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool2.not = icmp eq i32 %err, 0
  br i1 %tobool2.not, label %if.else, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else:                                          ; preds = %entry
  %write = getelementptr inbounds %struct.fuse_io_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %write, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.else20, label %if.then4

if.then4:                                         ; preds = %if.else
  %out = getelementptr i8, ptr %args, i32 -16
  %6 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out, align 8
  %size5 = getelementptr i8, ptr %args, i32 -40
  %8 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp ugt i32 %7, %9
  br i1 %cmp, label %if.then4.if.end36_crit_edge, label %if.else7

if.then4.if.end36_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp12.not = icmp eq i32 %9, %7
  br i1 %cmp12.not, label %if.else7.if.end36_crit_edge, label %if.else7.if.end36.sink.split_crit_edge

if.else7.if.end36.sink.split_crit_edge:           ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.sink.split

if.else7.if.end36_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else20:                                        ; preds = %if.else
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %10 = ptrtoint ptr %out_args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out_args, align 4
  %size23 = getelementptr i8, ptr %args, i32 -40
  %12 = ptrtoint ptr %size23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size23, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp24.not = icmp eq i32 %13, %11
  br i1 %cmp24.not, label %if.else20.if.end36_crit_edge, label %if.else20.if.end36.sink.split_crit_edge

if.else20.if.end36.sink.split_crit_edge:          ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.sink.split

if.else20.if.end36_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end36.sink.split:                              ; preds = %if.else20.if.end36.sink.split_crit_edge, %if.else7.if.end36.sink.split_crit_edge
  %.sink = phi i32 [ %7, %if.else7.if.end36.sink.split_crit_edge ], [ %11, %if.else20.if.end36.sink.split_crit_edge ]
  %offset28 = getelementptr i8, ptr %args, i32 -48
  %14 = ptrtoint ptr %offset28 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset28, align 8
  %offset29 = getelementptr inbounds %struct.fuse_io_priv, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %offset29 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %offset29, align 8
  %sub30 = sub i64 %15, %17
  %18 = trunc i64 %sub30 to i32
  %conv33 = add i32 %.sink, %18
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else20.if.end36_crit_edge, %if.else7.if.end36_crit_edge, %if.then4.if.end36_crit_edge, %entry.if.end36_crit_edge
  %err.addr.0 = phi i32 [ %err, %entry.if.end36_crit_edge ], [ 0, %if.else7.if.end36_crit_edge ], [ -5, %if.then4.if.end36_crit_edge ], [ 0, %if.else20.if.end36_crit_edge ], [ 0, %if.end36.sink.split ]
  %pos.1 = phi i32 [ -1, %entry.if.end36_crit_edge ], [ -1, %if.else7.if.end36_crit_edge ], [ -1, %if.then4.if.end36_crit_edge ], [ -1, %if.else20.if.end36_crit_edge ], [ %conv33, %if.end36.sink.split ]
  %add.ptr = getelementptr i8, ptr %args, i32 -56
  tail call fastcc void @fuse_aio_complete(ptr noundef %1, i32 noundef %err.addr.0, i32 noundef %pos.1)
  %pages.i = getelementptr i8, ptr %args, i32 64
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 8
  tail call void @kfree(ptr noundef %20) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_aio_complete(ptr noundef %io, i32 noundef %err, i32 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %err1 = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 9
  %0 = ptrtoint ptr %err1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %err1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool2.not, i32 %err, i32 %1
  %2 = ptrtoint ptr %err1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %err1, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pos)
  %cmp = icmp sgt i32 %pos, -1
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

land.lhs.true:                                    ; preds = %if.else
  %bytes = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 4
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp slt i32 %4, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pos)
  %cmp6 = icmp sgt i32 %4, %pos
  %or.cond = or i1 %cmp4, %cmp6
  br i1 %or.cond, label %if.then7, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %pos, ptr %bytes, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true.if.end9_crit_edge, %if.else.if.end9_crit_edge, %if.then
  %reqs = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 3
  %6 = ptrtoint ptr %reqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reqs, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %reqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %if.end33.critedge

land.lhs.true11:                                  ; preds = %if.end9
  %blocking = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 12
  %8 = ptrtoint ptr %blocking to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %blocking, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %land.lhs.true11.land.lhs.true17_crit_edge, label %if.then13

land.lhs.true11.land.lhs.true17_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true17

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  %done = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 11
  %10 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %done, align 4
  tail call void @complete(ptr noundef %11) #12
  br label %land.lhs.true17

land.lhs.true17:                                  ; preds = %if.then13, %land.lhs.true11.land.lhs.true17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  %12 = ptrtoint ptr %blocking to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %blocking, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true17.if.end33_crit_edge

land.lhs.true17.if.end33_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then20:                                        ; preds = %land.lhs.true17
  %err.i = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 9
  %14 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.fuse_get_res_by_io.exit_crit_edge

if.then20.fuse_get_res_by_io.exit_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_get_res_by_io.exit

if.end.i:                                         ; preds = %if.then20
  %bytes.i = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 4
  %16 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i = icmp sgt i32 %17, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %cond.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %write.i = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 7
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write.i, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i = icmp eq i8 %19, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.then22_crit_edge, label %land.lhs.true.i.if.end30_crit_edge

land.lhs.true.i.if.end30_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true.i.if.then22_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %size.i = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 5
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  br label %fuse_get_res_by_io.exit

fuse_get_res_by_io.exit:                          ; preds = %cond.true.i, %if.then20.fuse_get_res_by_io.exit_crit_edge
  %retval.0.i = phi i32 [ %15, %if.then20.fuse_get_res_by_io.exit_crit_edge ], [ %21, %cond.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp21 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp21, label %fuse_get_res_by_io.exit.if.then22_crit_edge, label %fuse_get_res_by_io.exit.if.end30_crit_edge

fuse_get_res_by_io.exit.if.end30_crit_edge:       ; preds = %fuse_get_res_by_io.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

fuse_get_res_by_io.exit.if.then22_crit_edge:      ; preds = %fuse_get_res_by_io.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %fuse_get_res_by_io.exit.if.then22_crit_edge, %land.lhs.true.i.if.then22_crit_edge
  %retval.0.i63 = phi i32 [ %retval.0.i, %fuse_get_res_by_io.exit.if.then22_crit_edge ], [ %17, %land.lhs.true.i.if.then22_crit_edge ]
  %iocb = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 10
  %22 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iocb, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i, align 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %lock26 = getelementptr inbounds %struct.fuse_inode, ptr %27, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock26) #12
  %attr_version = getelementptr inbounds %struct.fuse_conn, ptr %33, i32 0, i32 34
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_version, i32 noundef 8) #12
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %attr_version) #12
  %attr_version28 = getelementptr inbounds %struct.fuse_inode, ptr %27, i32 0, i32 8
  %34 = ptrtoint ptr %attr_version28 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %call.i2.i, ptr %attr_version28, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock26) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %fuse_get_res_by_io.exit.if.end30_crit_edge, %land.lhs.true.i.if.end30_crit_edge
  %retval.0.i62 = phi i32 [ %retval.0.i63, %if.then22 ], [ %retval.0.i, %fuse_get_res_by_io.exit.if.end30_crit_edge ], [ -5, %land.lhs.true.i.if.end30_crit_edge ]
  %iocb31 = getelementptr inbounds %struct.fuse_io_priv, ptr %io, i32 0, i32 10
  %35 = ptrtoint ptr %iocb31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iocb31, align 8
  %ki_complete = getelementptr inbounds %struct.kiocb, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ki_complete to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ki_complete, align 8
  tail call void %38(ptr noundef %36, i32 noundef %retval.0.i62) #12
  br label %if.end33

if.end33.critedge:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %if.end33

if.end33:                                         ; preds = %if.end33.critedge, %if.end30, %land.lhs.true17.if.end33_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %io, i32 1, i32 3, i32 1) #12
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io, ptr %io, i32 1, ptr elementtype(i32) %io) #12, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %io, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  tail call void @kfree(ptr noundef %io) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_page_dirty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_writepage_finish(ptr nocapture noundef readonly %wpa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inode2 = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 4
  %0 = ptrtoint ptr %inode2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode2, align 8
  %call3 = tail call ptr @inode_to_bdi(ptr noundef %1) #12
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %wb = getelementptr inbounds %struct.backing_dev_info, ptr %call3, i32 0, i32 11
  %arrayidx.i.i = getelementptr %struct.backing_dev_info, ptr %call3, i32 0, i32 11, i32 9, i32 1
  %pages = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 1
  br label %dec_wb_stat.exit

dec_wb_stat.exit:                                 ; preds = %dec_wb_stat.exit.dec_wb_stat.exit_crit_edge, %for.body.lr.ph
  %i.02 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %dec_wb_stat.exit.dec_wb_stat.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true) #12, !range !101
  %sub.i.op.i.i.i = shl nuw nsw i32 %5, 3
  %sub.i.op.i.i.i.op = xor i32 %sub.i.op.i.i.i, 248
  %sub.i.op.i.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.i.op, 8
  %mul.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.op.i.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i.i, i64 noundef -1, i32 noundef %mul.i.i) #12
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.02
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @dec_node_page_state(ptr noundef %9, i32 noundef 22) #12
  tail call void @wb_writeout_inc(ptr noundef %wb) #12
  %inc = add nuw i32 %i.02, 1
  %10 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pages, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %dec_wb_stat.exit.dec_wb_stat.exit_crit_edge, label %dec_wb_stat.exit.for.end_crit_edge

dec_wb_stat.exit.for.end_crit_edge:               ; preds = %dec_wb_stat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

dec_wb_stat.exit.dec_wb_stat.exit_crit_edge:      ; preds = %dec_wb_stat.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dec_wb_stat.exit

for.end:                                          ; preds = %dec_wb_stat.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9
  %page_waitq = getelementptr inbounds %struct.anon.86, ptr %12, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %page_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_writepage_free(ptr noundef %wpa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bucket = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 5
  %0 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bucket, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %rcu_read_lock.exit.i.if.end.i_crit_edge

rcu_read_lock.exit.i.if.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %waitq.i = getelementptr inbounds %struct.fuse_sync_bucket, ptr %1, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %waitq.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rcu_read_lock.exit.i.if.end.i_crit_edge
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2.i, label %if.end.i.fuse_sync_bucket_dec.exit_crit_edge, label %land.lhs.true.i5.i

if.end.i.fuse_sync_bucket_dec.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_sync_bucket_dec.exit

land.lhs.true.i5.i:                               ; preds = %if.end.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.fuse_sync_bucket_dec.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.fuse_sync_bucket_dec.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_sync_bucket_dec.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.fuse_sync_bucket_dec.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.fuse_sync_bucket_dec.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_sync_bucket_dec.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %fuse_sync_bucket_dec.exit

fuse_sync_bucket_dec.exit:                        ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.fuse_sync_bucket_dec.exit_crit_edge, %land.lhs.true.i5.i.fuse_sync_bucket_dec.exit_crit_edge, %if.end.i.fuse_sync_bucket_dec.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  %7 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i9.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %if.end

if.end:                                           ; preds = %fuse_sync_bucket_dec.exit, %entry.if.end_crit_edge
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.not = icmp eq i32 %12, 0
  br i1 %cmp20.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pages = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.021
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @__free_pages(ptr noundef %16, i32 noundef 0) #12
  %inc = add nuw i32 %i.021, 1
  %17 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_pages, align 8
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ff = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 3
  %19 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ff, align 4
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %for.end.if.end8_crit_edge, label %if.then5

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fuse_file_put(ptr noundef nonnull %20, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %for.end.if.end8_crit_edge
  %pages9 = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %pages9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages9, align 8
  tail call void @kfree(ptr noundef %22) #12
  tail call void @kfree(ptr noundef %wpa) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_node_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_writeout_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fuse_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #0 align 64 {
entry:
  %args.i = alloca %struct.fuse_args, align 8
  %inarg.i = alloca %struct.fuse_lseek_in, align 8
  %outarg.i = alloca %struct.fuse_lseek_out, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %whence, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge25
    i32 2, label %sw.bb3
    i32 4, label %entry.sw.bb6_crit_edge
    i32 3, label %entry.sw.bb6_crit_edge26
  ]

entry.sw.bb6_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb6

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25
  %call2 = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %call4 = tail call i32 @fuse_update_attributes(ptr noundef %1, ptr noundef %file, i32 noundef 512) #12
  %conv = sext i32 %call4 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %sw.bb3.if.end_crit_edge

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3.if.end_crit_edge
  %retval1.0 = phi i64 [ %conv, %sw.bb3.if.end_crit_edge ], [ %call5, %if.then ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge26
  %i_rwsem.i23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i23) #12
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %3 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_mapping.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %11 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #12
  %13 = call ptr @memset(ptr %args.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inarg.i) #12
  %14 = getelementptr inbounds %struct.fuse_lseek_in, ptr %inarg.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.fuse_lseek_in, ptr %inarg.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.fuse_lseek_in, ptr %inarg.i, i32 0, i32 3
  %fh1.i = getelementptr inbounds %struct.fuse_file, ptr %12, i32 0, i32 3
  %17 = ptrtoint ptr %fh1.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %fh1.i, align 8
  %19 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %inarg.i, align 8
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %offset, ptr %14, align 8
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %whence, ptr %15, align 8
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outarg.i) #12
  %23 = ptrtoint ptr %outarg.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %outarg.i, align 8, !annotation !85
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 4
  %no_lseek.i = getelementptr inbounds %struct.fuse_conn, ptr %25, i32 0, i32 26
  %26 = ptrtoint ptr %no_lseek.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 7)
  %bf.load.i = load i56, ptr %no_lseek.i, align 1
  %27 = and i56 %bf.load.i, 131072
  %tobool.not.i = icmp eq i56 %27, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb6.fallback.i_crit_edge

sw.bb6.fallback.i_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %fallback.i

if.end.i:                                         ; preds = %sw.bb6
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %28 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 46, ptr %opcode.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %12, i32 0, i32 4
  %29 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %nodeid.i, align 8
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %32 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %33 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 24, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %inarg.i, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 3
  %35 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6
  %36 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8, ptr %out_args.i, align 4
  %value11.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 0, i32 1
  %37 = ptrtoint ptr %value11.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %outarg.i, ptr %value11.i, align 8
  %call12.i = call i32 @fuse_simple_request(ptr noundef %10, ptr noundef nonnull %args.i) #12
  %38 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call12.i, label %if.end20.i [
    i32 0, label %if.end21.i
    i32 -38, label %if.then15.i
  ]

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %10, align 4
  %no_lseek17.i = getelementptr inbounds %struct.fuse_conn, ptr %40, i32 0, i32 26
  %41 = ptrtoint ptr %no_lseek17.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load18.i = load i56, ptr %no_lseek17.i, align 1
  %bf.set.i = or i56 %bf.load18.i, 131072
  store i56 %bf.set.i, ptr %no_lseek17.i, align 1
  br label %fallback.i

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = sext i32 %call12.i to i64
  br label %fuse_lseek.exit

if.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %outarg.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %outarg.i, align 8
  %44 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb.i.i, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %s_maxbytes.i, align 8
  %call23.i = call i64 @vfs_setpos(ptr noundef %file, i64 noundef %43, i64 noundef %47) #12
  br label %fuse_lseek.exit

fallback.i:                                       ; preds = %if.then15.i, %sw.bb6.fallback.i_crit_edge
  %call24.i = call i32 @fuse_update_attributes(ptr noundef %6, ptr noundef %file, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %fallback.i
  call void @__sanitizer_cov_trace_pc() #14
  %call27.i = call i64 @generic_file_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #12
  br label %fuse_lseek.exit

if.else.i:                                        ; preds = %fallback.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv28.i = sext i32 %call24.i to i64
  br label %fuse_lseek.exit

fuse_lseek.exit:                                  ; preds = %if.else.i, %if.then26.i, %if.end21.i, %if.end20.i
  %retval.0.i = phi i64 [ %conv28.i, %if.else.i ], [ %call27.i, %if.then26.i ], [ %conv.i, %if.end20.i ], [ %call23.i, %if.end21.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outarg.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inarg.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #12
  call void @up_write(ptr noundef %i_rwsem.i23) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %fuse_lseek.exit, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  %retval1.1 = phi i64 [ %retval.0.i, %fuse_lseek.exit ], [ %retval1.0, %if.end ], [ %call2, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i64 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  %io.i = alloca %struct.fuse_io_priv, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_flags = getelementptr inbounds %struct.fuse_file, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open_flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %auto_inval_data.i = getelementptr inbounds %struct.fuse_conn, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %auto_inval_data.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load.i = load i56, ptr %auto_inval_data.i, align 1
  %22 = and i56 %bf.load.i, 4194304
  %tobool.not.i = icmp eq i56 %22, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then2.if.then.i_crit_edge

if.then2.if.then.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then2
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %23 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ki_pos.i, align 8
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %25 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count.i.i, align 8
  %conv.i = zext i32 %26 to i64
  %add.i = add i64 %24, %conv.i
  %call2.i = tail call fastcc i64 @i_size_read(ptr noundef %14) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call2.i)
  %cmp.i = icmp sgt i64 %add.i, %call2.i
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end8.i_crit_edge

lor.lhs.false.i.if.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then2.if.then.i_crit_edge
  %27 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iocb, align 8
  %call5.i = tail call i32 @fuse_update_attributes(ptr noundef %14, ptr noundef %28, i32 noundef 512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %lor.lhs.false.i.if.end8.i_crit_edge
  %call9.i = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %to) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ki_complete.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %29 = ptrtoint ptr %ki_complete.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ki_complete.i.i, align 8
  %cmp.i.i = icmp eq ptr %30, null
  br i1 %cmp.i.i, label %if.else.if.else.i_crit_edge, label %land.lhs.true.i

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.else
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %31 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %32, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i11 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i12

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i12:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @fuse_direct_IO(ptr noundef %iocb, ptr noundef %to) #12
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %io.i) #12
  %33 = call ptr @memset(ptr %io.i, i32 0, i32 96)
  %34 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %io.i, align 8
  %iocb2.i = getelementptr inbounds %struct.fuse_io_priv, ptr %io.i, i32 0, i32 10
  %35 = ptrtoint ptr %iocb2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %iocb, ptr %iocb2.i, align 8
  %ki_pos.i13 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %36 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %f_inode.i, align 8
  %call1.i.i = call i32 @fuse_direct_io(ptr noundef nonnull %io.i, ptr noundef %to, ptr noundef %ki_pos.i13, i32 noundef 0) #12
  call void @fuse_invalidate_atime(ptr noundef %37) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %io.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i12, %if.end8.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call9.i, %if.end8.i ], [ %call5.i, %if.then.i.cleanup_crit_edge ], [ %call1.i.i, %if.else.i ], [ %call1.i, %if.then.i12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  %io.i = alloca %struct.fuse_io_priv, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i, align 8
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_flags = getelementptr inbounds %struct.fuse_file, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %open_flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_mapping.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %writeback_cache.i = getelementptr inbounds %struct.fuse_conn, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %writeback_cache.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load.i = load i56, ptr %writeback_cache.i, align 1
  %22 = and i56 %bf.load.i, 562949953421312
  %tobool.not.i = icmp eq i56 %22, 0
  br i1 %tobool.not.i, label %if.then2.writethrough.i_crit_edge, label %if.then.i

if.then2.writethrough.i_crit_edge:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %writethrough.i

if.then.i:                                        ; preds = %if.then2
  %call2.i = tail call i32 @fuse_update_attributes(ptr noundef %14, ptr noundef %1, i32 noundef 514) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %23 = ptrtoint ptr %writeback_cache.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load5.i = load i56, ptr %writeback_cache.i, align 1
  %24 = and i56 %bf.load5.i, 17592186044416
  %tobool9.not.i = icmp eq i56 %24, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end14.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dentry.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %and.i.i.i = and i32 %28, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.file_dentry.exit.i_crit_edge, label %if.then.i.i.i, !prof !78

land.lhs.true.i.file_dentry.exit.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_dentry.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %f_inode.i, align 8
  %d_op.i.i.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 8
  %31 = ptrtoint ptr %d_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_op.i.i.i, align 8
  %d_real.i.i.i = getelementptr inbounds %struct.dentry_operations, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %d_real.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_real.i.i.i, align 16
  %call.i.i.i = tail call ptr %34(ptr noundef %26, ptr noundef %30) #12
  br label %file_dentry.exit.i

file_dentry.exit.i:                               ; preds = %if.then.i.i.i, %land.lhs.true.i.file_dentry.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i.i ], [ %26, %land.lhs.true.i.file_dentry.exit.i_crit_edge ]
  %call11.i = tail call i32 @should_remove_suid(ptr noundef %retval.0.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %file_dentry.exit.i.if.end14.i_crit_edge, label %file_dentry.exit.i.writethrough.i_crit_edge

file_dentry.exit.i.writethrough.i_crit_edge:      ; preds = %file_dentry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %writethrough.i

file_dentry.exit.i.if.end14.i_crit_edge:          ; preds = %file_dentry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end14.i:                                       ; preds = %file_dentry.exit.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %call15.i = tail call i32 @generic_file_write_iter(ptr noundef %iocb, ptr noundef %from) #12
  br label %cleanup

writethrough.i:                                   ; preds = %file_dentry.exit.i.writethrough.i_crit_edge, %if.then2.writethrough.i_crit_edge
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #12
  %call17.i = tail call ptr @inode_to_bdi(ptr noundef %14) #12
  %35 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i, align 8
  %backing_dev_info.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 150
  %39 = ptrtoint ptr %backing_dev_info.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call17.i, ptr %backing_dev_info.i, align 4
  %call19.i = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i)
  %cmp.i = icmp slt i32 %call19.i, 1
  br i1 %cmp.i, label %writethrough.i.out.i_crit_edge, label %if.end21.i

writethrough.i.out.i_crit_edge:                   ; preds = %writethrough.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end21.i:                                       ; preds = %writethrough.i
  %call22.i = tail call i32 @file_remove_privs(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end21.i.out.i_crit_edge

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end25.i:                                       ; preds = %if.end21.i
  %call26.i = tail call i32 @file_update_time(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.out.i_crit_edge

if.end25.i.out.i_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end29.i:                                       ; preds = %if.end25.i
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %40 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ki_flags.i, align 8
  %and.i = and i32 %41, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  %ki_pos59.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %42 = ptrtoint ptr %ki_pos59.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %ki_pos59.i, align 8
  br i1 %tobool30.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  %call32.i = tail call i32 @generic_file_direct_write(ptr noundef %iocb, ptr noundef %from) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then31.i.out.i_crit_edge, label %lor.lhs.false.i

if.then31.i.out.i_crit_edge:                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

lor.lhs.false.i:                                  ; preds = %if.then31.i
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %44 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool35.not.i = icmp eq i32 %45, 0
  br i1 %tobool35.not.i, label %lor.lhs.false.i.out.i_crit_edge, label %if.end37.i

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end37.i:                                       ; preds = %lor.lhs.false.i
  %conv145.i = zext i32 %call32.i to i64
  %add.i = add i64 %43, %conv145.i
  %call38.i = tail call fastcc i32 @fuse_perform_write(ptr noundef %iocb, ptr noundef %12, ptr noundef %from, i64 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end37.i.out.i_crit_edge, label %if.end42.i

if.end37.i.out.i_crit_edge:                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end42.i:                                       ; preds = %if.end37.i
  %conv43146.i = zext i32 %call38.i to i64
  %add44.i = add i64 %add.i, %conv43146.i
  %sub.i = add i64 %add44.i, -1
  %46 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %f_mapping.i, align 4
  %call46.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %47, i64 noundef %add.i, i64 noundef %sub.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end42.i.out.i_crit_edge

if.end42.i.out.i_crit_edge:                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end49.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %f_mapping.i, align 4
  %50 = lshr i64 %add.i, 12
  %conv51.i = trunc i64 %50 to i32
  %51 = lshr i64 %sub.i, 12
  %conv53.i = trunc i64 %51 to i32
  %call54.i = tail call i32 @invalidate_mapping_pages(ptr noundef %49, i32 noundef %conv51.i, i32 noundef %conv53.i) #12
  %add55.i = add nuw i32 %call38.i, %call32.i
  br label %out.sink.split.i

if.else.i:                                        ; preds = %if.end29.i
  %call60.i = tail call fastcc i32 @fuse_perform_write(ptr noundef %iocb, ptr noundef %12, ptr noundef %from, i64 noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call60.i)
  %cmp61.i = icmp sgt i32 %call60.i, -1
  br i1 %cmp61.i, label %if.then63.i, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then63.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv64144.i = zext i32 %call60.i to i64
  %52 = ptrtoint ptr %ki_pos59.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %ki_pos59.i, align 8
  %add66.i = add i64 %53, %conv64144.i
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.then63.i, %if.end49.i
  %add44.sink.i = phi i64 [ %add44.i, %if.end49.i ], [ %add66.i, %if.then63.i ]
  %written.1.ph.i = phi i32 [ %add55.i, %if.end49.i ], [ %call60.i, %if.then63.i ]
  %54 = ptrtoint ptr %ki_pos59.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add44.sink.i, ptr %ki_pos59.i, align 8
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.else.i.out.i_crit_edge, %if.end42.i.out.i_crit_edge, %if.end37.i.out.i_crit_edge, %lor.lhs.false.i.out.i_crit_edge, %if.then31.i.out.i_crit_edge, %if.end25.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge, %writethrough.i.out.i_crit_edge
  %written.1.i = phi i32 [ 0, %writethrough.i.out.i_crit_edge ], [ 0, %if.end21.i.out.i_crit_edge ], [ 0, %if.end25.i.out.i_crit_edge ], [ %call60.i, %if.else.i.out.i_crit_edge ], [ %call32.i, %lor.lhs.false.i.out.i_crit_edge ], [ %call32.i, %if.then31.i.out.i_crit_edge ], [ %call32.i, %if.end37.i.out.i_crit_edge ], [ %call32.i, %if.end42.i.out.i_crit_edge ], [ %written.1.ph.i, %out.sink.split.i ]
  %err.1.i = phi i32 [ %call19.i, %writethrough.i.out.i_crit_edge ], [ %call22.i, %if.end21.i.out.i_crit_edge ], [ %call26.i, %if.end25.i.out.i_crit_edge ], [ 0, %if.else.i.out.i_crit_edge ], [ 0, %lor.lhs.false.i.out.i_crit_edge ], [ 0, %if.then31.i.out.i_crit_edge ], [ %call38.i, %if.end37.i.out.i_crit_edge ], [ %call46.i, %if.end42.i.out.i_crit_edge ], [ 0, %out.sink.split.i ]
  %55 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i, align 8
  %backing_dev_info71.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 150
  %57 = ptrtoint ptr %backing_dev_info71.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %backing_dev_info71.i, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1.i)
  %cmp72.i = icmp sgt i32 %written.1.i, 0
  br i1 %cmp72.i, label %if.then74.i, label %out.i.if.end76.i_crit_edge

out.i.if.end76.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.then74.i:                                      ; preds = %out.i
  %ki_flags.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %58 = ptrtoint ptr %ki_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ki_flags.i.i, align 8
  %and.i142.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142.i)
  %tobool.not.i.i = icmp eq i32 %and.i142.i, 0
  br i1 %tobool.not.i.i, label %if.then74.i.if.end8.i.i_crit_edge, label %if.then.i.i

if.then74.i.if.end8.i.i_crit_edge:                ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %if.then74.i
  %60 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iocb, align 8
  %ki_pos.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %62 = ptrtoint ptr %ki_pos.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ki_pos.i.i, align 8
  %conv.i143.i = zext i32 %written.1.i to i64
  %sub.i.i = sub i64 %63, %conv.i143.i
  %sub2.i.i = add i64 %63, -1
  %and4.i.i = lshr i32 %59, 2
  %and4.lobit.i.i = and i32 %and4.i.i, 1
  %64 = xor i32 %and4.lobit.i.i, 1
  %call.i.i = tail call i32 @vfs_fsync_range(ptr noundef %61, i64 noundef %sub.i.i, i64 noundef %sub2.i.i, i32 noundef %64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.if.end8.i.i_crit_edge, label %if.then.i.i.if.end76.i_crit_edge

if.then.i.i.if.end76.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76.i

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then.i.i.if.end8.i.i_crit_edge, %if.then74.i.if.end8.i.i_crit_edge
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end8.i.i, %if.then.i.i.if.end76.i_crit_edge, %out.i.if.end76.i_crit_edge
  %written.2.i = phi i32 [ %written.1.i, %out.i.if.end76.i_crit_edge ], [ %call.i.i, %if.then.i.i.if.end76.i_crit_edge ], [ %written.1.i, %if.end8.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.2.i)
  %tobool77.not.i = icmp eq i32 %written.2.i, 0
  %err.1.written.2.i = select i1 %tobool77.not.i, i32 %err.1.i, i32 %written.2.i
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %io.i) #12
  %65 = call ptr @memset(ptr %io.i, i32 0, i32 96)
  %66 = ptrtoint ptr %io.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %io.i, align 8
  %iocb1.i = getelementptr inbounds %struct.fuse_io_priv, ptr %io.i, i32 0, i32 10
  %67 = ptrtoint ptr %iocb1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %iocb, ptr %iocb1.i, align 8
  %i_rwsem.i.i11 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i11) #12
  %call2.i12 = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i12)
  %cmp.i13 = icmp sgt i32 %call2.i12, 0
  br i1 %cmp.i13, label %if.then.i14, label %if.else.fuse_direct_write_iter.exit_crit_edge

if.else.fuse_direct_write_iter.exit_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_direct_write_iter.exit

if.then.i14:                                      ; preds = %if.else
  %ki_complete.i.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %68 = ptrtoint ptr %ki_complete.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ki_complete.i.i, align 8
  %cmp.i.i = icmp eq ptr %69, null
  br i1 %cmp.i.i, label %if.then.i14.if.else.i19_crit_edge, label %land.lhs.true.i18

if.then.i14.if.else.i19_crit_edge:                ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i19

land.lhs.true.i18:                                ; preds = %if.then.i14
  %ki_flags.i15 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %70 = ptrtoint ptr %ki_flags.i15 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ki_flags.i15, align 8
  %and.i16 = and i32 %71, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.if.else.i19_crit_edge, label %if.then4.i

land.lhs.true.i18.if.else.i19_crit_edge:          ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i19

if.then4.i:                                       ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = tail call i32 @fuse_direct_IO(ptr noundef %iocb, ptr noundef %from) #12
  br label %fuse_direct_write_iter.exit

if.else.i19:                                      ; preds = %land.lhs.true.i18.if.else.i19_crit_edge, %if.then.i14.if.else.i19_crit_edge
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %call6.i = call i32 @fuse_direct_io(ptr noundef nonnull %io.i, ptr noundef %from, ptr noundef %ki_pos.i, i32 noundef 1) #12
  %72 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ki_pos.i, align 8
  %call8.i = call zeroext i1 @fuse_write_update_attr(ptr noundef %5, i64 noundef %73, i32 noundef %call6.i) #12
  br label %fuse_direct_write_iter.exit

fuse_direct_write_iter.exit:                      ; preds = %if.else.i19, %if.then4.i, %if.else.fuse_direct_write_iter.exit_crit_edge
  %res.0.i = phi i32 [ %call6.i, %if.else.i19 ], [ %call5.i, %if.then4.i ], [ %call2.i12, %if.else.fuse_direct_write_iter.exit_crit_edge ]
  call void @up_write(ptr noundef %i_rwsem.i.i11) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %io.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fuse_direct_write_iter.exit, %if.end76.i, %if.end14.i, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0.i, %fuse_direct_write_iter.exit ], [ -5, %entry.cleanup_crit_edge ], [ %err.1.written.2.i, %if.end76.i ], [ %call15.i, %if.end14.i ], [ %call2.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_file_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_file_compat_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_file_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %open_flags = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %vm_flags6 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags6, align 4
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %and1 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping, align 4
  %call = tail call i32 @invalidate_inode_pages2(ptr noundef %7) #12
  %call4 = tail call i32 @generic_file_mmap(ptr noundef %file, ptr noundef %vma) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %8 = and i32 %5, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %8)
  %.not = icmp eq i32 %8, 40
  br i1 %.not, label %if.then12, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end5
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i, align 8
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %10, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %write_entry.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %write_entry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %write_entry.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %write_entry.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then12.fuse_link_write_file.exit_crit_edge

if.then12.fuse_link_write_file.exit_crit_edge:    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_link_write_file.exit

if.then.i:                                        ; preds = %if.then12
  %13 = getelementptr inbounds %struct.fuse_inode, ptr %10, i32 0, i32 9
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %write_entry.i, ptr noundef %13, ptr noundef %15) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.fuse_link_write_file.exit_crit_edge

if.then.i.fuse_link_write_file.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_link_write_file.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %write_entry.i, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %write_entry.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %write_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %write_entry.i, ptr %13, align 4
  br label %fuse_link_write_file.exit

fuse_link_write_file.exit:                        ; preds = %if.end.i.i.i, %if.then.i.fuse_link_write_file.exit_crit_edge, %if.then12.fuse_link_write_file.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %if.end13

if.end13:                                         ; preds = %fuse_link_write_file.exit, %if.end5.if.end13_crit_edge
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %20 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i22, label %if.end13.file_accessed.exit_crit_edge

if.end13.file_accessed.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_accessed.exit

if.then.i22:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %f_path.i) #12
  br label %file_accessed.exit

file_accessed.exit:                               ; preds = %if.then.i22, %if.end13.file_accessed.exit_crit_edge
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %22 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fuse_file_vm_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %file_accessed.exit, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %file_accessed.exit ], [ -19, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fuse_open_common(ptr noundef %inode, ptr noundef %file, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_flush(ptr nocapture noundef readonly %file, ptr noundef %id) #0 align 64 {
entry:
  %inarg = alloca %struct.fuse_flush_in, align 8
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %inarg) #12
  %8 = getelementptr inbounds %struct.fuse_flush_in, ptr %inarg, i32 0, i32 3
  %9 = call ptr @memset(ptr %inarg, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #12
  %10 = call ptr @memset(ptr %args, i32 0, i32 64)
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %open_flags = getelementptr inbounds %struct.fuse_file, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open_flags, align 4
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %writeback_cache = getelementptr inbounds %struct.fuse_conn, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load = load i56, ptr %writeback_cache, align 1
  %19 = and i56 %bf.load, 562949953421312
  %tobool3.not = icmp eq i56 %19, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = tail call i32 @write_inode_now(ptr noundef %1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  tail call void @fuse_set_nowrite(ptr noundef %1) #12
  tail call void @fuse_release_nowrite(ptr noundef %1) #12
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %20 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_mapping, align 4
  %call10 = tail call i32 @filemap_check_errors(ptr noundef %21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %no_flush = getelementptr inbounds %struct.fuse_conn, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %no_flush to i32
  call void @__asan_loadN_noabort(i32 %24, i32 7)
  %bf.load15 = load i56, ptr %no_flush, align 1
  %25 = and i56 %bf.load15, 549755813888
  %tobool19.not = icmp eq i56 %25, 0
  br i1 %tobool19.not, label %if.end21, label %if.end13.land.lhs.true39_crit_edge

if.end13.land.lhs.true39_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true39

if.end21:                                         ; preds = %if.end13
  %26 = getelementptr inbounds i8, ptr %inarg, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %26, align 8
  %fh = getelementptr inbounds %struct.fuse_file, ptr %7, i32 0, i32 3
  %28 = ptrtoint ptr %fh to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %fh, align 8
  %30 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %inarg, align 8
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %scramble_key.i = getelementptr inbounds %struct.fuse_conn, ptr %32, i32 0, i32 33
  %33 = ptrtoint ptr %id to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end21
  %i.041.i = phi i32 [ 0, %if.end21 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %sum.040.i = phi i32 [ 0, %if.end21 ], [ %add8.i, %for.body.i.for.body.i_crit_edge ]
  %v1.039.i = phi i32 [ 0, %if.end21 ], [ %add18.i, %for.body.i.for.body.i_crit_edge ]
  %v0.038.i = phi i32 [ %33, %if.end21 ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %shl.i = shl i32 %v1.039.i, 4
  %shr4.i = lshr i32 %v1.039.i, 5
  %xor.i = xor i32 %shl.i, %shr4.i
  %add.i = add i32 %xor.i, %v1.039.i
  %and.i = and i32 %sum.040.i, 3
  %arrayidx.i = getelementptr i32, ptr %scramble_key.i, i32 %and.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %add5.i = add i32 %35, %sum.040.i
  %xor6.i = xor i32 %add5.i, %add.i
  %add7.i = add i32 %xor6.i, %v0.038.i
  %add8.i = add i32 %sum.040.i, -1640531527
  %shl9.i = shl i32 %add7.i, 4
  %shr10.i = lshr i32 %add7.i, 5
  %xor11.i = xor i32 %shl9.i, %shr10.i
  %add12.i = add i32 %xor11.i, %add7.i
  %shr13.i = lshr i32 %add8.i, 11
  %and14.i = and i32 %shr13.i, 3
  %arrayidx15.i = getelementptr i32, ptr %scramble_key.i, i32 %and14.i
  %36 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.i, align 4
  %add16.i = add i32 %37, %add8.i
  %xor17.i = xor i32 %add12.i, %add16.i
  %add18.i = add i32 %xor17.i, %v1.039.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %fuse_lock_owner_id.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

fuse_lock_owner_id.exit:                          ; preds = %for.body.i
  %conv19.i = zext i32 %add7.i to i64
  %conv20.i = zext i32 %add18.i to i64
  %shl21.i = shl nuw i64 %conv20.i, 32
  %add22.i = or i64 %shl21.i, %conv19.i
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add22.i, ptr %8, align 8
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %39 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 25, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %nodeid.i, align 8
  %42 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %43 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %44 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 24, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %45 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %inarg, ptr %value, align 8
  %force = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 4
  %46 = ptrtoint ptr %force to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load28 = load i16, ptr %force, align 8
  %bf.set = or i16 %bf.load28, -32768
  store i16 %bf.set, ptr %force, align 8
  %call30 = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args) #12
  %47 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call30, label %fuse_lock_owner_id.exit.cleanup_crit_edge [
    i32 -38, label %if.then31
    i32 0, label %fuse_lock_owner_id.exit.land.lhs.true39_crit_edge
  ]

fuse_lock_owner_id.exit.land.lhs.true39_crit_edge: ; preds = %fuse_lock_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true39

fuse_lock_owner_id.exit.cleanup_crit_edge:        ; preds = %fuse_lock_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %fuse_lock_owner_id.exit
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 4
  %no_flush33 = getelementptr inbounds %struct.fuse_conn, ptr %49, i32 0, i32 26
  %50 = ptrtoint ptr %no_flush33 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 7)
  %bf.load34 = load i56, ptr %no_flush33, align 1
  %bf.set36 = or i56 %bf.load34, 549755813888
  store i56 %bf.set36, ptr %no_flush33, align 1
  br label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.then31, %fuse_lock_owner_id.exit.land.lhs.true39_crit_edge, %if.end13.land.lhs.true39_crit_edge
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %5, align 4
  %writeback_cache41 = getelementptr inbounds %struct.fuse_conn, ptr %52, i32 0, i32 26
  %53 = ptrtoint ptr %writeback_cache41 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 7)
  %bf.load42 = load i56, ptr %writeback_cache41, align 1
  %54 = and i56 %bf.load42, 562949953421312
  %tobool46.not = icmp eq i56 %54, 0
  br i1 %tobool46.not, label %land.lhs.true39.cleanup_crit_edge, label %if.then47

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then47:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  call void @fuse_invalidate_attr_mask(ptr noundef %1, i32 noundef 1024) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %land.lhs.true39.cleanup_crit_edge, %fuse_lock_owner_id.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %land.lhs.true39.cleanup_crit_edge ], [ %call30, %fuse_lock_owner_id.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %inarg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_release(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i.i, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags.i, align 4
  tail call void @fuse_file_release(ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %file, i1 noundef zeroext false) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_fsync(ptr noundef %file, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  %call2 = tail call i32 @file_write_and_wait_range(ptr noundef %file, i64 noundef %start, i64 noundef %end) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end4:                                          ; preds = %if.end
  tail call void @fuse_set_nowrite(ptr noundef %3) #12
  tail call void @fuse_release_nowrite(ptr noundef %3) #12
  %call5 = tail call i32 @file_check_and_advance_wb_err(ptr noundef %file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @sync_inode_metadata(ptr noundef %3, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end12:                                         ; preds = %if.end8
  %no_fsync = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 26
  %13 = ptrtoint ptr %no_fsync to i32
  call void @__asan_loadN_noabort(i32 %13, i32 7)
  %bf.load = load i56, ptr %no_fsync, align 1
  %14 = and i56 %bf.load, 2199023255552
  %tobool13.not = icmp eq i56 %14, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end15:                                         ; preds = %if.end12
  %call16 = tail call i32 @fuse_fsync_common(ptr noundef %file, i64 undef, i64 undef, i32 noundef %datasync, i32 noundef 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call16)
  %cmp = icmp eq i32 %call16, -38
  br i1 %cmp, label %if.then17, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %no_fsync to i32
  call void @__asan_loadN_noabort(i32 %15, i32 7)
  %bf.load19 = load i56, ptr %no_fsync, align 1
  %bf.set = or i56 %bf.load19, 2199023255552
  store i56 %bf.set, ptr %no_fsync, align 1
  br label %out

out:                                              ; preds = %if.then17, %if.end15.out_crit_edge, %if.end12.out_crit_edge, %if.end8.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %call5, %if.end4.out_crit_edge ], [ %call9, %if.end8.out_crit_edge ], [ 0, %if.end12.out_crit_edge ], [ 0, %if.then17 ], [ %call16, %if.end15.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_file_lock(ptr noundef %file, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  %args.i = alloca %struct.fuse_args, align 8
  %inarg.i = alloca %struct.fuse_lk_in, align 8
  %outarg.i = alloca %struct.fuse_lk_out, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cmd, label %if.else7 [
    i32 1029, label %entry.if.end20_crit_edge
    i32 5, label %if.then3
  ]

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then3:                                         ; preds = %entry
  %no_lock = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %9 = ptrtoint ptr %no_lock to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load = load i56, ptr %no_lock, align 1
  %10 = and i56 %bf.load, 8589934592
  %tobool.not = icmp eq i56 %10, 0
  br i1 %tobool.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @posix_test_lock(ptr noundef %file, ptr noundef %fl) #12
  br label %if.end20

if.else5:                                         ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #12
  %11 = getelementptr inbounds i8, ptr %args.i, i32 16
  %12 = call ptr @memset(ptr %11, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %inarg.i) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %outarg.i) #12
  %13 = getelementptr inbounds %struct.fuse_file_lock, ptr %outarg.i, i32 0, i32 2
  %14 = call ptr @memset(ptr %outarg.i, i32 255, i32 24)
  %15 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %private_data.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %21 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i, align 4
  %23 = getelementptr inbounds i8, ptr %inarg.i, i32 40
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %23, align 8
  %fh.i.i = getelementptr inbounds %struct.fuse_file, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %fh.i.i, align 8
  %27 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %inarg.i, align 8
  %fl_owner.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %28 = ptrtoint ptr %fl_owner.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fl_owner.i.i, align 4
  %scramble_key.i.i.i = getelementptr inbounds %struct.fuse_conn, ptr %20, i32 0, i32 33
  %30 = ptrtoint ptr %29 to i32
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.else5
  %i.041.i.i.i = phi i32 [ 0, %if.else5 ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %sum.040.i.i.i = phi i32 [ 0, %if.else5 ], [ %add8.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %v1.039.i.i.i = phi i32 [ 0, %if.else5 ], [ %add18.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %v0.038.i.i.i = phi i32 [ %30, %if.else5 ], [ %add7.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl i32 %v1.039.i.i.i, 4
  %shr4.i.i.i = lshr i32 %v1.039.i.i.i, 5
  %xor.i.i.i = xor i32 %shl.i.i.i, %shr4.i.i.i
  %add.i.i.i = add i32 %xor.i.i.i, %v1.039.i.i.i
  %and.i.i.i = and i32 %sum.040.i.i.i, 3
  %arrayidx.i.i.i = getelementptr i32, ptr %scramble_key.i.i.i, i32 %and.i.i.i
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  %add5.i.i.i = add i32 %32, %sum.040.i.i.i
  %xor6.i.i.i = xor i32 %add5.i.i.i, %add.i.i.i
  %add7.i.i.i = add i32 %xor6.i.i.i, %v0.038.i.i.i
  %add8.i.i.i = add i32 %sum.040.i.i.i, -1640531527
  %shl9.i.i.i = shl i32 %add7.i.i.i, 4
  %shr10.i.i.i = lshr i32 %add7.i.i.i, 5
  %xor11.i.i.i = xor i32 %shl9.i.i.i, %shr10.i.i.i
  %add12.i.i.i = add i32 %xor11.i.i.i, %add7.i.i.i
  %shr13.i.i.i = lshr i32 %add8.i.i.i, 11
  %and14.i.i.i = and i32 %shr13.i.i.i, 3
  %arrayidx15.i.i.i = getelementptr i32, ptr %scramble_key.i.i.i, i32 %and14.i.i.i
  %33 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx15.i.i.i, align 4
  %add16.i.i.i = add i32 %34, %add8.i.i.i
  %xor17.i.i.i = xor i32 %add12.i.i.i, %add16.i.i.i
  %add18.i.i.i = add i32 %xor17.i.i.i, %v1.039.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.041.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %fuse_lk_fill.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

fuse_lk_fill.exit.i:                              ; preds = %for.body.i.i.i
  %35 = getelementptr inbounds %struct.fuse_file_lock, ptr %outarg.i, i32 0, i32 1
  %36 = getelementptr inbounds %struct.fuse_file_lock, ptr %outarg.i, i32 0, i32 3
  %conv19.i.i.i = zext i32 %add7.i.i.i to i64
  %conv20.i.i.i = zext i32 %add18.i.i.i to i64
  %shl21.i.i.i = shl nuw i64 %conv20.i.i.i, 32
  %add22.i.i.i = or i64 %shl21.i.i.i, %conv19.i.i.i
  %owner.i.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg.i, i32 0, i32 1
  %37 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add22.i.i.i, ptr %owner.i.i, align 8
  %fl_start.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %38 = ptrtoint ptr %fl_start.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %fl_start.i.i, align 8
  %lk.i.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg.i, i32 0, i32 2
  %40 = ptrtoint ptr %lk.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %lk.i.i, align 8
  %fl_end.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %41 = ptrtoint ptr %fl_end.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fl_end.i.i, align 8
  %end.i.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg.i, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %end.i.i, align 8
  %fl_type.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %44 = ptrtoint ptr %fl_type.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fl_type.i.i, align 4
  %conv.i.i = zext i8 %45 to i32
  %type.i.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg.i, i32 0, i32 2, i32 2
  %46 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv.i.i, ptr %type.i.i, align 8
  %pid7.i.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg.i, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %pid7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %pid7.i.i, align 4
  %opcode8.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %48 = ptrtoint ptr %opcode8.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 31, ptr %opcode8.i.i, align 8
  %nodeid.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %nodeid.i.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %nodeid.i.i.i, align 8
  %51 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %args.i, align 8
  %in_numargs.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %52 = ptrtoint ptr %in_numargs.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %in_numargs.i.i, align 4
  %in_args.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %53 = ptrtoint ptr %in_args.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 48, ptr %in_args.i.i, align 4
  %value.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %54 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %inarg.i, ptr %value.i.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 3
  %55 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6
  %56 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 24, ptr %out_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 0, i32 1
  %57 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %outarg.i, ptr %value.i, align 8
  %call4.i = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %fuse_lk_fill.exit.i.fuse_getlk.exit_crit_edge

fuse_lk_fill.exit.i.fuse_getlk.exit_crit_edge:    ; preds = %fuse_lk_fill.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_getlk.exit

if.then.i:                                        ; preds = %fuse_lk_fill.exit.i
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %60 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %13, align 8
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %61, label %if.then.i.fuse_getlk.exit_crit_edge [
    i32 2, label %if.then.i.sw.epilog.i.i_crit_edge
    i32 0, label %if.then.i.sw.bb.i.i_crit_edge
    i32 1, label %if.then.i.sw.bb.i.i_crit_edge32
  ]

if.then.i.sw.bb.i.i_crit_edge32:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i

if.then.i.sw.bb.i.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i.i

if.then.i.sw.epilog.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

if.then.i.fuse_getlk.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_getlk.exit

sw.bb.i.i:                                        ; preds = %if.then.i.sw.bb.i.i_crit_edge, %if.then.i.sw.bb.i.i_crit_edge32
  %63 = ptrtoint ptr %outarg.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %outarg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %cmp.i.i = icmp slt i64 %64, 0
  br i1 %cmp.i.i, label %sw.bb.i.i.fuse_getlk.exit_crit_edge, label %lor.lhs.false.i.i

sw.bb.i.i.fuse_getlk.exit_crit_edge:              ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_getlk.exit

lor.lhs.false.i.i:                                ; preds = %sw.bb.i.i
  %65 = ptrtoint ptr %35 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %35, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp1.i.i = icmp slt i64 %66, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %64)
  %cmp5.i.i = icmp ult i64 %66, %64
  %or.cond.i.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.fuse_getlk.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.fuse_getlk.exit_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_getlk.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %67 = ptrtoint ptr %fl_start.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %64, ptr %fl_start.i.i, align 8
  %68 = ptrtoint ptr %fl_end.i.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %66, ptr %fl_end.i.i, align 8
  %69 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %72, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %73 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %36, align 4
  %pid_ns.i.i = getelementptr inbounds %struct.fuse_conn, ptr %59, i32 0, i32 6
  %75 = ptrtoint ptr %pid_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pid_ns.i.i, align 4
  %call.i.i = call ptr @find_pid_ns(i32 noundef %74, ptr noundef %76) #12
  %call8.i.i = call i32 @pid_nr_ns(ptr noundef %call.i.i, ptr noundef nonnull @init_pid_ns) #12
  %fl_pid.i.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 8
  %77 = ptrtoint ptr %fl_pid.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call8.i.i, ptr %fl_pid.i.i, align 8
  %call.i22.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i22.i.i, label %rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i25.i.i

rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i25.i.i:                            ; preds = %rcu_read_lock.exit.i.i
  %call1.i23.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i)
  %tobool.not.i24.i.i = icmp eq i32 %call1.i23.i.i, 0
  br i1 %tobool.not.i24.i.i, label %land.lhs.true.i25.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i27.i.i

land.lhs.true.i25.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i27.i.i:                           ; preds = %land.lhs.true.i25.i.i
  %.b4.i26.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26.i.i, label %land.lhs.true2.i27.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i28.i.i

land.lhs.true2.i27.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i28.i.i:                                  ; preds = %land.lhs.true2.i27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i28.i.i, %land.lhs.true2.i27.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i25.i.i.rcu_read_unlock.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  %78 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i29.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i29.i.i to ptr
  %preempt_count.i.i.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i30.i.i, align 4
  %sub.i.i.i.i.i = add i32 %81, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i30.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %rcu_read_unlock.exit.i.i, %if.then.i.sw.epilog.i.i_crit_edge
  %82 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %13, align 8
  %conv.i14.i = trunc i32 %83 to i8
  %84 = ptrtoint ptr %fl_type.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.i14.i, ptr %fl_type.i.i, align 4
  br label %fuse_getlk.exit

fuse_getlk.exit:                                  ; preds = %sw.epilog.i.i, %lor.lhs.false.i.i.fuse_getlk.exit_crit_edge, %sw.bb.i.i.fuse_getlk.exit_crit_edge, %if.then.i.fuse_getlk.exit_crit_edge, %fuse_lk_fill.exit.i.fuse_getlk.exit_crit_edge
  %err.0.i = phi i32 [ %call4.i, %fuse_lk_fill.exit.i.fuse_getlk.exit_crit_edge ], [ 0, %sw.epilog.i.i ], [ -5, %lor.lhs.false.i.i.fuse_getlk.exit_crit_edge ], [ -5, %sw.bb.i.i.fuse_getlk.exit_crit_edge ], [ -5, %if.then.i.fuse_getlk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %outarg.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %inarg.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #12
  br label %if.end20

if.else7:                                         ; preds = %entry
  %no_lock8 = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %85 = ptrtoint ptr %no_lock8 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 7)
  %bf.load9 = load i56, ptr %no_lock8, align 1
  %86 = and i56 %bf.load9, 8589934592
  %tobool13.not = icmp eq i56 %86, 0
  br i1 %tobool13.not, label %if.else16, label %if.then14

if.then14:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 @posix_lock_file(ptr noundef %file, ptr noundef %fl, ptr noundef null) #12
  br label %if.end20

if.else16:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call fastcc i32 @fuse_setlk(ptr noundef %file, ptr noundef %fl, i32 noundef 0)
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then14, %fuse_getlk.exit, %if.then4, %entry.if.end20_crit_edge
  %err.0 = phi i32 [ 0, %if.then4 ], [ %err.0.i, %fuse_getlk.exit ], [ %call15, %if.then14 ], [ %call17, %if.else16 ], [ 0, %entry.if.end20_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_file_flock(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %no_flock = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %no_flock to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load = load i56, ptr %no_flock, align 1
  %9 = and i56 %bf.load, 33554432
  %tobool.not = icmp eq i56 %9, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @locks_lock_inode_wait(ptr noundef %1, ptr noundef %fl) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %flock = getelementptr inbounds %struct.fuse_file, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %flock to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load3 = load i8, ptr %flock, align 8
  %bf.set = or i8 %bf.load3, -128
  store i8 %bf.set, ptr %flock, align 8
  %call5 = tail call fastcc i32 @fuse_setlk(ptr noundef %file, ptr noundef %fl, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call1.i, %if.then ], [ %call5, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_file_fallocate(ptr noundef %file, i32 noundef %mode, i64 noundef %offset, i64 noundef %length) #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_fallocate_in, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #12
  %6 = call ptr @memset(ptr %args, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %inarg) #12
  %7 = getelementptr inbounds %struct.fuse_fallocate_in, ptr %inarg, i32 0, i32 1
  %8 = getelementptr inbounds %struct.fuse_fallocate_in, ptr %inarg, i32 0, i32 2
  %9 = getelementptr inbounds %struct.fuse_fallocate_in, ptr %inarg, i32 0, i32 3
  %10 = getelementptr inbounds %struct.fuse_fallocate_in, ptr %inarg, i32 0, i32 4
  %fh3 = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %fh3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %fh3, align 8
  %13 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %inarg, align 8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %offset, ptr %7, align 8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %length, ptr %8, align 8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mode, ptr %9, align 8
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %10, align 4
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and7 = and i32 %mode, 18
  %18 = and i32 %mode, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %.not = icmp eq i32 %18, 1
  %and9 = and i32 %mode, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end, label %entry.cleanup88_crit_edge

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %no_fallocate = getelementptr inbounds %struct.fuse_conn, ptr %20, i32 0, i32 26
  %21 = ptrtoint ptr %no_fallocate to i32
  call void @__asan_loadN_noabort(i32 %21, i32 7)
  %bf.load = load i56, ptr %no_fallocate, align 1
  %22 = and i56 %bf.load, 16777216
  %tobool11.not = icmp eq i56 %22, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup88_crit_edge

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup88

if.end13:                                         ; preds = %if.end
  br i1 %.not, label %if.end13.if.end31_crit_edge, label %if.then15

if.end13.if.end31_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then15:                                        ; preds = %if.end13
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool24.not = icmp eq i32 %and7, 0
  br i1 %tobool24.not, label %if.then15.if.end31_crit_edge, label %if.then25

if.then15.if.end31_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then25:                                        ; preds = %if.then15
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %23 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping.i, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %24, i64 noundef %offset, i64 noundef 9223372036854775807) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %fuse_writeback_range.exit.thread, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

fuse_writeback_range.exit.thread:                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fuse_set_nowrite(ptr noundef %3) #12
  tail call void @fuse_release_nowrite(ptr noundef %3) #12
  br label %if.end31

if.end31:                                         ; preds = %fuse_writeback_range.exit.thread, %if.then15.if.end31_crit_edge, %if.end13.if.end31_crit_edge
  br i1 %tobool.not, label %land.lhs.true, label %if.end31.if.end46_crit_edge

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end31
  %add34 = add i64 %length, %offset
  %call35 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %call35)
  %cmp = icmp sgt i64 %add34, %call35
  br i1 %cmp, label %if.then36, label %land.lhs.true.if.then45_crit_edge

land.lhs.true.if.then45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then36:                                        ; preds = %land.lhs.true
  %call38 = tail call i32 @inode_newsize_ok(ptr noundef %3, i64 noundef %add34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.if.then45_crit_edge, label %if.then36.if.then78_crit_edge

if.then36.if.then78_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.then36.if.then45_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then45

if.then45:                                        ; preds = %if.then36.if.then45_crit_edge, %land.lhs.true.if.then45_crit_edge
  %state = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end31.if.end46_crit_edge
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %25 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 43, ptr %opcode, align 8
  %nodeid = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %nodeid to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %nodeid, align 8
  %28 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %29 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %30 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %inarg, ptr %value, align 8
  %call50 = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args) #12
  %32 = zext i32 %call50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call50, label %if.end46.out_crit_edge [
    i32 -38, label %if.end57.thread
    i32 0, label %if.end60
  ]

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end57.thread:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %no_fallocate54 = getelementptr inbounds %struct.fuse_conn, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %no_fallocate54 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load55 = load i56, ptr %no_fallocate54, align 1
  %bf.set = or i56 %bf.load55, 16777216
  store i56 %bf.set, ptr %no_fallocate54, align 1
  br label %out

if.end60:                                         ; preds = %if.end46
  br i1 %tobool.not, label %if.then63, label %if.end60.if.end69_crit_edge

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then63:                                        ; preds = %if.end60
  %add64 = add i64 %length, %offset
  %conv = trunc i64 %length to i32
  %call65 = call zeroext i1 @fuse_write_update_attr(ptr noundef %3, i64 noundef %add64, i32 noundef %conv)
  br i1 %call65, label %if.then66, label %if.then63.if.end69_crit_edge

if.then63.if.end69_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  %call67 = call i32 @file_update_time(ptr noundef %file) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then63.if.end69_crit_edge, %if.end60.if.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool71.not = icmp eq i32 %and7, 0
  br i1 %tobool71.not, label %if.end69.if.end75_crit_edge, label %if.then72

if.end69.if.end75_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %add73 = add i64 %length, %offset
  %sub74 = add i64 %add73, -1
  call void @truncate_pagecache_range(ptr noundef %3, i64 noundef %offset, i64 noundef %sub74) #12
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end69.if.end75_crit_edge
  call void @fuse_invalidate_attr_mask(ptr noundef %3, i32 noundef 1728) #12
  br label %out

out:                                              ; preds = %if.end75, %if.end57.thread, %if.end46.out_crit_edge, %if.then25.out_crit_edge
  %err.1 = phi i32 [ 0, %if.end75 ], [ %call.i, %if.then25.out_crit_edge ], [ -95, %if.end57.thread ], [ %call50, %if.end46.out_crit_edge ]
  br i1 %tobool.not, label %out.if.then78_crit_edge, label %out.if.end84_crit_edge

out.if.end84_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

out.if.then78_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then78

if.then78:                                        ; preds = %out.if.then78_crit_edge, %if.then36.if.then78_crit_edge
  %err.1151 = phi i32 [ %err.1, %out.if.then78_crit_edge ], [ %call38, %if.then36.if.then78_crit_edge ]
  %state79 = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state79) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %out.if.end84_crit_edge
  %err.1150 = phi i32 [ %err.1, %out.if.end84_crit_edge ], [ %err.1151, %if.then78 ]
  br i1 %.not, label %if.end84.if.end87_crit_edge, label %if.then86

if.end84.if.end87_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %i_rwsem.i146 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i146) #12
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.end84.if.end87_crit_edge
  call void @fuse_flush_time_update(ptr noundef %3) #12
  br label %cleanup88

cleanup88:                                        ; preds = %if.end87, %if.end.cleanup88_crit_edge, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %err.1150, %if.end87 ], [ -95, %entry.cleanup88_crit_edge ], [ -95, %if.end.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %inarg) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_copy_file_range(ptr noundef %src_file, i64 noundef %src_off, ptr noundef %dst_file, i64 noundef %dst_off, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %args.i = alloca %struct.fuse_args, align 8
  %inarg.i = alloca %struct.fuse_copy_file_range_in, align 8
  %outarg.i = alloca %struct.fuse_write_out, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_data1.i = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %f_inode.i136.i = getelementptr inbounds %struct.file, ptr %dst_file, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i136.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i136.i, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #12
  %12 = call ptr @memset(ptr %args.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %inarg.i) #12
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fh.i, align 8
  %15 = ptrtoint ptr %inarg.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %inarg.i, align 8
  %off_in.i = getelementptr inbounds %struct.fuse_copy_file_range_in, ptr %inarg.i, i32 0, i32 1
  %16 = ptrtoint ptr %off_in.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %src_off, ptr %off_in.i, align 8
  %nodeid_out.i = getelementptr inbounds %struct.fuse_copy_file_range_in, ptr %inarg.i, i32 0, i32 2
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %nodeid.i, align 8
  %19 = ptrtoint ptr %nodeid_out.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %nodeid_out.i, align 8
  %fh_out.i = getelementptr inbounds %struct.fuse_copy_file_range_in, ptr %inarg.i, i32 0, i32 3
  %fh6.i = getelementptr inbounds %struct.fuse_file, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %fh6.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fh6.i, align 8
  %22 = ptrtoint ptr %fh_out.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %fh_out.i, align 8
  %off_out.i = getelementptr inbounds %struct.fuse_copy_file_range_in, ptr %inarg.i, i32 0, i32 4
  %23 = ptrtoint ptr %off_out.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %dst_off, ptr %off_out.i, align 8
  %len7.i = getelementptr inbounds %struct.fuse_copy_file_range_in, ptr %inarg.i, i32 0, i32 5
  %conv.i = zext i32 %len to i64
  %24 = ptrtoint ptr %len7.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv.i, ptr %len7.i, align 8
  %flags8.i = getelementptr inbounds %struct.fuse_copy_file_range_in, ptr %inarg.i, i32 0, i32 6
  %conv9.i = zext i32 %flags to i64
  %25 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv9.i, ptr %flags8.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outarg.i) #12
  %26 = ptrtoint ptr %outarg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %outarg.i, align 4, !annotation !85
  %27 = getelementptr inbounds %struct.fuse_write_out, ptr %outarg.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4, !annotation !85
  %writeback_cache.i = getelementptr inbounds %struct.fuse_conn, ptr %11, i32 0, i32 26
  %29 = ptrtoint ptr %writeback_cache.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 7)
  %bf.load.i = load i56, ptr %writeback_cache.i, align 1
  %30 = and i56 %bf.load.i, 562949953421312
  %tobool.not.i = icmp eq i56 %30, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.land.end.i_crit_edge

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i64 %conv.i, %dst_off
  %i_size.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %31 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %32)
  %cmp.i = icmp sgt i64 %add.i, %32
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %entry.land.end.i_crit_edge
  %33 = phi i1 [ false, %entry.land.end.i_crit_edge ], [ %cmp.i, %land.rhs.i ]
  %34 = and i56 %bf.load.i, 8192
  %tobool16.not.i = icmp eq i56 %34, 0
  br i1 %tobool16.not.i, label %if.end.i, label %land.end.i.__fuse_copy_file_range.exit.thread_crit_edge

land.end.i.__fuse_copy_file_range.exit.thread_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fuse_copy_file_range.exit.thread

if.end.i:                                         ; preds = %land.end.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i, align 4
  %i_sb19.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb19.i, align 4
  %cmp20.not.i = icmp eq ptr %36, %38
  br i1 %cmp20.not.i, label %if.end23.i, label %if.end.i.__fuse_copy_file_range.exit.thread_crit_edge

if.end.i.__fuse_copy_file_range.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fuse_copy_file_range.exit.thread

if.end23.i:                                       ; preds = %if.end.i
  %i_rwsem.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i.i) #12
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %39 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_mapping.i.i, align 8
  %call.i.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %40, i64 noundef %src_off, i64 noundef 9223372036854775807) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end29.i, label %fuse_writeback_range.exit.i

fuse_writeback_range.exit.i:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  br label %__fuse_copy_file_range.exit

if.end29.i:                                       ; preds = %if.end23.i
  tail call void @fuse_set_nowrite(ptr noundef %5) #12
  tail call void @fuse_release_nowrite(ptr noundef %5) #12
  tail call void @up_write(ptr noundef %i_rwsem.i.i) #12
  %i_rwsem.i140.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i140.i) #12
  %call30.i = tail call i32 @file_modified(ptr noundef %dst_file) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end29.i.out.i_crit_edge

if.end29.i.out.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end33.i:                                       ; preds = %if.end29.i
  %i_mapping.i141.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %41 = ptrtoint ptr %i_mapping.i141.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_mapping.i141.i, align 8
  %call.i142.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %42, i64 noundef %dst_off, i64 noundef 9223372036854775807) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142.i)
  %tobool.not.i143.i = icmp eq i32 %call.i142.i, 0
  br i1 %tobool.not.i143.i, label %if.end40.i, label %if.end33.i.out.i_crit_edge

if.end33.i.out.i_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end40.i:                                       ; preds = %if.end33.i
  tail call void @fuse_set_nowrite(ptr noundef %7) #12
  tail call void @fuse_release_nowrite(ptr noundef %7) #12
  br i1 %33, label %if.then42.i, label %if.end40.i.if.end43.i_crit_edge

if.end40.i.if.end43.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43.i

if.then42.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %7, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state.i) #12
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then42.i, %if.end40.i.if.end43.i_crit_edge
  %opcode.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 1
  %43 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 47, ptr %opcode.i, align 8
  %nodeid44.i = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %nodeid44.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %nodeid44.i, align 8
  %46 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %47 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %48 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 56, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %49 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %inarg.i, ptr %value.i, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 3
  %50 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6
  %51 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %out_args.i, align 4
  %value52.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 6, i32 0, i32 1
  %52 = ptrtoint ptr %value52.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %outarg.i, ptr %value52.i, align 8
  %call53.i = call i32 @fuse_simple_request(ptr noundef %9, ptr noundef nonnull %args.i) #12
  %53 = zext i32 %call53.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call53.i, label %if.end43.i.out.i_crit_edge [
    i32 -38, label %if.end60.thread.i
    i32 0, label %if.end63.i
  ]

if.end43.i.out.i_crit_edge:                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end60.thread.i:                                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %writeback_cache.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 7)
  %bf.load58.i = load i56, ptr %writeback_cache.i, align 1
  %bf.set.i = or i56 %bf.load58.i, 8192
  store i56 %bf.set.i, ptr %writeback_cache.i, align 1
  br label %out.i

if.end63.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %i_mapping.i141.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_mapping.i141.i, align 8
  %and.i = and i64 %dst_off, -4096
  %57 = ptrtoint ptr %outarg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %outarg.i, align 4
  %conv67.i = zext i32 %58 to i64
  %add68.i = add i64 %dst_off, 4095
  %add69.i = add i64 %add68.i, %conv67.i
  %and70.i = and i64 %add69.i, -4096
  %sub71.i = add i64 %and70.i, -1
  call void @truncate_inode_pages_range(ptr noundef %56, i64 noundef %and.i, i64 noundef %sub71.i) #12
  %call72.i = call i32 @file_update_time(ptr noundef %dst_file) #12
  %59 = ptrtoint ptr %outarg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %outarg.i, align 4
  %conv74.i = zext i32 %60 to i64
  %add75.i = add i64 %conv74.i, %dst_off
  %call77.i = call zeroext i1 @fuse_write_update_attr(ptr noundef %7, i64 noundef %add75.i, i32 noundef %60) #12
  %61 = ptrtoint ptr %outarg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %outarg.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end63.i, %if.end60.thread.i, %if.end43.i.out.i_crit_edge, %if.end33.i.out.i_crit_edge, %if.end29.i.out.i_crit_edge
  %err.1.i = phi i32 [ %call30.i, %if.end29.i.out.i_crit_edge ], [ %62, %if.end63.i ], [ %call.i142.i, %if.end33.i.out.i_crit_edge ], [ -95, %if.end60.thread.i ], [ %call53.i, %if.end43.i.out.i_crit_edge ]
  br i1 %33, label %if.then80.i, label %out.i.if.end82.i_crit_edge

out.i.if.end82.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i

if.then80.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %state81.i = getelementptr inbounds %struct.fuse_inode, ptr %7, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state81.i) #12
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then80.i, %out.i.if.end82.i_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i140.i) #12
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 7
  %63 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %f_flags.i.i, align 4
  %and.i.i = and i32 %64, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i147.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i147.i, label %if.then.i148.i, label %if.end82.i.file_accessed.exit.i_crit_edge

if.end82.i.file_accessed.exit.i_crit_edge:        ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %file_accessed.exit.i

if.then.i148.i:                                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  %f_path.i.i = getelementptr inbounds %struct.file, ptr %src_file, i32 0, i32 1
  call void @touch_atime(ptr noundef %f_path.i.i) #12
  br label %file_accessed.exit.i

file_accessed.exit.i:                             ; preds = %if.then.i148.i, %if.end82.i.file_accessed.exit.i_crit_edge
  call void @fuse_flush_time_update(ptr noundef %7) #12
  br label %__fuse_copy_file_range.exit

__fuse_copy_file_range.exit.thread:               ; preds = %if.end.i.__fuse_copy_file_range.exit.thread_crit_edge, %land.end.i.__fuse_copy_file_range.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outarg.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %inarg.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #12
  br label %if.then

__fuse_copy_file_range.exit:                      ; preds = %file_accessed.exit.i, %fuse_writeback_range.exit.i
  %retval.0.i = phi i32 [ %err.1.i, %file_accessed.exit.i ], [ %call.i.i, %fuse_writeback_range.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outarg.i) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %inarg.i) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #12
  %65 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %retval.0.i, label %__fuse_copy_file_range.exit.if.end_crit_edge [
    i32 -95, label %__fuse_copy_file_range.exit.if.then_crit_edge
    i32 -18, label %__fuse_copy_file_range.exit.if.then_crit_edge12
  ]

__fuse_copy_file_range.exit.if.then_crit_edge12:  ; preds = %__fuse_copy_file_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

__fuse_copy_file_range.exit.if.then_crit_edge:    ; preds = %__fuse_copy_file_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

__fuse_copy_file_range.exit.if.end_crit_edge:     ; preds = %__fuse_copy_file_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %__fuse_copy_file_range.exit.if.then_crit_edge, %__fuse_copy_file_range.exit.if.then_crit_edge12, %__fuse_copy_file_range.exit.thread
  %call2 = call i32 @generic_copy_file_range(ptr noundef %src_file, i64 noundef %src_off, ptr noundef %dst_file, i64 noundef %dst_off, i32 noundef %len, i32 noundef %flags) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %__fuse_copy_file_range.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ %retval.0.i, %__fuse_copy_file_range.exit.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_update_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vfs_setpos(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  %attr.i = alloca %struct.iattr, align 8
  %wait = alloca %struct.completion, align 4
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait) #12
  %0 = getelementptr inbounds i8, ptr %wait, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wait, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %wait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #12
  %3 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %9 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %ki_pos, align 8
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %pos, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 18
  %12 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_mapping, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call1 = call fastcc i64 @i_size_read(ptr noundef %15)
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %16 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data_source.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %10)
  %cmp4.not = icmp sgt i64 %call1, %10
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %if.end, label %entry.cleanup97_crit_edge

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 96) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup97_crit_edge, label %do.body

if.end.cleanup97_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @fuse_direct_IO.__key, i16 noundef signext 3) #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #12
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %call7.i, align 8
  %reqs = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %reqs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %reqs, align 4
  %bytes = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 4
  %21 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %bytes, align 8
  %size = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 5
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %size, align 4
  %offset10 = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 6
  %23 = ptrtoint ptr %offset10 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %10, ptr %offset10, align 8
  %24 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data_source.i, align 2, !range !86
  %write = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 7
  %26 = ptrtoint ptr %write to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %write, align 8
  %err = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 9
  %27 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %err, align 4
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %async_dio = getelementptr inbounds %struct.fuse_conn, ptr %31, i32 0, i32 26
  %32 = ptrtoint ptr %async_dio to i32
  call void @__asan_loadN_noabort(i32 %32, i32 7)
  %bf.load = load i56, ptr %async_dio, align 1
  %33 = trunc i56 %bf.load to i32
  %34 = lshr i32 %33, 18
  %bf.cast = and i32 %34, 1
  %async = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 1
  %35 = ptrtoint ptr %async to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %bf.cast, ptr %async, align 4
  %iocb15 = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 10
  %36 = ptrtoint ptr %iocb15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %iocb, ptr %iocb15, align 8
  %ki_complete.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 2
  %37 = ptrtoint ptr %ki_complete.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ki_complete.i, align 8
  %cmp.i = icmp eq ptr %38, null
  %blocking = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 12
  %frombool17 = zext i1 %cmp.i to i8
  %39 = ptrtoint ptr %blocking to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool17, ptr %blocking, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast)
  %tobool19.not = icmp ne i32 %bf.cast, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not = icmp eq i8 %25, 0
  %or.cond185 = select i1 %tobool19.not, i1 %tobool22.not, i1 false
  br i1 %or.cond185, label %land.lhs.true23, label %do.body.if.end34_crit_edge

do.body.if.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true23:                                  ; preds = %do.body
  %conv24 = zext i32 %8 to i64
  %add = add i64 %10, %conv24
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call1)
  %cmp25 = icmp sgt i64 %add, %call1
  br i1 %cmp25, label %if.then27, label %land.lhs.true23.if.end34_crit_edge

land.lhs.true23.if.end34_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then27:                                        ; preds = %land.lhs.true23
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %6, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %44 = xor i64 %10, -1
  %sub.i = add i64 %call1, %44
  %max_pages.i = getelementptr inbounds %struct.fuse_conn, ptr %43, i32 0, i32 10
  %45 = ptrtoint ptr %max_pages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_pages.i, align 4
  %shl.i = shl i32 %46, 12
  %sub1.i = add i32 %shl.i, -1
  %conv.i = zext i32 %sub1.i to i64
  %or.i = or i64 %sub.i, %conv.i
  %add.i = add i64 %or.i, 1
  %47 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count.i, align 8
  %conv.i173 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i173)
  %cmp.i174 = icmp ult i64 %add.i, %conv.i173
  br i1 %cmp.i174, label %if.then.i, label %if.then27.iov_iter_truncate.exit_crit_edge

if.then27.iov_iter_truncate.exit_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %iov_iter_truncate.exit

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i = trunc i64 %add.i to i32
  %49 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv3.i, ptr %count.i, align 8
  br label %iov_iter_truncate.exit

iov_iter_truncate.exit:                           ; preds = %if.then.i, %if.then27.iov_iter_truncate.exit_crit_edge
  %50 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count.i, align 8
  %sub32 = sub i32 %8, %51
  br label %if.end34

if.end34:                                         ; preds = %iov_iter_truncate.exit, %land.lhs.true23.if.end34_crit_edge, %do.body.if.end34_crit_edge
  %count.0 = phi i32 [ %51, %iov_iter_truncate.exit ], [ %8, %land.lhs.true23.if.end34_crit_edge ], [ %8, %do.body.if.end34_crit_edge ]
  %shortened.0 = phi i32 [ %sub32, %iov_iter_truncate.exit ], [ 0, %land.lhs.true23.if.end34_crit_edge ], [ 0, %do.body.if.end34_crit_edge ]
  %conv35 = zext i32 %count.0 to i64
  %add36 = add i64 %10, %conv35
  call void @__sanitizer_cov_trace_cmp8(i64 %add36, i64 %call1)
  %cmp37 = icmp sgt i64 %add36, %call1
  br i1 %cmp37, label %land.lhs.true39, label %if.end34.if.end45_crit_edge

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.lhs.true39:                                  ; preds = %if.end34
  %52 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool41.not = icmp eq i8 %53, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end45_crit_edge, label %if.then43

land.lhs.true39.if.end45_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then43:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %blocking to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %blocking, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %land.lhs.true39.if.end45_crit_edge, %if.end34.if.end45_crit_edge
  %55 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %async, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool47.not = icmp eq i32 %56, 0
  br i1 %tobool47.not, label %if.end45.if.end54_crit_edge, label %land.lhs.true48

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true48:                                  ; preds = %if.end45
  %57 = ptrtoint ptr %blocking to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %blocking, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool50.not = icmp eq i8 %58, 0
  br i1 %tobool50.not, label %land.lhs.true48.if.end54_crit_edge, label %if.then52

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then52:                                        ; preds = %land.lhs.true48
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull %call7.i, i32 1, i32 3, i32 1) #12
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i, ptr nonnull %call7.i, i32 1, ptr nonnull elementtype(i32) %call7.i) #12, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then52.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

if.then52.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then52
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %60 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %.not.i.i.i.i = icmp sgt i32 %60, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then52.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then52.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i, i32 noundef %.sink.i.i.i.i) #12
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %done = getelementptr inbounds %struct.fuse_io_priv, ptr %call7.i, i32 0, i32 11
  %61 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %wait, ptr %done, align 4
  br label %if.end54

if.end54:                                         ; preds = %kref_get.exit, %land.lhs.true48.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  %62 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data_source.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp57 = icmp eq i8 %63, 1
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %call60 = call i32 @fuse_direct_io(ptr noundef nonnull %call7.i, ptr noundef %iter, ptr noundef nonnull %pos, i32 noundef 1)
  call void @fuse_invalidate_attr_mask(ptr noundef %15, i32 noundef 1728) #12
  br label %if.end62

if.else:                                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %iocb15 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iocb15, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %f_inode.i.i, align 8
  %call1.i = call i32 @fuse_direct_io(ptr noundef nonnull %call7.i, ptr noundef %iter, ptr noundef nonnull %pos, i32 noundef 0) #12
  call void @fuse_invalidate_atime(ptr noundef %69) #12
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then59
  %ret.0 = phi i32 [ %call60, %if.then59 ], [ %call1.i, %if.else ]
  %70 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count.i, align 8
  %add64 = add i32 %71, %shortened.0
  store i32 %add64, ptr %count.i, align 8
  %72 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %async, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool66.not = icmp eq i32 %73, 0
  br i1 %tobool66.not, label %if.end62.if.end78_crit_edge, label %if.then67

if.end62.if.end78_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.then67:                                        ; preds = %if.end62
  %74 = ptrtoint ptr %blocking to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %blocking, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool70.not = icmp eq i8 %75, 0
  %76 = call i32 @llvm.smin.i32(i32 %ret.0, i32 0)
  call fastcc void @fuse_aio_complete(ptr noundef nonnull %call7.i, i32 noundef %76, i32 noundef -1)
  br i1 %tobool70.not, label %if.then67.cleanup97_crit_edge, label %if.end76

if.then67.cleanup97_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end76:                                         ; preds = %if.then67
  call void @wait_for_completion(ptr noundef nonnull %wait) #12
  %77 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end76.if.end78_crit_edge

if.end76.if.end78_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

if.end.i:                                         ; preds = %if.end76
  %79 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i179 = icmp sgt i32 %80, -1
  br i1 %cmp.i179, label %land.lhs.true.i, label %cond.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %write to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool2.not.i = icmp eq i8 %82, 0
  %spec.select.i = select i1 %tobool2.not.i, i32 %80, i32 -5
  br label %if.end78

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size, align 4
  br label %if.end78

if.end78:                                         ; preds = %cond.true.i, %land.lhs.true.i, %if.end76.if.end78_crit_edge, %if.end62.if.end78_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.end62.if.end78_crit_edge ], [ %spec.select.i, %land.lhs.true.i ], [ %84, %cond.true.i ], [ %78, %if.end76.if.end78_crit_edge ]
  %call.i.i.i.i.i.i180 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !82
  call void @llvm.prefetch.p0(ptr nonnull %call7.i, i32 1, i32 3, i32 1) #12
  %85 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i, ptr nonnull %call7.i, i32 1, ptr nonnull elementtype(i32) %call7.i) #12, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %85, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i182, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i181 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i181, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i182:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !84
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i182, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %86 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %data_source.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp83 = icmp eq i8 %87, 1
  br i1 %cmp83, label %if.then85, label %kref_put.exit.cleanup97_crit_edge

kref_put.exit.cleanup97_crit_edge:                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.then85:                                        ; preds = %kref_put.exit
  %88 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %pos, align 8
  %call86 = call zeroext i1 @fuse_write_update_attr(ptr noundef %15, i64 noundef %89, i32 noundef %ret.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.2)
  %cmp87 = icmp sgt i32 %ret.2, -1
  %cmp37.not = xor i1 %cmp37, true
  %brmerge = select i1 %cmp87, i1 true, i1 %cmp37.not
  br i1 %brmerge, label %if.then85.cleanup97_crit_edge, label %if.then94

if.then85.cleanup97_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.then94:                                        ; preds = %if.then85
  %90 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %f_mapping, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %attr.i) #12
  %94 = call ptr @memset(ptr %attr.i, i32 255, i32 80)
  %call.i = call fastcc i64 @i_size_read(ptr noundef %93) #12
  %ia_size.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 4
  %95 = ptrtoint ptr %ia_size.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %call.i, ptr %ia_size.i, align 8
  %ia_file.i = getelementptr inbounds %struct.iattr, ptr %attr.i, i32 0, i32 8
  %96 = ptrtoint ptr %ia_file.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %4, ptr %ia_file.i, align 8
  %97 = ptrtoint ptr %attr.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8200, ptr %attr.i, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dentry.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 8
  %and.i.i.i = and i32 %101, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then94.fuse_do_truncate.exit_crit_edge, label %if.then.i.i.i, !prof !78

if.then94.fuse_do_truncate.exit_crit_edge:        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_do_truncate.exit

if.then.i.i.i:                                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %102 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %f_inode.i.i.i, align 8
  %d_op.i.i.i = getelementptr inbounds %struct.dentry, ptr %99, i32 0, i32 8
  %104 = ptrtoint ptr %d_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %d_op.i.i.i, align 8
  %d_real.i.i.i = getelementptr inbounds %struct.dentry_operations, ptr %105, i32 0, i32 12
  %106 = ptrtoint ptr %d_real.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %d_real.i.i.i, align 16
  %call.i.i.i = call ptr %107(ptr noundef %99, ptr noundef %103) #12
  br label %fuse_do_truncate.exit

fuse_do_truncate.exit:                            ; preds = %if.then.i.i.i, %if.then94.fuse_do_truncate.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.then.i.i.i ], [ %99, %if.then94.fuse_do_truncate.exit_crit_edge ]
  %call3.i = call i32 @fuse_do_setattr(ptr noundef %retval.0.i.i.i, ptr noundef nonnull %attr.i, ptr noundef %4) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %attr.i) #12
  br label %cleanup97

cleanup97:                                        ; preds = %fuse_do_truncate.exit, %if.then85.cleanup97_crit_edge, %kref_put.exit.cleanup97_crit_edge, %if.then67.cleanup97_crit_edge, %if.end.cleanup97_crit_edge, %entry.cleanup97_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup97_crit_edge ], [ -12, %if.end.cleanup97_crit_edge ], [ %ret.2, %if.then85.cleanup97_crit_edge ], [ %ret.2, %fuse_do_truncate.exit ], [ %ret.2, %kref_put.exit.cleanup97_crit_edge ], [ -529, %if.then67.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait) #12
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_do_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_invalidate_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @should_remove_suid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_direct_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_perform_write(ptr nocapture noundef readonly %iocb, ptr noundef %mapping, ptr noundef %ii, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  %ia = alloca %struct.fuse_io_args, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %ii, i32 0, i32 4
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 8
  %conv = zext i32 %11 to i64
  %add = add i64 %conv, %pos
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %add)
  %cmp = icmp slt i64 %9, %add
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %state = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %max_pages = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 10
  %descs = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 2
  %pages75 = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 1
  %out = getelementptr inbounds %struct.anon.90, ptr %ia, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end
  %res.0 = phi i32 [ 0, %if.end ], [ %res.1104, %land.rhs.do.body_crit_edge ]
  %pos.addr.0 = phi i64 [ %pos, %if.end ], [ %pos.addr.1105, %land.rhs.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %ia) #12
  %12 = call ptr @memset(ptr %ia, i32 0, i32 144)
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 8
  %15 = ptrtoint ptr %max_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_pages, align 4
  %conv.i = zext i32 %14 to i64
  %add.i = add i64 %pos.addr.0, 17592186044415
  %sub.i = add i64 %add.i, %conv.i
  %17 = lshr i64 %sub.i, 12
  %18 = lshr i64 %pos.addr.0, 12
  %sub2.i = sub nsw i64 %17, %18
  %19 = trunc i64 %sub2.i to i32
  %conv4.i = add i32 %19, 1
  %20 = call i32 @llvm.umin.i32(i32 %conv4.i, i32 %16) #12
  %mul.i = mul i32 %20, 12
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #16
  %add.ptr.i = getelementptr ptr, ptr %call9.i.i.i, i32 %20
  %21 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %descs, align 4
  %22 = ptrtoint ptr %pages75 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i.i, ptr %pages75, align 8
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %cleanup.thread, label %if.end10

cleanup.thread:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ia) #12
  br label %do.end

if.end10:                                         ; preds = %do.body
  %call11 = call fastcc i32 @fuse_fill_write_pages(ptr noundef nonnull %ia, ptr noundef %mapping, ptr noundef %ii, i64 noundef %pos.addr.0, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 1
  br i1 %cmp12, label %cleanup, label %if.else

if.else:                                          ; preds = %if.end10
  %call15 = call fastcc i32 @fuse_send_write_pages(ptr noundef nonnull %ia, ptr noundef %iocb, ptr noundef %1, i64 noundef %pos.addr.0, i32 noundef %call11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.else.cleanup.thread92_crit_edge

if.else.cleanup.thread92_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread92

if.then17:                                        ; preds = %if.else
  %23 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out, align 8
  %add18 = add i32 %24, %res.0
  %conv19 = zext i32 %24 to i64
  %add20 = add i64 %pos.addr.0, %conv19
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call11)
  %cmp21.not = icmp eq i32 %24, %call11
  br i1 %cmp21.not, label %cleanup.thread99, label %if.then17.cleanup.thread92_crit_edge

if.then17.cleanup.thread92_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread92

cleanup.thread99:                                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %pages75 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages75, align 8
  call void @kfree(ptr noundef %26) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ia) #12
  br label %land.rhs

cleanup.thread92:                                 ; preds = %if.then17.cleanup.thread92_crit_edge, %if.else.cleanup.thread92_crit_edge
  %err.1.ph = phi i32 [ -5, %if.then17.cleanup.thread92_crit_edge ], [ %call15, %if.else.cleanup.thread92_crit_edge ]
  %res.1.ph = phi i32 [ %add18, %if.then17.cleanup.thread92_crit_edge ], [ %res.0, %if.else.cleanup.thread92_crit_edge ]
  %pos.addr.1.ph = phi i64 [ %add20, %if.then17.cleanup.thread92_crit_edge ], [ %pos.addr.0, %if.else.cleanup.thread92_crit_edge ]
  %27 = ptrtoint ptr %pages75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages75, align 8
  call void @kfree(ptr noundef %28) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ia) #12
  br label %do.end

cleanup:                                          ; preds = %if.end10
  %29 = ptrtoint ptr %pages75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pages75, align 8
  call void @kfree(ptr noundef %30) #12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ia) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool31.not = icmp eq i32 %call11, 0
  br i1 %tobool31.not, label %cleanup.land.rhs_crit_edge, label %cleanup.do.end_crit_edge

cleanup.do.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %cleanup.thread99
  %pos.addr.1105 = phi i64 [ %add20, %cleanup.thread99 ], [ %pos.addr.0, %cleanup.land.rhs_crit_edge ]
  %res.1104 = phi i32 [ %add18, %cleanup.thread99 ], [ %res.0, %cleanup.land.rhs_crit_edge ]
  %31 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i, align 8
  %tobool33.not = icmp eq i32 %32, 0
  br i1 %tobool33.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %cleanup.do.end_crit_edge, %cleanup.thread92, %cleanup.thread
  %pos.addr.287 = phi i64 [ %pos.addr.0, %cleanup.thread ], [ %pos.addr.1.ph, %cleanup.thread92 ], [ %pos.addr.1105, %land.rhs.do.end_crit_edge ], [ %pos.addr.0, %cleanup.do.end_crit_edge ]
  %res.286 = phi i32 [ %res.0, %cleanup.thread ], [ %res.1.ph, %cleanup.thread92 ], [ %res.1104, %land.rhs.do.end_crit_edge ], [ %res.0, %cleanup.do.end_crit_edge ]
  %err.285 = phi i32 [ -12, %cleanup.thread ], [ %err.1.ph, %cleanup.thread92 ], [ 0, %land.rhs.do.end_crit_edge ], [ %call11, %cleanup.do.end_crit_edge ]
  %call34 = call zeroext i1 @fuse_write_update_attr(ptr noundef %1, i64 noundef %pos.addr.287, i32 noundef %res.286)
  %state35 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.286)
  %cmp36 = icmp sgt i32 %res.286, 0
  %res.2.err.2 = select i1 %cmp36, i32 %res.286, i32 %err.285
  ret i32 %res.2.err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_fill_write_pages(ptr nocapture noundef %ia, ptr noundef %mapping, ptr noundef %ii, i64 noundef %pos, i32 noundef %max_pages) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = trunc i64 %pos to i32
  %conv = and i32 %8, 4095
  %in_pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %in_pages to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %in_pages, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %in_pages, align 8
  %descs = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %descs, align 4
  %offset2 = getelementptr inbounds %struct.fuse_page_desc, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %offset2, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %ii, i32 0, i32 4
  %max_write = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 9
  %i_mmap_writable.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 4
  %pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 1
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 3
  %big_writes = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  br label %do.body

do.body:                                          ; preds = %land.lhs.true61.do.body_crit_edge, %entry
  %offset.0 = phi i32 [ %conv, %entry ], [ 0, %land.lhs.true61.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %entry ], [ %add, %land.lhs.true61.do.body_crit_edge ]
  %pos.addr.0 = phi i64 [ %pos, %entry ], [ %add34, %land.lhs.true61.do.body_crit_edge ]
  %13 = lshr i64 %pos.addr.0, 12
  %conv3 = trunc i64 %13 to i32
  %sub = sub nuw nsw i32 4096, %offset.0
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 8
  %16 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %15)
  %17 = ptrtoint ptr %max_write to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_write, align 8
  %sub7 = sub i32 %18, %count.0
  %19 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub7)
  %call15166 = tail call i32 @fault_in_iov_iter_readable(ptr noundef %ii, i32 noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15166)
  %tobool.not167 = icmp eq i32 %call15166, 0
  br i1 %tobool.not167, label %do.body.if.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.body.if.end_crit_edge:                         ; preds = %do.body
  br label %if.end

if.end:                                           ; preds = %put_page.exit.if.end_crit_edge, %do.body.if.end_crit_edge
  %call16 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv3, i32 noundef 0) #12
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.do.end_crit_edge, label %if.end19

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end19:                                         ; preds = %if.end
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_mmap_writable.i, i32 noundef 4) #12
  %20 = ptrtoint ptr %i_mmap_writable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_mmap_writable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp slt i32 %21, 1
  br i1 %cmp.i, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @flush_dcache_page(ptr noundef nonnull %call16) #12
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %call24 = tail call i32 @copy_page_from_iter_atomic(ptr noundef nonnull %call16, i32 noundef %offset.0, i32 noundef %19, ptr noundef %ii) #12
  tail call void @flush_dcache_page(ptr noundef nonnull %call16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end23
  tail call void @unlock_page(ptr noundef nonnull %call16) #12
  %22 = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %call16 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.6) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !87
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_fill_write_pages, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %26) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %call15 = tail call i32 @fault_in_iov_iter_readable(ptr noundef %ii, i32 noundef %19) #12
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %put_page.exit.if.end_crit_edge, label %put_page.exit.do.end_crit_edge

put_page.exit.do.end_crit_edge:                   ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

put_page.exit.if.end_crit_edge:                   ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end27:                                         ; preds = %if.end23
  %31 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages, align 8
  %33 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_pages, align 8
  %arrayidx28 = getelementptr ptr, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call16, ptr %arrayidx28, align 4
  %36 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %descs, align 4
  %38 = load i32, ptr %num_pages, align 8
  %arrayidx31 = getelementptr %struct.fuse_page_desc, ptr %37, i32 %38
  %39 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call24, ptr %arrayidx31, align 4
  %40 = load i32, ptr %num_pages, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %num_pages, align 8
  %add = add i32 %call24, %count.0
  %conv33 = zext i32 %call24 to i64
  %add34 = add i64 %pos.addr.0, %conv33
  %add35 = add i32 %call24, %offset.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call24)
  %cmp40 = icmp eq i32 %call24, 4096
  br i1 %cmp40, label %if.then42, label %if.end27.if.end43_crit_edge

if.end27.if.end43_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then42:                                        ; preds = %if.end27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  %41 = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !78

if.then.i.i.i:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call16, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call16) #12
  br label %if.end43

if.end43:                                         ; preds = %SetPageUptodate.exit, %if.end27.if.end43_crit_edge
  %44 = getelementptr inbounds %struct.page, ptr %call16, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i126 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i126)
  %tobool.not.i.i127 = icmp eq i32 %and.i.i126, 0
  br i1 %tobool.not.i.i127, label %if.end.i.i130, label %if.then.i.i129, !prof !78

if.then.i.i129:                                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i128 = add i32 %46, -1
  br label %_compound_head.exit.i134

if.end.i.i130:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %call16 to i32
  br label %_compound_head.exit.i134

_compound_head.exit.i134:                         ; preds = %if.end.i.i130, %if.then.i.i129
  %retval.0.i.i131 = phi i32 [ %sub.i.i128, %if.then.i.i129 ], [ %47, %if.end.i.i130 ]
  %48 = inttoptr i32 %retval.0.i.i131 to ptr
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i.i.i132 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i132)
  %tobool.not.i.i.i133 = icmp eq i32 %and.i.i.i.i132, 0
  br i1 %tobool.not.i.i.i133, label %folio_flags.exit.i.i, label %if.then.i.i.i135, !prof !78

if.then.i.i.i135:                                 ; preds = %_compound_head.exit.i134
  call void @__sanitizer_cov_trace_pc() #14
  %52 = inttoptr i32 %retval.0.i.i131 to ptr
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i134
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %48, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.i.not.i = icmp eq i32 %55, 0
  br i1 %tobool.i.not.i, label %if.else, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @unlock_page(ptr noundef nonnull %call16) #12
  %56 = ptrtoint ptr %big_writes to i32
  call void @__asan_loadN_noabort(i32 %56, i32 7)
  %bf.load48 = load i56, ptr %big_writes, align 1
  %57 = and i56 %bf.load48, 134217728
  %tobool50.not = icmp eq i56 %57, 0
  br i1 %tobool50.not, label %PageUptodate.exit.do.end_crit_edge, label %do.cond

PageUptodate.exit.do.end_crit_edge:               ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.else:                                          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %page_locked = getelementptr inbounds %struct.anon.90, ptr %ia, i32 0, i32 2
  %58 = ptrtoint ptr %page_locked to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %page_locked, align 8
  br label %do.end

do.cond:                                          ; preds = %PageUptodate.exit
  %59 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool57.not = icmp eq i32 %60, 0
  br i1 %tobool57.not, label %do.cond.do.end_crit_edge, label %land.lhs.true

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.cond
  %61 = ptrtoint ptr %max_write to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_write, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %62)
  %cmp59 = icmp ult i32 %add, %62
  br i1 %cmp59, label %land.lhs.true61, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true61:                                  ; preds = %land.lhs.true
  %63 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %max_pages)
  %cmp63 = icmp ult i32 %64, %max_pages
  %65 = and i32 %add35, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp eq i32 %65, 0
  %or.cond = select i1 %cmp63, i1 %66, i1 false
  br i1 %or.cond, label %land.lhs.true61.do.body_crit_edge, label %land.lhs.true61.do.end_crit_edge

land.lhs.true61.do.end_crit_edge:                 ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true61.do.body_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %land.lhs.true61.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.cond.do.end_crit_edge, %if.else, %PageUptodate.exit.do.end_crit_edge, %put_page.exit.do.end_crit_edge, %if.end.do.end_crit_edge, %do.body.do.end_crit_edge
  %err.0146 = phi i32 [ 0, %if.else ], [ -14, %put_page.exit.do.end_crit_edge ], [ -12, %if.end.do.end_crit_edge ], [ -14, %do.body.do.end_crit_edge ], [ 0, %land.lhs.true61.do.end_crit_edge ], [ 0, %land.lhs.true.do.end_crit_edge ], [ 0, %do.cond.do.end_crit_edge ], [ 0, %PageUptodate.exit.do.end_crit_edge ]
  %count.1145 = phi i32 [ %add, %if.else ], [ %count.0, %if.end.do.end_crit_edge ], [ %count.0, %put_page.exit.do.end_crit_edge ], [ %count.0, %do.body.do.end_crit_edge ], [ %add, %land.lhs.true61.do.end_crit_edge ], [ %add, %land.lhs.true.do.end_crit_edge ], [ %add, %do.cond.do.end_crit_edge ], [ %add, %PageUptodate.exit.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1145)
  %cmp67.not = icmp eq i32 %count.1145, 0
  %err.0.count.1 = select i1 %cmp67.not, i32 %err.0146, i32 %count.1145
  ret i32 %err.0.count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_send_write_pages(ptr noundef %ia, ptr nocapture noundef readonly %iocb, ptr noundef %inode, i64 noundef %pos, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap1 = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp119.not = icmp eq i32 %7, 0
  br i1 %cmp119.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.0120
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %index = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  tail call fastcc void @fuse_wait_on_page_writeback(ptr noundef %inode, i32 noundef %13)
  %inc = add nuw i32 %i.0120, 1
  %14 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_pages, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %fh.i, align 8
  %18 = ptrtoint ptr %ia to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ia, align 8
  %offset.i = getelementptr inbounds %struct.fuse_write_in, ptr %ia, i32 0, i32 1
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %pos, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.fuse_write_in, ptr %ia, i32 0, i32 2
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %count, ptr %size.i, align 8
  %opcode.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %opcode.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %nodeid.i, align 8
  %24 = ptrtoint ptr %ap1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %ap1, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %in_numargs.i, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %minor.i = getelementptr inbounds %struct.fuse_conn, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %minor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %31)
  %cmp.i = icmp ult i32 %31, 9
  %spec.select.i = select i1 %cmp.i, i32 24, i32 40
  %32 = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.i, ptr %32, align 4
  %value.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ia, ptr %value.i, align 4
  %arrayidx14.i = getelementptr %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %count, ptr %arrayidx14.i, align 4
  %out_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %out_args.i, align 4
  %out.i = getelementptr inbounds %struct.anon.90, ptr %ia, i32 0, i32 1
  %value20.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 6, i32 0, i32 1
  %38 = ptrtoint ptr %value20.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %out.i, ptr %value20.i, align 4
  %39 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iocb, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f_flags.i, align 4
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %43 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ki_flags.i, align 8
  %and.i = shl i32 %44, 11
  %45 = and i32 %and.i, 4096
  %and2.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %flags.1.v.i = select i1 %tobool3.not.i, i32 %45, i32 1052672
  %flags.1.i = or i32 %flags.1.v.i, %42
  %flags = getelementptr inbounds %struct.fuse_write_in, ptr %ia, i32 0, i32 5
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %flags.1.i, ptr %flags, align 8
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %handle_killpriv_v2 = getelementptr inbounds %struct.fuse_conn, ptr %48, i32 0, i32 26
  %49 = ptrtoint ptr %handle_killpriv_v2 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 7)
  %bf.load = load i56, ptr %handle_killpriv_v2, align 1
  %50 = and i56 %bf.load, 17592186044416
  %tobool.not = icmp eq i56 %50, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %land.lhs.true

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %call3 = tail call zeroext i1 @capable(i32 noundef 4) #12
  br i1 %call3, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %write_flags = getelementptr inbounds %struct.fuse_write_in, ptr %ia, i32 0, i32 3
  %51 = ptrtoint ptr %write_flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %write_flags, align 4
  %or = or i32 %52, 4
  store i32 %or, ptr %write_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  %call5 = tail call i32 @fuse_simple_request(ptr noundef %5, ptr noundef %ap1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true7:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %out.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %count)
  %cmp8 = icmp ugt i32 %54, %count
  %spec.select = select i1 %cmp8, i32 -5, i32 0
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true7, %if.end.if.end10_crit_edge
  %err.0 = phi i32 [ %call5, %if.end.if.end10_crit_edge ], [ %spec.select, %land.lhs.true7 ]
  %55 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %out.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %count)
  %cmp13 = icmp ult i32 %56, %count
  %57 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp20121.not = icmp eq i32 %58, 0
  br i1 %cmp20121.not, label %if.end10.for.end45_crit_edge, label %for.body21.lr.ph

if.end10.for.end45_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end45

for.body21.lr.ph:                                 ; preds = %if.end10
  %descs = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %descs, align 4
  %offset15 = getelementptr inbounds %struct.fuse_page_desc, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset15, align 4
  %pages22 = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool24.not = icmp eq i32 %err.0, 0
  %page_locked = getelementptr inbounds %struct.anon.90, ptr %ia, i32 0, i32 2
  br label %for.body21

for.body21:                                       ; preds = %put_page.exit.for.body21_crit_edge, %for.body21.lr.ph
  %i.1124 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc44, %put_page.exit.for.body21_crit_edge ]
  %offset.0123 = phi i32 [ %62, %for.body21.lr.ph ], [ %offset.1, %put_page.exit.for.body21_crit_edge ]
  %count.addr.0122 = phi i32 [ %56, %for.body21.lr.ph ], [ %count.addr.2, %put_page.exit.for.body21_crit_edge ]
  %63 = ptrtoint ptr %pages22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pages22, align 8
  %arrayidx23 = getelementptr ptr, ptr %64, i32 %i.1124
  %65 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx23, align 4
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %for.body21
  %67 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !78

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #12, !srcloc !107
  unreachable

do.body7.i:                                       ; preds = %if.then25
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %67, align 4
  %and.i31.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %71, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %66 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %72, %if.end.i.i ]
  %73 = inttoptr i32 %retval.0.i.i to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp.i.not.i = icmp eq i32 %75, -1
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %67, align 4
  %and.i32.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !72

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !78

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %77, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %66 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %78, %if.end.i36.i ]
  %79 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #12, !srcloc !108
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !78

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %77, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %66 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %80, %if.end.i43.i ]
  %81 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %81) #12
  br label %if.end35

if.else:                                          ; preds = %for.body21
  %sub = sub i32 4096, %offset.0123
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0122, i32 %sub)
  %cmp26.not = icmp ult i32 %count.addr.0122, %sub
  br i1 %cmp26.not, label %if.else30, label %if.then27

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub29 = sub i32 %count.addr.0122, %sub
  br label %if.end35

if.else30:                                        ; preds = %if.else
  br i1 %cmp13, label %if.then32, label %if.else30.if.end35_crit_edge

if.else30.if.end35_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then32:                                        ; preds = %if.else30
  %82 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  %and.i.i79 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i79)
  %tobool.not.i80 = icmp eq i32 %and.i.i79, 0
  br i1 %tobool.not.i80, label %do.body7.i84, label %if.then.i81, !prof !78

if.then.i81:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #12, !srcloc !107
  unreachable

do.body7.i84:                                     ; preds = %if.then32
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %82, align 4
  %and.i31.i82 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i31.i82, 0
  br i1 %tobool.not.i.i83, label %if.end.i.i87, label %if.then.i.i86, !prof !78

if.then.i.i86:                                    ; preds = %do.body7.i84
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i85 = add i32 %86, -1
  br label %_compound_head.exit.i92

if.end.i.i87:                                     ; preds = %do.body7.i84
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %66 to i32
  br label %_compound_head.exit.i92

_compound_head.exit.i92:                          ; preds = %if.end.i.i87, %if.then.i.i86
  %retval.0.i.i88 = phi i32 [ %sub.i.i85, %if.then.i.i86 ], [ %87, %if.end.i.i87 ]
  %88 = inttoptr i32 %retval.0.i.i88 to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp.i.not.i89 = icmp eq i32 %90, -1
  %91 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %82, align 4
  %and.i32.i90 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i90)
  %tobool.not.i33.i91 = icmp eq i32 %and.i32.i90, 0
  br i1 %cmp.i.not.i89, label %if.then17.i93, label %do.end24.i99, !prof !72

if.then17.i93:                                    ; preds = %_compound_head.exit.i92
  br i1 %tobool.not.i33.i91, label %if.end.i36.i96, label %if.then.i35.i95, !prof !78

if.then.i35.i95:                                  ; preds = %if.then17.i93
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i94 = add i32 %92, -1
  br label %_compound_head.exit38.i98

if.end.i36.i96:                                   ; preds = %if.then17.i93
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %66 to i32
  br label %_compound_head.exit38.i98

_compound_head.exit38.i98:                        ; preds = %if.end.i36.i96, %if.then.i35.i95
  %retval.0.i37.i97 = phi i32 [ %sub.i34.i94, %if.then.i35.i95 ], [ %93, %if.end.i36.i96 ]
  %94 = inttoptr i32 %retval.0.i37.i97 to ptr
  tail call void @dump_page(ptr noundef %94, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #12, !srcloc !108
  unreachable

do.end24.i99:                                     ; preds = %_compound_head.exit.i92
  br i1 %tobool.not.i33.i91, label %if.end.i43.i102, label %if.then.i42.i101, !prof !78

if.then.i42.i101:                                 ; preds = %do.end24.i99
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i100 = add i32 %92, -1
  br label %ClearPageUptodate.exit104

if.end.i43.i102:                                  ; preds = %do.end24.i99
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %66 to i32
  br label %ClearPageUptodate.exit104

ClearPageUptodate.exit104:                        ; preds = %if.end.i43.i102, %if.then.i42.i101
  %retval.0.i44.i103 = phi i32 [ %sub.i41.i100, %if.then.i42.i101 ], [ %95, %if.end.i43.i102 ]
  %96 = inttoptr i32 %retval.0.i44.i103 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %96) #12
  br label %if.end35

if.end35:                                         ; preds = %ClearPageUptodate.exit104, %if.else30.if.end35_crit_edge, %if.then27, %ClearPageUptodate.exit
  %count.addr.2 = phi i32 [ %count.addr.0122, %ClearPageUptodate.exit ], [ %sub29, %if.then27 ], [ 0, %ClearPageUptodate.exit104 ], [ 0, %if.else30.if.end35_crit_edge ]
  %offset.1 = phi i32 [ %offset.0123, %ClearPageUptodate.exit ], [ 0, %if.then27 ], [ 0, %ClearPageUptodate.exit104 ], [ 0, %if.else30.if.end35_crit_edge ]
  %97 = ptrtoint ptr %page_locked to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %page_locked, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool36.not = icmp eq i8 %98, 0
  br i1 %tobool36.not, label %if.end35.if.end42_crit_edge, label %land.lhs.true37

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.lhs.true37:                                  ; preds = %if.end35
  %99 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_pages, align 8
  %sub39 = add i32 %100, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1124, i32 %sub39)
  %cmp40 = icmp eq i32 %i.1124, %sub39
  br i1 %cmp40, label %if.then41, label %land.lhs.true37.if.end42_crit_edge

land.lhs.true37.if.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unlock_page(ptr noundef %66) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.lhs.true37.if.end42_crit_edge, %if.end35.if.end42_crit_edge
  %101 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %and.i.i105 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105)
  %tobool.not.i.i106 = icmp eq i32 %and.i.i105, 0
  br i1 %tobool.not.i.i106, label %if.end.i.i109, label %if.then.i.i108, !prof !78

if.then.i.i108:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i107 = add i32 %103, -1
  br label %_compound_head.exit.i111

if.end.i.i109:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %66 to i32
  br label %_compound_head.exit.i111

_compound_head.exit.i111:                         ; preds = %if.end.i.i109, %if.then.i.i108
  %retval.0.i.i110 = phi i32 [ %sub.i.i107, %if.then.i.i108 ], [ %104, %if.end.i.i109 ]
  %105 = inttoptr i32 %retval.0.i.i110 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %106 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i.i.i.i = icmp eq i32 %107, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i111
  call void @__sanitizer_cov_trace_pc() #14
  %108 = inttoptr i32 %retval.0.i.i110 to ptr
  tail call void @dump_page(ptr noundef %108, ptr noundef nonnull @.str.6) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !87
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i111
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %109, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_send_write_pages, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %105, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %105) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc44 = add nuw i32 %i.1124, 1
  %110 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_pages, align 8
  %cmp20 = icmp ult i32 %inc44, %111
  br i1 %cmp20, label %put_page.exit.for.body21_crit_edge, label %put_page.exit.for.end45_crit_edge

put_page.exit.for.end45_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end45

put_page.exit.for.body21_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

for.end45:                                        ; preds = %put_page.exit.for.end45_crit_edge, %if.end10.for.end45_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter_atomic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_wait_on_page_writeback(ptr noundef %inode, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 449) #12
  %lock.i.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #12
  %writepages.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  %0 = ptrtoint ptr %writepages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.047.i.i.i = load ptr, ptr %writepages.i.i.i, align 4
  %tobool.not48.i.i.i = icmp eq ptr %n.047.i.i.i, null
  br i1 %tobool.not48.i.i.i, label %entry.fuse_page_is_writeback.exit.thread_crit_edge, label %entry.while.body.i.i.i_crit_edge

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

entry.fuse_page_is_writeback.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit.thread

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  %n.049.i.i.i = phi ptr [ %n.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %n.047.i.i.i, %entry.while.body.i.i.i_crit_edge ]
  %inode.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 24
  %1 = ptrtoint ptr %inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inode.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %2, %inode
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i, !prof !78

while.body.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 403, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %while.body.i.i.i.if.end.i.i.i_crit_edge
  %offset.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 -136
  %3 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset.i.i.i, align 8
  %shr.i.i.i = lshr i64 %4, 12
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %num_pages.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 -16
  %5 = ptrtoint ptr %num_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_pages.i.i.i, align 8
  %add.i.i.i = add i32 %6, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %index)
  %cmp22.not.i.i.i = icmp ugt i32 %add.i.i.i, %index
  br i1 %cmp22.not.i.i.i, label %if.else.i.i.i, label %if.then24.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %index)
  %cmp25.i.i.i = icmp ugt i32 %conv.i.i.i, %index
  br i1 %cmp25.i.i.i, label %if.then27.i.i.i, label %fuse_page_is_writeback.exit

if.then27.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then27.i.i.i, %if.then24.i.i.i
  %n.1.in.i.i.i = phi ptr [ %rb_right.i.i.i, %if.then24.i.i.i ], [ %rb_left.i.i.i, %if.then27.i.i.i ]
  %7 = ptrtoint ptr %n.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.0.i.i.i = load ptr, ptr %n.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %n.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.fuse_page_is_writeback.exit.thread_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

cleanup.i.i.i.fuse_page_is_writeback.exit.thread_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit.thread

fuse_page_is_writeback.exit.thread:               ; preds = %cleanup.i.i.i.fuse_page_is_writeback.exit.thread_crit_edge, %entry.fuse_page_is_writeback.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  br label %do.end12

fuse_page_is_writeback.exit:                      ; preds = %if.else.i.i.i
  %add.ptr.le.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 -144
  %phi.cmp.i.i.not = icmp eq ptr %add.ptr.le.i.i.i, null
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  br i1 %phi.cmp.i.i.not, label %fuse_page_is_writeback.exit.do.end12_crit_edge, label %if.end

fuse_page_is_writeback.exit.do.end12_crit_edge:   ; preds = %fuse_page_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.end:                                           ; preds = %fuse_page_is_writeback.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %9 = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 9
  %page_waitq = getelementptr inbounds %struct.anon.86, ptr %9, i32 0, i32 3
  %call659 = call i32 @prepare_to_wait_event(ptr noundef %page_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #12
  %10 = ptrtoint ptr %writepages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %n.047.i.i.i1960 = load ptr, ptr %writepages.i.i.i, align 4
  %tobool.not48.i.i.i2061 = icmp eq ptr %n.047.i.i.i1960, null
  br i1 %tobool.not48.i.i.i2061, label %if.end.fuse_page_is_writeback.exit47.thread_crit_edge, label %if.end.while.body.i.i.i24_crit_edge

if.end.while.body.i.i.i24_crit_edge:              ; preds = %if.end
  br label %while.body.i.i.i24

if.end.fuse_page_is_writeback.exit47.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit47.thread

while.body.i.i.i24:                               ; preds = %while.body.i.i.i24.backedge, %if.end.while.body.i.i.i24_crit_edge
  %n.049.i.i.i21 = phi ptr [ %n.049.i.i.i21.be, %while.body.i.i.i24.backedge ], [ %n.047.i.i.i1960, %if.end.while.body.i.i.i24_crit_edge ]
  %inode.i.i.i22 = getelementptr i8, ptr %n.049.i.i.i21, i32 24
  %11 = ptrtoint ptr %inode.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode.i.i.i22, align 8
  %cmp.not.i.i.i23 = icmp eq ptr %12, %inode
  br i1 %cmp.not.i.i.i23, label %while.body.i.i.i24.if.end.i.i.i32_crit_edge, label %do.end.i.i.i25, !prof !78

while.body.i.i.i24.if.end.i.i.i32_crit_edge:      ; preds = %while.body.i.i.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i32

do.end.i.i.i25:                                   ; preds = %while.body.i.i.i24
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 403, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i32

if.end.i.i.i32:                                   ; preds = %do.end.i.i.i25, %while.body.i.i.i24.if.end.i.i.i32_crit_edge
  %offset.i.i.i26 = getelementptr i8, ptr %n.049.i.i.i21, i32 -136
  %13 = ptrtoint ptr %offset.i.i.i26 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset.i.i.i26, align 8
  %shr.i.i.i27 = lshr i64 %14, 12
  %conv.i.i.i28 = trunc i64 %shr.i.i.i27 to i32
  %num_pages.i.i.i29 = getelementptr i8, ptr %n.049.i.i.i21, i32 -16
  %15 = ptrtoint ptr %num_pages.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_pages.i.i.i29, align 8
  %add.i.i.i30 = add i32 %16, %conv.i.i.i28
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i30, i32 %index)
  %cmp22.not.i.i.i31 = icmp ugt i32 %add.i.i.i30, %index
  br i1 %cmp22.not.i.i.i31, label %if.else.i.i.i36, label %if.then24.i.i.i34

if.then24.i.i.i34:                                ; preds = %if.end.i.i.i32
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i.i33 = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i21, i32 0, i32 1
  br label %cleanup.i.i.i42

if.else.i.i.i36:                                  ; preds = %if.end.i.i.i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i28, i32 %index)
  %cmp25.i.i.i35 = icmp ugt i32 %conv.i.i.i28, %index
  br i1 %cmp25.i.i.i35, label %if.then27.i.i.i38, label %fuse_page_is_writeback.exit47

if.then27.i.i.i38:                                ; preds = %if.else.i.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i.i37 = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i21, i32 0, i32 2
  br label %cleanup.i.i.i42

cleanup.i.i.i42:                                  ; preds = %if.then27.i.i.i38, %if.then24.i.i.i34
  %n.1.in.i.i.i39 = phi ptr [ %rb_right.i.i.i33, %if.then24.i.i.i34 ], [ %rb_left.i.i.i37, %if.then27.i.i.i38 ]
  %17 = ptrtoint ptr %n.1.in.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.0.i.i.i40 = load ptr, ptr %n.1.in.i.i.i39, align 4
  %tobool.not.i.i.i41 = icmp eq ptr %n.0.i.i.i40, null
  br i1 %tobool.not.i.i.i41, label %cleanup.i.i.i42.fuse_page_is_writeback.exit47.thread_crit_edge, label %cleanup.i.i.i42.while.body.i.i.i24.backedge_crit_edge

cleanup.i.i.i42.while.body.i.i.i24.backedge_crit_edge: ; preds = %cleanup.i.i.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i24.backedge

cleanup.i.i.i42.fuse_page_is_writeback.exit47.thread_crit_edge: ; preds = %cleanup.i.i.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit47.thread

while.body.i.i.i24.backedge:                      ; preds = %cleanup.while.body.i.i.i24.backedge_crit_edge, %cleanup.i.i.i42.while.body.i.i.i24.backedge_crit_edge
  %n.049.i.i.i21.be = phi ptr [ %n.0.i.i.i40, %cleanup.i.i.i42.while.body.i.i.i24.backedge_crit_edge ], [ %n.047.i.i.i19, %cleanup.while.body.i.i.i24.backedge_crit_edge ]
  br label %while.body.i.i.i24

fuse_page_is_writeback.exit47.thread:             ; preds = %cleanup.fuse_page_is_writeback.exit47.thread_crit_edge, %cleanup.i.i.i42.fuse_page_is_writeback.exit47.thread_crit_edge, %if.end.fuse_page_is_writeback.exit47.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  br label %for.end

fuse_page_is_writeback.exit47:                    ; preds = %if.else.i.i.i36
  %add.ptr.le.i.i.i43 = getelementptr i8, ptr %n.049.i.i.i21, i32 -144
  %phi.cmp.i.i44.not = icmp eq ptr %add.ptr.le.i.i.i43, null
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  br i1 %phi.cmp.i.i44.not, label %fuse_page_is_writeback.exit47.for.end_crit_edge, label %cleanup

fuse_page_is_writeback.exit47.for.end_crit_edge:  ; preds = %fuse_page_is_writeback.exit47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %fuse_page_is_writeback.exit47
  call void @schedule() #12
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %page_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #12
  %18 = ptrtoint ptr %writepages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %n.047.i.i.i19 = load ptr, ptr %writepages.i.i.i, align 4
  %tobool.not48.i.i.i20 = icmp eq ptr %n.047.i.i.i19, null
  br i1 %tobool.not48.i.i.i20, label %cleanup.fuse_page_is_writeback.exit47.thread_crit_edge, label %cleanup.while.body.i.i.i24.backedge_crit_edge

cleanup.while.body.i.i.i24.backedge_crit_edge:    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i24.backedge

cleanup.fuse_page_is_writeback.exit47.thread_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit47.thread

for.end:                                          ; preds = %fuse_page_is_writeback.exit47.for.end_crit_edge, %fuse_page_is_writeback.exit47.thread
  call void @finish_wait(ptr noundef %page_waitq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end12

do.end12:                                         ; preds = %for.end, %fuse_page_is_writeback.exit.do.end12_crit_edge, %fuse_page_is_writeback.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_vma_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @write_inode_now(ptr noundef %5, i32 noundef 1) #12
  %6 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_file, align 4
  %f_mapping2 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %f_mapping2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_mapping2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not.i = icmp eq i32 %call, 0
  br i1 %tobool.not.i, label %entry.mapping_set_error.exit_crit_edge, label %if.end.i, !prof !78

entry.mapping_set_error.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapping_set_error.exit

if.end.i:                                         ; preds = %entry
  tail call void @__filemap_set_wb_err(ptr noundef %9, i32 noundef %call) #12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp.i = icmp eq i32 %call, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #12
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.end7.i, %entry.mapping_set_error.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_map_pages(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_page_mkwrite(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %2 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %call4 = tail call i32 @file_update_time(ptr noundef %5) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.16, i32 noundef 788) #12
  %8 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !78

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef 4) #12
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %and.i.i4.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %12, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #12, !srcloc !109
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %12) #12
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %21 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_mapping, align 8
  %cmp.not = icmp eq ptr %20, %22
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unlock_page(ptr noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %index = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  tail call fastcc void @fuse_wait_on_page_writeback(ptr noundef %7, i32 noundef %24)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 256, %if.then ], [ 512, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_check_errors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_check_and_advance_wb_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_test_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_lock_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_setlk(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %fl, i32 noundef %flock) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_lk_in, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #12
  %6 = getelementptr inbounds i8, ptr %args, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %inarg) #12
  %fl_flags = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 6
  %8 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fl_flags, align 8
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 32, i32 33
  %fl_type = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 7
  %10 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fl_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp.not = icmp eq i8 %11, 2
  br i1 %cmp.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 111
  %16 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond5 = phi ptr [ %19, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %pid_ns = getelementptr inbounds %struct.fuse_conn, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %pid_ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pid_ns, align 4
  %call6 = tail call i32 @pid_nr_ns(ptr noundef %cond5, ptr noundef %23) #12
  %fl_lmops = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 18
  %24 = ptrtoint ptr %fl_lmops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fl_lmops, align 8
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %lm_grant = getelementptr inbounds %struct.lock_manager_operations, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %lm_grant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lm_grant, align 4
  %tobool9.not = icmp eq ptr %27, null
  br i1 %tobool9.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %28 = ptrtoint ptr %fl_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fl_flags, align 8
  %and11 = and i32 %29, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 65
  br i1 %cmp12, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %30 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %38 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private_data.i, align 4
  %40 = getelementptr inbounds i8, ptr %inarg, i32 40
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %40, align 8
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %fh.i, align 8
  %44 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %inarg, align 8
  %fl_owner.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 5
  %45 = ptrtoint ptr %fl_owner.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fl_owner.i, align 4
  %scramble_key.i.i = getelementptr inbounds %struct.fuse_conn, ptr %37, i32 0, i32 33
  %47 = ptrtoint ptr %46 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end15
  %i.041.i.i = phi i32 [ 0, %if.end15 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %sum.040.i.i = phi i32 [ 0, %if.end15 ], [ %add8.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %v1.039.i.i = phi i32 [ 0, %if.end15 ], [ %add18.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %v0.038.i.i = phi i32 [ %47, %if.end15 ], [ %add7.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %v1.039.i.i, 4
  %shr4.i.i = lshr i32 %v1.039.i.i, 5
  %xor.i.i = xor i32 %shl.i.i, %shr4.i.i
  %add.i.i = add i32 %xor.i.i, %v1.039.i.i
  %and.i.i = and i32 %sum.040.i.i, 3
  %arrayidx.i.i = getelementptr i32, ptr %scramble_key.i.i, i32 %and.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  %add5.i.i = add i32 %49, %sum.040.i.i
  %xor6.i.i = xor i32 %add5.i.i, %add.i.i
  %add7.i.i = add i32 %xor6.i.i, %v0.038.i.i
  %add8.i.i = add i32 %sum.040.i.i, -1640531527
  %shl9.i.i = shl i32 %add7.i.i, 4
  %shr10.i.i = lshr i32 %add7.i.i, 5
  %xor11.i.i = xor i32 %shl9.i.i, %shr10.i.i
  %add12.i.i = add i32 %xor11.i.i, %add7.i.i
  %shr13.i.i = lshr i32 %add8.i.i, 11
  %and14.i.i = and i32 %shr13.i.i, 3
  %arrayidx15.i.i = getelementptr i32, ptr %scramble_key.i.i, i32 %and14.i.i
  %50 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx15.i.i, align 4
  %add16.i.i = add i32 %51, %add8.i.i
  %xor17.i.i = xor i32 %add12.i.i, %add16.i.i
  %add18.i.i = add i32 %xor17.i.i, %v1.039.i.i
  %inc.i.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %fuse_lock_owner_id.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

fuse_lock_owner_id.exit.i:                        ; preds = %for.body.i.i
  %conv19.i.i = zext i32 %add7.i.i to i64
  %conv20.i.i = zext i32 %add18.i.i to i64
  %shl21.i.i = shl nuw i64 %conv20.i.i, 32
  %add22.i.i = or i64 %shl21.i.i, %conv19.i.i
  %owner.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg, i32 0, i32 1
  %52 = ptrtoint ptr %owner.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %add22.i.i, ptr %owner.i, align 8
  %fl_start.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 12
  %53 = ptrtoint ptr %fl_start.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %fl_start.i, align 8
  %lk.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg, i32 0, i32 2
  %55 = ptrtoint ptr %lk.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %lk.i, align 8
  %fl_end.i = getelementptr inbounds %struct.file_lock, ptr %fl, i32 0, i32 13
  %56 = ptrtoint ptr %fl_end.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %fl_end.i, align 8
  %end.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %end.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %end.i, align 8
  %59 = ptrtoint ptr %fl_type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fl_type, align 4
  %conv.i = zext i8 %60 to i32
  %type.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg, i32 0, i32 2, i32 2
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i, ptr %type.i, align 8
  %pid7.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg, i32 0, i32 2, i32 3
  %62 = ptrtoint ptr %pid7.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call6, ptr %pid7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flock)
  %tobool.not.i = icmp eq i32 %flock, 0
  br i1 %tobool.not.i, label %fuse_lock_owner_id.exit.i.fuse_lk_fill.exit_crit_edge, label %if.then.i

fuse_lock_owner_id.exit.i.fuse_lk_fill.exit_crit_edge: ; preds = %fuse_lock_owner_id.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_lk_fill.exit

if.then.i:                                        ; preds = %fuse_lock_owner_id.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %lk_flags.i = getelementptr inbounds %struct.fuse_lk_in, ptr %inarg, i32 0, i32 3
  %63 = ptrtoint ptr %lk_flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lk_flags.i, align 8
  %or.i = or i32 %64, 1
  store i32 %or.i, ptr %lk_flags.i, align 8
  br label %fuse_lk_fill.exit

fuse_lk_fill.exit:                                ; preds = %if.then.i, %fuse_lock_owner_id.exit.i.fuse_lk_fill.exit_crit_edge
  %opcode8.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %65 = ptrtoint ptr %opcode8.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %cond, ptr %opcode8.i, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %31, i32 0, i32 1
  %66 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %nodeid.i.i, align 8
  %68 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %args, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %69 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %70 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 48, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %71 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %inarg, ptr %value.i, align 8
  %call16 = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call16)
  %cmp17 = icmp eq i32 %call16, -4
  %spec.store.select = select i1 %cmp17, i32 -512, i32 %call16
  br label %cleanup

cleanup:                                          ; preds = %fuse_lk_fill.exit, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %fuse_lk_fill.exit ], [ -37, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %inarg) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_pid_ns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_lock_inode_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_flush_time_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_modified(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %lock.i.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #12
  %writepages.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  %6 = ptrtoint ptr %writepages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.047.i.i.i = load ptr, ptr %writepages.i.i.i, align 4
  %tobool.not48.i.i.i = icmp eq ptr %n.047.i.i.i, null
  br i1 %tobool.not48.i.i.i, label %entry.fuse_page_is_writeback.exit.thread_crit_edge, label %entry.while.body.i.i.i_crit_edge

entry.while.body.i.i.i_crit_edge:                 ; preds = %entry
  br label %while.body.i.i.i

entry.fuse_page_is_writeback.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit.thread

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %entry.while.body.i.i.i_crit_edge
  %n.049.i.i.i = phi ptr [ %n.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %n.047.i.i.i, %entry.while.body.i.i.i_crit_edge ]
  %inode.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 24
  %7 = ptrtoint ptr %inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %8, %3
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i, !prof !78

while.body.i.i.i.if.end.i.i.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 403, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %while.body.i.i.i.if.end.i.i.i_crit_edge
  %offset.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 -136
  %9 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %offset.i.i.i, align 8
  %shr.i.i.i = lshr i64 %10, 12
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %num_pages.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 -16
  %11 = ptrtoint ptr %num_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_pages.i.i.i, align 8
  %add.i.i.i = add i32 %12, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %5)
  %cmp22.not.i.i.i = icmp ugt i32 %add.i.i.i, %5
  br i1 %cmp22.not.i.i.i, label %if.else.i.i.i, label %if.then24.i.i.i

if.then24.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i.i.i)
  %cmp25.i.i.i = icmp ult i32 %5, %conv.i.i.i
  br i1 %cmp25.i.i.i, label %if.then27.i.i.i, label %fuse_page_is_writeback.exit

if.then27.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then27.i.i.i, %if.then24.i.i.i
  %n.1.in.i.i.i = phi ptr [ %rb_right.i.i.i, %if.then24.i.i.i ], [ %rb_left.i.i.i, %if.then27.i.i.i ]
  %13 = ptrtoint ptr %n.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.0.i.i.i = load ptr, ptr %n.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %n.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.fuse_page_is_writeback.exit.thread_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

cleanup.i.i.i.fuse_page_is_writeback.exit.thread_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit.thread

fuse_page_is_writeback.exit.thread:               ; preds = %cleanup.i.i.i.fuse_page_is_writeback.exit.thread_crit_edge, %entry.fuse_page_is_writeback.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  br label %if.end21

fuse_page_is_writeback.exit:                      ; preds = %if.else.i.i.i
  %add.ptr.le.i.i.i = getelementptr i8, ptr %n.049.i.i.i, i32 -144
  %phi.cmp.i.i.not = icmp eq ptr %add.ptr.le.i.i.i, null
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #12
  br i1 %phi.cmp.i.i.not, label %fuse_page_is_writeback.exit.if.end21_crit_edge, label %if.then

fuse_page_is_writeback.exit.if.end21_crit_edge:   ; preds = %fuse_page_is_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then:                                          ; preds = %fuse_page_is_writeback.exit
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %14 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp eq i32 %15, 1
  br i1 %cmp, label %do.end, label %if.then.if.end_crit_edge, !prof !72

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1970, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %call20 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #12
  br label %cleanup

if.end21:                                         ; preds = %fuse_page_is_writeback.exit.if.end21_crit_edge, %fuse_page_is_writeback.exit.thread
  %call22 = tail call fastcc i32 @fuse_writepage_locked(ptr noundef %page)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ %call22, %if.end21 ]
  tail call void @unlock_page(ptr noundef %page) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_readpage(ptr nocapture noundef readonly %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call fastcc i32 @fuse_do_readpage(ptr noundef %file, ptr noundef %page)
  tail call void @fuse_invalidate_atime(ptr noundef %3) #12
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %err.0 = phi i32 [ -5, %entry.out_crit_edge ], [ %call1, %if.end ]
  tail call void @unlock_page(ptr noundef %page) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  %data = alloca %struct.fuse_fill_wb_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data) #12
  %8 = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %data, i32 0, i32 1
  %9 = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %data, i32 0, i32 3
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %10 = getelementptr inbounds i8, ptr %data, i32 12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -1, ptr %10, align 4
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %15 = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %15, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %data, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %8, align 4
  %max_pages = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 10
  %19 = ptrtoint ptr %max_pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_pages, align 4
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #12
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %if.end.out_crit_edge, label %if.end7.i.i, !prof !72

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end7.i.i:                                      ; preds = %if.end
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3392) #16
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i, ptr %9, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.out_crit_edge, label %if.end6

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %if.end7.i.i
  %call7 = call i32 @write_cache_pages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @fuse_writepages_fill, ptr noundef nonnull %data) #12
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %tobool9.not = icmp eq ptr %26, null
  br i1 %tobool9.not, label %if.end6.if.end35_crit_edge, label %if.then10

if.end6.if.end35_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then10:                                        ; preds = %if.end6
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %26, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.not = icmp eq i32 %28, 0
  br i1 %tobool12.not, label %do.end, label %if.then10.if.end28_crit_edge, !prof !72

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2243, i32 noundef 9, ptr noundef null) #12
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.then10.if.end28_crit_edge
  call fastcc void @fuse_writepages_send(ptr noundef nonnull %data)
  br label %if.end35

if.end35:                                         ; preds = %if.end28, %if.end6.if.end35_crit_edge
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %8, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fuse_file_put(ptr noundef nonnull %30, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %9, align 4
  call void @kfree(ptr noundef %32) #12
  br label %out

out:                                              ; preds = %if.end40, %if.end7.i.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -5, %entry.out_crit_edge ], [ %call7, %if.end40 ], [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_readahead(ptr nocapture noundef %rac) #0 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.end:                                           ; preds = %entry
  %max_pages2 = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 10
  %13 = ptrtoint ptr %max_pages2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_pages2, align 4
  %max_read = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 8
  %15 = ptrtoint ptr %max_read to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_read, align 4
  %div50 = lshr i32 %16, 12
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %div50)
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %18 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_nr_pages.i, align 4
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp783 = icmp eq i32 %20, 0
  br i1 %cmp783, label %if.end.cleanup20_crit_edge, label %if.end9.lr.ph

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.end9.lr.ph:                                    ; preds = %if.end
  %21 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %22 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %24 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %25 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %26 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %_batch_count.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 5
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  br label %if.end9

if.end9:                                          ; preds = %cleanup.if.end9_crit_edge, %if.end9.lr.ph
  %27 = phi i32 [ %20, %if.end9.lr.ph ], [ %160, %cleanup.if.end9_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 144) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.cleanup20_crit_edge, label %if.then.i

if.end9.cleanup20_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

if.then.i:                                        ; preds = %if.end9
  %io1.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %io1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %io1.i, align 8
  %descs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %mul.i.i = mul nuw nsw i32 %27, 12
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3520) #16
  %add.ptr.i.i = getelementptr ptr, ptr %call9.i.i.i.i, i32 %27
  %30 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.i, ptr %descs.i, align 4
  %pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i.i.i.i, ptr %pages.i, align 8
  %tobool6.not.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end12

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup20

if.end12:                                         ; preds = %if.then.i
  %32 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pages.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #12
  %34 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mapping, align 4
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %i_pages.i, ptr %xas.i, align 4
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %26, align 4
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %24, align 4
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %25, align 4
  %40 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %_batch_count.i, align 4
  %42 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %41)
  %cmp.i = icmp ult i32 %43, %41
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !72

do.body2.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1142, 0\0A.popsection", ""() #12, !srcloc !111
  unreachable

do.end7.i:                                        ; preds = %if.end12
  %sub.i = sub i32 %43, %41
  %44 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub.i, ptr %_nr_pages.i, align 4
  %45 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %_index.i, align 4
  %add.i = add i32 %46, %41
  store i32 %add.i, ptr %_index.i, align 4
  %47 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %_batch_count.i, align 4
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i, ptr %21, align 4
  %49 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 3 to ptr), ptr %23, align 4
  %50 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %do.end7.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

do.end7.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %do.end7.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %do.end7.i.rcu_read_lock.exit.i_crit_edge
  %54 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %_index.i, align 4
  %56 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %_nr_pages.i, align 4
  %add15.i = add i32 %55, -1
  %sub16.i = add i32 %add15.i, %57
  %call.i = call ptr @xas_find(ptr noundef nonnull %xas.i, i32 noundef %sub16.i) #12
  %tobool17.not131.i = icmp eq ptr %call.i, null
  br i1 %tobool17.not131.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %xas_next_entry.exit.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %page.0133.i = phi ptr [ %retval.0.i106.i, %xas_next_entry.exit.i.for.body.i_crit_edge ], [ %call.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %i.0132.i = phi i32 [ %i.1.i, %xas_next_entry.exit.i.for.body.i_crit_edge ], [ 0, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %magicptr.i.i = ptrtoint ptr %page.0133.i to i32
  %58 = zext i32 %magicptr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %magicptr.i.i, label %do.body21.i [
    i32 1030, label %for.body.i.for.inc.i_crit_edge
    i32 1026, label %if.end4.i.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end4.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 3 to ptr), ptr %23, align 4
  br label %for.inc.i

do.body21.i:                                      ; preds = %for.body.i
  %60 = getelementptr inbounds %struct.page, ptr %page.0133.i, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body21.i._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !78

do.body21.i._compound_head.exit.i.i_crit_edge:    ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %62, -1
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %do.body21.i._compound_head.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %magicptr.i.i, %do.body21.i._compound_head.exit.i.i_crit_edge ]
  %63 = inttoptr i32 %retval.0.i.i.i to ptr
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i.not.i.i = icmp eq i32 %65, -1
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %60, align 4
  %and.i16.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i95.i, label %do.end10.i.i, !prof !72

if.then.i95.i:                                    ; preds = %_compound_head.exit.i.i
  %magicptr.i.i.le = ptrtoint ptr %page.0133.i to i32
  br i1 %tobool.not.i17.i.i, label %if.then.i95.i._compound_head.exit22.i.i_crit_edge, label %if.then.i19.i.i, !prof !78

if.then.i95.i._compound_head.exit22.i.i_crit_edge: ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_compound_head.exit22.i.i

if.then.i19.i.i:                                  ; preds = %if.then.i95.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i.i = add i32 %67, -1
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.then.i19.i.i, %if.then.i95.i._compound_head.exit22.i.i_crit_edge
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %magicptr.i.i.le, %if.then.i95.i._compound_head.exit22.i.i_crit_edge ]
  %68 = inttoptr i32 %retval.0.i21.i.i to ptr
  call void @dump_page(ptr noundef %68, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !112
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %do.end10.i.i.PageLocked.exit.i_crit_edge, label %if.then.i26.i.i, !prof !78

do.end10.i.i.PageLocked.exit.i_crit_edge:         ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %PageLocked.exit.i

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i.i = add i32 %67, -1
  br label %PageLocked.exit.i

PageLocked.exit.i:                                ; preds = %if.then.i26.i.i, %do.end10.i.i.PageLocked.exit.i_crit_edge
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %magicptr.i.i, %do.end10.i.i.PageLocked.exit.i_crit_edge ]
  %69 = inttoptr i32 %retval.0.i28.i.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %and1.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool23.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool23.not.i, label %if.then32.i, label %do.body42.i, !prof !72

if.then32.i:                                      ; preds = %PageLocked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %page.0133.i, ptr noundef nonnull @.str.19) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1152, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

do.body42.i:                                      ; preds = %PageLocked.exit.i
  %72 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %60, align 4
  %and.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool44.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool44.not.i, label %do.end60.i, label %if.then51.i, !prof !78

if.then51.i:                                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %page.0133.i, ptr noundef nonnull @.str.12) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1153, 0\0A.popsection", ""() #12, !srcloc !114
  unreachable

do.end60.i:                                       ; preds = %do.body42.i
  %arrayidx.i = getelementptr ptr, ptr %33, i32 %i.0132.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %page.0133.i, ptr %arrayidx.i, align 4
  %75 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %60, align 4
  %and.i.i96.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96.i)
  %tobool.not.i97.i = icmp eq i32 %and.i.i96.i, 0
  br i1 %tobool.not.i97.i, label %thp_nr_pages.exit.i, label %if.then.i98.i, !prof !78

if.then.i98.i:                                    ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %page.0133.i, ptr noundef nonnull @.str.12) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !115
  unreachable

thp_nr_pages.exit.i:                              ; preds = %do.end60.i
  %inc.i = add i32 %i.0132.i, 1
  %77 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %_batch_count.i, align 4
  %add63.i = add i32 %78, 1
  store i32 %add63.i, ptr %_batch_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %27)
  %cmp64.i = icmp eq i32 %inc.i, %27
  br i1 %cmp64.i, label %thp_nr_pages.exit.i.for.end.i_crit_edge, label %thp_nr_pages.exit.i.for.inc.i_crit_edge

thp_nr_pages.exit.i.for.inc.i_crit_edge:          ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

thp_nr_pages.exit.i.for.end.i_crit_edge:          ; preds = %thp_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %thp_nr_pages.exit.i.for.inc.i_crit_edge, %if.end4.i.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %thp_nr_pages.exit.i.for.inc.i_crit_edge ], [ %i.0132.i, %if.end4.i.i ], [ %i.0132.i, %for.body.i.for.inc.i_crit_edge ]
  %79 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %_index.i, align 4
  %81 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %_nr_pages.i, align 4
  %add69.i = add i32 %80, -1
  %sub70.i = add i32 %add69.i, %82
  %83 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %23, align 4
  %85 = ptrtoint ptr %84 to i32
  %and.i.i100.i = and i32 %85, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100.i)
  %tobool.not.i.i101.i = icmp ne i32 %and.i.i100.i, 0
  %tobool1.not.i.i.i = icmp eq ptr %84, null
  %spec.select.i.i.i = or i1 %tobool1.not.i.i.i, %tobool.not.i.i101.i
  br i1 %spec.select.i.i.i, label %for.inc.i.cleanup.sink.split.i.i_crit_edge, label %lor.lhs.false.i.i, !prof !72

for.inc.i.cleanup.sink.split.i.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

lor.lhs.false.i.i:                                ; preds = %for.inc.i
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i102.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i102.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.cleanup.sink.split.i.i_crit_edge, !prof !78

lor.lhs.false.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  %88 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %22, align 2
  %conv2.i.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %21, align 4
  %and.i104.i = and i32 %91, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i104.i, i32 %conv2.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i104.i, %conv2.i.i
  br i1 %cmp.not.i.i, label %lor.rhs.i.i.do.body.i.i_crit_edge, label %lor.rhs.i.i.cleanup.sink.split.i.i_crit_edge, !prof !78

lor.rhs.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

lor.rhs.i.i.do.body.i.i_crit_edge:                ; preds = %lor.rhs.i.i
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end44.i.i.do.body.i.i_crit_edge, %lor.rhs.i.i.do.body.i.i_crit_edge
  %92 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %sub70.i)
  %cmp8.not.i.i = icmp ult i32 %93, %sub70.i
  br i1 %cmp8.not.i.i, label %if.end18.i.i, label %do.body.i.i.cleanup.sink.split.i.i_crit_edge, !prof !78

do.body.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.end18.i.i:                                     ; preds = %do.body.i.i
  %94 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %95)
  %cmp21.i.i = icmp eq i8 %95, 63
  br i1 %cmp21.i.i, label %if.end18.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end31.i.i, !prof !72

if.end18.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.end31.i.i:                                     ; preds = %if.end18.i.i
  %conv20.i.i = zext i8 %95 to i32
  %96 = ptrtoint ptr %xas.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %xas.i, align 4
  %add.i.i = add nuw nsw i32 %conv20.i.i, 1
  %arrayidx.i.i.i = getelementptr %struct.xa_node, ptr %84, i32 0, i32 7, i32 %add.i.i
  %98 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %dep_map.i.i.i = getelementptr inbounds %struct.anon, ptr %97, i32 0, i32 1
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i73.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i73.i.i, label %lor.lhs.false.i.i.i, label %if.end31.i.i.xa_entry.exit.i.i_crit_edge

if.end31.i.i.xa_entry.exit.i.i_crit_edge:         ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end31.i.i
  %call4.i.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.xa_entry.exit.i.i_crit_edge

lor.lhs.false.i.i.i.xa_entry.exit.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call6.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true.i.i.i.xa_entry.exit.i.i_crit_edge, label %land.lhs.true8.i.i.i

land.lhs.true.i.i.i.xa_entry.exit.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i.i

land.lhs.true8.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b13.i.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i.i, label %land.lhs.true8.i.i.i.xa_entry.exit.i.i_crit_edge, label %if.then.i.i105.i

land.lhs.true8.i.i.i.xa_entry.exit.i.i_crit_edge: ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i.i

if.then.i.i105.i:                                 ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 1183, ptr noundef nonnull @.str.18) #12
  br label %xa_entry.exit.i.i

xa_entry.exit.i.i:                                ; preds = %if.then.i.i105.i, %land.lhs.true8.i.i.i.xa_entry.exit.i.i_crit_edge, %land.lhs.true.i.i.i.xa_entry.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.xa_entry.exit.i.i_crit_edge, %if.end31.i.i.xa_entry.exit.i.i_crit_edge
  %100 = ptrtoint ptr %99 to i32
  %and.i74.i.i = and i32 %100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i74.i.i, 2
  br i1 %cmp.i.i.i, label %xa_entry.exit.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end44.i.i, !prof !72

xa_entry.exit.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %xa_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i.i

if.end44.i.i:                                     ; preds = %xa_entry.exit.i.i
  %101 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %22, align 2
  %inc.i.i = add i8 %102, 1
  store i8 %inc.i.i, ptr %22, align 2
  %103 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %21, align 4
  %inc47.i.i = add i32 %104, 1
  store i32 %inc47.i.i, ptr %21, align 4
  %tobool48.not.i.i = icmp eq ptr %99, null
  br i1 %tobool48.not.i.i, label %if.end44.i.i.do.body.i.i_crit_edge, label %if.end44.i.i.xas_next_entry.exit.i_crit_edge

if.end44.i.i.xas_next_entry.exit.i_crit_edge:     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next_entry.exit.i

if.end44.i.i.do.body.i.i_crit_edge:               ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

cleanup.sink.split.i.i:                           ; preds = %xa_entry.exit.i.i.cleanup.sink.split.i.i_crit_edge, %if.end18.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.cleanup.sink.split.i.i_crit_edge, %lor.rhs.i.i.cleanup.sink.split.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.sink.split.i.i_crit_edge, %for.inc.i.cleanup.sink.split.i.i_crit_edge
  %call43.i.i = call ptr @xas_find(ptr noundef nonnull %xas.i, i32 noundef %sub70.i) #12
  br label %xas_next_entry.exit.i

xas_next_entry.exit.i:                            ; preds = %cleanup.sink.split.i.i, %if.end44.i.i.xas_next_entry.exit.i_crit_edge
  %retval.0.i106.i = phi ptr [ %call43.i.i, %cleanup.sink.split.i.i ], [ %99, %if.end44.i.i.xas_next_entry.exit.i_crit_edge ]
  %tobool17.not.i = icmp eq ptr %retval.0.i106.i, null
  br i1 %tobool17.not.i, label %xas_next_entry.exit.i.for.end.i_crit_edge, label %xas_next_entry.exit.i.for.body.i_crit_edge

xas_next_entry.exit.i.for.body.i_crit_edge:       ; preds = %xas_next_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

xas_next_entry.exit.i.for.end.i_crit_edge:        ; preds = %xas_next_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %xas_next_entry.exit.i.for.end.i_crit_edge, %thp_nr_pages.exit.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %i.2.i = phi i32 [ 0, %rcu_read_lock.exit.i.for.end.i_crit_edge ], [ %i.1.i, %xas_next_entry.exit.i.for.end.i_crit_edge ], [ %27, %thp_nr_pages.exit.i.for.end.i_crit_edge ]
  %call.i107.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i107.i, label %for.end.i.__readahead_batch.exit_crit_edge, label %land.lhs.true.i110.i

for.end.i.__readahead_batch.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__readahead_batch.exit

land.lhs.true.i110.i:                             ; preds = %for.end.i
  %call1.i108.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108.i)
  %tobool.not.i109.i = icmp eq i32 %call1.i108.i, 0
  br i1 %tobool.not.i109.i, label %land.lhs.true.i110.i.__readahead_batch.exit_crit_edge, label %land.lhs.true2.i112.i

land.lhs.true.i110.i.__readahead_batch.exit_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__readahead_batch.exit

land.lhs.true2.i112.i:                            ; preds = %land.lhs.true.i110.i
  %.b4.i111.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111.i, label %land.lhs.true2.i112.i.__readahead_batch.exit_crit_edge, label %if.then.i113.i

land.lhs.true2.i112.i.__readahead_batch.exit_crit_edge: ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__readahead_batch.exit

if.then.i113.i:                                   ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %__readahead_batch.exit

__readahead_batch.exit:                           ; preds = %if.then.i113.i, %land.lhs.true2.i112.i.__readahead_batch.exit_crit_edge, %land.lhs.true.i110.i.__readahead_batch.exit_crit_edge, %for.end.i.__readahead_batch.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  %105 = call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i114.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i114.i to ptr
  %preempt_count.i.i.i.i115.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i115.i, align 4
  %sub.i.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i115.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2.i)
  %cmp1681.not = icmp eq i32 %i.2.i, 0
  br i1 %cmp1681.not, label %__readahead_batch.exit.for.end_crit_edge, label %__readahead_batch.exit.for.body_crit_edge

__readahead_batch.exit.for.body_crit_edge:        ; preds = %__readahead_batch.exit
  br label %for.body

__readahead_batch.exit.for.end_crit_edge:         ; preds = %__readahead_batch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %__readahead_batch.exit.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %__readahead_batch.exit.for.body_crit_edge ]
  %109 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %_index.i, align 4
  %add = add i32 %110, %i.082
  call fastcc void @fuse_wait_on_page_writeback(ptr noundef %3, i32 noundef %add)
  %111 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %descs.i, align 4
  %arrayidx = getelementptr %struct.fuse_page_desc, ptr %112, i32 %i.082
  %113 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 4096, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %i.2.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %__readahead_batch.exit.for.end_crit_edge
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %114 = ptrtoint ptr %num_pages to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %i.2.i, ptr %num_pages, align 8
  %115 = ptrtoint ptr %rac to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rac, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %116, i32 0, i32 16
  %117 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %private_data.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 8
  %ap2.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pages.i, align 8
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %index.i.i = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 1, i32 0, i32 2
  %125 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %126 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %shl.i = shl i32 %i.2.i, 12
  %out_pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %127 = ptrtoint ptr %out_pages.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %bf.load.i = load i16, ptr %out_pages.i, align 8
  %bf.set10.i = or i16 %bf.load.i, 2432
  store i16 %bf.set10.i, ptr %out_pages.i, align 8
  %128 = load ptr, ptr %private_data.i, align 4
  %fh.i.i = getelementptr inbounds %struct.fuse_file, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %fh.i.i, align 8
  %131 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %call7.i.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.fuse_read_in, ptr %call7.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %shl.i.i, ptr %offset.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.fuse_read_in, ptr %call7.i.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %shl.i, ptr %size.i.i, align 8
  %f_flags.i.i = getelementptr inbounds %struct.file, ptr %116, i32 0, i32 7
  %134 = ptrtoint ptr %f_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %f_flags.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.fuse_read_in, ptr %call7.i.i.i, i32 0, i32 5
  %136 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %flags.i.i, align 8
  %opcode6.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %137 = ptrtoint ptr %opcode6.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 15, ptr %opcode6.i.i, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_file, ptr %128, i32 0, i32 4
  %138 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %nodeid.i.i, align 8
  %140 = ptrtoint ptr %ap2.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %ap2.i, align 8
  %in_numargs.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %141 = ptrtoint ptr %in_numargs.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %in_numargs.i.i, align 4
  %in_args.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %142 = ptrtoint ptr %in_args.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 40, ptr %in_args.i.i, align 4
  %value.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %143 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call7.i.i.i, ptr %value.i.i, align 8
  %bf.set.i.i = or i16 %bf.load.i, 2944
  store i16 %bf.set.i.i, ptr %out_pages.i, align 8
  %out_numargs.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %144 = ptrtoint ptr %out_numargs.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 1, ptr %out_numargs.i.i, align 2
  %out_args.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6
  %145 = ptrtoint ptr %out_args.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %shl.i, ptr %out_args.i.i, align 4
  %146 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %120, align 4
  %attr_version.i.i = getelementptr inbounds %struct.fuse_conn, ptr %147, i32 0, i32 34
  %call.i.i.i.i54 = call zeroext i1 @__kasan_check_read(ptr noundef %attr_version.i.i, i32 noundef 8) #12
  %call.i.i.i = call i64 @generic_atomic64_read(ptr noundef %attr_version.i.i) #12
  %attr_ver.i = getelementptr inbounds %struct.anon.89, ptr %call7.i.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %attr_ver.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %call.i.i.i, ptr %attr_ver.i, align 8
  %149 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %120, align 4
  %async_read.i = getelementptr inbounds %struct.fuse_conn, ptr %150, i32 0, i32 26
  %151 = ptrtoint ptr %async_read.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 7)
  %bf.load42.i = load i56, ptr %async_read.i, align 1
  %152 = and i56 %bf.load42.i, 9007199254740992
  %tobool44.not.i55 = icmp eq i56 %152, 0
  br i1 %tobool44.not.i55, label %if.else.i, label %if.then45.i

if.then45.i:                                      ; preds = %for.end
  %count.i.i = getelementptr inbounds %struct.fuse_file, ptr %118, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #12, !srcloc !99
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then45.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !72

if.then45.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then45.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %154 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %154)
  %.not.i.i.i.i.i = icmp sgt i32 %154, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fuse_file_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fuse_file_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_file_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then45.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then45.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %fuse_file_get.exit.i

fuse_file_get.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fuse_file_get.exit.i_crit_edge
  %ff47.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %ff47.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %118, ptr %ff47.i, align 4
  %end.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 7
  %156 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @fuse_readpages_end, ptr %end.i, align 4
  %call50.i = call i32 @fuse_simple_background(ptr noundef %120, ptr noundef %ap2.i, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %fuse_file_get.exit.i.cleanup_crit_edge, label %fuse_file_get.exit.i.if.end58.i_crit_edge

fuse_file_get.exit.i.if.end58.i_crit_edge:        ; preds = %fuse_file_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i

fuse_file_get.exit.i.cleanup_crit_edge:           ; preds = %fuse_file_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call55.i = call i32 @fuse_simple_request(ptr noundef %120, ptr noundef %ap2.i) #12
  %157 = call i32 @llvm.smin.i32(i32 %call55.i, i32 0) #12
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else.i, %fuse_file_get.exit.i.if.end58.i_crit_edge
  %err.0.i = phi i32 [ %call50.i, %fuse_file_get.exit.i.if.end58.i_crit_edge ], [ %157, %if.else.i ]
  call void @fuse_readpages_end(ptr noundef %120, ptr noundef %ap2.i, i32 noundef %err.0.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end58.i, %fuse_file_get.exit.i.cleanup_crit_edge
  %158 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %_nr_pages.i, align 4
  %sub = sub i32 %159, %i.2.i
  %160 = call i32 @llvm.umin.i32(i32 %sub, i32 %17)
  %cmp7 = icmp eq i32 %160, 0
  br i1 %cmp7, label %cleanup.cleanup20_crit_edge, label %cleanup.if.end9_crit_edge

cleanup.if.end9_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

cleanup.cleanup20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup.cleanup20_crit_edge, %if.then7.i, %if.end9.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_write_begin(ptr nocapture noundef readonly %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr nocapture noundef writeonly %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %pos, 12
  %conv = trunc i64 %0 to i32
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %writeback_cache = getelementptr inbounds %struct.fuse_conn, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %9, i32 7)
  %bf.load = load i56, ptr %writeback_cache, align 1
  %10 = and i56 %bf.load, 562949953421312
  %tobool.not = icmp eq i56 %10, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !72

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2268, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call22 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv, i32 noundef %flags) #12
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end.cleanup47_crit_edge, label %if.end25

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.end25:                                         ; preds = %if.end
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping, align 4
  %index26 = getelementptr inbounds %struct.page, ptr %call22, i32 0, i32 1, i32 0, i32 2
  %13 = ptrtoint ptr %index26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index26, align 4
  tail call fastcc void @fuse_wait_on_page_writeback(ptr noundef %12, i32 noundef %14)
  %15 = getelementptr inbounds %struct.page, ptr %call22, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %call22 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !78

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %PageUptodate.exit, label %PageUptodate.exit.thread

PageUptodate.exit.thread:                         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  br label %success

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp eq i32 %len, 4096
  br i1 %cmp, label %PageUptodate.exit.success_crit_edge, label %if.end31

PageUptodate.exit.success_crit_edge:              ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %success

if.end31:                                         ; preds = %PageUptodate.exit
  %26 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mapping, align 4
  %call33 = tail call fastcc i64 @i_size_read(ptr noundef %27)
  %and = and i64 %pos, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %and)
  %cmp34.not = icmp sgt i64 %call33, %and
  br i1 %cmp34.not, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end31
  %28 = trunc i64 %pos to i32
  %conv38 = and i32 %28, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv38)
  %tobool39.not = icmp eq i32 %conv38, 0
  br i1 %tobool39.not, label %if.then36.success_crit_edge, label %if.then40

if.then36.success_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %success

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @zero_user_segments(ptr noundef nonnull %call22, i32 noundef 0, i32 noundef %conv38, i32 noundef 0, i32 noundef 0) #12
  br label %success

if.end42:                                         ; preds = %if.end31
  %call43 = tail call fastcc i32 @fuse_do_readpage(ptr noundef %file, ptr noundef nonnull %call22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end42.success_crit_edge, label %cleanup

if.end42.success_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %success

success:                                          ; preds = %if.end42.success_crit_edge, %if.then40, %if.then36.success_crit_edge, %PageUptodate.exit.success_crit_edge, %PageUptodate.exit.thread
  %29 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call22, ptr %pagep, align 4
  br label %cleanup47

cleanup:                                          ; preds = %if.end42
  tail call void @unlock_page(ptr noundef nonnull %call22) #12
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %15, align 4
  %and.i.i68 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %tobool.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %tobool.not.i.i69, label %if.end.i.i72, label %if.then.i.i71, !prof !78

if.then.i.i71:                                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i70 = add i32 %31, -1
  br label %_compound_head.exit.i74

if.end.i.i72:                                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %call22 to i32
  br label %_compound_head.exit.i74

_compound_head.exit.i74:                          ; preds = %if.end.i.i72, %if.then.i.i71
  %retval.0.i.i73 = phi i32 [ %sub.i.i70, %if.then.i.i71 ], [ %32, %if.end.i.i72 ]
  %33 = inttoptr i32 %retval.0.i.i73 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i74
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.6) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !87
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i74
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_write_begin, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %33, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup47_crit_edge

folio_put_testzero.exit.i.i.cleanup47_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup47

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %33) #12
  br label %cleanup47

cleanup47:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup47_crit_edge, %success, %if.end.cleanup47_crit_edge
  %retval.0 = phi i32 [ 0, %success ], [ -12, %if.end.cleanup47_crit_edge ], [ %call43, %folio_put_testzero.exit.i.i.cleanup47_crit_edge ], [ %call43, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_write_end(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef returned %copied, ptr noundef %page, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied)
  %tobool.not = icmp eq i32 %copied, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end:                                           ; preds = %entry
  %conv = zext i32 %copied to i64
  %add = add i64 %conv, %pos
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i26 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i26)
  %tobool.not.i.i.i27 = icmp eq i32 %and.i.i.i.i26, 0
  br i1 %tobool.not.i.i.i27, label %folio_flags.exit.i.i, label %if.then.i.i.i28, !prof !78

if.then.i.i.i28:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %if.then3, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  br label %if.end8

if.then3:                                         ; preds = %folio_flags.exit.i.i
  %15 = trunc i64 %add to i32
  %conv4 = and i32 %15, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %tobool5.not = icmp eq i32 %conv4, 0
  br i1 %tobool5.not, label %if.then3.if.end7_crit_edge, label %if.then6

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %conv4, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then3.if.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %4, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !78

if.then.i.i.i:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #12
  br label %if.end8

if.end8:                                          ; preds = %SetPageUptodate.exit, %PageUptodate.exit
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %19)
  %cmp = icmp sgt i64 %add, %19
  br i1 %cmp, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @i_size_write(ptr noundef %3, i64 noundef %add)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %call12 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #12
  br label %unlock

unlock:                                           ; preds = %if.end11, %entry.unlock_crit_edge
  tail call void @unlock_page(ptr noundef %page) #12
  %20 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i29 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %and.i.i29, 0
  br i1 %tobool.not.i.i30, label %if.end.i.i33, label %if.then.i.i32, !prof !78

if.then.i.i32:                                    ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i31 = add i32 %22, -1
  br label %_compound_head.exit.i35

if.end.i.i33:                                     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i35

_compound_head.exit.i35:                          ; preds = %if.end.i.i33, %if.then.i.i32
  %retval.0.i.i34 = phi i32 [ %sub.i.i31, %if.then.i.i32 ], [ %23, %if.end.i.i33 ]
  %24 = inttoptr i32 %retval.0.i.i34 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %25 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.6) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !87
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i35
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_write_end, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %24, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %24) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret i32 %copied
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @fuse_bmap(ptr nocapture noundef readonly %mapping, i64 noundef %block) #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_bmap_in, align 8
  %outarg = alloca %struct.fuse_bmap_out, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #12
  %6 = getelementptr inbounds i8, ptr %args, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg) #12
  %8 = getelementptr inbounds %struct.fuse_bmap_in, ptr %inarg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outarg) #12
  %9 = ptrtoint ptr %outarg to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %outarg, align 8, !annotation !85
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %no_bmap = getelementptr inbounds %struct.fuse_conn, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %no_bmap to i32
  call void @__asan_loadN_noabort(i32 %16, i32 7)
  %bf.load = load i56, ptr %no_bmap, align 1
  %17 = and i56 %bf.load, 536870912
  %tobool1.not = icmp eq i56 %17, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %18 = getelementptr inbounds i8, ptr %inarg, i32 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %18, align 8
  %20 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %block, ptr %inarg, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %8, align 8
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %24 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 37, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %nodeid.i, align 8
  %27 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %28 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %29 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %inarg, ptr %value, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %31 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %out_numargs, align 2
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %32 = ptrtoint ptr %out_args to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %out_args, align 4
  %value11 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %33 = ptrtoint ptr %value11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %outarg, ptr %value11, align 8
  %call12 = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args) #12
  %34 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call12, label %if.end.cleanup_crit_edge [
    i32 -38, label %if.then13
    i32 0, label %cond.false
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %no_bmap15 = getelementptr inbounds %struct.fuse_conn, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %no_bmap15 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 7)
  %bf.load16 = load i56, ptr %no_bmap15, align 1
  %bf.set = or i56 %bf.load16, 536870912
  store i56 %bf.set, ptr %no_bmap15, align 1
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %outarg to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %outarg, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.then13, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %39, %cond.false ], [ 0, %if.then13 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outarg) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #12
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_launder_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #12
  br i1 %call, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  tail call fastcc void @fuse_wait_on_page_writeback(ptr noundef %3, i32 noundef %5)
  %call1 = tail call fastcc i32 @fuse_writepage_locked(ptr noundef %page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call fastcc void @fuse_wait_on_page_writeback(ptr noundef %3, i32 noundef %7)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 0, %if.then2 ], [ %call1, %if.then.if.end4_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_writepage_locked(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call3 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3392, i32 noundef 176) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.err_crit_edge, label %if.then.i

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.then.i:                                        ; preds = %entry
  %num_pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %num_pages.i, align 8
  %descs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3392, i32 noundef 12) #15
  %add.ptr.i.i = getelementptr ptr, ptr %call7.i.i.i.i, i32 1
  %13 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %descs.i, align 4
  %pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i.i, ptr %pages.i, align 8
  %tobool4.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool4.not.i, label %if.then.i.err.sink.split_crit_edge, label %if.end

if.then.i.err.sink.split_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

if.end:                                           ; preds = %if.then.i
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3138, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool7.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool7.not, label %if.end.err.sink.split_crit_edge, label %if.end9

if.end.err.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.sink.split

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc ptr @fuse_write_file_get(ptr noundef %3)
  %ff = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %ff to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10, ptr %ff, align 4
  %tobool14.not = icmp eq ptr %call10, null
  br i1 %tobool14.not, label %err_nofile, label %if.end16

if.end16:                                         ; preds = %if.end9
  tail call fastcc void @fuse_writepage_add_to_bucket(ptr noundef %9, ptr noundef nonnull %call7.i.i.i)
  %16 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ff, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %19 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %ap.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %fh.i, align 8
  %22 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %call7.i.i.i, align 8
  %offset.i = getelementptr inbounds %struct.fuse_write_in, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shl.i, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.fuse_write_in, ptr %call7.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %size.i, align 8
  %opcode.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %opcode.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %17, i32 0, i32 4
  %26 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %nodeid.i, align 8
  %28 = ptrtoint ptr %ap.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %ap.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %in_numargs.i, align 4
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %minor.i = getelementptr inbounds %struct.fuse_conn, ptr %33, i32 0, i32 28
  %34 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %minor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %35)
  %cmp.i = icmp ult i32 %35, 9
  %spec.select.i = select i1 %cmp.i, i32 24, i32 40
  %36 = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select.i, ptr %36, align 4
  %value.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %value.i, align 8
  %arrayidx14.i = getelementptr %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx14.i, align 4
  %out_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6
  %41 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 8, ptr %out_args.i, align 4
  %out.i = getelementptr inbounds %struct.anon.90, ptr %call7.i.i.i, i32 0, i32 1
  %value20.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6, i32 0, i32 1
  %42 = ptrtoint ptr %value20.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %out.i, ptr %value20.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %43 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %43, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %44 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %44, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i13.i) #12
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  %write_flags = getelementptr inbounds %struct.fuse_write_in, ptr %call7.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %write_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %write_flags, align 4
  %or = or i32 %46, 1
  store i32 %or, ptr %write_flags, align 4
  %next = getelementptr inbounds %struct.fuse_writepage_args, ptr %call7.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %next, align 4
  %in_pages = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %in_pages to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load = load i16, ptr %in_pages, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %in_pages, align 8
  %49 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %num_pages.i, align 8
  %50 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pages.i, align 8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call38.i.i.i, ptr %51, align 4
  %53 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %descs.i, align 4
  %offset = getelementptr inbounds %struct.fuse_page_desc, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %offset, align 4
  %56 = load ptr, ptr %descs.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4096, ptr %56, align 4
  %end = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 7
  %58 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @fuse_writepage_end, ptr %end, align 4
  %inode26 = getelementptr inbounds %struct.fuse_writepage_args, ptr %call7.i.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %inode26 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %3, ptr %inode26, align 8
  %call27 = tail call ptr @inode_to_bdi(ptr noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %60 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i.i.i = icmp eq i32 %60, 0
  %61 = tail call i32 @llvm.ctlz.i32(i32 %60, i1 true) #12, !range !101
  %arrayidx.i.i = getelementptr %struct.backing_dev_info, ptr %call27, i32 0, i32 11, i32 9, i32 1
  %sub.i.op.i.i.i = shl nuw nsw i32 %61, 3
  %sub.i.op.i.i.i.op = xor i32 %sub.i.op.i.i.i, 248
  %sub.i.op.i.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.i.op, 8
  %mul.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.op.i.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i.i, i64 noundef 1, i32 noundef %mul.i.i) #12
  tail call void @inc_node_page_state(ptr noundef nonnull %call38.i.i.i, i32 noundef 22) #12
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %writepages = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call fastcc ptr @fuse_insert_writeback(ptr noundef %writepages, ptr noundef nonnull %call7.i.i.i) #12
  %tobool.not.i73 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i73, label %if.end16.tree_insert.exit_crit_edge, label %do.end.i, !prof !78

if.end16.tree_insert.exit_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_insert.exit

do.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1753, i32 noundef 9, ptr noundef null) #12
  br label %tree_insert.exit

tree_insert.exit:                                 ; preds = %do.end.i, %if.end16.tree_insert.exit_crit_edge
  %queue_entry = getelementptr inbounds %struct.fuse_writepage_args, ptr %call7.i.i.i, i32 0, i32 2
  %queued_writes = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queued_writes, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i, align 4
  %call.i.i74 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue_entry, ptr noundef %63, ptr noundef %queued_writes) #12
  br i1 %call.i.i74, label %if.end.i.i, label %tree_insert.exit.list_add_tail.exit_crit_edge

tree_insert.exit.list_add_tail.exit_crit_edge:    ; preds = %tree_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %tree_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %queue_entry, ptr %prev.i, align 4
  %65 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %queued_writes, ptr %queue_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i, align 8
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %queue_entry, ptr %63, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %tree_insert.exit.list_add_tail.exit_crit_edge
  %68 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %call2.i = tail call fastcc i64 @i_size_read(ptr noundef %3) #12
  %writectr.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 2
  %72 = ptrtoint ptr %writectr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %writectr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp10.i = icmp sgt i32 %73, -1
  br i1 %cmp10.i, label %list_add_tail.exit.land.rhs.i_crit_edge, label %list_add_tail.exit.fuse_flush_writepages.exit_crit_edge

list_add_tail.exit.fuse_flush_writepages.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_flush_writepages.exit

list_add_tail.exit.land.rhs.i_crit_edge:          ; preds = %list_add_tail.exit
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %list_del_init.exit.i.land.rhs.i_crit_edge, %list_add_tail.exit.land.rhs.i_crit_edge
  %74 = ptrtoint ptr %queued_writes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %queued_writes, align 4
  %cmp.i.not.i = icmp eq ptr %75, %queued_writes
  br i1 %cmp.i.not.i, label %land.rhs.i.fuse_flush_writepages.exit_crit_edge, label %while.body.i

land.rhs.i.fuse_flush_writepages.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_flush_writepages.exit

while.body.i:                                     ; preds = %land.rhs.i
  %add.ptr.i = getelementptr i8, ptr %75, i32 -156
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %75) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %75, ptr %75, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %75, ptr %prev.i3.i.i, align 4
  tail call fastcc void @fuse_send_writepage(ptr noundef %71, ptr noundef %add.ptr.i, i64 noundef %call2.i) #12
  %84 = ptrtoint ptr %writectr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %writectr.i, align 8
  %cmp.i75 = icmp sgt i32 %85, -1
  br i1 %cmp.i75, label %list_del_init.exit.i.land.rhs.i_crit_edge, label %list_del_init.exit.i.fuse_flush_writepages.exit_crit_edge

list_del_init.exit.i.fuse_flush_writepages.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_flush_writepages.exit

list_del_init.exit.i.land.rhs.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

fuse_flush_writepages.exit:                       ; preds = %list_del_init.exit.i.fuse_flush_writepages.exit_crit_edge, %land.rhs.i.fuse_flush_writepages.exit_crit_edge, %list_add_tail.exit.fuse_flush_writepages.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %cleanup

err_nofile:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #12
  br label %err.sink.split

err.sink.split:                                   ; preds = %err_nofile, %if.end.err.sink.split_crit_edge, %if.then.i.err.sink.split_crit_edge
  %error.1.ph = phi i32 [ -12, %if.then.i.err.sink.split_crit_edge ], [ -5, %err_nofile ], [ -12, %if.end.err.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %err

err:                                              ; preds = %err.sink.split, %entry.err_crit_edge
  %error.1 = phi i32 [ -12, %entry.err_crit_edge ], [ %error.1.ph, %err.sink.split ]
  %86 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mapping1, align 4
  tail call void @__filemap_set_wb_err(ptr noundef %87, i32 noundef %error.1) #12
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool4.not.i76 = icmp eq ptr %89, null
  br i1 %tobool4.not.i76, label %err.mapping_set_error.exit_crit_edge, label %if.then5.i79

err.mapping_set_error.exit_crit_edge:             ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapping_set_error.exit

if.then5.i79:                                     ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i77 = getelementptr inbounds %struct.inode, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %i_sb.i77 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i77, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 50
  %call.i78 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %error.1) #12
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i79, %err.mapping_set_error.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.address_space, ptr %87, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #12
  br label %cleanup

cleanup:                                          ; preds = %mapping_set_error.exit, %fuse_flush_writepages.exit
  %retval.0 = phi i32 [ 0, %fuse_flush_writepages.exit ], [ %error.1, %mapping_set_error.exit ]
  tail call void @end_page_writeback(ptr noundef %page) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fuse_write_file_get(ptr noundef %fi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %fi, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %0 = getelementptr inbounds %struct.fuse_inode, ptr %fi, i32 0, i32 9
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %0, align 4
  %cmp.not.i = icmp eq ptr %2, %0
  %add.ptr.i = getelementptr i8, ptr %2, i32 -40
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %tobool.not.i = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not.i, label %do.end, label %if.then.i

if.then.i:                                        ; preds = %entry
  %count.i.i = getelementptr inbounds %struct.fuse_file, ptr %spec.select.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #12, !srcloc !99
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !72

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__fuse_write_file_get.exit.thread_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__fuse_write_file_get.exit.thread_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__fuse_write_file_get.exit.thread

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %__fuse_write_file_get.exit.thread

__fuse_write_file_get.exit.thread:                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__fuse_write_file_get.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1834, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %__fuse_write_file_get.exit.thread
  ret ptr %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_writepage_add_to_bucket(ptr noundef %fc, ptr nocapture noundef writeonly %wpa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_fs = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 26
  %0 = ptrtoint ptr %sync_fs to i32
  call void @__asan_loadN_noabort(i32 %0, i32 7)
  %bf.load = load i56, ptr %sync_fs, align 1
  %1 = and i56 %bf.load, 128
  %tobool.not = icmp eq i56 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !102
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %curr_bucket = getelementptr inbounds %struct.fuse_conn, ptr %fc, i32 0, i32 39
  %bucket = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.end11.do.body_crit_edge, %rcu_read_lock.exit
  %6 = ptrtoint ptr %curr_bucket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %curr_bucket, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true:                                    ; preds = %do.body
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b22 = load i1, ptr @fuse_writepage_add_to_bucket.__warned, align 1
  br i1 %.b22, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @fuse_writepage_add_to_bucket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1891, ptr noundef nonnull @.str.18) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %do.body.do.end11_crit_edge
  %8 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %bucket, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %7, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %7, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 1, ptr elementtype(i32) %7) #12, !srcloc !117
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end11.do.body_crit_edge, label %do.end19

do.end11.do.body_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end19:                                         ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i23, label %do.end19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

do.end19.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %do.end19
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %do.end19.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  %10 = tail call i32 @llvm.read_register.i32(metadata !62) #12
  %and.i.i.i.i.i30 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %return

return:                                           ; preds = %rcu_read_unlock.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_writepage_end(ptr nocapture noundef readnone %fm, ptr noundef %args, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr i8, ptr %args, i32 112
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not.i = icmp eq i32 %error, 0
  br i1 %tobool.not.i, label %entry.mapping_set_error.exit_crit_edge, label %if.end.i, !prof !78

entry.mapping_set_error.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mapping_set_error.exit

if.end.i:                                         ; preds = %entry
  tail call void @__filemap_set_wb_err(ptr noundef %9, i32 noundef %error) #12
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i39 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i39, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %error) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %error)
  %cmp.i = icmp eq i32 %error, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #12
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.end7.i, %entry.mapping_set_error.exit_crit_edge
  %writeback_cache = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %14 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load = load i56, ptr %writeback_cache, align 1
  %15 = and i56 %bf.load, 562949953421312
  %tobool.not = icmp eq i56 %15, 0
  br i1 %tobool.not, label %if.then, label %mapping_set_error.exit.if.end_crit_edge

mapping_set_error.exit.if.end_crit_edge:          ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fuse_invalidate_attr_mask(ptr noundef %1, i32 noundef 1216) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %mapping_set_error.exit.if.end_crit_edge
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %writepages_entry = getelementptr i8, ptr %args, i32 88
  %writepages = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  tail call void @rb_erase(ptr noundef %writepages_entry, ptr noundef %writepages) #12
  %next = getelementptr i8, ptr %args, i32 108
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next, align 4
  %tobool3.not45 = icmp eq ptr %17, null
  br i1 %tobool3.not45, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %ff = getelementptr i8, ptr %args, i32 84
  %offset = getelementptr i8, ptr %args, i32 -48
  %size = getelementptr i8, ptr %args, i32 -40
  br label %while.body

while.body:                                       ; preds = %tree_insert.exit.while.body_crit_edge, %while.body.lr.ph
  %18 = phi ptr [ %17, %while.body.lr.ph ], [ %36, %tree_insert.exit.while.body_crit_edge ]
  %19 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i41 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i41, align 16
  %next8 = getelementptr inbounds %struct.fuse_writepage_args, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %next8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next8, align 4
  %25 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %next, align 4
  store ptr null, ptr %next8, align 4
  %26 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ff, align 4
  %count.i = getelementptr inbounds %struct.fuse_file, ptr %27, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %while.body.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

while.body.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.body
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fuse_file_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fuse_file_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_file_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %while.body.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %while.body.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #12
  br label %fuse_file_get.exit

fuse_file_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fuse_file_get.exit_crit_edge
  %ff14 = getelementptr inbounds %struct.fuse_io_args, ptr %18, i32 0, i32 3
  %30 = ptrtoint ptr %ff14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %ff14, align 4
  %call.i42 = tail call fastcc ptr @fuse_insert_writeback(ptr noundef %writepages, ptr noundef nonnull %18) #12
  %tobool.not.i43 = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i43, label %fuse_file_get.exit.tree_insert.exit_crit_edge, label %do.end.i, !prof !78

fuse_file_get.exit.tree_insert.exit_crit_edge:    ; preds = %fuse_file_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %tree_insert.exit

do.end.i:                                         ; preds = %fuse_file_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1753, i32 noundef 9, ptr noundef null) #12
  br label %tree_insert.exit

tree_insert.exit:                                 ; preds = %do.end.i, %fuse_file_get.exit.tree_insert.exit_crit_edge
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %offset, align 8
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 8
  %conv = zext i32 %34 to i64
  %add = add i64 %32, %conv
  tail call fastcc void @fuse_send_writepage(ptr noundef %22, ptr noundef nonnull %18, i64 noundef %add)
  %35 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %36, null
  br i1 %tobool3.not, label %tree_insert.exit.while.end_crit_edge, label %tree_insert.exit.while.body_crit_edge

tree_insert.exit.while.body_crit_edge:            ; preds = %tree_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

tree_insert.exit.while.end_crit_edge:             ; preds = %tree_insert.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %tree_insert.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %add.ptr = getelementptr i8, ptr %args, i32 -56
  %writectr = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 2
  %37 = ptrtoint ptr %writectr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %writectr, align 8
  %dec = add i32 %38, -1
  store i32 %dec, ptr %writectr, align 8
  tail call fastcc void @fuse_writepage_finish(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  tail call fastcc void @fuse_writepage_free(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_node_page_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fuse_insert_writeback(ptr noundef %root, ptr noundef %wpa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.fuse_write_in, ptr %wpa, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %offset, align 8
  %shr = lshr i64 %1, 12
  %conv = trunc i64 %shr to i32
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %wpa, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 8
  %add = add i32 %3, -1
  %sub = add i32 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !72

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1727, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %tobool25.not106 = icmp eq ptr %5, null
  br i1 %tobool25.not106, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %inode28 = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %20, %cleanup.while.body_crit_edge ]
  %p.0107 = phi ptr [ %root, %while.body.lr.ph ], [ %p.2, %cleanup.while.body_crit_edge ]
  %inode = getelementptr i8, ptr %6, i32 24
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode, align 8
  %9 = ptrtoint ptr %inode28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode28, align 8
  %cmp.not = icmp eq ptr %8, %10
  br i1 %cmp.not, label %while.body.if.end51_crit_edge, label %do.end45, !prof !78

while.body.if.end51_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end45:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1735, i32 noundef 9, ptr noundef null) #12
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %while.body.if.end51_crit_edge
  %offset61 = getelementptr i8, ptr %6, i32 -136
  %11 = ptrtoint ptr %offset61 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset61, align 8
  %shr62 = lshr i64 %12, 12
  %conv63 = trunc i64 %shr62 to i32
  %num_pages66 = getelementptr i8, ptr %6, i32 -16
  %13 = ptrtoint ptr %num_pages66 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pages66, align 8
  %add67 = add i32 %14, %conv63
  call void @__sanitizer_cov_trace_cmp4(i32 %add67, i32 %conv)
  %cmp68.not = icmp ugt i32 %add67, %conv
  br i1 %cmp68.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %p.0107 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p.0107, align 4
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  br label %cleanup

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv63)
  %cmp71 = icmp ult i32 %sub, %conv63
  br i1 %cmp71, label %if.then73, label %cleanup79.loopexit

if.then73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %p.0107 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.0107, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.then70
  %p.2 = phi ptr [ %rb_right, %if.then70 ], [ %rb_left, %if.then73 ]
  %19 = ptrtoint ptr %p.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p.2, align 4
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %while.cond.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le = ptrtoint ptr %6 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.2, %while.cond.while.end_crit_edge ], [ %root, %if.end.while.end_crit_edge ]
  %writepages_entry = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 1
  %21 = ptrtoint ptr %writepages_entry to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %parent.0.lcssa, ptr %writepages_entry, align 4
  %rb_right.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rb_left.i, align 4
  %24 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %writepages_entry, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %writepages_entry, ptr noundef %root) #12
  br label %cleanup79

cleanup79.loopexit:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.le = getelementptr i8, ptr %6, i32 -144
  br label %cleanup79

cleanup79:                                        ; preds = %cleanup79.loopexit, %while.end
  %retval.2 = phi ptr [ null, %while.end ], [ %add.ptr.le, %cleanup79.loopexit ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_do_readpage(ptr nocapture noundef readonly %file, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %page.addr = alloca ptr, align 4
  %desc = alloca %struct.fuse_page_desc, align 8
  %ia = alloca %struct.fuse_io_args, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %page, ptr %page.addr, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %10 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #12
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 17592186044416, ptr %desc, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %ia) #12
  %12 = getelementptr inbounds i8, ptr %ia, i32 16
  %13 = call ptr @memset(ptr %12, i32 0, i32 128)
  %ap = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1
  %out_pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 4
  %pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %page.addr, ptr %pages, align 8
  %descs = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %desc, ptr %descs, align 4
  %num_pages = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %num_pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_pages, align 8
  call fastcc void @fuse_wait_on_page_writeback(ptr noundef %4, i32 noundef %10)
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %attr_version.i = getelementptr inbounds %struct.fuse_conn, ptr %18, i32 0, i32 34
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %attr_version.i, i32 noundef 8) #12
  %call.i.i = call i64 @generic_atomic64_read(ptr noundef %attr_version.i) #12
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc, align 8
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %21 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i, align 4
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %fh.i, align 8
  %25 = ptrtoint ptr %ia to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %ia, align 8
  %offset.i = getelementptr inbounds %struct.fuse_read_in, ptr %ia, i32 0, i32 1
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shl.i, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.fuse_read_in, ptr %ia, i32 0, i32 2
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %20, ptr %size.i, align 8
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %28 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f_flags.i, align 4
  %flags.i = getelementptr inbounds %struct.fuse_read_in, ptr %ia, i32 0, i32 5
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %flags.i, align 8
  %opcode6.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %opcode6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 15, ptr %opcode6.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %22, i32 0, i32 4
  %32 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %nodeid.i, align 8
  %34 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %ap, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %in_numargs.i, align 4
  %in_args.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 5
  %36 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 40, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ia, ptr %value.i, align 8
  %38 = ptrtoint ptr %out_pages to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2816, ptr %out_pages, align 8
  %out_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia, i32 0, i32 1, i32 0, i32 6
  %40 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %20, ptr %out_args.i, align 4
  %call11 = call i32 @fuse_simple_request(ptr noundef %8, ptr noundef %ap) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %entry.cleanup_crit_edge, label %if.end15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %entry
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %desc, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %42)
  %cmp17 = icmp ult i32 %call11, %42
  br i1 %cmp17, label %if.then19, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @fuse_short_read(ptr noundef %4, i64 noundef %call.i.i, i32 noundef %call11, ptr noundef %ap)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  %43 = ptrtoint ptr %page.addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %page.addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !78

if.then.i.i.i:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.12) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 2, ptr noundef %44) #12
  br label %cleanup

cleanup:                                          ; preds = %SetPageUptodate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %SetPageUptodate.exit ], [ %call11, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ia) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_short_read(ptr noundef %inode, i64 noundef %attr_ver, i32 noundef %num_read, ptr nocapture noundef readonly %ap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %writeback_cache = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 26
  %6 = ptrtoint ptr %writeback_cache to i32
  call void @__asan_loadN_noabort(i32 %6, i32 7)
  %bf.load = load i56, ptr %writeback_cache, align 1
  %7 = and i56 %bf.load, 562949953421312
  %tobool.not = icmp eq i56 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap, i32 0, i32 1
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %conv = zext i32 %num_read to i64
  %add = add nuw nsw i64 %shl.i, %conv
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %attr_version.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %attr_version.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %attr_version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %attr_ver)
  %cmp.not.i = icmp ugt i64 %15, %attr_ver
  br i1 %cmp.not.i, label %if.then.fuse_read_update_size.exit_crit_edge, label %land.lhs.true.i

if.then.fuse_read_update_size.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_read_update_size.exit

land.lhs.true.i:                                  ; preds = %if.then
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %16 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %add)
  %cmp2.i = icmp sgt i64 %17, %add
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i.fuse_read_update_size.exit_crit_edge

land.lhs.true.i.fuse_read_update_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_read_update_size.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true3.i.fuse_read_update_size.exit_crit_edge

land.lhs.true3.i.fuse_read_update_size.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_read_update_size.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  %attr_version5.i = getelementptr inbounds %struct.fuse_conn, ptr %5, i32 0, i32 34
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %attr_version5.i, i32 noundef 8) #12
  %call.i2.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %attr_version5.i) #12
  %21 = ptrtoint ptr %attr_version.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call.i2.i.i, ptr %attr_version.i, align 8
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %add) #12
  br label %fuse_read_update_size.exit

fuse_read_update_size.exit:                       ; preds = %if.then.i, %land.lhs.true3.i.fuse_read_update_size.exit_crit_edge, %land.lhs.true.i.fuse_read_update_size.exit_crit_edge, %if.then.fuse_read_update_size.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %if.end

if.end:                                           ; preds = %fuse_read_update_size.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_writepages_fill(ptr noundef %page, ptr nocapture noundef readnone %wbc, ptr nocapture noundef %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_data, align 4
  %ap2 = getelementptr inbounds %struct.fuse_io_args, ptr %1, i32 0, i32 1
  %inode3 = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %_data, i32 0, i32 2
  %2 = ptrtoint ptr %inode3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode3, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %ff = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %_data, i32 0, i32 1
  %10 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ff, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %entry
  %call5 = tail call fastcc ptr @fuse_write_file_get(ptr noundef %3)
  %12 = ptrtoint ptr %ff to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %ff, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %if.then.out_unlock_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then.out_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %land.lhs.true

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %num_pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %1, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.end.i, label %land.lhs.true.if.end.i_crit_edge, !prof !72

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2095, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.lhs.true.if.end.i_crit_edge
  %15 = ptrtoint ptr %inode3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inode3, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %16, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #12
  %writepages.i.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %16, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %writepages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %n.047.i.i.i.i = load ptr, ptr %writepages.i.i.i.i, align 4
  %tobool.not48.i.i.i.i = icmp eq ptr %n.047.i.i.i.i, null
  br i1 %tobool.not48.i.i.i.i, label %if.end.i.fuse_page_is_writeback.exit.thread.i_crit_edge, label %if.end.i.while.body.i.i.i.i_crit_edge

if.end.i.while.body.i.i.i.i_crit_edge:            ; preds = %if.end.i
  br label %while.body.i.i.i.i

if.end.i.fuse_page_is_writeback.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit.thread.i

while.body.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge, %if.end.i.while.body.i.i.i.i_crit_edge
  %n.049.i.i.i.i = phi ptr [ %n.0.i.i.i.i, %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge ], [ %n.047.i.i.i.i, %if.end.i.while.body.i.i.i.i_crit_edge ]
  %inode.i.i.i.i = getelementptr i8, ptr %n.049.i.i.i.i, i32 24
  %20 = ptrtoint ptr %inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode.i.i.i.i, align 8
  %cmp.not.i.i.i.i = icmp eq ptr %21, %16
  br i1 %cmp.not.i.i.i.i, label %while.body.i.i.i.i.if.end.i.i.i.i_crit_edge, label %do.end.i.i.i.i, !prof !78

while.body.i.i.i.i.if.end.i.i.i.i_crit_edge:      ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 403, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %while.body.i.i.i.i.if.end.i.i.i.i_crit_edge
  %offset.i.i.i.i = getelementptr i8, ptr %n.049.i.i.i.i, i32 -136
  %22 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offset.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %23, 12
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %num_pages.i.i.i.i = getelementptr i8, ptr %n.049.i.i.i.i, i32 -16
  %24 = ptrtoint ptr %num_pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_pages.i.i.i.i, align 8
  %add.i.i.i.i = add i32 %25, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %18)
  %cmp22.not.i.i.i.i = icmp ugt i32 %add.i.i.i.i, %18
  br i1 %cmp22.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then24.i.i.i.i

if.then24.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i.i.i.i)
  %cmp25.i.i.i.i = icmp ult i32 %18, %conv.i.i.i.i
  br i1 %cmp25.i.i.i.i, label %if.then27.i.i.i.i, label %fuse_page_is_writeback.exit.i

if.then27.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.049.i.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.then27.i.i.i.i, %if.then24.i.i.i.i
  %n.1.in.i.i.i.i = phi ptr [ %rb_right.i.i.i.i, %if.then24.i.i.i.i ], [ %rb_left.i.i.i.i, %if.then27.i.i.i.i ]
  %26 = ptrtoint ptr %n.1.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %n.0.i.i.i.i = load ptr, ptr %n.1.in.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %n.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %cleanup.i.i.i.i.fuse_page_is_writeback.exit.thread.i_crit_edge, label %cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge

cleanup.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i.i

cleanup.i.i.i.i.fuse_page_is_writeback.exit.thread.i_crit_edge: ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_page_is_writeback.exit.thread.i

fuse_page_is_writeback.exit.thread.i:             ; preds = %cleanup.i.i.i.i.fuse_page_is_writeback.exit.thread.i_crit_edge, %if.end.i.fuse_page_is_writeback.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #12
  br label %if.end22.i

fuse_page_is_writeback.exit.i:                    ; preds = %if.else.i.i.i.i
  %add.ptr.le.i.i.i.i = getelementptr i8, ptr %n.049.i.i.i.i, i32 -144
  %phi.cmp.i.i.not.i = icmp eq ptr %add.ptr.le.i.i.i.i, null
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #12
  br i1 %phi.cmp.i.i.not.i, label %fuse_page_is_writeback.exit.i.if.end22.i_crit_edge, label %fuse_page_is_writeback.exit.i.if.then13_crit_edge

fuse_page_is_writeback.exit.i.if.then13_crit_edge: ; preds = %fuse_page_is_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

fuse_page_is_writeback.exit.i.if.end22.i_crit_edge: ; preds = %fuse_page_is_writeback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end22.i:                                       ; preds = %fuse_page_is_writeback.exit.i.if.end22.i_crit_edge, %fuse_page_is_writeback.exit.thread.i
  %27 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pages.i, align 8
  %max_pages.i = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 10
  %29 = ptrtoint ptr %max_pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i = icmp eq i32 %28, %30
  br i1 %cmp.i, label %if.end22.i.if.then13_crit_edge, label %if.end25.i

if.end22.i.if.then13_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end25.i:                                       ; preds = %if.end22.i
  %add.i = shl i32 %28, 12
  %mul.i = add i32 %add.i, 4096
  %max_write.i = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 9
  %31 = ptrtoint ptr %max_write.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_write.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %32)
  %cmp27.i = icmp ugt i32 %mul.i, %32
  br i1 %cmp27.i, label %if.end25.i.if.then13_crit_edge, label %if.end29.i

if.end25.i.if.then13_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end29.i:                                       ; preds = %if.end25.i
  %orig_pages.i = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %_data, i32 0, i32 3
  %33 = ptrtoint ptr %orig_pages.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %orig_pages.i, align 4
  %sub.i = add i32 %28, -1
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %sub.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %index31.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %index31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %index31.i, align 4
  %add32.i = add i32 %38, 1
  %39 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add32.i, i32 %40)
  %cmp34.not.i = icmp eq i32 %add32.i, %40
  br i1 %cmp34.not.i, label %if.end36.i, label %if.end29.i.if.then13_crit_edge

if.end29.i.if.then13_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end36.i:                                       ; preds = %if.end29.i
  %max_pages38.i = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %_data, i32 0, i32 4
  %41 = ptrtoint ptr %max_pages38.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_pages38.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %42)
  %cmp39.i = icmp eq i32 %28, %42
  br i1 %cmp39.i, label %land.lhs.true.i, label %if.end36.i.if.end15_crit_edge

if.end36.i.if.end15_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true.i:                                  ; preds = %if.end36.i
  %43 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_data, align 4
  %45 = ptrtoint ptr %inode3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %inode3, align 4
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %mul.i.i = shl i32 %28, 1
  %53 = tail call i32 @llvm.umax.i32(i32 %mul.i.i, i32 32) #12
  %max_pages2.i.i = getelementptr inbounds %struct.fuse_conn, ptr %52, i32 0, i32 10
  %54 = ptrtoint ptr %max_pages2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_pages2.i.i, align 4
  %56 = tail call i32 @llvm.umin.i32(i32 %53, i32 %55) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %28)
  %cmp10.not.i.i = icmp ugt i32 %56, %28
  br i1 %cmp10.not.i.i, label %land.lhs.true.i.if.end8.i.i.i.i.i_crit_edge, label %do.end.i.i, !prof !78

land.lhs.true.i.if.end8.i.i.i.i.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2001, i32 noundef 9, ptr noundef null) #12
  br label %if.end8.i.i.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %do.end.i.i, %land.lhs.true.i.if.end8.i.i.i.i.i_crit_edge
  %mul.i.i.i = mul i32 %56, 12
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i.i, i32 noundef 3392) #16
  %tobool31.not.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool31.not.i.i, label %if.end8.i.i.i.i.i.if.then13_crit_edge, label %fuse_pages_realloc.exit.thread.i

if.end8.i.i.i.i.i.if.then13_crit_edge:            ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

fuse_pages_realloc.exit.thread.i:                 ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i71.i.i = getelementptr ptr, ptr %call9.i.i.i.i.i, i32 %56
  %pages34.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %44, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %pages34.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pages34.i.i, align 8
  %num_pages.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %44, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_pages.i.i, align 8
  %mul35.i.i = shl i32 %60, 2
  %61 = call ptr @memcpy(ptr %call9.i.i.i.i.i, ptr %58, i32 %mul35.i.i)
  %descs36.i.i = getelementptr inbounds %struct.fuse_io_args, ptr %44, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %descs36.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %descs36.i.i, align 4
  %64 = load i32, ptr %num_pages.i.i, align 8
  %mul38.i.i = shl i32 %64, 3
  %65 = call ptr @memcpy(ptr %add.ptr.i71.i.i, ptr %63, i32 %mul38.i.i)
  %66 = load ptr, ptr %pages34.i.i, align 8
  tail call void @kfree(ptr noundef %66) #12
  %67 = ptrtoint ptr %pages34.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call9.i.i.i.i.i, ptr %pages34.i.i, align 8
  %68 = ptrtoint ptr %descs36.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i71.i.i, ptr %descs36.i.i, align 4
  %69 = ptrtoint ptr %max_pages38.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %56, ptr %max_pages38.i, align 4
  br label %if.end15

if.then13:                                        ; preds = %if.end8.i.i.i.i.i.if.then13_crit_edge, %if.end29.i.if.then13_crit_edge, %if.end25.i.if.then13_crit_edge, %if.end22.i.if.then13_crit_edge, %fuse_page_is_writeback.exit.i.if.then13_crit_edge
  tail call fastcc void @fuse_writepages_send(ptr noundef %_data)
  %70 = ptrtoint ptr %_data to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %_data, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %fuse_pages_realloc.exit.thread.i, %if.end36.i.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3138, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool17.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool17.not, label %if.end15.out_unlock_crit_edge, label %if.end19

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end19:                                         ; preds = %if.end15
  %71 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_data, align 4
  %cmp = icmp eq ptr %72, null
  br i1 %cmp, label %if.then21, label %if.end19.if.end34_crit_edge

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then21:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3392, i32 noundef 176) #15
  %tobool.not.i107 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i107, label %if.then21.if.then24_crit_edge, label %if.then.i

if.then21.if.then24_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then.i:                                        ; preds = %if.then21
  %num_pages.i108 = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %num_pages.i108 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %num_pages.i108, align 8
  %descs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3392, i32 noundef 12) #15
  %add.ptr.i.i = getelementptr ptr, ptr %call7.i.i.i.i, i32 1
  %76 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i.i, ptr %descs.i, align 4
  %pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call7.i.i.i.i, ptr %pages.i, align 8
  %tobool4.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end25

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.then24

if.then24:                                        ; preds = %if.then5.i, %if.then21.if.then24_crit_edge
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #12
  br label %out_unlock

if.end25:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fuse_writepage_add_to_bucket(ptr noundef %9, ptr noundef nonnull %call7.i.i.i)
  %max_pages = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %_data, i32 0, i32 4
  %78 = ptrtoint ptr %max_pages to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %max_pages, align 4
  %ap27 = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ff, align 4
  %index.i109 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %81 = ptrtoint ptr %index.i109 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index.i109, align 4
  %conv.i = zext i32 %82 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %fh.i = getelementptr inbounds %struct.fuse_file, ptr %80, i32 0, i32 3
  %83 = ptrtoint ptr %fh.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %fh.i, align 8
  %85 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %call7.i.i.i, align 8
  %offset.i = getelementptr inbounds %struct.fuse_write_in, ptr %call7.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shl.i, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.fuse_write_in, ptr %call7.i.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %size.i, align 8
  %opcode.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %88 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 16, ptr %opcode.i, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_file, ptr %80, i32 0, i32 4
  %89 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %nodeid.i, align 8
  %91 = ptrtoint ptr %ap27 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %ap27, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 2
  %92 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 2, ptr %in_numargs.i, align 4
  %93 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %80, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %minor.i = getelementptr inbounds %struct.fuse_conn, ptr %96, i32 0, i32 28
  %97 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %minor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %98)
  %cmp.i110 = icmp ult i32 %98, 9
  %spec.select.i = select i1 %cmp.i110, i32 24, i32 40
  %99 = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %spec.select.i, ptr %99, align 4
  %value.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %101 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i.i, ptr %value.i, align 8
  %arrayidx14.i = getelementptr %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 5, i32 1
  %102 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %arrayidx14.i, align 4
  %out_numargs.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %103 = ptrtoint ptr %out_numargs.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %out_numargs.i, align 2
  %out_args.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6
  %104 = ptrtoint ptr %out_args.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 8, ptr %out_args.i, align 4
  %out.i = getelementptr inbounds %struct.anon.90, ptr %call7.i.i.i, i32 0, i32 1
  %value20.i = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 6, i32 0, i32 1
  %105 = ptrtoint ptr %value20.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %out.i, ptr %value20.i, align 8
  %write_flags = getelementptr inbounds %struct.fuse_write_in, ptr %call7.i.i.i, i32 0, i32 3
  %106 = ptrtoint ptr %write_flags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %write_flags, align 4
  %or = or i32 %107, 1
  store i32 %or, ptr %write_flags, align 4
  %next = getelementptr inbounds %struct.fuse_writepage_args, ptr %call7.i.i.i, i32 0, i32 3
  %108 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %next, align 4
  %in_pages = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 4
  %109 = ptrtoint ptr %in_pages to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load = load i16, ptr %in_pages, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %in_pages, align 8
  %end = getelementptr inbounds %struct.fuse_io_args, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 7
  %110 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @fuse_writepage_end, ptr %end, align 4
  %111 = ptrtoint ptr %num_pages.i108 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %num_pages.i108, align 8
  %inode33 = getelementptr inbounds %struct.fuse_writepage_args, ptr %call7.i.i.i, i32 0, i32 4
  %112 = ptrtoint ptr %inode33 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %3, ptr %inode33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.end25, %if.end19.if.end34_crit_edge
  %wpa.0 = phi ptr [ %call7.i.i.i, %if.end25 ], [ %1, %if.end19.if.end34_crit_edge ]
  %ap.0 = phi ptr [ %ap27, %if.end25 ], [ %ap2, %if.end19.if.end34_crit_edge ]
  %call35 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %113 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %113, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %114 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %114, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i13.i) #12
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #12
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  %pages = getelementptr inbounds %struct.fuse_args_pages, ptr %ap.0, i32 0, i32 1
  %115 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pages, align 8
  %num_pages36 = getelementptr inbounds %struct.fuse_args_pages, ptr %ap.0, i32 0, i32 3
  %117 = ptrtoint ptr %num_pages36 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num_pages36, align 8
  %arrayidx = getelementptr ptr, ptr %116, i32 %118
  %119 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %descs = getelementptr inbounds %struct.fuse_args_pages, ptr %ap.0, i32 0, i32 2
  %120 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %descs, align 4
  %122 = load i32, ptr %num_pages36, align 8
  %offset = getelementptr %struct.fuse_page_desc, ptr %121, i32 %122, i32 1
  %123 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %offset, align 4
  %124 = load ptr, ptr %descs, align 4
  %125 = load i32, ptr %num_pages36, align 8
  %arrayidx41 = getelementptr %struct.fuse_page_desc, ptr %124, i32 %125
  %126 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4096, ptr %arrayidx41, align 4
  %orig_pages = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %_data, i32 0, i32 3
  %127 = ptrtoint ptr %orig_pages to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %orig_pages, align 4
  %129 = load i32, ptr %num_pages36, align 8
  %arrayidx43 = getelementptr ptr, ptr %128, i32 %129
  %130 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %page, ptr %arrayidx43, align 4
  %call44 = tail call ptr @inode_to_bdi(ptr noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %131 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i.i.i111 = icmp eq i32 %131, 0
  %132 = tail call i32 @llvm.ctlz.i32(i32 %131, i1 true) #12, !range !101
  %arrayidx.i.i = getelementptr %struct.backing_dev_info, ptr %call44, i32 0, i32 11, i32 9, i32 1
  %sub.i.op.i.i.i = shl nuw nsw i32 %132, 3
  %sub.i.op.i.i.i.op = xor i32 %sub.i.op.i.i.i, 248
  %sub.i.op.i.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.i.op, 8
  %mul.i.i112 = select i1 %tobool.not.i.i.i.i111, i32 0, i32 %sub.i.op.i.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i.i, i64 noundef 1, i32 noundef %mul.i.i112) #12
  tail call void @inc_node_page_state(ptr noundef nonnull %call38.i.i.i, i32 noundef 22) #12
  %133 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %_data, align 4
  %tobool46.not = icmp eq ptr %134, null
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %135 = ptrtoint ptr %num_pages36 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_pages36, align 8
  %inc = add i32 %136, 1
  store i32 %inc, ptr %num_pages36, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br label %out_unlock

if.else:                                          ; preds = %if.end34
  %inode.i113 = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa.0, i32 0, i32 4
  %137 = ptrtoint ptr %inode.i113 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %inode.i113, align 8
  %num_pages.i114 = getelementptr inbounds %struct.fuse_io_args, ptr %wpa.0, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %num_pages.i114 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_pages.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp.not.i = icmp eq i32 %140, 0
  br i1 %cmp.not.i, label %if.else.if.end.i116_crit_edge, label %do.end.i115, !prof !78

if.else.if.end.i116_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i116

do.end.i115:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2050, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i116

if.end.i116:                                      ; preds = %do.end.i115, %if.else.if.end.i116_crit_edge
  %141 = ptrtoint ptr %num_pages.i114 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %num_pages.i114, align 8
  %lock.i = getelementptr inbounds %struct.fuse_inode, ptr %138, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #12
  %writepages.i = getelementptr inbounds %struct.fuse_inode, ptr %138, i32 0, i32 9, i32 0, i32 6, i32 0, i32 0, i32 4
  %call21.i = tail call fastcc ptr @fuse_insert_writeback(ptr noundef %writepages.i, ptr noundef %wpa.0) #12
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.then51, label %if.end25.i117

if.end25.i117:                                    ; preds = %if.end.i116
  %next.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %call21.i, i32 0, i32 3
  %142 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %tmp.0165.i = load ptr, ptr %next.i, align 4
  %tobool26.not166.i = icmp eq ptr %tmp.0165.i, null
  br i1 %tobool26.not166.i, label %if.end25.i117.if.then115.i_crit_edge, label %for.body.lr.ph.i

if.end25.i117.if.then115.i_crit_edge:             ; preds = %if.end25.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115.i

for.body.lr.ph.i:                                 ; preds = %if.end25.i117
  %index.i118 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.0167.i = phi ptr [ %tmp.0165.i, %for.body.lr.ph.i ], [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ]
  %inode28.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %tmp.0167.i, i32 0, i32 4
  %143 = ptrtoint ptr %inode28.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %inode28.i, align 8
  %145 = ptrtoint ptr %inode.i113 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %inode.i113, align 8
  %cmp30.not.i = icmp eq ptr %144, %146
  br i1 %cmp30.not.i, label %for.body.i.if.end52.i_crit_edge, label %do.end46.i, !prof !78

for.body.i.if.end52.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52.i

do.end46.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2063, i32 noundef 9, ptr noundef null) #12
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end46.i, %for.body.i.if.end52.i_crit_edge
  %offset.i119 = getelementptr inbounds %struct.fuse_write_in, ptr %tmp.0167.i, i32 0, i32 1
  %147 = ptrtoint ptr %offset.i119 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %offset.i119, align 8
  %shr.i = lshr i64 %148, 12
  %conv.i120 = trunc i64 %shr.i to i32
  %149 = ptrtoint ptr %index.i118 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %index.i118, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %conv.i120)
  %cmp61.i = icmp eq i32 %150, %conv.i120
  br i1 %cmp61.i, label %if.then63.i, label %for.inc.i

if.then63.i:                                      ; preds = %if.end52.i
  %num_pages67.i = getelementptr inbounds %struct.fuse_io_args, ptr %tmp.0167.i, i32 0, i32 1, i32 3
  %151 = ptrtoint ptr %num_pages67.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num_pages67.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp68.not.i = icmp eq i32 %152, 1
  br i1 %cmp68.not.i, label %if.then63.i.if.then122.critedge.i_crit_edge, label %do.end85.i, !prof !78

if.then63.i.if.then122.critedge.i_crit_edge:      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122.critedge.i

do.end85.i:                                       ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2066, i32 noundef 9, ptr noundef null) #12
  br label %if.then122.critedge.i

for.inc.i:                                        ; preds = %if.end52.i
  %next113.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %tmp.0167.i, i32 0, i32 3
  %153 = ptrtoint ptr %next113.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %tmp.0.i = load ptr, ptr %next113.i, align 4
  %tobool26.not.i = icmp eq ptr %tmp.0.i, null
  br i1 %tobool26.not.i, label %for.inc.i.if.then115.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.then115.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then115.i

if.then115.i:                                     ; preds = %for.inc.i.if.then115.i_crit_edge, %if.end25.i117.if.then115.i_crit_edge
  %154 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %next.i, align 4
  %next117.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %wpa.0, i32 0, i32 3
  %156 = ptrtoint ptr %next117.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %155, ptr %next117.i, align 4
  store ptr %wpa.0, ptr %next.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  br label %if.else53

if.then122.critedge.i:                            ; preds = %do.end85.i, %if.then63.i.if.then122.critedge.i_crit_edge
  %pages.i121 = getelementptr inbounds %struct.fuse_io_args, ptr %tmp.0167.i, i32 0, i32 1, i32 1
  %157 = ptrtoint ptr %pages.i121 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pages.i121, align 8
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %pages102.i = getelementptr inbounds %struct.fuse_io_args, ptr %wpa.0, i32 0, i32 1, i32 1
  %161 = ptrtoint ptr %pages102.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pages102.i, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  store ptr %164, ptr %158, align 4
  %165 = load ptr, ptr %pages102.i, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %160, ptr %165, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %167 = ptrtoint ptr %inode.i113 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %inode.i113, align 8
  %call124.i = tail call ptr @inode_to_bdi(ptr noundef %168) #12
  %wb.i = getelementptr inbounds %struct.backing_dev_info, ptr %call124.i, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %169 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i.i.i.i.i = icmp eq i32 %169, 0
  %170 = tail call i32 @llvm.ctlz.i32(i32 %169, i1 true) #12, !range !101
  %arrayidx.i.i.i = getelementptr %struct.backing_dev_info, ptr %call124.i, i32 0, i32 11, i32 9, i32 1
  %sub.i.op.i.i.i.i = shl nuw nsw i32 %170, 3
  %sub.i.op.i.i.i.i.op = xor i32 %sub.i.op.i.i.i.i, 248
  %sub.i.op.i.i.i.i.op.op = add nuw nsw i32 %sub.i.op.i.i.i.i.op, 8
  %mul.i.i.i123 = select i1 %tobool.not.i.i.i.i.i, i32 0, i32 %sub.i.op.i.i.i.i.op.op
  tail call void @percpu_counter_add_batch(ptr noundef %arrayidx.i.i.i, i64 noundef -1, i32 noundef %mul.i.i.i123) #12
  %171 = ptrtoint ptr %pages102.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pages102.i, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  tail call void @dec_node_page_state(ptr noundef %174, i32 noundef 22) #12
  tail call void @wb_writeout_inc(ptr noundef %wb.i) #12
  tail call fastcc void @fuse_writepage_free(ptr noundef %wpa.0) #12
  br label %if.else53

if.then51:                                        ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #12
  %175 = ptrtoint ptr %_data to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %wpa.0, ptr %_data, align 4
  br label %out_unlock

if.else53:                                        ; preds = %if.then122.critedge.i, %if.then115.i
  tail call void @end_page_writeback(ptr noundef %page) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.else53, %if.then51, %if.then47, %if.then24, %if.end15.out_unlock_crit_edge, %if.then.out_unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.then47 ], [ 0, %if.then51 ], [ 0, %if.else53 ], [ -12, %if.then24 ], [ -12, %if.end15.out_unlock_crit_edge ], [ -5, %if.then.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_writepages_send(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %inode2 = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %inode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode2, align 4
  %num_pages3 = getelementptr inbounds %struct.fuse_io_args, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %num_pages3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages3, align 8
  %ff = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ff, align 4
  %count.i = getelementptr inbounds %struct.fuse_file, ptr %7, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #12, !srcloc !99
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fuse_file_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !78

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fuse_file_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_file_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #12
  br label %fuse_file_get.exit

fuse_file_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fuse_file_get.exit_crit_edge
  %ff6 = getelementptr inbounds %struct.fuse_io_args, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ff6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %ff6, align 4
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %queue_entry = getelementptr inbounds %struct.fuse_writepage_args, ptr %1, i32 0, i32 2
  %queued_writes = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %queued_writes, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue_entry, ptr noundef %12, ptr noundef %queued_writes) #12
  br i1 %call.i.i, label %if.end.i.i, label %fuse_file_get.exit.list_add_tail.exit_crit_edge

fuse_file_get.exit.list_add_tail.exit_crit_edge:  ; preds = %fuse_file_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %fuse_file_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %queue_entry, ptr %prev.i, align 4
  %14 = ptrtoint ptr %queue_entry to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %queued_writes, ptr %queue_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.fuse_writepage_args, ptr %1, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %queue_entry, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %fuse_file_get.exit.list_add_tail.exit_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %call2.i = tail call fastcc i64 @i_size_read(ptr noundef %3) #12
  %writectr.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 2
  %21 = ptrtoint ptr %writectr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %writectr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp10.i = icmp sgt i32 %22, -1
  br i1 %cmp10.i, label %list_add_tail.exit.land.rhs.i_crit_edge, label %list_add_tail.exit.fuse_flush_writepages.exit_crit_edge

list_add_tail.exit.fuse_flush_writepages.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_flush_writepages.exit

list_add_tail.exit.land.rhs.i_crit_edge:          ; preds = %list_add_tail.exit
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %list_del_init.exit.i.land.rhs.i_crit_edge, %list_add_tail.exit.land.rhs.i_crit_edge
  %23 = ptrtoint ptr %queued_writes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %queued_writes, align 4
  %cmp.i.not.i = icmp eq ptr %24, %queued_writes
  br i1 %cmp.i.not.i, label %land.rhs.i.fuse_flush_writepages.exit_crit_edge, label %while.body.i

land.rhs.i.fuse_flush_writepages.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_flush_writepages.exit

while.body.i:                                     ; preds = %land.rhs.i
  %add.ptr.i = getelementptr i8, ptr %24, i32 -156
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %24, ptr %24, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %24, ptr %prev.i3.i.i, align 4
  tail call fastcc void @fuse_send_writepage(ptr noundef %20, ptr noundef %add.ptr.i, i64 noundef %call2.i) #12
  %33 = ptrtoint ptr %writectr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %writectr.i, align 8
  %cmp.i = icmp sgt i32 %34, -1
  br i1 %cmp.i, label %list_del_init.exit.i.land.rhs.i_crit_edge, label %list_del_init.exit.i.fuse_flush_writepages.exit_crit_edge

list_del_init.exit.i.fuse_flush_writepages.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fuse_flush_writepages.exit

list_del_init.exit.i.land.rhs.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

fuse_flush_writepages.exit:                       ; preds = %list_del_init.exit.i.fuse_flush_writepages.exit_crit_edge, %land.rhs.i.fuse_flush_writepages.exit_crit_edge, %list_add_tail.exit.fuse_flush_writepages.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18 = icmp sgt i32 %5, 0
  br i1 %cmp18, label %for.body.lr.ph, label %fuse_flush_writepages.exit.for.end_crit_edge

fuse_flush_writepages.exit.for.end_crit_edge:     ; preds = %fuse_flush_writepages.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %fuse_flush_writepages.exit
  %orig_pages = getelementptr inbounds %struct.fuse_fill_wb_data, ptr %data, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %35 = ptrtoint ptr %orig_pages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %orig_pages, align 4
  %arrayidx = getelementptr ptr, ptr %36, i32 %i.019
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  tail call void @end_page_writeback(ptr noundef %38) #12
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %fuse_flush_writepages.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fuse_readpages_end(ptr nocapture noundef readnone %fm, ptr noundef %args, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr i8, ptr %args, i32 -40
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %out_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %2 = ptrtoint ptr %out_args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %out_args, align 4
  %num_pages = getelementptr inbounds %struct.fuse_args_pages, ptr %args, i32 0, i32 3
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 8
  %pages = getelementptr %struct.fuse_args_pages, ptr %args, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.body.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.064, i32 %5)
  %exitcond.not = icmp eq i32 %i.064, %5
  br i1 %exitcond.not, label %land.rhs.if.end9_crit_edge, label %for.body

land.rhs.if.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

for.body:                                         ; preds = %land.rhs
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 8
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %i.064
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %mapping5 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %mapping5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapping5, align 4
  %inc = add i32 %i.064, 1
  %cond = icmp eq ptr %11, null
  br i1 %cond, label %for.body.land.rhs_crit_edge, label %if.then

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.then:                                          ; preds = %for.body
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool6.not = icmp eq i32 %err, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp7 = icmp ult i32 %3, %1
  %or.cond = select i1 %tobool6.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %attr_ver = getelementptr i8, ptr %args, i32 -16
  %14 = ptrtoint ptr %attr_ver to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %attr_ver, align 8
  tail call fastcc void @fuse_short_read(ptr noundef %13, i64 noundef %15, i32 noundef %3, ptr noundef %args)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  tail call void @fuse_invalidate_atime(ptr noundef %13) #12
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.rhs.if.end9_crit_edge
  %16 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1266.not = icmp eq i32 %17, 0
  br i1 %cmp1266.not, label %if.end9.for.end21_crit_edge, label %for.body13.lr.ph

if.end9.for.end21_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

for.body13.lr.ph:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool16.not = icmp eq i32 %err, 0
  br label %for.body13

for.body13:                                       ; preds = %put_page.exit.for.body13_crit_edge, %for.body13.lr.ph
  %i.167 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc20, %put_page.exit.for.body13_crit_edge ]
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 8
  %arrayidx15 = getelementptr ptr, ptr %19, i32 %i.167
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx15, align 4
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !104
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !78

if.then.i.i.i:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %21) #12
  br label %if.end18

if.else:                                          ; preds = %for.body13
  %25 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !78

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !119
  unreachable

do.body7.i:                                       ; preds = %if.else
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %25, align 4
  %and.i31.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i = icmp eq i32 %33, -1
  %34 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %25, align 4
  %and.i32.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !72

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !78

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %35, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %36, %if.end.i36.i ]
  %37 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !120
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !78

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %35, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %21 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %38, %if.end.i43.i ]
  %39 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %39) #12
  br label %if.end18

if.end18:                                         ; preds = %SetPageError.exit, %SetPageUptodate.exit
  tail call void @unlock_page(ptr noundef %21) #12
  %40 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i.i50 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.then.i.i53, !prof !78

if.then.i.i53:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i52 = add i32 %42, -1
  br label %_compound_head.exit.i56

if.end.i.i54:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i56

_compound_head.exit.i56:                          ; preds = %if.end.i.i54, %if.then.i.i53
  %retval.0.i.i55 = phi i32 [ %sub.i.i52, %if.then.i.i53 ], [ %43, %if.end.i.i54 ]
  %44 = inttoptr i32 %retval.0.i.i55 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %45 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i56
  call void @__sanitizer_cov_trace_pc() #14
  %47 = inttoptr i32 %retval.0.i.i55 to ptr
  tail call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.6) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !87
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i56
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_readpages_end, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !91

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %44, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %44) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc20 = add nuw i32 %i.167, 1
  %49 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_pages, align 8
  %cmp12 = icmp ult i32 %inc20, %50
  br i1 %cmp12, label %put_page.exit.for.body13_crit_edge, label %put_page.exit.for.end21_crit_edge

put_page.exit.for.end21_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end21

put_page.exit.for.body13_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

for.end21:                                        ; preds = %put_page.exit.for.end21_crit_edge, %if.end9.for.end21_crit_edge
  %ff = getelementptr i8, ptr %args, i32 84
  %51 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ff, align 4
  %tobool22.not = icmp eq ptr %52, null
  br i1 %tobool22.not, label %for.end21.if.end25_crit_edge, label %if.then23

for.end21.if.end25_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @fuse_file_put(ptr noundef nonnull %52, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end21.if.end25_crit_edge
  %add.ptr = getelementptr i8, ptr %args, i32 -56
  %53 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pages, align 8
  tail call void @kfree(ptr noundef %54) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !36, !38, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !57, !59, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @fuse_file_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/fuse/file.c", i32 74, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @fuse_file_alloc.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/fuse/file.c", i32 77, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_fuse_do_open, !7, !"__ksymtab_fuse_do_open", i1 false, i1 false}
!7 = !{!"../fs/fuse/file.c", i32 179, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/fuse/file.c", i32 350, i32 2}
!10 = !{ptr @__ksymtab_fuse_sync_release, !11, !"__ksymtab_fuse_sync_release", i1 false, i1 false}
!11 = !{!"../fs/fuse/file.c", i32 358, i32 1}
!12 = !{ptr @__ksymtab_fuse_direct_io, !13, !"__ksymtab_fuse_direct_io", i1 false, i1 false}
!13 = !{!"../fs/fuse/file.c", i32 1512, i32 1}
!14 = !{ptr @__ksymtab_fuse_file_poll, !15, !"__ksymtab_fuse_file_poll", i1 false, i1 false}
!15 = !{!"../fs/fuse/file.c", i32 2772, i32 1}
!16 = !{ptr @fuse_init_file_inode.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../fs/fuse/file.c", i32 3183, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/mm.h", i32 717, i32 2}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fuse_file_operations, !32, !"fuse_file_operations", i1 false, i1 false}
!32 = !{!"../fs/fuse/file.c", i32 3139, i32 37}
!33 = !{ptr @fuse_direct_IO.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/fuse/file.c", i32 2841, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @init_completion.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../include/linux/completion.h", i32 87, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fuse_file_vm_ops, !47, !"fuse_file_vm_ops", i1 false, i1 false}
!47 = !{!"../fs/fuse/file.c", i32 2392, i32 42}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!50 = !{ptr @fuse_file_aops, !51, !"fuse_file_aops", i1 false, i1 false}
!51 = !{!"../fs/fuse/file.c", i32 3160, i32 46}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../fs/fuse/file.c", i32 1891, i32 17}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/pagemap.h", i32 1152, i32 3}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2152633185}
!74 = !{i64 2150109427}
!75 = !{i64 2150114361}
!76 = !{i64 2150136079}
!77 = !{i64 2150140973}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2150217500}
!80 = !{i64 2150217825}
!81 = !{i64 2152645047}
!82 = !{i64 2148877915}
!83 = !{i64 2148792355, i64 2148792387, i64 2148792416, i64 2148792450, i64 2148792481, i64 2148792504}
!84 = !{i64 2150499004}
!85 = !{!"auto-init"}
!86 = !{i8 0, i8 2}
!87 = !{i64 2153247459, i64 2153247942, i64 2153247496, i64 2153247552, i64 2153247586, i64 2153247610, i64 2153247651, i64 2153247672, i64 2153247700, i64 2153247734}
!88 = !{i64 2148876836}
!89 = !{i64 2148791545, i64 2148791577, i64 2148791606, i64 2148791640, i64 2148791671, i64 2148791694}
!90 = !{i64 2148877065}
!91 = !{i64 2148612958, i64 2148612963, i64 2148612976, i64 2148613020, i64 2148613054, i64 2148613075}
!92 = !{i64 1193040, i64 1193101}
!93 = !{i64 1195772}
!94 = !{i64 1196057}
!95 = !{i64 2152631254}
!96 = !{i64 2152631096}
!97 = !{i64 2152631424}
!98 = !{i64 2150217175}
!99 = !{i64 2148789890, i64 2148789922, i64 2148789951, i64 2148789985, i64 2148790016, i64 2148790039}
!100 = !{i64 2155081939, i64 2155082419, i64 2155081976, i64 2155082032, i64 2155082066, i64 2155082090, i64 2155082131, i64 2155082152, i64 2155082180, i64 2155082214}
!101 = !{i32 0, i32 33}
!102 = !{i64 2149600806}
!103 = !{i64 2149601072}
!104 = !{i64 2151448068}
!105 = !{i64 2150697105, i64 2150697596, i64 2150697142, i64 2150697198, i64 2150697232, i64 2150697256, i64 2150697297, i64 2150697318, i64 2150697346, i64 2150697380}
!106 = !{i64 2151446997}
!107 = !{i64 2151455981, i64 2151456154, i64 2151456169, i64 2151456221, i64 2151456280, i64 2151456304, i64 2151456345, i64 2151456366, i64 2151456394, i64 2151456426}
!108 = !{i64 2151456856, i64 2151457029, i64 2151457044, i64 2151457096, i64 2151457155, i64 2151457179, i64 2151457220, i64 2151457241, i64 2151457269, i64 2151457301}
!109 = !{i64 2148797218, i64 2148797250, i64 2148797279, i64 2148797313, i64 2148797344, i64 2148797367}
!110 = !{i64 2148886323}
!111 = !{i64 2154794823, i64 2154795312, i64 2154794860, i64 2154794916, i64 2154794950, i64 2154794974, i64 2154795015, i64 2154795036, i64 2154795064, i64 2154795098}
!112 = !{i64 2150704538, i64 2150705029, i64 2150704575, i64 2150704631, i64 2150704665, i64 2150704689, i64 2150704730, i64 2150704751, i64 2150704779, i64 2150704813}
!113 = !{i64 2154796780, i64 2154797269, i64 2154796817, i64 2154796873, i64 2154796907, i64 2154796931, i64 2154796972, i64 2154796993, i64 2154797021, i64 2154797055}
!114 = !{i64 2154798549, i64 2154799038, i64 2154798586, i64 2154798642, i64 2154798676, i64 2154798700, i64 2154798741, i64 2154798762, i64 2154798790, i64 2154798824}
!115 = !{i64 2153238449, i64 2153238937, i64 2153238486, i64 2153238542, i64 2153238576, i64 2153238600, i64 2153238641, i64 2153238662, i64 2153238690, i64 2153238724}
!116 = !{i64 2148787779}
!117 = !{i64 1274379, i64 1274404, i64 1274426, i64 1274442, i64 1274454, i64 1274474, i64 1274498, i64 1274514, i64 1274526}
!118 = !{i64 2148787967}
!119 = !{i64 2150758695, i64 2150758868, i64 2150758883, i64 2150758935, i64 2150758994, i64 2150759018, i64 2150759059, i64 2150759080, i64 2150759108, i64 2150759140}
!120 = !{i64 2150759570, i64 2150759743, i64 2150759758, i64 2150759810, i64 2150759869, i64 2150759893, i64 2150759934, i64 2150759955, i64 2150759983, i64 2150760015}
