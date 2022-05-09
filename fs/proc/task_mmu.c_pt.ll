; ModuleID = '/llk/IR_all_yes/fs/proc/task_mmu.c_pt.bc'
source_filename = "../fs/proc/task_mmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.32 }
%struct.atomic_t = type { i32 }
%union.anon.32 = type { i32 }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.5 }
%union.anon.5 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.72, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.proc_maps_private = type { ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.clear_refs_private = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.10, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.68, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.7 }
%struct.llist_node = type { ptr }
%union.anon.7 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.68 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pagemapread = type { i32, i32, ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.75 = type { %struct.callback_head }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.79 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon_vma_name = type { %struct.kref, [0 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.mem_size_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.page = type { i32, %union.anon.14, %union.anon.45, %struct.atomic_t, i32 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.45 = type { %struct.atomic_t }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.85 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.pagemap_entry_t = type { i64 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VmPeak:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" kB\0AVmSize:\09\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmLck:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmPin:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmHWM:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmRSS:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" kB\0ARssAnon:\09\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" kB\0ARssFile:\09\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" kB\0ARssShmem:\09\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" kB\0AVmData:\09\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmStk:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmExe:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmLib:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" kB\0AVmPTE:\09\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" kB\0AVmSwap:\09\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" kB\0A\00", [27 x i8] zeroinitializer }, align 32
@proc_pid_maps_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pid_maps_open, ptr null, ptr @proc_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_pid_smaps_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pid_smaps_open, ptr null, ptr @proc_map_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_pid_smaps_rollup_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smaps_rollup_open, ptr null, ptr @smaps_rollup_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_clear_refs_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @clear_refs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_pagemap_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @mem_lseek, ptr @pagemap_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pagemap_open, ptr null, ptr @pagemap_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@proc_pid_maps_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @m_start, ptr @m_stop, ptr @m_next, ptr @show_map }, [16 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[vdso]\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[heap]\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[stack]\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[anon:%s]\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@proc_pid_smaps_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @m_start, ptr @m_stop, ptr @m_next, ptr @show_smap }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Size:           \00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AKernelPageSize: \00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AMMUPageSize:    \00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"THPeligible:    %d\0A\00", [44 x i8] zeroinitializer }, align 32
@smaps_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @smaps_pte_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@smaps_shmem_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @smaps_pte_range, ptr null, ptr @smaps_pte_hole, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/proc/task_mmu.c\00", [45 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Rss:            \00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0APss:            \00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0APss_Anon:       \00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0APss_File:       \00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0APss_Shmem:      \00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AShared_Clean:   \00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AShared_Dirty:   \00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0APrivate_Clean:  \00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0APrivate_Dirty:  \00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AReferenced:     \00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AAnonymous:      \00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0ALazyFree:       \00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AAnonHugePages:  \00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AShmemPmdMapped: \00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AFilePmdMapped:  \00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0AShared_Hugetlb: \00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" kB\0APrivate_Hugetlb: \00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0ASwap:           \00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0ASwapPss:        \00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" kB\0ALocked:         \00", [43 x i8] zeroinitializer }, align 32
@show_smap_vma_flags.mnemonics = internal constant { [32 x [2 x i8]], [32 x i8] } { [32 x [2 x i8]] [[2 x i8] c"rd", [2 x i8] c"wr", [2 x i8] c"ex", [2 x i8] c"sh", [2 x i8] c"mr", [2 x i8] c"mw", [2 x i8] c"me", [2 x i8] c"ms", [2 x i8] c"gd", [2 x i8] c"um", [2 x i8] c"pf", [2 x i8] c"??", [2 x i8] c"uw", [2 x i8] c"lo", [2 x i8] c"io", [2 x i8] c"sr", [2 x i8] c"rr", [2 x i8] c"dc", [2 x i8] c"de", [2 x i8] c"??", [2 x i8] c"ac", [2 x i8] c"nr", [2 x i8] c"ht", [2 x i8] c"sf", [2 x i8] c"ar", [2 x i8] c"wf", [2 x i8] c"dd", [2 x i8] c"??", [2 x i8] c"mm", [2 x i8] c"hg", [2 x i8] c"nh", [2 x i8] c"mg"], [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VmFlags: \00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[rollup]\0A\00", [22 x i8] zeroinitializer }, align 32
@clear_refs_walk_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @clear_refs_pte_range, ptr null, ptr null, ptr null, ptr @clear_refs_test_walk, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@pagemap_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @pagemap_pmd_range, ptr null, ptr @pagemap_pte_hole, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 60, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 61, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 62, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 63, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 64, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 65, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 66, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 67, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 68, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 69, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 70, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 72, i32 7 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 74, i32 7 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 76, i32 7 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 77, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 78, i32 14 }
@___asan_gen_.107 = private unnamed_addr constant [25 x i8] c"proc_pid_maps_operations\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 363, i32 30 }
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"proc_pid_smaps_operations\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1041, i32 30 }
@___asan_gen_.113 = private unnamed_addr constant [33 x i8] c"proc_pid_smaps_rollup_operations\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1048, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"proc_clear_refs_operations\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1310, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"proc_pagemap_operations\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1725, i32 30 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"proc_pid_maps_op\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 351, i32 36 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 300, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 315, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 321, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 326, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 333, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 258, i32 20 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 264, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 266, i32 20 }
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"proc_pid_smaps_op\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 988, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 855, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 856, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 857, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 862, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"smaps_walk_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 747, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant [21 x i8] c"smaps_shmem_walk_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 752, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 633, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 414, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 809, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 810, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 816, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 818, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 820, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 823, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 824, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 825, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 826, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 827, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 828, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 829, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 830, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 831, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 832, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 833, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 834, i32 31 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 836, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 837, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 839, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [10 x i8] c"mnemonics\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 642, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 703, i32 14 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 971, i32 14 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"clear_refs_walk_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1229, i32 33 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 230, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 214, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 156, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 454, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"pagemap_ops\00", align 1
@___asan_gen_.261 = private constant [22 x i8] c"../fs/proc/task_mmu.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1583, i32 33 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @proc_pid_maps_operations, ptr @proc_pid_smaps_operations, ptr @proc_pid_smaps_rollup_operations, ptr @proc_clear_refs_operations, ptr @proc_pagemap_operations, ptr @proc_pid_maps_op, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @proc_pid_smaps_op, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @smaps_walk_ops, ptr @smaps_shmem_walk_ops, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @show_smap_vma_flags.mnemonics, ptr @.str.52, ptr @.str.53, ptr @clear_refs_walk_ops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @pagemap_ops], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_maps_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_smaps_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_smaps_rollup_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_clear_refs_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pagemap_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_maps_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_pid_smaps_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smaps_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smaps_shmem_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_smap_vma_flags.mnemonics to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_refs_walk_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagemap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @task_mem(ptr noundef %m, ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_stat.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 40
  %arrayidx.i = getelementptr %struct.anon.9, ptr %mm, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 0) #11
  %call.i.i.i94 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %rss_stat.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %rss_stat.i, align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #11
  %arrayidx.i96 = getelementptr %struct.anon.9, ptr %mm, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i96, i32 noundef 4) #11
  %6 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i96, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #11
  %total_vm3 = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 19
  %9 = ptrtoint ptr %total_vm3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_vm3, align 8
  %hiwater_vm4 = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 18
  %11 = ptrtoint ptr %hiwater_vm4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hiwater_vm4, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %10, i32 %12)
  %add = add nuw i32 %5, %2
  %add6 = add i32 %add, %8
  %hiwater_rss7 = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 17
  %14 = ptrtoint ptr %hiwater_rss7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hiwater_rss7, align 8
  %16 = tail call i32 @llvm.umax.i32(i32 %add6, i32 %15)
  %end_code = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 29
  %17 = ptrtoint ptr %end_code to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end_code, align 8
  %add12 = add i32 %18, 4095
  %and = and i32 %add12, -4096
  %start_code = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 28
  %19 = ptrtoint ptr %start_code to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_code, align 4
  %and13 = and i32 %20, -4096
  %sub = sub i32 %and, %and13
  %exec_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 23
  %21 = ptrtoint ptr %exec_vm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %exec_vm, align 4
  %shl = shl i32 %22, 12
  %23 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %shl)
  %sub17 = sub i32 %shl, %23
  %arrayidx.i99 = getelementptr %struct.anon.9, ptr %mm, i32 0, i32 40, i32 0, i32 2
  %call.i.i.i100 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i99, i32 noundef 4) #11
  %24 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i99, align 4
  %26 = tail call i32 @llvm.smax.i32(i32 %25, i32 0) #11
  %shl19 = shl i32 %13, 2
  %conv = zext i32 %shl19 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str, i64 noundef %conv, i32 noundef 8) #11
  %shl20 = shl i32 %10, 2
  %conv21 = zext i32 %shl20 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.1, i64 noundef %conv21, i32 noundef 8) #11
  %locked_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 20
  %27 = ptrtoint ptr %locked_vm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %locked_vm, align 4
  %shl22 = shl i32 %28, 2
  %conv23 = zext i32 %shl22 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.2, i64 noundef %conv23, i32 noundef 8) #11
  %pinned_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pinned_vm, i32 noundef 8) #11
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %pinned_vm) #11
  %shl25 = shl i64 %call.i, 2
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.3, i64 noundef %shl25, i32 noundef 8) #11
  %shl26 = shl i32 %16, 2
  %conv27 = zext i32 %shl26 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.4, i64 noundef %conv27, i32 noundef 8) #11
  %shl28 = shl i32 %add6, 2
  %conv29 = zext i32 %shl28 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.5, i64 noundef %conv29, i32 noundef 8) #11
  %shl30 = shl i32 %2, 2
  %conv31 = zext i32 %shl30 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.6, i64 noundef %conv31, i32 noundef 8) #11
  %shl32 = shl i32 %5, 2
  %conv33 = zext i32 %shl32 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.7, i64 noundef %conv33, i32 noundef 8) #11
  %shl34 = shl i32 %8, 2
  %conv35 = zext i32 %shl34 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.8, i64 noundef %conv35, i32 noundef 8) #11
  %data_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 22
  %29 = ptrtoint ptr %data_vm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_vm, align 8
  %shl36 = shl i32 %30, 2
  %conv37 = zext i32 %shl36 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.9, i64 noundef %conv37, i32 noundef 8) #11
  %stack_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 24
  %31 = ptrtoint ptr %stack_vm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stack_vm, align 8
  %shl38 = shl i32 %32, 2
  %conv39 = zext i32 %shl38 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.10, i64 noundef %conv39, i32 noundef 8) #11
  %shr = lshr exact i32 %23, 10
  %conv40 = zext i32 %shr to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.11, i64 noundef %conv40, i32 noundef 8) #11
  %shr41 = lshr exact i32 %sub17, 10
  %conv42 = zext i32 %shr41 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.12, i64 noundef %conv42, i32 noundef 8) #11
  %pgtables_bytes.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 12
  %call.i.i.i101 = tail call zeroext i1 @__kasan_check_read(ptr noundef %pgtables_bytes.i, i32 noundef 4) #11
  %33 = ptrtoint ptr %pgtables_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %pgtables_bytes.i, align 4
  %shr44 = lshr i32 %34, 10
  %conv45 = zext i32 %shr44 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.13, i64 noundef %conv45, i32 noundef 8) #11
  %shl46 = shl i32 %26, 2
  %conv47 = zext i32 %shl46 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.14, i64 noundef %conv47, i32 noundef 8) #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.15) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull_width(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @task_vsize(ptr nocapture noundef readonly %mm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %total_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 19
  %0 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total_vm, align 8
  %mul = shl i32 %1, 12
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @task_statm(ptr noundef %mm, ptr nocapture noundef %shared, ptr nocapture noundef writeonly %text, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %resident) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_stat.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %rss_stat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rss_stat.i, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 0) #11
  %arrayidx.i = getelementptr %struct.anon.9, ptr %mm, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #11
  %add = add nuw i32 %5, %2
  %6 = ptrtoint ptr %shared to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %shared, align 4
  %end_code = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 29
  %7 = ptrtoint ptr %end_code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end_code, align 8
  %add2 = add i32 %8, 4095
  %and = and i32 %add2, -4096
  %start_code = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 28
  %9 = ptrtoint ptr %start_code to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start_code, align 4
  %and3 = and i32 %10, -4096
  %sub = sub i32 %and, %and3
  %shr = lshr exact i32 %sub, 12
  %11 = ptrtoint ptr %text to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %text, align 4
  %data_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 22
  %12 = ptrtoint ptr %data_vm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_vm, align 8
  %stack_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 24
  %14 = ptrtoint ptr %stack_vm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stack_vm, align 8
  %add4 = add i32 %15, %13
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add4, ptr %data, align 4
  %17 = load i32, ptr %shared, align 4
  %arrayidx.i18 = getelementptr %struct.anon.9, ptr %mm, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i19 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i18, i32 noundef 4) #11
  %18 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i18, align 4
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0) #11
  %add6 = add i32 %20, %17
  %21 = ptrtoint ptr %resident to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add6, ptr %resident, align 4
  %total_vm = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 19
  %22 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_vm, align 8
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pid_maps_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @proc_pid_maps_op, i32 noundef 16) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.do_maps_open.exit_crit_edge, label %if.end.i.i

entry.do_maps_open.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_maps_open.exit

if.end.i.i:                                       ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %call.i.i, align 4
  %call2.i.i = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 1) #11
  %mm.i.i = getelementptr inbounds %struct.proc_maps_private, ptr %call.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2.i.i, ptr %mm.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.end.i.i.do_maps_open.exit_crit_edge

if.end.i.i.do_maps_open.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_maps_open.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call2.i.i to i32
  %call8.i.i = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #11
  br label %do_maps_open.exit

do_maps_open.exit:                                ; preds = %if.then5.i.i, %if.end.i.i.do_maps_open.exit_crit_edge, %entry.do_maps_open.exit_crit_edge
  %retval.0.i.i = phi i32 [ %2, %if.then5.i.i ], [ -12, %entry.do_maps_open.exit_crit_edge ], [ 0, %if.end.i.i.do_maps_open.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_map_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %mm = getelementptr inbounds %struct.proc_maps_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %mm_count.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #11, !srcloc !152
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge, !prof !154

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmdrop(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pid_smaps_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__seq_open_private(ptr noundef %file, ptr noundef nonnull @proc_pid_smaps_op, i32 noundef 16) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.do_maps_open.exit_crit_edge, label %if.end.i.i

entry.do_maps_open.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_maps_open.exit

if.end.i.i:                                       ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %inode, ptr %call.i.i, align 4
  %call2.i.i = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 1) #11
  %mm.i.i = getelementptr inbounds %struct.proc_maps_private, ptr %call.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2.i.i, ptr %mm.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.end.i.i.do_maps_open.exit_crit_edge

if.end.i.i.do_maps_open.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_maps_open.exit

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call2.i.i to i32
  %call8.i.i = tail call i32 @seq_release_private(ptr noundef %inode, ptr noundef %file) #11
  br label %do_maps_open.exit

do_maps_open.exit:                                ; preds = %if.then5.i.i, %if.end.i.i.do_maps_open.exit_crit_edge, %entry.do_maps_open.exit_crit_edge
  %retval.0.i.i = phi i32 [ %2, %if.then5.i.i ], [ -12, %entry.do_maps_open.exit_crit_edge ], [ 0, %if.end.i.i.do_maps_open.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smaps_rollup_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 4197824, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @show_smaps_rollup, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_free_crit_edge

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %inode, ptr %call7.i.i, align 8
  %call6 = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 1) #11
  %mm = getelementptr inbounds %struct.proc_maps_private, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %mm, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call6 to i32
  %call12 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #11
  br label %out_free

out_free:                                         ; preds = %if.then9, %if.end.out_free_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_free_crit_edge ], [ %3, %if.then9 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smaps_rollup_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %mm = getelementptr inbounds %struct.proc_maps_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %mm_count.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #11, !srcloc !152
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge, !prof !154

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmdrop(ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %3) #11
  %call = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_refs_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buffer = alloca [13 x i8], align 1
  %itype = alloca i32, align 4
  %range = alloca %struct.mmu_notifier_range, align 4
  %cp = alloca %struct.clear_refs_private, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %buffer) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %itype) #11
  %0 = ptrtoint ptr %itype to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %itype, align 4, !annotation !155
  %1 = call ptr @memset(ptr %buffer, i32 0, i32 13)
  %2 = tail call i32 @llvm.umin.i32(i32 %count, i32 12)
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %2, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %2, i32 -1226833920) #15, !srcloc !156
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !157

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %2) #11
  %4 = call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !158
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %buf, i32 noundef %2) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !160
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.then11.i.i, !prof !157

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %call.i = call ptr @strim(ptr noundef nonnull %buffer) #11
  %call6 = call i32 @kstrtoint(ptr noundef %call.i, i32 noundef 10, ptr noundef nonnull %itype) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %itype, align 4
  %10 = add i32 %9, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %10)
  %11 = icmp ult i32 %10, -5
  br i1 %11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 -40
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = call ptr @get_pid_task(ptr noundef %15, i32 noundef 0) #11
  %tobool16.not = icmp eq ptr %call1.i, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call19 = call ptr @get_task_mm(ptr noundef nonnull %call1.i) #11
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.if.end43_crit_edge, label %if.then21

if.end18.if.end43_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then21:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #11
  %16 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %18 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %19 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %20 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  %21 = call ptr @memset(ptr %range, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp) #11
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %9, ptr %cp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@clear_refs_write, %if.then.i.i75)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i75], !srcloc !161

if.then.i.i75:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %call19, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i75, %if.then21
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %call19, i32 0, i32 15
  %call.i76 = call i32 @down_write_killable(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@clear_refs_write, %if.then.i4.i)) #11
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !161

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i = icmp eq i32 %call.i76, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %call19, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #11
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool24.not = icmp eq i32 %call.i76, 0
  br i1 %tobool24.not, label %if.end26, label %mmap_write_lock_killable.exit.out_mm_crit_edge

mmap_write_lock_killable.exit.out_mm_crit_edge:   ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mm

if.end26:                                         ; preds = %mmap_write_lock_killable.exit
  %23 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %out_unlock.critedge [
    i32 5, label %if.then28
    i32 4, label %if.end26.for.cond_crit_edge
  ]

if.end26.for.cond_crit_edge:                      ; preds = %if.end26
  br label %for.cond

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @reset_mm_hiwater_rss(ptr noundef nonnull %call19)
  br label %out_unlock

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end26.for.cond_crit_edge
  %vma.0.in = phi ptr [ %vm_next, %for.cond.for.cond_crit_edge ], [ %call19, %if.end26.for.cond_crit_edge ]
  %24 = ptrtoint ptr %vma.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %vma.0 = load ptr, ptr %vma.0.in, align 4
  %tobool32.not = icmp eq ptr %vma.0, null
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0, i32 0, i32 2
  br i1 %tobool32.not, label %if.then41, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then41:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %tlb_flush_pending.i = getelementptr inbounds %struct.anon.9, ptr %call19, i32 0, i32 50
  %call.i.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tlb_flush_pending.i, i32 1, i32 3, i32 1) #11
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tlb_flush_pending.i, ptr %tlb_flush_pending.i, i32 1, ptr elementtype(i32) %tlb_flush_pending.i) #11, !srcloc !162
  %26 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %range, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %20, align 4
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19, ptr %16, align 4
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %17, align 4
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %18, align 4
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %19, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range)
  %highest_vm_end = getelementptr inbounds %struct.anon.9, ptr %call19, i32 0, i32 7
  %32 = ptrtoint ptr %highest_vm_end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %highest_vm_end, align 8
  %call39 = call i32 @walk_page_range(ptr noundef nonnull %call19, i32 noundef 0, i32 noundef %33, ptr noundef nonnull @clear_refs_walk_ops, ptr noundef nonnull %cp) #11
  call fastcc void @mmu_notifier_invalidate_range_end(ptr noundef nonnull %range)
  call void @flush_tlb_mm(ptr noundef nonnull %call19) #11
  %call.i.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %tlb_flush_pending.i, i32 1, i32 3, i32 1) #11
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tlb_flush_pending.i, ptr %tlb_flush_pending.i, i32 1, ptr elementtype(i32) %tlb_flush_pending.i) #11, !srcloc !163
  br label %out_unlock

out_unlock.critedge:                              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %highest_vm_end.c = getelementptr inbounds %struct.anon.9, ptr %call19, i32 0, i32 7
  %35 = ptrtoint ptr %highest_vm_end.c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %highest_vm_end.c, align 8
  %call39.c = call i32 @walk_page_range(ptr noundef nonnull %call19, i32 noundef 0, i32 noundef %36, ptr noundef nonnull @clear_refs_walk_ops, ptr noundef nonnull %cp) #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.critedge, %if.then41, %if.then28
  call fastcc void @mmap_write_unlock(ptr noundef nonnull %call19)
  br label %out_mm

out_mm:                                           ; preds = %out_unlock, %mmap_write_lock_killable.exit.out_mm_crit_edge
  %count.addr.0 = phi i32 [ %2, %out_unlock ], [ -4, %mmap_write_lock_killable.exit.out_mm_crit_edge ]
  call void @mmput(ptr noundef nonnull %call19) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #11
  br label %if.end43

if.end43:                                         ; preds = %out_mm, %if.end18.if.end43_crit_edge
  %count.addr.1 = phi i32 [ %count.addr.0, %out_mm ], [ %2, %if.end18.if.end43_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call1.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !164
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i80, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !157

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %cleanup

if.then.i80:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @__put_task_struct(ptr noundef nonnull %call1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i80, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call6, %if.end3.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -3, %if.end13.cleanup_crit_edge ], [ %count.addr.1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %count.addr.1, %if.then10.i.i.i.i ], [ %count.addr.1, %if.then.i80 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %itype) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %buffer) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mem_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagemap_read(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %pm = alloca %struct.pagemapread, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pm) #11
  %2 = call ptr @memset(ptr %pm, i32 255, i32 16)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup60_crit_edge, label %lor.lhs.false

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

lor.lhs.false:                                    ; preds = %entry
  %mm_users.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 10
  %call.i.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #11, !srcloc !168
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %lor.lhs.false.cleanup60_crit_edge, label %if.end

lor.lhs.false.cleanup60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup60

if.end:                                           ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !169
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %6 = and i64 %5, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool1.not = icmp eq i64 %6, 0
  %rem3 = and i32 %count, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3)
  %tobool4.not = icmp eq i32 %rem3, 0
  %or.cond = and i1 %tobool4.not, %tobool1.not
  br i1 %or.cond, label %if.end6, label %if.end.out_mm_crit_edge

if.end.out_mm_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mm

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool7.not = icmp eq i32 %count, 0
  br i1 %tobool7.not, label %if.end6.out_mm_crit_edge, label %if.end9

if.end6.out_mm_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mm

if.end9:                                          ; preds = %if.end6
  %call10 = tail call zeroext i1 @file_ns_capable(ptr noundef %file, ptr noundef nonnull @init_user_ns, i32 noundef 21) #11
  %show_pfn = getelementptr inbounds %struct.pagemapread, ptr %pm, i32 0, i32 3
  %frombool = zext i1 %call10 to i8
  %7 = ptrtoint ptr %show_pfn to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %show_pfn, align 4
  %len = getelementptr inbounds %struct.pagemapread, ptr %pm, i32 0, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 512, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4096) #14
  %buffer = getelementptr inbounds %struct.pagemapread, ptr %pm, i32 0, i32 2
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %buffer, align 4
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end9.out_mm_crit_edge, label %if.end16

if.end9.out_mm_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_mm

if.end16:                                         ; preds = %if.end9
  %11 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %12 to i32
  %task_size = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %task_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %task_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %conv)
  %cmp = icmp ult i32 %conv, 8388608
  %15 = shl i32 %conv, 9
  %shl = and i32 %15, -4096
  %start_vaddr.0 = select i1 %cmp, i32 %shl, i32 %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %start_vaddr.0)
  %cmp26133 = icmp ugt i32 %14, %start_vaddr.0
  br i1 %cmp26133, label %while.body.lr.ph, label %if.end16.while.end.thread_crit_edge

if.end16.while.end.thread_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %if.end16
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %copied.0139 = phi i32 [ 0, %while.body.lr.ph ], [ %add49, %cleanup.while.body_crit_edge ]
  %start_vaddr.2138 = phi i32 [ %start_vaddr.0, %while.body.lr.ph ], [ %end.0, %cleanup.while.body_crit_edge ]
  %buf.addr.0136 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %count.addr.0135 = phi i32 [ %count, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %16 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pm, align 4
  %add = add i32 %start_vaddr.2138, 2097152
  %and = and i32 %add, -2097152
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %start_vaddr.2138)
  %cmp29 = icmp ult i32 %and, %start_vaddr.2138
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %14)
  %cmp32 = icmp ugt i32 %and, %14
  %or.cond108 = select i1 %cmp29, i1 true, i1 %cmp32
  %end.0 = select i1 %or.cond108, i32 %14, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@pagemap_read, %if.then.i.i110)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i110], !srcloc !161

if.then.i.i110:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %1, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i110, %while.body
  %call.i = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@pagemap_read, %if.then.i4.i)) #11
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !161

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #11
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.end39, label %mmap_read_lock_killable.exit.out_free_crit_edge

mmap_read_lock_killable.exit.out_free_crit_edge:  ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end39:                                         ; preds = %mmap_read_lock_killable.exit
  %call40 = call i32 @walk_page_range(ptr noundef nonnull %1, i32 noundef %start_vaddr.2138, i32 noundef %end.0, ptr noundef nonnull @pagemap_ops, ptr noundef nonnull %pm) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@pagemap_read, %if.then.i.i111)) #11
          to label %mmap_read_unlock.exit [label %if.then.i.i111], !srcloc !161

if.then.i.i111:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %1, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i111, %if.end39
  call void @up_read(ptr noundef %mmap_lock.i) #11
  %17 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pm, align 4
  %mul = shl i32 %18, 3
  %19 = call i32 @llvm.umin.i32(i32 %count.addr.0135, i32 %mul)
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.i.i = icmp slt i32 %19, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %mmap_read_unlock.exit
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_free_crit_edge, label %if.then27.i.i, !prof !157

land.rhs16.i.i.out_free_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %out_free

if.then.i.i.i:                                    ; preds = %mmap_read_unlock.exit
  call void @__check_object_size(ptr noundef %21, i32 noundef %19, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0136, i32 %19, i32 -1226833920) #15, !srcloc !170
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %21, i32 noundef %19) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0136, ptr noundef %21, i32 noundef %19) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %19, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %19, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool46.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool46.not, label %cleanup, label %copy_to_user.exit.out_free_crit_edge

copy_to_user.exit.out_free_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

cleanup:                                          ; preds = %copy_to_user.exit
  %add49 = add i32 %19, %copied.0139
  %add.ptr = getelementptr i8, ptr %buf.addr.0136, i32 %19
  %sub = sub i32 %count.addr.0135, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool25.not = icmp ne i32 %sub, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %14)
  %cmp26 = icmp ult i32 %end.0, %14
  %or.cond107 = select i1 %tobool25.not, i1 %cmp26, i1 false
  br i1 %or.cond107, label %cleanup.while.body_crit_edge, label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup
  %conv51 = sext i32 %add49 to i64
  %23 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ppos, align 8
  %add52 = add i64 %24, %conv51
  store i64 %add52, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call40)
  %switch = icmp ult i32 %call40, 2
  br i1 %switch, label %while.end.while.end.thread_crit_edge, label %while.end.out_free_crit_edge

while.end.out_free_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.end16.while.end.thread_crit_edge
  %copied.0.lcssa153 = phi i32 [ %add49, %while.end.while.end.thread_crit_edge ], [ 0, %if.end16.while.end.thread_crit_edge ]
  br label %out_free

out_free:                                         ; preds = %while.end.thread, %while.end.out_free_crit_edge, %copy_to_user.exit.out_free_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_free_crit_edge, %mmap_read_lock_killable.exit.out_free_crit_edge
  %ret.2 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_free_crit_edge ], [ %copied.0.lcssa153, %while.end.thread ], [ %call40, %while.end.out_free_crit_edge ], [ %call.i, %mmap_read_lock_killable.exit.out_free_crit_edge ], [ -14, %copy_to_user.exit.out_free_crit_edge ]
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  call void @kfree(ptr noundef %26) #11
  br label %out_mm

out_mm:                                           ; preds = %out_free, %if.end9.out_mm_crit_edge, %if.end6.out_mm_crit_edge, %if.end.out_mm_crit_edge
  %ret.3 = phi i32 [ -22, %if.end.out_mm_crit_edge ], [ %ret.2, %out_free ], [ -12, %if.end9.out_mm_crit_edge ], [ 0, %if.end6.out_mm_crit_edge ]
  call void @mmput(ptr noundef nonnull %1) #11
  br label %cleanup60

cleanup60:                                        ; preds = %out_mm, %lor.lhs.false.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_mm ], [ 0, %entry.cleanup60_crit_edge ], [ 0, %lor.lhs.false.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pm) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagemap_open(ptr noundef %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mem_open(ptr noundef %inode, i32 noundef 1) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagemap_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %mm_count.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !151
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #11, !srcloc !152
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then.if.end_crit_edge, !prof !154

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmdrop(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mem_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @m_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv)
  %cmp = icmp eq i32 %conv, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -40
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %7, i32 noundef 0) #11
  %task = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %task, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mm6 = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mm6, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end5.if.then9_crit_edge, label %lor.lhs.false

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end5
  %mm_users.i = getelementptr inbounds %struct.anon.9, ptr %10, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #11, !srcloc !168
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %lor.lhs.false.if.then9_crit_edge, label %if.end12

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i46 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i46, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !157

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @__put_task_struct(ptr noundef %13) #11
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %15 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %task, align 4
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@m_start, %if.then.i.i)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !161

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %10, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end12
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %10, i32 0, i32 15
  %call.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@m_start, %if.then.i4.i)) #11
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !161

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %10, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #11
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %mmap_read_lock_killable.exit
  tail call void @mmput(ptr noundef nonnull %10) #11
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 4
  %usage.i47 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 2
  %call.i.i.i.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i47, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage.i47, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i47, ptr %usage.i47, i32 1, ptr elementtype(i32) %usage.i47) #11, !srcloc !165
  %asmresult.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i50 = icmp eq i32 %asmresult.i.i.i.i.i.i.i49, 1
  br i1 %cmp.i.i.i.i50, label %if.then.i54, label %if.end5.i.i.i.i52

if.end5.i.i.i.i52:                                ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49)
  %.not.i.i.i.i51 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i51, label %if.end5.i.i.i.i52.put_task_struct.exit55_crit_edge, label %if.then10.i.i.i.i53, !prof !157

if.end5.i.i.i.i52.put_task_struct.exit55_crit_edge: ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_task_struct.exit55

if.then10.i.i.i.i53:                              ; preds = %if.end5.i.i.i.i52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i47, i32 noundef 3) #11
  br label %put_task_struct.exit55

if.then.i54:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @__put_task_struct(ptr noundef %17) #11
  br label %put_task_struct.exit55

put_task_struct.exit55:                           ; preds = %if.then.i54, %if.then10.i.i.i.i53, %if.end5.i.i.i.i52.put_task_struct.exit55_crit_edge
  %19 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %task, align 4
  br label %cleanup

if.end19:                                         ; preds = %mmap_read_lock_killable.exit
  %call20 = tail call ptr @get_gate_vma(ptr noundef nonnull %10) #11
  %tail_vma = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %tail_vma to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call20, ptr %tail_vma, align 4
  %call21 = tail call ptr @find_vma(ptr noundef nonnull %10, i32 noundef %conv) #11
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %tail_vma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail_vma, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %put_task_struct.exit55, %put_task_struct.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -4 to ptr), %put_task_struct.exit55 ], [ %22, %if.end24 ], [ null, %put_task_struct.exit ], [ null, %entry.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ inttoptr (i32 -3 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %task = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mm1 = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@m_stop, %if.then.i.i)) #11
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !161

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %5, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #11
  tail call void @mmput(ptr noundef %5) #11
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !164
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !157

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !166
  tail call void @__put_task_struct(ptr noundef %7) #11
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %9 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %task, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @m_next(ptr nocapture noundef readonly %m, ptr noundef readonly %v, ptr nocapture noundef writeonly %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tail_vma = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tail_vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail_vma, align 4
  %cmp = icmp eq ptr %3, %v
  br i1 %cmp, label %entry.cond.end_crit_edge, label %if.end5

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end5:                                          ; preds = %entry
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %5, null
  %. = select i1 %tobool.not, ptr %3, ptr %5
  %tobool6.not = icmp eq ptr %., null
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %. to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %., align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge, %entry.cond.end_crit_edge
  %next.015 = phi ptr [ %., %cond.true ], [ null, %if.end5.cond.end_crit_edge ], [ null, %entry.cond.end_crit_edge ]
  %cond = phi i32 [ %7, %cond.true ], [ -1, %if.end5.cond.end_crit_edge ], [ -1, %entry.cond.end_crit_edge ]
  %conv = zext i32 %cond to i64
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %ppos, align 8
  ret ptr %next.015
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_map(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @show_map_vma(ptr noundef %m, ptr noundef %v)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_map_vma(ptr noundef %m, ptr noundef %vma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %14 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_pgoff, align 4
  %conv = zext i32 %15 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %16 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %18 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end, align 4
  tail call fastcc void @show_vma_header_prefix(ptr noundef %m, i32 noundef %17, i32 noundef %19, i32 noundef %5, i64 noundef %shl, i32 noundef %11, i32 noundef %13)
  tail call void @seq_pad(ptr noundef %m, i8 noundef zeroext 32) #11
  %call4 = tail call i32 @seq_file_path(ptr noundef %m, ptr noundef nonnull %3, ptr noundef nonnull @.str.16) #11
  br label %if.end44

if.end5:                                          ; preds = %entry
  %20 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vma, align 4
  %vm_end82 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %22 = ptrtoint ptr %vm_end82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_end82, align 4
  tail call fastcc void @show_vma_header_prefix(ptr noundef %m, i32 noundef %21, i32 noundef %23, i32 noundef %5, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %24 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vm_ops, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end5.if.end17_crit_edge, label %land.lhs.true

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end5
  %name8 = getelementptr inbounds %struct.vm_operations_struct, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name8, align 4
  %tobool9.not = icmp eq ptr %27, null
  br i1 %tobool9.not, label %land.lhs.true.if.end17_crit_edge, label %if.then10

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10:                                        ; preds = %land.lhs.true
  %call13 = tail call ptr %27(ptr noundef %vma) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then10.if.end17_crit_edge, label %if.then10.if.then43_crit_edge

if.then10.if.then43_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %call18 = tail call ptr @arch_vma_name(ptr noundef %vma) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end17.if.then43_crit_edge

if.end17.if.then43_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then20:                                        ; preds = %if.end17
  %tobool21.not = icmp eq ptr %1, null
  br i1 %tobool21.not, label %if.then20.if.then43_crit_edge, label %if.end23

if.then20.if.then43_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.end23:                                         ; preds = %if.then20
  %28 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vma, align 4
  %brk = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 33
  %30 = ptrtoint ptr %brk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %brk, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not = icmp ugt i32 %29, %31
  br i1 %cmp.not, label %if.end23.if.end31_crit_edge, label %land.lhs.true26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

land.lhs.true26:                                  ; preds = %if.end23
  %32 = ptrtoint ptr %vm_end82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_end82, align 4
  %start_brk = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 32
  %34 = ptrtoint ptr %start_brk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %start_brk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp28.not = icmp ult i32 %33, %35
  br i1 %cmp28.not, label %land.lhs.true26.if.end31_crit_edge, label %land.lhs.true26.if.then43_crit_edge

land.lhs.true26.if.then43_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

land.lhs.true26.if.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true26.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %36 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vm_mm, align 4
  %start_stack.i = getelementptr inbounds %struct.anon.9, ptr %37, i32 0, i32 34
  %38 = ptrtoint ptr %start_stack.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %start_stack.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %39)
  %cmp.not.i = icmp ugt i32 %29, %39
  br i1 %cmp.not.i, label %if.end31.if.end35_crit_edge, label %is_stack.exit

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

is_stack.exit:                                    ; preds = %if.end31
  %40 = ptrtoint ptr %vm_end82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_end82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp3.i.not = icmp ult i32 %41, %39
  br i1 %cmp3.i.not, label %is_stack.exit.if.end35_crit_edge, label %is_stack.exit.if.then43_crit_edge

is_stack.exit.if.then43_crit_edge:                ; preds = %is_stack.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

is_stack.exit.if.end35_crit_edge:                 ; preds = %is_stack.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end35:                                         ; preds = %is_stack.exit.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %call36 = tail call ptr @anon_vma_name(ptr noundef %vma) #11
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.if.end44_crit_edge, label %if.then38

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_pad(ptr noundef %m, i8 noundef zeroext 32) #11
  %name39 = getelementptr inbounds %struct.anon_vma_name, ptr %call36, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, ptr noundef %name39) #11
  br label %if.end44

if.then43:                                        ; preds = %is_stack.exit.if.then43_crit_edge, %land.lhs.true26.if.then43_crit_edge, %if.then20.if.then43_crit_edge, %if.end17.if.then43_crit_edge, %if.then10.if.then43_crit_edge
  %name.1.ph = phi ptr [ @.str.19, %is_stack.exit.if.then43_crit_edge ], [ @.str.18, %land.lhs.true26.if.then43_crit_edge ], [ @.str.17, %if.then20.if.then43_crit_edge ], [ %call18, %if.end17.if.then43_crit_edge ], [ %call13, %if.then10.if.then43_crit_edge ]
  tail call void @seq_pad(ptr noundef %m, i8 noundef zeroext 32) #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %name.1.ph) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then38, %if.end35.if.end44_crit_edge, %if.then3
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_vma_header_prefix(ptr noundef %m, i32 noundef %start, i32 noundef %end, i32 noundef %flags, i64 noundef %pgoff, i32 noundef %dev, i32 noundef %ino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 4
  %add.i = add i32 %1, 48
  %pad_until.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 4
  %2 = ptrtoint ptr %pad_until.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add.i, ptr %pad_until.i, align 8
  %conv = zext i32 %start to i64
  tail call void @seq_put_hex_ll(ptr noundef %m, ptr noundef null, i64 noundef %conv, i32 noundef 8) #11
  %conv1 = zext i32 %end to i64
  tail call void @seq_put_hex_ll(ptr noundef %m, ptr noundef nonnull @.str.21, i64 noundef %conv1, i32 noundef 8) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #11
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv2 = select i1 %tobool.not, i8 45, i8 114
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %conv2) #11
  %and3 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %conv6 = select i1 %tobool4.not, i8 45, i8 119
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %conv6) #11
  %and7 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %conv10 = select i1 %tobool8.not, i8 45, i8 120
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %conv10) #11
  %and11 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %conv14 = select i1 %tobool12.not, i8 112, i8 115
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %conv14) #11
  tail call void @seq_put_hex_ll(ptr noundef %m, ptr noundef nonnull @.str.22, i64 noundef %pgoff, i32 noundef 8) #11
  %shr = lshr i32 %dev, 20
  %conv15 = zext i32 %shr to i64
  tail call void @seq_put_hex_ll(ptr noundef %m, ptr noundef nonnull @.str.22, i64 noundef %conv15, i32 noundef 2) #11
  %and16 = and i32 %dev, 1048575
  %conv17 = zext i32 %and16 to i64
  tail call void @seq_put_hex_ll(ptr noundef %m, ptr noundef nonnull @.str.23, i64 noundef %conv17, i32 noundef 2) #11
  %conv18 = zext i32 %ino to i64
  tail call void @seq_put_decimal_ull(ptr noundef %m, ptr noundef nonnull @.str.22, i64 noundef %conv18) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_file_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arch_vma_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_hex_ll(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_smap(ptr noundef %m, ptr noundef %v) #0 align 64 {
entry:
  %mss = alloca %struct.mem_size_stats, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mss) #11
  %0 = call ptr @memset(ptr %mss, i32 0, i32 104)
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %v, i32 0, i32 1
  %1 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not.i.not = icmp eq i32 %2, 0
  br i1 %cmp.not.i.not, label %entry.smap_gather_stats.exit_crit_edge, label %if.end.i

entry.smap_gather_stats.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %smap_gather_stats.exit

if.end.i:                                         ; preds = %entry
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %v, i32 0, i32 14
  %3 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.if.then16.i_crit_edge, label %land.lhs.true.i

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_mapping.i, align 4
  %a_ops.i.i = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %a_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %a_ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %8, @shmem_aops
  br i1 %cmp.i.i, label %if.then2.i, label %land.lhs.true.i.if.then16.i_crit_edge

land.lhs.true.i.if.then16.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @shmem_swap_usage(ptr noundef %v) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool6.not.i, label %if.then2.i.if.then12.i_crit_edge, label %lor.lhs.false.i

if.then2.i.if.then12.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.then2.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %v, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags.i, align 4
  %11 = and i32 %10, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %.not.i = icmp eq i32 %11, 2
  br i1 %.not.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false.i.if.then12.i_crit_edge

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %if.then2.i.if.then12.i_crit_edge
  %swap.i = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 11
  %12 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swap.i, align 4
  %add.i = add i32 %13, %call3.i
  store i32 %add.i, ptr %swap.i, align 4
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.then12.i, %lor.lhs.false.i.if.then16.i_crit_edge, %land.lhs.true.i.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge
  %ops.139.i = phi ptr [ @smaps_shmem_walk_ops, %lor.lhs.false.i.if.then16.i_crit_edge ], [ @smaps_walk_ops, %if.then12.i ], [ @smaps_walk_ops, %land.lhs.true.i.if.then16.i_crit_edge ], [ @smaps_walk_ops, %if.end.i.if.then16.i_crit_edge ]
  %call17.i = call i32 @walk_page_vma(ptr noundef %v, ptr noundef nonnull %ops.139.i, ptr noundef nonnull %mss) #11
  br label %smap_gather_stats.exit

smap_gather_stats.exit:                           ; preds = %if.then16.i, %entry.smap_gather_stats.exit_crit_edge
  call fastcc void @show_map_vma(ptr noundef %m, ptr noundef %v)
  %14 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_end.i, align 4
  %16 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v, align 4
  %sub = sub i32 %15, %17
  %shr = lshr i32 %sub, 10
  %conv = zext i32 %shr to i64
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.24, i64 noundef %conv, i32 noundef 8) #11
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.25, i64 noundef 4, i32 noundef 8) #11
  call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.26, i64 noundef 4, i32 noundef 8) #11
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.15) #11
  call fastcc void @__show_smap(ptr noundef %m, ptr noundef nonnull %mss, i1 noundef zeroext false)
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 0) #11
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #11
  %vm_flags.i26 = getelementptr inbounds %struct.vm_area_struct, ptr %v, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %smap_gather_stats.exit
  %i.018.i = phi i32 [ 0, %smap_gather_stats.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x [2 x i8]], ptr @show_smap_vma_flags.mnemonics, i32 0, i32 %i.018.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i27 = icmp eq i8 %19, 0
  br i1 %tobool.not.i27, label %for.body.i.for.inc.i_crit_edge, label %if.end.i28

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i28:                                       ; preds = %for.body.i
  %20 = ptrtoint ptr %vm_flags.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_flags.i26, align 4
  %shl.i = shl nuw i32 1, %i.018.i
  %and.i = and i32 %21, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i28.for.inc.i_crit_edge, label %if.then3.i

if.end.i28.for.inc.i_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then3.i:                                       ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #13
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext %19) #11
  %arrayidx7.i = getelementptr [32 x [2 x i8]], ptr @show_smap_vma_flags.mnemonics, i32 0, i32 %i.018.i, i32 1
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.i, align 1
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext %23) #11
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %if.end.i28.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %show_smap_vma_flags.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

show_smap_vma_flags.exit:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #11
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mss) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__show_smap(ptr noundef %m, ptr nocapture noundef readonly %mss, i1 noundef zeroext %rollup_mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mss, align 8
  %shr = lshr i32 %1, 10
  %conv = zext i32 %shr to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.32, i64 noundef %conv, i32 noundef 8) #11
  %pss = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 14
  %2 = ptrtoint ptr %pss to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pss, align 8
  %shr1 = lshr i64 %3, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.33, i64 noundef %shr1, i32 noundef 8) #11
  br i1 %rollup_mode, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pss_anon = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 15
  %4 = ptrtoint ptr %pss_anon to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pss_anon, align 8
  %shr3 = lshr i64 %5, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.34, i64 noundef %shr3, i32 noundef 8) #11
  %pss_file = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 16
  %6 = ptrtoint ptr %pss_file to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pss_file, align 8
  %shr5 = lshr i64 %7, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.35, i64 noundef %shr5, i32 noundef 8) #11
  %pss_shmem = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 17
  %8 = ptrtoint ptr %pss_shmem to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pss_shmem, align 8
  %shr7 = lshr i64 %9, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.36, i64 noundef %shr7, i32 noundef 8) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shared_clean = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 1
  %10 = ptrtoint ptr %shared_clean to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shared_clean, align 4
  %shr9 = lshr i32 %11, 10
  %conv10 = zext i32 %shr9 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.37, i64 noundef %conv10, i32 noundef 8) #11
  %shared_dirty = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 2
  %12 = ptrtoint ptr %shared_dirty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shared_dirty, align 8
  %shr11 = lshr i32 %13, 10
  %conv12 = zext i32 %shr11 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.38, i64 noundef %conv12, i32 noundef 8) #11
  %private_clean = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 3
  %14 = ptrtoint ptr %private_clean to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %private_clean, align 4
  %shr13 = lshr i32 %15, 10
  %conv14 = zext i32 %shr13 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.39, i64 noundef %conv14, i32 noundef 8) #11
  %private_dirty = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 4
  %16 = ptrtoint ptr %private_dirty to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private_dirty, align 8
  %shr15 = lshr i32 %17, 10
  %conv16 = zext i32 %shr15 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.40, i64 noundef %conv16, i32 noundef 8) #11
  %referenced = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 5
  %18 = ptrtoint ptr %referenced to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %referenced, align 4
  %shr17 = lshr i32 %19, 10
  %conv18 = zext i32 %shr17 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.41, i64 noundef %conv18, i32 noundef 8) #11
  %anonymous = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 6
  %20 = ptrtoint ptr %anonymous to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %anonymous, align 8
  %shr19 = lshr i32 %21, 10
  %conv20 = zext i32 %shr19 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.42, i64 noundef %conv20, i32 noundef 8) #11
  %lazyfree = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 7
  %22 = ptrtoint ptr %lazyfree to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lazyfree, align 4
  %shr21 = lshr i32 %23, 10
  %conv22 = zext i32 %shr21 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.43, i64 noundef %conv22, i32 noundef 8) #11
  %anonymous_thp = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 8
  %24 = ptrtoint ptr %anonymous_thp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %anonymous_thp, align 8
  %shr23 = lshr i32 %25, 10
  %conv24 = zext i32 %shr23 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.44, i64 noundef %conv24, i32 noundef 8) #11
  %shmem_thp = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 9
  %26 = ptrtoint ptr %shmem_thp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %shmem_thp, align 4
  %shr25 = lshr i32 %27, 10
  %conv26 = zext i32 %shr25 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.45, i64 noundef %conv26, i32 noundef 8) #11
  %file_thp = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 10
  %28 = ptrtoint ptr %file_thp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %file_thp, align 8
  %shr27 = lshr i32 %29, 10
  %conv28 = zext i32 %shr27 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.46, i64 noundef %conv28, i32 noundef 8) #11
  %shared_hugetlb = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 12
  %30 = ptrtoint ptr %shared_hugetlb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shared_hugetlb, align 8
  %shr29 = lshr i32 %31, 10
  %conv30 = zext i32 %shr29 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.47, i64 noundef %conv30, i32 noundef 8) #11
  %private_hugetlb = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 13
  %32 = ptrtoint ptr %private_hugetlb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %private_hugetlb, align 4
  %shr31 = lshr i32 %33, 10
  %conv32 = zext i32 %shr31 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.48, i64 noundef %conv32, i32 noundef 7) #11
  %swap = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 11
  %34 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %swap, align 4
  %shr33 = lshr i32 %35, 10
  %conv34 = zext i32 %shr33 to i64
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.49, i64 noundef %conv34, i32 noundef 8) #11
  %swap_pss = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 19
  %36 = ptrtoint ptr %swap_pss to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %swap_pss, align 8
  %shr35 = lshr i64 %37, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.50, i64 noundef %shr35, i32 noundef 8) #11
  %pss_locked = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 18
  %38 = ptrtoint ptr %pss_locked to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pss_locked, align 8
  %shr37 = lshr i64 %39, 22
  tail call void @seq_put_decimal_ull_width(ptr noundef %m, ptr noundef nonnull @.str.51, i64 noundef %shr37, i32 noundef 8) #11
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.15) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_swap_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_vma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smaps_pte_range(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
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
  %7 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !171
  %11 = tail call i32 @llvm.read_register.i32(metadata !141) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #11
  %shr.i35 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i35, 511
  %add.ptr9 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 %end)
  %cmp.not73 = icmp eq i32 %addr, %end
  br i1 %cmp.not73, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %private.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %vma1.i = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %smaps_pte_entry.exit.for.body_crit_edge, %for.body.lr.ph
  %addr.addr.076 = phi i32 [ %addr, %for.body.lr.ph ], [ %add, %smaps_pte_entry.exit.for.body_crit_edge ]
  %pte.074 = phi ptr [ %add.ptr9, %for.body.lr.ph ], [ %incdec.ptr, %smaps_pte_entry.exit.for.body_crit_edge ]
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i, align 4
  %19 = ptrtoint ptr %vma1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vma1.i, align 4
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_flags.i, align 4
  %and.i36 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.i = icmp ne i32 %and.i36, 0
  %23 = ptrtoint ptr %pte.074 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pte.074, align 4
  %and3.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @vm_normal_page(ptr noundef %20, i32 noundef %addr.addr.076, i32 noundef %24) #11
  br label %if.end229.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.else227.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i
  %shr3.i.i = lshr i32 %24, 7
  %25 = shl i32 %24, 24
  %shl.i.i.i = and i32 %25, 2080374784
  %or.i.i.i = or i32 %shl.i.i.i, %shr3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265920, i32 %or.i.i.i)
  %cmp.i.i = icmp ult i32 %or.i.i.i, 2013265920
  br i1 %cmp.i.i, label %if.then16.i, label %if.else214.i

if.then16.i:                                      ; preds = %if.then11.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %or.i.i.i, 0
  %swap.i = getelementptr inbounds %struct.mem_size_stats, ptr %18, i32 0, i32 11
  %26 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %swap.i, align 4
  %add.i = add i32 %27, 4096
  store i32 %add.i, ptr %swap.i, align 4
  %call18.i = tail call i32 @swp_swapcount([1 x i32] %.fca.0.insert.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i)
  %cmp.i = icmp sgt i32 %call18.i, 1
  br i1 %cmp.i, label %if.end207.i, label %if.else210.i

if.end207.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %div201.i = udiv i32 16777216, %call18.i
  %conv202.i = zext i32 %div201.i to i64
  %swap_pss.i = getelementptr inbounds %struct.mem_size_stats, ptr %18, i32 0, i32 19
  %28 = ptrtoint ptr %swap_pss.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %swap_pss.i, align 8
  %add209.i = add i64 %29, %conv202.i
  store i64 %add209.i, ptr %swap_pss.i, align 8
  br label %smaps_pte_entry.exit

if.else210.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %swap_pss211.i = getelementptr inbounds %struct.mem_size_stats, ptr %18, i32 0, i32 19
  %30 = ptrtoint ptr %swap_pss211.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %swap_pss211.i, align 8
  %add212.i = add i64 %31, 16777216
  store i64 %add212.i, ptr %swap_pss211.i, align 8
  br label %smaps_pte_entry.exit

if.else214.i:                                     ; preds = %if.then11.i
  %32 = and i32 %24, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %32)
  %.not.i.i = icmp eq i32 %32, 120
  br i1 %.not.i.i, label %land.rhs.i.i, label %if.else214.i.smaps_pte_entry.exit_crit_edge

if.else214.i.smaps_pte_entry.exit_crit_edge:      ; preds = %if.else214.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smaps_pte_entry.exit

land.rhs.i.i:                                     ; preds = %if.else214.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %34 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i355.i = sub i32 %shr3.i.i, %34
  %add.ptr.i.i = getelementptr %struct.page, ptr %33, i32 %sub.i355.i
  %35 = getelementptr %struct.page, ptr %33, i32 %sub.i355.i, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !157

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = add i32 %37, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %38, %if.end.i.i.i.i ]
  %39 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i.i.i = icmp eq i32 %41, -1
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %35, align 4
  %and.i16.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %do.end10.i.i.i, !prof !154

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i20.i.i.i, label %if.then.i19.i.i.i, !prof !157

if.then.i19.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i.i.i = add i32 %43, -1
  br label %_compound_head.exit22.i.i.i

if.end.i20.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.end.i20.i.i.i, %if.then.i19.i.i.i
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %44, %if.end.i20.i.i.i ]
  %45 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #11, !srcloc !173
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i27.i.i.i, label %if.then.i26.i.i.i, !prof !157

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i.i.i = add i32 %43, -1
  br label %PageLocked.exit.i.i

if.end.i27.i.i.i:                                 ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  br label %PageLocked.exit.i.i

PageLocked.exit.i.i:                              ; preds = %if.end.i27.i.i.i, %if.then.i26.i.i.i
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %46, %if.end.i27.i.i.i ]
  %47 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and1.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body11.i.i, label %PageLocked.exit.i.i.if.end229.i_crit_edge, !prof !154

PageLocked.exit.i.i.if.end229.i_crit_edge:        ; preds = %PageLocked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229.i

do.body11.i.i:                                    ; preds = %PageLocked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/swapops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #11, !srcloc !174
  unreachable

if.else227.i:                                     ; preds = %if.else.i
  %50 = ptrtoint ptr %walk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %walk, align 4
  %pte_hole.i.i = getelementptr inbounds %struct.mm_walk_ops, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %pte_hole.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pte_hole.i.i, align 4
  %tobool.not.i357.i = icmp eq ptr %53, null
  br i1 %tobool.not.i357.i, label %if.else227.i.smaps_pte_entry.exit_crit_edge, label %if.then.i.i

if.else227.i.smaps_pte_entry.exit_crit_edge:      ; preds = %if.else227.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smaps_pte_entry.exit

if.then.i.i:                                      ; preds = %if.else227.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add i32 %addr.addr.076, 4096
  %vm_file.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 14
  %54 = ptrtoint ptr %vm_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vm_file.i.i.i, align 4
  %f_mapping.i.i.i = getelementptr inbounds %struct.file, ptr %55, i32 0, i32 18
  %56 = ptrtoint ptr %f_mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f_mapping.i.i.i, align 4
  %58 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %20, align 4
  %sub.i.i.i358.i = sub i32 %addr.addr.076, %59
  %shr.i.i.i.i = lshr i32 %sub.i.i.i358.i, 12
  %vm_pgoff.i.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 13
  %60 = ptrtoint ptr %vm_pgoff.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vm_pgoff.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %shr.i.i.i.i, %61
  %sub.i8.i.i.i = sub i32 %add.i.i, %59
  %shr.i9.i.i.i = lshr i32 %sub.i8.i.i.i, 12
  %add.i11.i.i.i = add i32 %shr.i9.i.i.i, %61
  %call4.i.i.i = tail call i32 @shmem_partial_swap_usage(ptr noundef %57, i32 noundef %add.i.i.i.i, i32 noundef %add.i11.i.i.i) #11
  %swap.i.i.i = getelementptr inbounds %struct.mem_size_stats, ptr %18, i32 0, i32 11
  %62 = ptrtoint ptr %swap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %swap.i.i.i, align 4
  %add.i.i.i38 = add i32 %63, %call4.i.i.i
  store i32 %add.i.i.i38, ptr %swap.i.i.i, align 4
  br label %smaps_pte_entry.exit

if.end229.i:                                      ; preds = %PageLocked.exit.i.i.if.end229.i_crit_edge, %if.then.i
  %page.1.i = phi ptr [ %call.i, %if.then.i ], [ %add.ptr.i.i, %PageLocked.exit.i.i.if.end229.i_crit_edge ]
  %tobool230.not.i = icmp eq ptr %page.1.i, null
  br i1 %tobool230.not.i, label %if.end229.i.smaps_pte_entry.exit_crit_edge, label %if.end232.i

if.end229.i.smaps_pte_entry.exit_crit_edge:       ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %smaps_pte_entry.exit

if.end232.i:                                      ; preds = %if.end229.i
  %64 = ptrtoint ptr %pte.074 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pte.074, align 4
  %and233.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233.i)
  %tobool234.not.i = icmp eq i32 %and233.i, 0
  %and235.i = and i32 %65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235.i)
  %tobool236.i = icmp ne i32 %and235.i, 0
  %66 = getelementptr inbounds %struct.page, ptr %page.1.i, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i2.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i)
  %tobool.not.i.i.i359.i = icmp eq i32 %and.i2.i.i.i, 0
  br i1 %tobool.not.i.i.i359.i, label %if.end.i.i.i362.i, label %if.then.i.i.i361.i, !prof !157

if.then.i.i.i361.i:                               ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i360.i = add i32 %68, -1
  br label %PageAnon.exit.i.i

if.end.i.i.i362.i:                                ; preds = %if.end232.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %page.1.i to i32
  br label %PageAnon.exit.i.i

PageAnon.exit.i.i:                                ; preds = %if.end.i.i.i362.i, %if.then.i.i.i361.i
  %retval.0.i.i.i363.i = phi i32 [ %sub.i.i.i360.i, %if.then.i.i.i361.i ], [ %69, %if.end.i.i.i362.i ]
  %70 = inttoptr i32 %retval.0.i.i.i363.i to ptr
  %mapping.i.i.i.i = getelementptr inbounds %struct.anon.85, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %mapping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mapping.i.i.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  %and.i.i.i364.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i364.i)
  %cmp.i.i.not.i.i = icmp eq i32 %and.i.i.i364.i, 0
  br i1 %cmp.i.i.not.i.i, label %PageAnon.exit.i.i.if.end14.i.i_crit_edge, label %if.then.i366.i

PageAnon.exit.i.i.if.end14.i.i_crit_edge:         ; preds = %PageAnon.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

if.then.i366.i:                                   ; preds = %PageAnon.exit.i.i
  %anonymous.i.i = getelementptr inbounds %struct.mem_size_stats, ptr %18, i32 0, i32 6
  %74 = ptrtoint ptr %anonymous.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %anonymous.i.i, align 8
  %add.i365.i = add i32 %75, 4096
  store i32 %add.i365.i, ptr %anonymous.i.i, align 8
  %76 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %66, align 4
  %and.i.i2.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2.i.i)
  %tobool.not.i.i3.i.i = icmp eq i32 %and.i.i2.i.i, 0
  br i1 %tobool.not.i.i3.i.i, label %if.end.i.i6.i.i, label %if.then.i.i5.i.i, !prof !157

if.then.i.i5.i.i:                                 ; preds = %if.then.i366.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i4.i.i = add i32 %77, -1
  br label %_compound_head.exit.i.i370.i

if.end.i.i6.i.i:                                  ; preds = %if.then.i366.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %page.1.i to i32
  br label %_compound_head.exit.i.i370.i

_compound_head.exit.i.i370.i:                     ; preds = %if.end.i.i6.i.i, %if.then.i.i5.i.i
  %retval.0.i.i7.i.i = phi i32 [ %sub.i.i4.i.i, %if.then.i.i5.i.i ], [ %78, %if.end.i.i6.i.i ]
  %79 = inttoptr i32 %retval.0.i.i7.i.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp.i.not.i.i367.i = icmp eq i32 %81, -1
  %82 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %66, align 4
  %and.i16.i.i368.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i368.i)
  %tobool.not.i17.i.i369.i = icmp eq i32 %and.i16.i.i368.i, 0
  br i1 %cmp.i.not.i.i367.i, label %if.then.i.i371.i, label %do.end10.i.i377.i, !prof !154

if.then.i.i371.i:                                 ; preds = %_compound_head.exit.i.i370.i
  br i1 %tobool.not.i17.i.i369.i, label %if.end.i20.i.i374.i, label %if.then.i19.i.i373.i, !prof !157

if.then.i19.i.i373.i:                             ; preds = %if.then.i.i371.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i.i372.i = add i32 %83, -1
  br label %_compound_head.exit22.i.i376.i

if.end.i20.i.i374.i:                              ; preds = %if.then.i.i371.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %page.1.i to i32
  br label %_compound_head.exit22.i.i376.i

_compound_head.exit22.i.i376.i:                   ; preds = %if.end.i20.i.i374.i, %if.then.i19.i.i373.i
  %retval.0.i21.i.i375.i = phi i32 [ %sub.i18.i.i372.i, %if.then.i19.i.i373.i ], [ %84, %if.end.i20.i.i374.i ]
  %85 = inttoptr i32 %retval.0.i21.i.i375.i to ptr
  tail call void @dump_page(ptr noundef %85, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end10.i.i377.i:                                ; preds = %_compound_head.exit.i.i370.i
  br i1 %tobool.not.i17.i.i369.i, label %if.end.i27.i.i380.i, label %if.then.i26.i.i379.i, !prof !157

if.then.i26.i.i379.i:                             ; preds = %do.end10.i.i377.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i.i378.i = add i32 %83, -1
  br label %PageSwapBacked.exit.i.i

if.end.i27.i.i380.i:                              ; preds = %do.end10.i.i377.i
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %page.1.i to i32
  br label %PageSwapBacked.exit.i.i

PageSwapBacked.exit.i.i:                          ; preds = %if.end.i27.i.i380.i, %if.then.i26.i.i379.i
  %retval.0.i28.i.i381.i = phi i32 [ %sub.i25.i.i378.i, %if.then.i26.i.i379.i ], [ %86, %if.end.i27.i.i380.i ]
  %87 = inttoptr i32 %retval.0.i28.i.i381.i to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %90 = and i32 %89, 524288
  %91 = or i32 %90, %and235.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %.not.i = icmp eq i32 %91, 0
  br i1 %.not.i, label %land.lhs.true9.i.i, label %PageSwapBacked.exit.i.i.if.end14.i.i_crit_edge

PageSwapBacked.exit.i.i.if.end14.i.i_crit_edge:   ; preds = %PageSwapBacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

land.lhs.true9.i.i:                               ; preds = %PageSwapBacked.exit.i.i
  %92 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %66, align 4
  %and.i.i8.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i8.i.i)
  %tobool.not.i.i9.i.i = icmp eq i32 %and.i.i8.i.i, 0
  br i1 %tobool.not.i.i9.i.i, label %if.end.i.i12.i.i, label %if.then.i.i11.i.i, !prof !157

if.then.i.i11.i.i:                                ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i10.i.i = add i32 %93, -1
  br label %_compound_head.exit.i15.i.i

if.end.i.i12.i.i:                                 ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %page.1.i to i32
  br label %_compound_head.exit.i15.i.i

_compound_head.exit.i15.i.i:                      ; preds = %if.end.i.i12.i.i, %if.then.i.i11.i.i
  %retval.0.i.i13.i.i = phi i32 [ %sub.i.i10.i.i, %if.then.i.i11.i.i ], [ %94, %if.end.i.i12.i.i ]
  %95 = inttoptr i32 %retval.0.i.i13.i.i to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp.i.not.i14.i.i = icmp eq i32 %97, -1
  %98 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %66, align 4
  %and.i13.i.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %cmp.i.not.i14.i.i, label %if.then.i16.i.i, label %do.end8.i.i.i, !prof !154

if.then.i16.i.i:                                  ; preds = %_compound_head.exit.i15.i.i
  br i1 %tobool.not.i14.i.i.i, label %if.end.i17.i.i.i, label %if.then.i16.i.i.i, !prof !157

if.then.i16.i.i.i:                                ; preds = %if.then.i16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i.i.i = add i32 %99, -1
  br label %_compound_head.exit19.i.i.i

if.end.i17.i.i.i:                                 ; preds = %if.then.i16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %page.1.i to i32
  br label %_compound_head.exit19.i.i.i

_compound_head.exit19.i.i.i:                      ; preds = %if.end.i17.i.i.i, %if.then.i16.i.i.i
  %retval.0.i18.i.i.i = phi i32 [ %sub.i15.i.i.i, %if.then.i16.i.i.i ], [ %100, %if.end.i17.i.i.i ]
  %101 = inttoptr i32 %retval.0.i18.i.i.i to ptr
  tail call void @dump_page(ptr noundef %101, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

do.end8.i.i.i:                                    ; preds = %_compound_head.exit.i15.i.i
  br i1 %tobool.not.i14.i.i.i, label %if.end.i24.i.i.i, label %if.then.i23.i.i.i, !prof !157

if.then.i23.i.i.i:                                ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i.i.i = add i32 %99, -1
  br label %PageDirty.exit.i.i

if.end.i24.i.i.i:                                 ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %page.1.i to i32
  br label %PageDirty.exit.i.i

PageDirty.exit.i.i:                               ; preds = %if.end.i24.i.i.i, %if.then.i23.i.i.i
  %retval.0.i25.i.i.i = phi i32 [ %sub.i22.i.i.i, %if.then.i23.i.i.i ], [ %102, %if.end.i24.i.i.i ]
  %103 = inttoptr i32 %retval.0.i25.i.i.i to ptr
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %103, align 4
  %106 = and i32 %105, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool11.not.i.i = icmp eq i32 %106, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %PageDirty.exit.i.i.if.end14.i.i_crit_edge

PageDirty.exit.i.i.if.end14.i.i_crit_edge:        ; preds = %PageDirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %PageDirty.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %lazyfree.i.i = getelementptr inbounds %struct.mem_size_stats, ptr %18, i32 0, i32 7
  %107 = ptrtoint ptr %lazyfree.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %lazyfree.i.i, align 4
  %add13.i.i = add i32 %108, 4096
  store i32 %add13.i.i, ptr %lazyfree.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %PageDirty.exit.i.i.if.end14.i.i_crit_edge, %PageSwapBacked.exit.i.i.if.end14.i.i_crit_edge, %PageAnon.exit.i.i.if.end14.i.i_crit_edge
  %109 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %18, align 8
  %add15.i.i = add i32 %110, 4096
  store i32 %add15.i.i, ptr %18, align 8
  br i1 %tobool234.not.i, label %lor.lhs.false.i.i, label %if.end14.i.i.if.then21.i.i_crit_edge

if.end14.i.i.if.then21.i.i_crit_edge:             ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i.i

lor.lhs.false.i.i:                                ; preds = %if.end14.i.i
  %111 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %66, align 4
  %and.i.i42.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42.i.i)
  %tobool.not.i.i43.i.i = icmp eq i32 %and.i.i42.i.i, 0
  br i1 %tobool.not.i.i43.i.i, label %if.end.i.i46.i.i, label %if.then.i.i45.i.i, !prof !157

if.then.i.i45.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i44.i.i = add i32 %112, -1
  br label %_compound_head.exit.i48.i.i

if.end.i.i46.i.i:                                 ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %page.1.i to i32
  br label %_compound_head.exit.i48.i.i

_compound_head.exit.i48.i.i:                      ; preds = %if.end.i.i46.i.i, %if.then.i.i45.i.i
  %retval.0.i.i47.i.i = phi i32 [ %sub.i.i44.i.i, %if.then.i.i45.i.i ], [ %113, %if.end.i.i46.i.i ]
  %114 = inttoptr i32 %retval.0.i.i47.i.i to ptr
  %call.i.i.i.i = tail call ptr @lookup_page_ext(ptr noundef %114) #11
  %tobool.not.i2.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i2.i.i.i, label %_compound_head.exit.i48.i.i.lor.lhs.false18.i.i_crit_edge, label %page_is_young.exit.i.i, !prof !154

_compound_head.exit.i48.i.i.lor.lhs.false18.i.i_crit_edge: ; preds = %_compound_head.exit.i48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false18.i.i

page_is_young.exit.i.i:                           ; preds = %_compound_head.exit.i48.i.i
  %115 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %call.i.i.i.i, align 4
  %117 = and i32 %116, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool5.i.i.not.i.i = icmp eq i32 %117, 0
  br i1 %tobool5.i.i.not.i.i, label %page_is_young.exit.i.i.lor.lhs.false18.i.i_crit_edge, label %page_is_young.exit.i.i.if.then21.i.i_crit_edge

page_is_young.exit.i.i.if.then21.i.i_crit_edge:   ; preds = %page_is_young.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i.i

page_is_young.exit.i.i.lor.lhs.false18.i.i_crit_edge: ; preds = %page_is_young.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false18.i.i

lor.lhs.false18.i.i:                              ; preds = %page_is_young.exit.i.i.lor.lhs.false18.i.i_crit_edge, %_compound_head.exit.i48.i.i.lor.lhs.false18.i.i_crit_edge
  %118 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %66, align 4
  %and.i.i19.i.i = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i.i)
  %tobool.not.i.i20.i.i = icmp eq i32 %and.i.i19.i.i, 0
  br i1 %tobool.not.i.i20.i.i, label %if.end.i.i23.i.i, label %if.then.i.i22.i.i, !prof !157

if.then.i.i22.i.i:                                ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i21.i.i = add i32 %119, -1
  br label %_compound_head.exit.i28.i.i

if.end.i.i23.i.i:                                 ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %page.1.i to i32
  br label %_compound_head.exit.i28.i.i

_compound_head.exit.i28.i.i:                      ; preds = %if.end.i.i23.i.i, %if.then.i.i22.i.i
  %retval.0.i.i24.i.i = phi i32 [ %sub.i.i21.i.i, %if.then.i.i22.i.i ], [ %120, %if.end.i.i23.i.i ]
  %121 = inttoptr i32 %retval.0.i.i24.i.i to ptr
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %cmp.i.not.i25.i.i = icmp eq i32 %123, -1
  %124 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %66, align 4
  %and.i13.i26.i.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i26.i.i)
  %tobool.not.i14.i27.i.i = icmp eq i32 %and.i13.i26.i.i, 0
  br i1 %cmp.i.not.i25.i.i, label %if.then.i29.i.i, label %do.end8.i35.i.i, !prof !154

if.then.i29.i.i:                                  ; preds = %_compound_head.exit.i28.i.i
  br i1 %tobool.not.i14.i27.i.i, label %if.end.i17.i32.i.i, label %if.then.i16.i31.i.i, !prof !157

if.then.i16.i31.i.i:                              ; preds = %if.then.i29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i30.i.i = add i32 %125, -1
  br label %_compound_head.exit19.i34.i.i

if.end.i17.i32.i.i:                               ; preds = %if.then.i29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %page.1.i to i32
  br label %_compound_head.exit19.i34.i.i

_compound_head.exit19.i34.i.i:                    ; preds = %if.end.i17.i32.i.i, %if.then.i16.i31.i.i
  %retval.0.i18.i33.i.i = phi i32 [ %sub.i15.i30.i.i, %if.then.i16.i31.i.i ], [ %126, %if.end.i17.i32.i.i ]
  %127 = inttoptr i32 %retval.0.i18.i33.i.i to ptr
  tail call void @dump_page(ptr noundef %127, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #11, !srcloc !177
  unreachable

do.end8.i35.i.i:                                  ; preds = %_compound_head.exit.i28.i.i
  br i1 %tobool.not.i14.i27.i.i, label %if.end.i24.i38.i.i, label %if.then.i23.i37.i.i, !prof !157

if.then.i23.i37.i.i:                              ; preds = %do.end8.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i36.i.i = add i32 %125, -1
  br label %PageReferenced.exit.i.i

if.end.i24.i38.i.i:                               ; preds = %do.end8.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %page.1.i to i32
  br label %PageReferenced.exit.i.i

PageReferenced.exit.i.i:                          ; preds = %if.end.i24.i38.i.i, %if.then.i23.i37.i.i
  %retval.0.i25.i39.i.i = phi i32 [ %sub.i22.i36.i.i, %if.then.i23.i37.i.i ], [ %128, %if.end.i24.i38.i.i ]
  %129 = inttoptr i32 %retval.0.i25.i39.i.i to ptr
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %129, align 4
  %132 = and i32 %131, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool20.not.i.i = icmp eq i32 %132, 0
  br i1 %tobool20.not.i.i, label %PageReferenced.exit.i.i.if.end23.i.i_crit_edge, label %PageReferenced.exit.i.i.if.then21.i.i_crit_edge

PageReferenced.exit.i.i.if.then21.i.i_crit_edge:  ; preds = %PageReferenced.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21.i.i

PageReferenced.exit.i.i.if.end23.i.i_crit_edge:   ; preds = %PageReferenced.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i.i

if.then21.i.i:                                    ; preds = %PageReferenced.exit.i.i.if.then21.i.i_crit_edge, %page_is_young.exit.i.i.if.then21.i.i_crit_edge, %if.end14.i.i.if.then21.i.i_crit_edge
  %referenced.i.i = getelementptr inbounds %struct.mem_size_stats, ptr %18, i32 0, i32 5
  %133 = ptrtoint ptr %referenced.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %referenced.i.i, align 4
  %add22.i.i = add i32 %134, 4096
  store i32 %add22.i.i, ptr %referenced.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then21.i.i, %PageReferenced.exit.i.i.if.end23.i.i_crit_edge
  %135 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %66, align 4
  %and.i.i49.i.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i49.i.i)
  %tobool.not.i.i50.i.i = icmp eq i32 %and.i.i49.i.i, 0
  br i1 %tobool.not.i.i50.i.i, label %if.end.i.i53.i.i, label %if.then.i.i52.i.i, !prof !157

if.then.i.i52.i.i:                                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i51.i.i = add i32 %136, -1
  br label %page_count.exit.i.i

if.end.i.i53.i.i:                                 ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %page.1.i to i32
  br label %page_count.exit.i.i

page_count.exit.i.i:                              ; preds = %if.end.i.i53.i.i, %if.then.i.i52.i.i
  %retval.0.i.i54.i.i = phi i32 [ %sub.i.i51.i.i, %if.then.i.i52.i.i ], [ %137, %if.end.i.i53.i.i ]
  %138 = inttoptr i32 %retval.0.i.i54.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %138, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %139 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %140)
  %cmp.i383.i = icmp eq i32 %140, 1
  %brmerge1.i.i = or i1 %tobool4.not.i, %cmp.i383.i
  br i1 %brmerge1.i.i, label %if.then27.i.i, label %for.body.i.i

if.then27.i.i:                                    ; preds = %page_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @smaps_page_accumulate(ptr noundef %18, ptr noundef nonnull %page.1.i, i32 noundef 16777216, i1 noundef zeroext %tobool236.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext true) #11
  br label %smaps_pte_entry.exit

for.body.i.i:                                     ; preds = %page_count.exit.i.i
  %141 = ptrtoint ptr %page.1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %page.1.i, align 4
  %143 = and i32 %142, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.not.i.i56.i.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i.i56.i.i, label %PageCompound.exit.i.i.i, label %for.body.i.i.if.then.i57.i.i_crit_edge

for.body.i.i.if.then.i57.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i57.i.i

PageCompound.exit.i.i.i:                          ; preds = %for.body.i.i
  %144 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %66, align 4
  %and.i.i.i.i.i39 = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i39)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i39, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %PageCompound.exit.i.i.i.if.then.i57.i.i_crit_edge, !prof !157

PageCompound.exit.i.i.i.if.then.i57.i.i_crit_edge: ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i57.i.i

if.then.i57.i.i:                                  ; preds = %PageCompound.exit.i.i.i.if.then.i57.i.i_crit_edge, %for.body.i.i.if.then.i57.i.i_crit_edge
  %call3.i.i.i = tail call i32 @__page_mapcount(ptr noundef nonnull %page.1.i) #11
  br label %page_mapcount.exit.i.i

if.end.i.i.i:                                     ; preds = %PageCompound.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = getelementptr inbounds %struct.page, ptr %page.1.i, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %146, i32 noundef 4) #11
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %146, align 4
  %add.i.i384.i = add i32 %148, 1
  br label %page_mapcount.exit.i.i

page_mapcount.exit.i.i:                           ; preds = %if.end.i.i.i, %if.then.i57.i.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i57.i.i ], [ %add.i.i384.i, %if.end.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i.i)
  %cmp33.i.i = icmp sgt i32 %retval.0.i.i.i, 1
  br i1 %cmp33.i.i, label %if.then34.i.i, label %page_mapcount.exit.i.i.if.end35.i.i_crit_edge

page_mapcount.exit.i.i.if.end35.i.i_crit_edge:    ; preds = %page_mapcount.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i.i

if.then34.i.i:                                    ; preds = %page_mapcount.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %div.i.i = udiv i32 16777216, %retval.0.i.i.i
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then34.i.i, %page_mapcount.exit.i.i.if.end35.i.i_crit_edge
  %pss.0.i.i = phi i32 [ %div.i.i, %if.then34.i.i ], [ 16777216, %page_mapcount.exit.i.i.if.end35.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i.i)
  %cmp38.i.i = icmp slt i32 %retval.0.i.i.i, 2
  tail call fastcc void @smaps_page_accumulate(ptr noundef %18, ptr noundef nonnull %page.1.i, i32 noundef %pss.0.i.i, i1 noundef zeroext %tobool236.i, i1 noundef zeroext %tobool.i, i1 noundef zeroext %cmp38.i.i) #11
  br label %smaps_pte_entry.exit

smaps_pte_entry.exit:                             ; preds = %if.end35.i.i, %if.then27.i.i, %if.end229.i.smaps_pte_entry.exit_crit_edge, %if.then.i.i, %if.else227.i.smaps_pte_entry.exit_crit_edge, %if.else214.i.smaps_pte_entry.exit_crit_edge, %if.else210.i, %if.end207.i
  %incdec.ptr = getelementptr i32, ptr %pte.074, i32 1
  %add = add i32 %addr.addr.076, 4096
  %cmp.not = icmp eq i32 %add, %end
  br i1 %cmp.not, label %smaps_pte_entry.exit.do.body_crit_edge, label %smaps_pte_entry.exit.for.body_crit_edge

smaps_pte_entry.exit.for.body_crit_edge:          ; preds = %smaps_pte_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

smaps_pte_entry.exit.do.body_crit_edge:           ; preds = %smaps_pte_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %smaps_pte_entry.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %pte.0.lcssa = phi ptr [ %add.ptr9, %entry.do.body_crit_edge ], [ %incdec.ptr, %smaps_pte_entry.exit.do.body_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %5) #11
  %add.ptr12 = getelementptr i32, ptr %pte.0.lcssa, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr12) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !178
  %149 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i1.i = and i32 %149, -16384
  %150 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 213
  %153 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %154, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !179
  %155 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i.i40 = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i.i.i40 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %158, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 633, i32 noundef 0) #11
  %call.i41 = tail call i32 @__cond_resched() #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_normal_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swp_swapcount([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smaps_pte_hole(i32 noundef %addr, i32 noundef %end, i32 noundef %depth, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %2 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma1, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_mapping, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %sub.i = sub i32 %addr, %9
  %shr.i = lshr i32 %sub.i, 12
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff.i, align 4
  %add.i = add i32 %shr.i, %11
  %sub.i8 = sub i32 %end, %9
  %shr.i9 = lshr i32 %sub.i8, 12
  %add.i11 = add i32 %shr.i9, %11
  %call4 = tail call i32 @shmem_partial_swap_usage(ptr noundef %7, i32 noundef %add.i, i32 noundef %add.i11) #11
  %swap = getelementptr inbounds %struct.mem_size_stats, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %swap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %swap, align 4
  %add = add i32 %13, %call4
  store i32 %add, ptr %swap, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_partial_swap_usage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smaps_page_accumulate(ptr nocapture noundef %mss, ptr noundef %page, i32 noundef %pss, i1 noundef zeroext %dirty, i1 noundef zeroext %locked, i1 noundef zeroext %private) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %pss to i64
  %pss3 = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 14
  %0 = ptrtoint ptr %pss3 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pss3, align 8
  %add = add i64 %1, %conv
  store i64 %add, ptr %pss3, align 8
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i2.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !157

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %4, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.85, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pss_anon = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 15
  br label %if.end13

if.else:                                          ; preds = %PageAnon.exit
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %2, align 4
  %and.i.i1 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.not.i.i2, label %if.end.i.i5, label %if.then.i.i4, !prof !157

if.then.i.i4:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i3 = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i5:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i5, %if.then.i.i4
  %retval.0.i.i6 = phi i32 [ %sub.i.i3, %if.then.i.i4 ], [ %12, %if.end.i.i5 ]
  %13 = inttoptr i32 %retval.0.i.i6 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !154

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !157

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %17, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %18, %if.end.i20.i ]
  %19 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #11, !srcloc !175
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !157

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %17, -1
  br label %PageSwapBacked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %page to i32
  br label %PageSwapBacked.exit

PageSwapBacked.exit:                              ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %20, %if.end.i27.i ]
  %21 = inttoptr i32 %retval.0.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.else10, label %if.then7

if.then7:                                         ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pss_shmem = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 17
  br label %if.end13

if.else10:                                        ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pss_file = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 16
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then7, %if.then
  %pss_shmem.sink18 = phi ptr [ %pss_shmem, %if.then7 ], [ %pss_file, %if.else10 ], [ %pss_anon, %if.then ]
  %25 = ptrtoint ptr %pss_shmem.sink18 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pss_shmem.sink18, align 8
  %add9 = add i64 %26, %conv
  store i64 %add9, ptr %pss_shmem.sink18, align 8
  br i1 %locked, label %if.then15, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %pss_locked = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 18
  %27 = ptrtoint ptr %pss_locked to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pss_locked, align 8
  %add17 = add i64 %28, %conv
  store i64 %add17, ptr %pss_locked, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end13.if.end18_crit_edge
  br i1 %dirty, label %if.end18.if.then23_crit_edge, label %lor.lhs.false

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end18
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %2, align 4
  %and.i.i7 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %tobool.not.i.i8 = icmp eq i32 %and.i.i7, 0
  br i1 %tobool.not.i.i8, label %if.end.i.i11, label %if.then.i.i10, !prof !157

if.then.i.i10:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i9 = add i32 %30, -1
  br label %_compound_head.exit.i14

if.end.i.i11:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i14

_compound_head.exit.i14:                          ; preds = %if.end.i.i11, %if.then.i.i10
  %retval.0.i.i12 = phi i32 [ %sub.i.i9, %if.then.i.i10 ], [ %31, %if.end.i.i11 ]
  %32 = inttoptr i32 %retval.0.i.i12 to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.not.i13 = icmp eq i32 %34, -1
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i13, label %if.then.i15, label %do.end8.i, !prof !154

if.then.i15:                                      ; preds = %_compound_head.exit.i14
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !157

if.then.i16.i:                                    ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i15.i = add i32 %36, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %37, %if.end.i17.i ]
  %38 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #11, !srcloc !176
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i14
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !157

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i22.i = add i32 %36, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %39, %if.end.i24.i ]
  %40 = inttoptr i32 %retval.0.i25.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool22.not = icmp eq i32 %43, 0
  br i1 %tobool22.not, label %if.else30, label %PageDirty.exit.if.then23_crit_edge

PageDirty.exit.if.then23_crit_edge:               ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then23:                                        ; preds = %PageDirty.exit.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  br i1 %private, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %private_dirty = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 4
  %44 = ptrtoint ptr %private_dirty to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private_dirty, align 8
  %add26 = add i32 %45, 4096
  store i32 %add26, ptr %private_dirty, align 8
  br label %if.end37

if.else27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %shared_dirty = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 2
  %46 = ptrtoint ptr %shared_dirty to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %shared_dirty, align 8
  %add28 = add i32 %47, 4096
  store i32 %add28, ptr %shared_dirty, align 8
  br label %if.end37

if.else30:                                        ; preds = %PageDirty.exit
  br i1 %private, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %private_clean = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 3
  %48 = ptrtoint ptr %private_clean to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %private_clean, align 4
  %add33 = add i32 %49, 4096
  store i32 %add33, ptr %private_clean, align 4
  br label %if.end37

if.else34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %shared_clean = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 1
  %50 = ptrtoint ptr %shared_clean to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %shared_clean, align 4
  %add35 = add i32 %51, 4096
  store i32 %add35, ptr %shared_clean, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then32, %if.else27, %if.then25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_smaps_rollup(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %mss = alloca %struct.mem_size_stats, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %mss) #11
  %2 = call ptr @memset(ptr %mss, i32 255, i32 104)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 -40
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i.i, align 8
  %call1.i = tail call ptr @get_pid_task(ptr noundef %6, i32 noundef 0) #11
  %task = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1.i, ptr %task, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mm2 = getelementptr inbounds %struct.proc_maps_private, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm2, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.out_put_task_crit_edge, label %lor.lhs.false

if.end.out_put_task_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_task

lor.lhs.false:                                    ; preds = %if.end
  %mm_users.i = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !167
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #11, !srcloc !168
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %lor.lhs.false.out_put_task_crit_edge, label %if.end6

lor.lhs.false.out_put_task_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_task

if.end6:                                          ; preds = %lor.lhs.false
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !169
  %11 = call ptr @memset(ptr %mss, i32 0, i32 104)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@show_smaps_rollup, %if.then.i.i)) #11
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !161

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %9, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end6
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 15
  %call.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@show_smaps_rollup, %if.then.i4.i)) #11
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !161

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %9, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #11
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %mmap_read_lock_killable.exit.out_put_mm_crit_edge

mmap_read_lock_killable.exit.out_put_mm_crit_edge: ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_mm

if.end10:                                         ; preds = %mmap_read_lock_killable.exit
  %12 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %tobool12.not115 = icmp eq ptr %15, null
  br i1 %tobool12.not115, label %if.end10.for.end_crit_edge, label %for.body.lr.ph

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end10
  %swap.i = getelementptr inbounds %struct.mem_size_stats, ptr %mss, i32 0, i32 11
  %wait_list.i.i = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 15, i32 4
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %vma.0116 = phi ptr [ %15, %for.body.lr.ph ], [ %vma.0.be, %for.cond.backedge.for.body_crit_edge ]
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0116, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i.not = icmp eq i32 %17, 0
  br i1 %cmp.not.i.not, label %for.body.smap_gather_stats.exit_crit_edge, label %if.end.i

for.body.smap_gather_stats.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %smap_gather_stats.exit

if.end.i:                                         ; preds = %for.body
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0116, i32 0, i32 14
  %18 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i.if.then16.i_crit_edge, label %land.lhs.true.i

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_mapping.i, align 4
  %a_ops.i.i = getelementptr inbounds %struct.address_space, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %a_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a_ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %23, @shmem_aops
  br i1 %cmp.i.i, label %if.then2.i, label %land.lhs.true.i.if.then16.i_crit_edge

land.lhs.true.i.if.then16.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

if.then2.i:                                       ; preds = %land.lhs.true.i
  %call3.i = call i32 @shmem_swap_usage(ptr noundef nonnull %vma.0116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool6.not.i, label %if.then2.i.if.then12.i_crit_edge, label %lor.lhs.false.i

if.then2.i.if.then12.i_crit_edge:                 ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

lor.lhs.false.i:                                  ; preds = %if.then2.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0116, i32 0, i32 8
  %24 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_flags.i, align 4
  %26 = and i32 %25, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %.not.i = icmp eq i32 %26, 2
  br i1 %.not.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false.i.if.then12.i_crit_edge

lor.lhs.false.i.if.then12.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then16.i

if.then12.i:                                      ; preds = %lor.lhs.false.i.if.then12.i_crit_edge, %if.then2.i.if.then12.i_crit_edge
  %27 = ptrtoint ptr %swap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %swap.i, align 4
  %add.i = add i32 %28, %call3.i
  store i32 %add.i, ptr %swap.i, align 4
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.then12.i, %lor.lhs.false.i.if.then16.i_crit_edge, %land.lhs.true.i.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge
  %ops.139.i = phi ptr [ @smaps_shmem_walk_ops, %lor.lhs.false.i.if.then16.i_crit_edge ], [ @smaps_walk_ops, %if.then12.i ], [ @smaps_walk_ops, %land.lhs.true.i.if.then16.i_crit_edge ], [ @smaps_walk_ops, %if.end.i.if.then16.i_crit_edge ]
  %call17.i = call i32 @walk_page_vma(ptr noundef nonnull %vma.0116, ptr noundef nonnull %ops.139.i, ptr noundef nonnull %mss) #11
  br label %smap_gather_stats.exit

smap_gather_stats.exit:                           ; preds = %if.then16.i, %for.body.smap_gather_stats.exit_crit_edge
  %29 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_end.i, align 4
  %31 = ptrtoint ptr %wait_list.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %wait_list.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %32, %wait_list.i.i
  br i1 %cmp.i.i.i.not, label %smap_gather_stats.exit.if.end30_crit_edge, label %if.then15

smap_gather_stats.exit.if.end30_crit_edge:        ; preds = %smap_gather_stats.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then15:                                        ; preds = %smap_gather_stats.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@show_smaps_rollup, %if.then.i.i77)) #11
          to label %mmap_read_unlock.exit [label %if.then.i.i77], !srcloc !161

if.then.i.i77:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %9, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i77, %if.then15
  call void @up_read(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@show_smaps_rollup, %if.then.i.i79)) #11
          to label %__mmap_lock_trace_start_locking.exit.i82 [label %if.then.i.i79], !srcloc !161

if.then.i.i79:                                    ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %9, i1 noundef zeroext false) #11
  br label %__mmap_lock_trace_start_locking.exit.i82

__mmap_lock_trace_start_locking.exit.i82:         ; preds = %if.then.i.i79, %mmap_read_unlock.exit
  %call.i81 = call i32 @down_read_killable(ptr noundef %mmap_lock.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@show_smaps_rollup, %if.then.i4.i84)) #11
          to label %mmap_read_lock_killable.exit85 [label %if.then.i4.i84], !srcloc !161

if.then.i4.i84:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i82
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i83 = icmp eq i32 %call.i81, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %9, i1 noundef zeroext false, i1 noundef zeroext %cmp.i83) #11
  br label %mmap_read_lock_killable.exit85

mmap_read_lock_killable.exit85:                   ; preds = %if.then.i4.i84, %__mmap_lock_trace_start_locking.exit.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool17.not = icmp eq i32 %call.i81, 0
  br i1 %tobool17.not, label %if.end19, label %mmap_read_lock_killable.exit85.out_put_mm_crit_edge

mmap_read_lock_killable.exit85.out_put_mm_crit_edge: ; preds = %mmap_read_lock_killable.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_put_mm

if.end19:                                         ; preds = %mmap_read_lock_killable.exit85
  %sub = add i32 %30, -1
  %call20 = call ptr @find_vma(ptr noundef nonnull %9, i32 noundef %sub) #11
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.for.end_crit_edge, label %if.end23

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end23:                                         ; preds = %if.end19
  %33 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %30)
  %cmp.not = icmp ult i32 %34, %30
  br i1 %cmp.not, label %if.end25, label %if.end23.for.cond.backedge_crit_edge

if.end23.for.cond.backedge_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

if.end25:                                         ; preds = %if.end23
  %vm_end26 = getelementptr inbounds %struct.vm_area_struct, ptr %call20, i32 0, i32 1
  %35 = ptrtoint ptr %vm_end26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vm_end26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %30)
  %cmp27 = icmp ugt i32 %36, %30
  br i1 %cmp27, label %if.end.i90, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.end.i90:                                       ; preds = %if.end25
  %vm_file.i88 = getelementptr inbounds %struct.vm_area_struct, ptr %call20, i32 0, i32 14
  %37 = ptrtoint ptr %vm_file.i88 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vm_file.i88, align 4
  %tobool.not.i89 = icmp eq ptr %38, null
  br i1 %tobool.not.i89, label %if.end.i90.smap_gather_stats.exit108_crit_edge, label %land.lhs.true.i94

if.end.i90.smap_gather_stats.exit108_crit_edge:   ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %smap_gather_stats.exit108

land.lhs.true.i94:                                ; preds = %if.end.i90
  %f_mapping.i91 = getelementptr inbounds %struct.file, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %f_mapping.i91 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %f_mapping.i91, align 4
  %a_ops.i.i92 = getelementptr inbounds %struct.address_space, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %a_ops.i.i92 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %a_ops.i.i92, align 4
  %cmp.i.i93 = icmp eq ptr %42, @shmem_aops
  br i1 %cmp.i.i93, label %if.then2.i96, label %land.lhs.true.i94.smap_gather_stats.exit108_crit_edge

land.lhs.true.i94.smap_gather_stats.exit108_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %smap_gather_stats.exit108

if.then2.i96:                                     ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i95 = call i32 @shmem_swap_usage(ptr noundef nonnull %call20) #11
  br label %smap_gather_stats.exit108

smap_gather_stats.exit108:                        ; preds = %if.then2.i96, %land.lhs.true.i94.smap_gather_stats.exit108_crit_edge, %if.end.i90.smap_gather_stats.exit108_crit_edge
  %ops.143.i = phi ptr [ @smaps_shmem_walk_ops, %if.then2.i96 ], [ @smaps_walk_ops, %land.lhs.true.i94.smap_gather_stats.exit108_crit_edge ], [ @smaps_walk_ops, %if.end.i90.smap_gather_stats.exit108_crit_edge ]
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %call20, i32 0, i32 6
  %43 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vm_mm.i, align 4
  %45 = ptrtoint ptr %vm_end26 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vm_end26, align 4
  %call20.i = call i32 @walk_page_range(ptr noundef %44, i32 noundef %30, i32 noundef %46, ptr noundef nonnull %ops.143.i, ptr noundef nonnull %mss) #11
  br label %if.end30

if.end30:                                         ; preds = %smap_gather_stats.exit108, %if.end25.if.end30_crit_edge, %smap_gather_stats.exit.if.end30_crit_edge
  %vma.1 = phi ptr [ %call20, %smap_gather_stats.exit108 ], [ %call20, %if.end25.if.end30_crit_edge ], [ %vma.0116, %smap_gather_stats.exit.if.end30_crit_edge ]
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1, i32 0, i32 2
  %47 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vm_next, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end30, %if.end23.for.cond.backedge_crit_edge
  %vma.0.be = phi ptr [ %call20, %if.end23.for.cond.backedge_crit_edge ], [ %48, %if.end30 ]
  %tobool12.not = icmp eq ptr %vma.0.be, null
  br i1 %tobool12.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %if.end19.for.end_crit_edge, %if.end10.for.end_crit_edge
  %last_vma_end.1 = phi i32 [ 0, %if.end10.for.end_crit_edge ], [ %30, %if.end19.for.end_crit_edge ], [ %30, %for.cond.backedge.for.end_crit_edge ]
  %49 = ptrtoint ptr %mm2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mm2, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  call fastcc void @show_vma_header_prefix(ptr noundef %m, i32 noundef %54, i32 noundef %last_vma_end.1, i32 noundef 0, i64 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @seq_pad(ptr noundef %m, i8 noundef zeroext 32) #11
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.53) #11
  call fastcc void @__show_smap(ptr noundef %m, ptr noundef nonnull %mss, i1 noundef zeroext true)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@show_smaps_rollup, %if.then.i.i109)) #11
          to label %mmap_read_unlock.exit111 [label %if.then.i.i109], !srcloc !161

if.then.i.i109:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %9, i1 noundef zeroext false) #11
  br label %mmap_read_unlock.exit111

mmap_read_unlock.exit111:                         ; preds = %if.then.i.i109, %for.end
  call void @up_read(ptr noundef %mmap_lock.i) #11
  br label %out_put_mm

out_put_mm:                                       ; preds = %mmap_read_unlock.exit111, %mmap_read_lock_killable.exit85.out_put_mm_crit_edge, %mmap_read_lock_killable.exit.out_put_mm_crit_edge
  %ret.3 = phi i32 [ %call.i, %mmap_read_lock_killable.exit.out_put_mm_crit_edge ], [ 0, %mmap_read_unlock.exit111 ], [ %call.i81, %mmap_read_lock_killable.exit85.out_put_mm_crit_edge ]
  call void @mmput(ptr noundef nonnull %9) #11
  br label %out_put_task

out_put_task:                                     ; preds = %out_put_mm, %lor.lhs.false.out_put_task_crit_edge, %if.end.out_put_task_crit_edge
  %ret.4 = phi i32 [ %ret.3, %out_put_mm ], [ -3, %if.end.out_put_task_crit_edge ], [ -3, %lor.lhs.false.out_put_task_crit_edge ]
  %55 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !164
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #11
  %57 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #11, !srcloc !165
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i112 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i112, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put_task
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !157

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #11
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %out_put_task
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !166
  call void @__put_task_struct(ptr noundef %56) #11
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %58 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %task, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_task_struct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %put_task_struct.exit ], [ -3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %mss) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_mm_hiwater_rss(ptr noundef %mm) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %rss_stat.i.i = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 40
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i, i32 noundef 4) #11
  %0 = ptrtoint ptr %rss_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rss_stat.i.i, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 0) #11
  %arrayidx.i.i = getelementptr %struct.anon.9, ptr %mm, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i, align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #11
  %add.i = add nuw i32 %5, %2
  %arrayidx.i9.i = getelementptr %struct.anon.9, ptr %mm, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i9.i, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #11
  %add3.i = add i32 %add.i, %8
  %hiwater_rss = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 17
  %9 = ptrtoint ptr %hiwater_rss to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add3.i, ptr %hiwater_rss, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_start(ptr noundef %range) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 454) #11
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here) to i32)) #11
  %mm = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  %notifier_subscriptions.i = getelementptr inbounds %struct.anon.9, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %notifier_subscriptions.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier_subscriptions.i, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %__here.__here4_crit_edge, label %if.then

__here.__here4_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here4

if.then:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  %call3 = tail call i32 @__mmu_notifier_invalidate_range_start(ptr noundef %range) #11
  br label %__here4

__here4:                                          ; preds = %if.then, %__here.__here4_crit_edge
  tail call void @lock_release(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here4) to i32)) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_end(ptr noundef %range) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.57, i32 noundef 482) #11
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %mm = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm, align 4
  %notifier_subscriptions.i = getelementptr inbounds %struct.anon.9, ptr %3, i32 0, i32 49
  %4 = ptrtoint ptr %notifier_subscriptions.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notifier_subscriptions.i, align 8
  %tobool.i8.not = icmp eq ptr %5, null
  br i1 %tobool.i8.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmu_notifier_invalidate_range_end(ptr noundef %range, i1 noundef zeroext false) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_write_unlock(ptr noundef %mm) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_write_unlock, %if.then.i)) #11
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !161

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #11
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.9, ptr %mm, i32 0, i32 15
  tail call void @up_write(ptr noundef %mmap_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clear_refs_pte_range(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %2 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pmd, align 4
  %shr.i = lshr i32 %6, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %7
  %ptl.i.i = getelementptr %struct.page, ptr %4, i32 %sub.i, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr17 = getelementptr %struct.page, ptr %4, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !171
  %15 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr17, i32 noundef %or.i) #11
  %shr.i87 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i87, 511
  %add.ptr20 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 %end)
  %cmp21.not99 = icmp eq i32 %addr, %end
  br i1 %cmp21.not99, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.addr.0103 = phi i32 [ %addr, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %pte.0100 = phi ptr [ %add.ptr20, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %pte.0100 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pte.0100, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp23 = icmp eq i32 %24, 4
  %and26 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond = select i1 %cmp23, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end32:                                         ; preds = %for.body
  %call33 = tail call ptr @vm_normal_page(ptr noundef %3, i32 noundef %addr.addr.0103, i32 noundef %22) #11
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.for.inc_crit_edge, label %if.end36

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end36:                                         ; preds = %if.end32
  %25 = ptrtoint ptr %pte.0100 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pte.0100, align 4
  %and.i88 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.not.i = icmp eq i32 %and.i88, 0
  br i1 %tobool.not.i, label %if.end36.ptep_test_and_clear_young.exit_crit_edge, label %if.else.i

if.end36.ptep_test_and_clear_young.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %ptep_test_and_clear_young.exit

if.else.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm_mm.i, align 4
  %and.i.i.i = and i32 %26, -3
  tail call void @set_pte_at(ptr noundef %28, i32 noundef %addr.addr.0103, ptr noundef %pte.0100, i32 noundef %and.i.i.i) #11
  br label %ptep_test_and_clear_young.exit

ptep_test_and_clear_young.exit:                   ; preds = %if.else.i, %if.end36.ptep_test_and_clear_young.exit_crit_edge
  %29 = getelementptr inbounds %struct.page, ptr %call33, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i89 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %and.i.i89, 0
  br i1 %tobool.not.i.i90, label %if.end.i.i93, label %if.then.i.i92, !prof !157

if.then.i.i92:                                    ; preds = %ptep_test_and_clear_young.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i91 = add i32 %31, -1
  br label %_compound_head.exit.i96

if.end.i.i93:                                     ; preds = %ptep_test_and_clear_young.exit
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %call33 to i32
  br label %_compound_head.exit.i96

_compound_head.exit.i96:                          ; preds = %if.end.i.i93, %if.then.i.i92
  %retval.0.i.i94 = phi i32 [ %sub.i.i91, %if.then.i.i92 ], [ %32, %if.end.i.i93 ]
  %33 = inttoptr i32 %retval.0.i.i94 to ptr
  %call.i.i95 = tail call ptr @lookup_page_ext(ptr noundef %33) #11
  %tobool.not.i1.i = icmp eq ptr %call.i.i95, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i96.test_and_clear_page_young.exit_crit_edge, label %if.end.i2.i, !prof !154

_compound_head.exit.i96.test_and_clear_page_young.exit_crit_edge: ; preds = %_compound_head.exit.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %test_and_clear_page_young.exit

if.end.i2.i:                                      ; preds = %_compound_head.exit.i96
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef nonnull %call.i.i95) #11
  br label %test_and_clear_page_young.exit

test_and_clear_page_young.exit:                   ; preds = %if.end.i2.i, %_compound_head.exit.i96.test_and_clear_page_young.exit_crit_edge
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !157

if.then.i.i:                                      ; preds = %test_and_clear_page_young.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %35, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %test_and_clear_page_young.exit
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %call33 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %36, %if.end.i.i ]
  %37 = inttoptr i32 %retval.0.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i.not.i = icmp eq i32 %39, -1
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %29, align 4
  %and.i12.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !154

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !157

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i14.i = add i32 %41, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %call33 to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %42, %if.end.i16.i ]
  %43 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.30) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #11, !srcloc !180
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !157

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i21.i = add i32 %41, -1
  br label %ClearPageReferenced.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %call33 to i32
  br label %ClearPageReferenced.exit

ClearPageReferenced.exit:                         ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %44, %if.end.i23.i ]
  %45 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %45) #11
  br label %for.inc

for.inc:                                          ; preds = %ClearPageReferenced.exit, %if.end32.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr i32, ptr %pte.0100, i32 1
  %add = add i32 %addr.addr.0103, 4096
  %cmp21.not = icmp eq i32 %add, %end
  br i1 %cmp21.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %pte.0.lcssa = phi ptr [ %add.ptr20, %entry.do.body_crit_edge ], [ %incdec.ptr, %for.inc.do.body_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %9) #11
  %add.ptr41 = getelementptr i32, ptr %pte.0.lcssa, i32 -1
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr41) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !178
  %46 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i1.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 213
  %50 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %51, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !179
  %52 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i97 = add i32 %55, -1
  store volatile i32 %sub.i.i97, ptr %preempt_count.i.i.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 1203, i32 noundef 0) #11
  %call.i = tail call i32 @__cond_resched() #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clear_refs_test_walk(i32 noundef %start, i32 noundef %end, ptr nocapture noundef readonly %walk) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %0 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma1, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_flags, align 4
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %7, label %if.end.if.end11_crit_edge [
    i32 2, label %land.lhs.true
    i32 3, label %land.lhs.true7
  ]

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_file, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.end
  %vm_file8 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %vm_file8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vm_file8, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagemap_pmd_range(ptr nocapture noundef readonly %pmdp, i32 noundef %addr, i32 noundef %end, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vma1 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 3
  %0 = ptrtoint ptr %vma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma1, align 4
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %pmdp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pmdp, align 4
  %shr.i = lshr i32 %6, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %7
  %ptl.i.i = getelementptr %struct.page, ptr %4, i32 %sub.i, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !171
  %15 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #11
  %shr.i32 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i32, 511
  %add.ptr4 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 %end)
  %cmp41 = icmp ult i32 %addr, %end
  br i1 %cmp41, label %for.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %show_pfn.i = getelementptr inbounds %struct.pagemapread, ptr %3, i32 0, i32 3
  %buffer.i = getelementptr inbounds %struct.pagemapread, ptr %3, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.pagemapread, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.addr.043 = phi i32 [ %addr, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %pte.042 = phi ptr [ %add.ptr4, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %pte.042 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pte.042, align 4
  %and.i33 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %show_pfn.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %show_pfn.i, align 4, !range !181, !noalias !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  %shr.i34 = lshr i32 %22, 12
  %conv.i = zext i32 %shr.i34 to i64
  %frame.0.i = select i1 %tobool4.not.i, i64 0, i64 %conv.i
  %call.i = tail call ptr @vm_normal_page(ptr noundef %1, i32 noundef %addr.addr.043, i32 noundef %22) #11, !noalias !182
  br label %if.end53.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i, label %if.else.i.pte_to_pagemap_entry.exit_crit_edge, label %if.then19.i

if.else.i.pte_to_pagemap_entry.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pte_to_pagemap_entry.exit

if.then19.i:                                      ; preds = %if.else.i
  %shr3.i.i = lshr i32 %22, 7
  %25 = ptrtoint ptr %show_pfn.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %show_pfn.i, align 4, !range !181, !noalias !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not.i = icmp eq i8 %26, 0
  %27 = lshr i32 %22, 2
  %shr.i.i = and i32 %27, 31
  %shl.i = shl nuw nsw i32 %shr3.i.i, 5
  %or39.i = or i32 %shr.i.i, %shl.i
  %conv40.i = zext i32 %or39.i to i64
  %frame.1.i = select i1 %tobool33.not.i, i64 0, i64 %conv40.i
  %28 = and i32 %22, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %28)
  %29 = icmp eq i32 %28, 120
  br i1 %29, label %land.rhs.i.i, label %if.then19.i.pte_to_pagemap_entry.exit_crit_edge

if.then19.i.pte_to_pagemap_entry.exit_crit_edge:  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pte_to_pagemap_entry.exit

land.rhs.i.i:                                     ; preds = %if.then19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4, !noalias !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4, !noalias !182
  %sub.i.i = sub i32 %shr3.i.i, %31
  %add.ptr.i.i = getelementptr %struct.page, ptr %30, i32 %sub.i.i
  %32 = getelementptr %struct.page, ptr %30, i32 %sub.i.i, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4, !noalias !182
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !157

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = add i32 %34, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %35, %if.end.i.i.i.i ]
  %36 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4, !noalias !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i.i.i = icmp eq i32 %38, -1
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %32, align 4, !noalias !182
  %and.i16.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i.i)
  %tobool.not.i17.i.i.i = icmp eq i32 %and.i16.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i113.i, label %do.end10.i.i.i, !prof !154

if.then.i.i113.i:                                 ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i20.i.i.i, label %if.then.i19.i.i.i, !prof !157

if.then.i19.i.i.i:                                ; preds = %if.then.i.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i.i.i = add i32 %40, -1
  br label %_compound_head.exit22.i.i.i

if.end.i20.i.i.i:                                 ; preds = %if.then.i.i113.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  br label %_compound_head.exit22.i.i.i

_compound_head.exit22.i.i.i:                      ; preds = %if.end.i20.i.i.i, %if.then.i19.i.i.i
  %retval.0.i21.i.i.i = phi i32 [ %sub.i18.i.i.i, %if.then.i19.i.i.i ], [ %41, %if.end.i20.i.i.i ]
  %42 = inttoptr i32 %retval.0.i21.i.i.i to ptr
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.30) #11, !noalias !182
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #11, !noalias !182, !srcloc !173
  unreachable

do.end10.i.i.i:                                   ; preds = %_compound_head.exit.i.i.i
  br i1 %tobool.not.i17.i.i.i, label %if.end.i27.i.i.i, label %if.then.i26.i.i.i, !prof !157

if.then.i26.i.i.i:                                ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i.i.i = add i32 %40, -1
  br label %PageLocked.exit.i.i

if.end.i27.i.i.i:                                 ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  br label %PageLocked.exit.i.i

PageLocked.exit.i.i:                              ; preds = %if.end.i27.i.i.i, %if.then.i26.i.i.i
  %retval.0.i28.i.i.i = phi i32 [ %sub.i25.i.i.i, %if.then.i26.i.i.i ], [ %43, %if.end.i27.i.i.i ]
  %44 = inttoptr i32 %retval.0.i28.i.i.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4, !noalias !182
  %and1.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body11.i.i, label %PageLocked.exit.i.i.if.end53.i_crit_edge, !prof !154

PageLocked.exit.i.i.if.end53.i_crit_edge:         ; preds = %PageLocked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

do.body11.i.i:                                    ; preds = %PageLocked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/swapops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #11, !noalias !182, !srcloc !174
  unreachable

if.end53.i:                                       ; preds = %PageLocked.exit.i.i.if.end53.i_crit_edge, %if.then.i
  %flags.3.i = phi i64 [ -9223372036854775808, %if.then.i ], [ 4611686018427387904, %PageLocked.exit.i.i.if.end53.i_crit_edge ]
  %page.1.i = phi ptr [ %call.i, %if.then.i ], [ %add.ptr.i.i, %PageLocked.exit.i.i.if.end53.i_crit_edge ]
  %frame.2.i = phi i64 [ %frame.0.i, %if.then.i ], [ %frame.1.i, %PageLocked.exit.i.i.if.end53.i_crit_edge ]
  %tobool54.not.i = icmp eq ptr %page.1.i, null
  br i1 %tobool54.not.i, label %if.end53.i.pte_to_pagemap_entry.exit_crit_edge, label %land.lhs.true.i

if.end53.i.pte_to_pagemap_entry.exit_crit_edge:   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pte_to_pagemap_entry.exit

land.lhs.true.i:                                  ; preds = %if.end53.i
  %47 = getelementptr inbounds %struct.page, ptr %page.1.i, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4, !noalias !182
  %and.i2.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !157

if.then.i.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %49, -1
  br label %if.end58.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %page.1.i to i32
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %50, %if.end.i.i.i ]
  %51 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.85, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mapping.i.i.i, align 4, !noalias !182
  %54 = ptrtoint ptr %53 to i32
  %and.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  %or57.i = or i64 %flags.3.i, 2305843009213693952
  %spec.select.i = select i1 %cmp.i.i.not.i, i64 %or57.i, i64 %flags.3.i
  br i1 %tobool.not.i, label %if.end58.i.pte_to_pagemap_entry.exit_crit_edge, label %land.lhs.true62.i

if.end58.i.pte_to_pagemap_entry.exit_crit_edge:   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pte_to_pagemap_entry.exit

land.lhs.true62.i:                                ; preds = %if.end58.i
  %55 = ptrtoint ptr %page.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %page.1.i, align 4, !noalias !182
  %57 = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i114.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i114.i, label %PageCompound.exit.i.i, label %land.lhs.true62.i.if.then.i.i_crit_edge

land.lhs.true62.i.if.then.i.i_crit_edge:          ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

PageCompound.exit.i.i:                            ; preds = %land.lhs.true62.i
  %58 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %47, align 4, !noalias !182
  %and.i.i.i115.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i115.i)
  %tobool.not.i116.i = icmp eq i32 %and.i.i.i115.i, 0
  br i1 %tobool.not.i116.i, label %if.end.i.i, label %PageCompound.exit.i.i.if.then.i.i_crit_edge, !prof !157

PageCompound.exit.i.i.if.then.i.i_crit_edge:      ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %PageCompound.exit.i.i.if.then.i.i_crit_edge, %land.lhs.true62.i.if.then.i.i_crit_edge
  %call3.i.i = tail call i32 @__page_mapcount(ptr noundef nonnull %page.1.i) #11, !noalias !182
  br label %page_mapcount.exit.i

if.end.i.i:                                       ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = getelementptr inbounds %struct.page, ptr %page.1.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %60, i32 noundef 4) #11, !noalias !182
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4, !noalias !182
  %add.i.i = add i32 %62, 1
  br label %page_mapcount.exit.i

page_mapcount.exit.i:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ %add.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 1
  %or66.i = or i64 %spec.select.i, 72057594037927936
  %spec.select111.i = select i1 %cmp.i, i64 %or66.i, i64 %spec.select.i
  br label %pte_to_pagemap_entry.exit

pte_to_pagemap_entry.exit:                        ; preds = %page_mapcount.exit.i, %if.end58.i.pte_to_pagemap_entry.exit_crit_edge, %if.end53.i.pte_to_pagemap_entry.exit_crit_edge, %if.then19.i.pte_to_pagemap_entry.exit_crit_edge, %if.else.i.pte_to_pagemap_entry.exit_crit_edge
  %frame.2126134.i = phi i64 [ %frame.2.i, %if.end58.i.pte_to_pagemap_entry.exit_crit_edge ], [ %frame.2.i, %page_mapcount.exit.i ], [ %frame.2.i, %if.end53.i.pte_to_pagemap_entry.exit_crit_edge ], [ %frame.1.i, %if.then19.i.pte_to_pagemap_entry.exit_crit_edge ], [ 0, %if.else.i.pte_to_pagemap_entry.exit_crit_edge ]
  %flags.5.i = phi i64 [ %spec.select.i, %if.end58.i.pte_to_pagemap_entry.exit_crit_edge ], [ %spec.select111.i, %page_mapcount.exit.i ], [ %flags.3.i, %if.end53.i.pte_to_pagemap_entry.exit_crit_edge ], [ 4611686018427387904, %if.then19.i.pte_to_pagemap_entry.exit_crit_edge ], [ 0, %if.else.i.pte_to_pagemap_entry.exit_crit_edge ]
  %or.i.i = or i64 %flags.5.i, %frame.2126134.i
  %63 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer.i, align 4
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %3, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %3, align 4
  %arrayidx.i = getelementptr %struct.pagemap_entry_t, ptr %64, i32 %66
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or.i.i, ptr %arrayidx.i, align 8
  %68 = load i32, ptr %3, align 4
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %70)
  %cmp.not.i.not = icmp slt i32 %68, %70
  br i1 %cmp.not.i.not, label %for.inc, label %pte_to_pagemap_entry.exit.do.body_crit_edge

pte_to_pagemap_entry.exit.do.body_crit_edge:      ; preds = %pte_to_pagemap_entry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc:                                          ; preds = %pte_to_pagemap_entry.exit
  %incdec.ptr = getelementptr i32, ptr %pte.042, i32 1
  %add = add i32 %addr.addr.043, 4096
  %cmp = icmp ult i32 %add, %end
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %pte_to_pagemap_entry.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %err.1 = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %pte_to_pagemap_entry.exit.do.body_crit_edge ], [ 0, %for.inc.do.body_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %9) #11
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr4) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !178
  %71 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i1.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 213
  %75 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %76, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !179
  %77 = tail call i32 @llvm.read_register.i32(metadata !141) #11
  %and.i.i.i.i35 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i35 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i36 = add i32 %80, -1
  store volatile i32 %sub.i.i36, ptr %preempt_count.i.i.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.29, i32 noundef 1529, i32 noundef 0) #11
  %call.i37 = tail call i32 @__cond_resched() #11
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagemap_pte_hole(i32 noundef %start, i32 noundef %end, i32 noundef %depth, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp79 = icmp ult i32 %start, %end
  br i1 %cmp79, label %while.body.lr.ph, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

while.body.lr.ph:                                 ; preds = %entry
  %mm = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %buffer.i = getelementptr inbounds %struct.pagemapread, ptr %1, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.pagemapread, ptr %1, i32 0, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc27.while.cond.loopexit_crit_edge, %for.cond14.preheader.while.cond.loopexit_crit_edge
  %addr.2.lcssa = phi i32 [ %addr.1.lcssa, %for.cond14.preheader.while.cond.loopexit_crit_edge ], [ %add28, %for.inc27.while.cond.loopexit_crit_edge ]
  %cmp = icmp ult i32 %addr.2.lcssa, %end
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.cleanup32_crit_edge

while.cond.loopexit.cleanup32_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %addr.080 = phi i32 [ %start, %while.body.lr.ph ], [ %addr.2.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm, align 4
  %call = tail call ptr @find_vma(ptr noundef %3, i32 noundef %addr.080) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %end)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %hole_end.0 = phi i32 [ %6, %if.then ], [ %end, %while.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.080, i32 %hole_end.0)
  %cmp274 = icmp ult i32 %addr.080, %hole_end.0
  br i1 %cmp274, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %addr.175 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ %addr.080, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %1, align 4
  %arrayidx.i = getelementptr %struct.pagemap_entry_t, ptr %8, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %arrayidx.i, align 8
  %12 = load i32, ptr %1, align 4
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.not.i.not = icmp slt i32 %12, %14
  br i1 %cmp.not.i.not, label %for.inc, label %for.body.cleanup32_crit_edge

for.body.cleanup32_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

for.inc:                                          ; preds = %for.body
  %add = add i32 %addr.175, 4096
  %cmp2 = icmp ult i32 %add, %hole_end.0
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %addr.1.lcssa = phi i32 [ %addr.080, %if.end.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  br i1 %tobool.not, label %for.end.cleanup32_crit_edge, label %for.cond14.preheader

for.end.cleanup32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

for.cond14.preheader:                             ; preds = %for.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 1
  %15 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_end, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %end)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr.1.lcssa, i32 %17)
  %cmp2176 = icmp ult i32 %addr.1.lcssa, %17
  br i1 %cmp2176, label %for.cond14.preheader.for.body22_crit_edge, label %for.cond14.preheader.while.cond.loopexit_crit_edge

for.cond14.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

for.cond14.preheader.for.body22_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body22

for.body22:                                       ; preds = %for.inc27.for.body22_crit_edge, %for.cond14.preheader.for.body22_crit_edge
  %addr.277 = phi i32 [ %add28, %for.inc27.for.body22_crit_edge ], [ %addr.1.lcssa, %for.cond14.preheader.for.body22_crit_edge ]
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %inc.i60 = add i32 %21, 1
  store i32 %inc.i60, ptr %1, align 4
  %arrayidx.i61 = getelementptr %struct.pagemap_entry_t, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %arrayidx.i61, align 8
  %23 = load i32, ptr %1, align 4
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not.i63.not = icmp slt i32 %23, %25
  br i1 %cmp.not.i63.not, label %for.inc27, label %for.body22.cleanup32_crit_edge

for.body22.cleanup32_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup32

for.inc27:                                        ; preds = %for.body22
  %add28 = add i32 %addr.277, 4096
  %26 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_end, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %end)
  %cmp21 = icmp ult i32 %add28, %28
  br i1 %cmp21, label %for.inc27.for.body22_crit_edge, label %for.inc27.while.cond.loopexit_crit_edge

for.inc27.while.cond.loopexit_crit_edge:          ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.loopexit

for.inc27.for.body22_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

cleanup32:                                        ; preds = %for.body22.cleanup32_crit_edge, %for.end.cleanup32_crit_edge, %for.body.cleanup32_crit_edge, %while.cond.loopexit.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup32_crit_edge ], [ 1, %for.body22.cleanup32_crit_edge ], [ 1, %for.body.cleanup32_crit_edge ], [ 0, %for.end.cleanup32_crit_edge ], [ 0, %while.cond.loopexit.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !133, !135, !137, !139}
!llvm.named.register.sp = !{!141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/proc/task_mmu.c", i32 60, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/task_mmu.c", i32 61, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/proc/task_mmu.c", i32 62, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/proc/task_mmu.c", i32 63, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc/task_mmu.c", i32 64, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/task_mmu.c", i32 65, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc/task_mmu.c", i32 66, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/proc/task_mmu.c", i32 67, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/proc/task_mmu.c", i32 68, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/proc/task_mmu.c", i32 69, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/proc/task_mmu.c", i32 70, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/proc/task_mmu.c", i32 72, i32 7}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/proc/task_mmu.c", i32 74, i32 7}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/proc/task_mmu.c", i32 76, i32 7}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/proc/task_mmu.c", i32 77, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/proc/task_mmu.c", i32 78, i32 14}
!32 = !{ptr @proc_pid_maps_operations, !33, !"proc_pid_maps_operations", i1 false, i1 false}
!33 = !{!"../fs/proc/task_mmu.c", i32 363, i32 30}
!34 = !{ptr @proc_pid_smaps_operations, !35, !"proc_pid_smaps_operations", i1 false, i1 false}
!35 = !{!"../fs/proc/task_mmu.c", i32 1041, i32 30}
!36 = !{ptr @proc_pid_smaps_rollup_operations, !37, !"proc_pid_smaps_rollup_operations", i1 false, i1 false}
!37 = !{!"../fs/proc/task_mmu.c", i32 1048, i32 30}
!38 = !{ptr @proc_clear_refs_operations, !39, !"proc_clear_refs_operations", i1 false, i1 false}
!39 = !{!"../fs/proc/task_mmu.c", i32 1310, i32 30}
!40 = !{ptr @proc_pagemap_operations, !41, !"proc_pagemap_operations", i1 false, i1 false}
!41 = !{!"../fs/proc/task_mmu.c", i32 1725, i32 30}
!42 = !{ptr @proc_pid_maps_op, !43, !"proc_pid_maps_op", i1 false, i1 false}
!43 = !{!"../fs/proc/task_mmu.c", i32 351, i32 36}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/proc/task_mmu.c", i32 300, i32 26}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/proc/task_mmu.c", i32 315, i32 11}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/proc/task_mmu.c", i32 321, i32 11}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/proc/task_mmu.c", i32 326, i32 11}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/proc/task_mmu.c", i32 333, i32 18}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/proc/task_mmu.c", i32 258, i32 20}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/proc/task_mmu.c", i32 264, i32 20}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/proc/task_mmu.c", i32 266, i32 20}
!60 = !{ptr @proc_pid_smaps_op, !61, !"proc_pid_smaps_op", i1 false, i1 false}
!61 = !{!"../fs/proc/task_mmu.c", i32 988, i32 36}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/proc/task_mmu.c", i32 855, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/proc/task_mmu.c", i32 856, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/proc/task_mmu.c", i32 857, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/proc/task_mmu.c", i32 862, i32 16}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/proc/task_mmu.c", i32 866, i32 17}
!72 = !{ptr @smaps_walk_ops, !73, !"smaps_walk_ops", i1 false, i1 false}
!73 = !{!"../fs/proc/task_mmu.c", i32 747, i32 33}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/proc/task_mmu.c", i32 633, i32 2}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!80 = !{ptr @smaps_shmem_walk_ops, !81, !"smaps_shmem_walk_ops", i1 false, i1 false}
!81 = !{!"../fs/proc/task_mmu.c", i32 752, i32 33}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/proc/task_mmu.c", i32 809, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/proc/task_mmu.c", i32 810, i32 2}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/proc/task_mmu.c", i32 816, i32 3}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/proc/task_mmu.c", i32 818, i32 3}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/proc/task_mmu.c", i32 820, i32 3}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/proc/task_mmu.c", i32 823, i32 2}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/proc/task_mmu.c", i32 824, i32 2}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/proc/task_mmu.c", i32 825, i32 2}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/proc/task_mmu.c", i32 826, i32 2}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/proc/task_mmu.c", i32 827, i32 2}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/proc/task_mmu.c", i32 828, i32 2}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/proc/task_mmu.c", i32 829, i32 2}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/proc/task_mmu.c", i32 830, i32 2}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/proc/task_mmu.c", i32 831, i32 2}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/proc/task_mmu.c", i32 832, i32 2}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/proc/task_mmu.c", i32 833, i32 2}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/proc/task_mmu.c", i32 834, i32 31}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/proc/task_mmu.c", i32 836, i32 2}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/proc/task_mmu.c", i32 837, i32 2}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/proc/task_mmu.c", i32 839, i32 2}
!122 = !{ptr @show_smap_vma_flags.mnemonics, !123, !"mnemonics", i1 false, i1 false}
!123 = !{!"../fs/proc/task_mmu.c", i32 642, i32 20}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/proc/task_mmu.c", i32 703, i32 14}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/proc/task_mmu.c", i32 971, i32 14}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!130 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/mmu_notifier.h", i32 454, i32 2}
!137 = !{ptr @clear_refs_walk_ops, !138, !"clear_refs_walk_ops", i1 false, i1 false}
!138 = !{!"../fs/proc/task_mmu.c", i32 1229, i32 33}
!139 = !{ptr @pagemap_ops, !140, !"pagemap_ops", i1 false, i1 false}
!140 = !{!"../fs/proc/task_mmu.c", i32 1583, i32 33}
!141 = !{!"sp"}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 2148805133}
!152 = !{i64 2148719842, i64 2148719874, i64 2148719903, i64 2148719937, i64 2148719968, i64 2148719991}
!153 = !{i64 2148805362}
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !{!"auto-init"}
!156 = !{i64 2152776887, i64 2152776912}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i64 5272442}
!159 = !{i64 5272639}
!160 = !{i64 2152757872}
!161 = !{i64 2148317334, i64 2148317339, i64 2148317352, i64 2148317396, i64 2148317430, i64 2148317451}
!162 = !{i64 2148716657, i64 2148716683, i64 2148716712, i64 2148716746, i64 2148716777, i64 2148716800}
!163 = !{i64 2148719122, i64 2148719148, i64 2148719177, i64 2148719211, i64 2148719242, i64 2148719265}
!164 = !{i64 2148806212}
!165 = !{i64 2148720652, i64 2148720684, i64 2148720713, i64 2148720747, i64 2148720778, i64 2148720801}
!166 = !{i64 2150002447}
!167 = !{i64 2148716076}
!168 = !{i64 1202676, i64 1202701, i64 1202723, i64 1202739, i64 1202751, i64 1202771, i64 1202795, i64 1202811, i64 1202823}
!169 = !{i64 2148716264}
!170 = !{i64 2152777568, i64 2152777593}
!171 = !{i64 2154185937}
!172 = !{i64 2152779704}
!173 = !{i64 2150283149, i64 2150283640, i64 2150283186, i64 2150283242, i64 2150283276, i64 2150283300, i64 2150283341, i64 2150283362, i64 2150283390, i64 2150283424}
!174 = !{i64 2155138619, i64 2155139107, i64 2155138656, i64 2155138712, i64 2155138746, i64 2155138770, i64 2155138811, i64 2155138832, i64 2155138860, i64 2155138894}
!175 = !{i64 2150699169, i64 2150699660, i64 2150699206, i64 2150699262, i64 2150699296, i64 2150699320, i64 2150699361, i64 2150699382, i64 2150699410, i64 2150699444}
!176 = !{i64 2150385625, i64 2150386116, i64 2150385662, i64 2150385718, i64 2150385752, i64 2150385776, i64 2150385817, i64 2150385838, i64 2150385866, i64 2150385900}
!177 = !{i64 2150358720, i64 2150359211, i64 2150358757, i64 2150358813, i64 2150358847, i64 2150358871, i64 2150358912, i64 2150358933, i64 2150358961, i64 2150358995}
!178 = !{i64 2152779911}
!179 = !{i64 2154188708}
!180 = !{i64 2150370060, i64 2150370233, i64 2150370248, i64 2150370300, i64 2150370359, i64 2150370383, i64 2150370424, i64 2150370445, i64 2150370473, i64 2150370505}
!181 = !{i8 0, i8 2}
!182 = !{!183}
!183 = distinct !{!183, !184, !"pte_to_pagemap_entry: %agg.result"}
!184 = distinct !{!184, !"pte_to_pagemap_entry"}
