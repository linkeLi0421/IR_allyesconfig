; ModuleID = '/llk/IR_all_yes/fs/reiserfs/journal.c_pt.bc'
source_filename = "../fs/reiserfs/journal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%union.anon.70 = type { i32 }
%struct.reiserfs_list_bitmap = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.reiserfs_sb_info = type { ptr, ptr, ptr, ptr, i16, %struct.mutex, ptr, i32, ptr, ptr, ptr, i32, %struct.anon.82, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reiserfs_proc_info_data, ptr, i32, %struct.spinlock, ptr, ptr, i32, i32, %struct.delayed_work, %struct.spinlock, [2 x ptr], i32, ptr, ptr }
%struct.anon.82 = type { i32, i32, i32, i32, i32 }
%struct.reiserfs_proc_info_data = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32, %struct.__scan_bitmap_stats, %struct.__journal_stats }
%struct.__scan_bitmap_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__journal_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.reiserfs_journal = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, ptr, i64, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, [8192 x ptr], [8192 x ptr], [5 x %struct.reiserfs_list_bitmap], %struct.list_head, i32, i32, i32, i32, %struct.delayed_work, ptr, %struct.atomic_t }
%struct.reiserfs_bitmap_node = type { i32, ptr, %struct.list_head }
%struct.reiserfs_journal_cnode = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.reiserfs_jh = type { ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
%struct.reiserfs_journal_list = type { i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.mutex, i32, i64, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.reiserfs_transaction_handle = type { ptr, i32, i32, i32, i32, ptr, i8, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.reiserfs_super_block_v1 = type { i32, i32, i32, %struct.journal_params, i16, i16, i16, i16, [10 x i8], i16, i32, i16, i16, i16, i16 }
%struct.journal_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.reiserfs_journal_header = type { i32, i32, i32, %struct.journal_params }
%struct.reiserfs_journal_desc = type { i32, i32, i32, [1 x i32] }
%struct.reiserfs_journal_commit = type { i32, i32, [1 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.buffer_chunk = type { [32 x ptr], i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2000\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_allocate_list_bitmaps = private unnamed_addr constant [31 x i8] c"reiserfs_allocate_list_bitmaps\00", align 1
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to allocate bitmaps for journal lists\00", [51 x i8] zeroinitializer }, align 32
@nr_reiserfs_jh = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1256\00", [19 x i8] zeroinitializer }, align 32
@__func__.journal_init = private unnamed_addr constant [13 x i8] c"journal_init\00", align 1
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to get memory for journal structure\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1393\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"journal does not fit for area addressed by first of bitmap blocks. It starts at %u and its size is %u. Block size %ld\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"journal 1st super block is invalid: 1st reserved block %d, but actual 1st block is %d\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-462\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to initialize journal device\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-459\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to read journal header\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-460\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"journal header magic %x (device %pg) does not match to magic found in super block %x\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [130 x i8], [62 x i8] } { [130 x i8] c"journal params: device %pg, size %u, journal first block %u, max trans len %u, max batch %u, max commit age %u, max trans age %u\0A\00", [62 x i8] zeroinitializer }, align 32
@journal_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&journal->j_dirty_buffers_lock\00", [33 x i8] zeroinitializer }, align 32
@journal_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&journal->j_join_wait\00", [42 x i8] zeroinitializer }, align 32
@journal_init.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&journal->j_mutex\00", [46 x i8] zeroinitializer }, align 32
@journal_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&journal->j_flush_mutex\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-2004\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [147 x i8], [45 x i8] } { [147 x i8] c"Journal cnode memory allocation failed (%ld bytes). Journal is too large for available memory. Usually this is due to a journal that is too large.\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-2005\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"get_list_bitmap failed for journal list 0\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2006\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Replay Failure, unable to mount\00", [32 x i8] zeroinitializer }, align 32
@journal_init.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&(&journal->j_work)->work)\00", [51 x i8] zeroinitializer }, align 32
@journal_init.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&journal->j_work)->timer\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/reiserfs/journal.c\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reiserfs-2005\00", [18 x i8] zeroinitializer }, align 32
@__func__.journal_begin = private unnamed_addr constant [14 x i8] c"journal_begin\00", align 1
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"BAD: refcount <= 1, but journal_info != 0\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2100\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nesting info a different FS\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1577\00", [19 x i8] zeroinitializer }, align 32
@__func__.journal_mark_dirty = private unnamed_addr constant [19 x i8] c"journal_mark_dirty\00", align 1
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"handle trans id %ld != current trans id %ld\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1777\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"buffer %llu bad state %cPREPARED %cLOCKED %cDIRTY %cJDIRTY_WAIT\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1409\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"returning because j_wcount was %d\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1413\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"j_len (%lu) is too big\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"journal-4\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_cnode failed!\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"REISER-NESTING\00", [17 x i8] zeroinitializer }, align 32
@__func__.journal_end = private unnamed_addr constant [12 x i8] c"journal_end\00", align 1
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"th NULL, refcount %d\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1702\00", [19 x i8] zeroinitializer }, align 32
@__func__.journal_mark_freed = private unnamed_addr constant [19 x i8] c"journal_mark_freed\00", align 1
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"journal_list_bitmap is NULL\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-2138\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cn->bh->b_count < 0\00", [44 x i8] zeroinitializer }, align 32
@allocate_bitmap_node.id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-458\00", [25 x i8] zeroinitializer }, align 32
@__func__.journal_init_dev = private unnamed_addr constant [17 x i8] c"journal_init_dev\00", align 1
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"cannot init journal device unknown-block(%u,%u): %i\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-457\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"journal_init_dev: Cannot open '%s': %i\00", [57 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"journal_init_dev: journal device: %pg\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.check_advise_trans_params = private unnamed_addr constant [26 x i8] c"check_advise_trans_params\00", align 1
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad transaction max size (%u). FSCK?\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-463\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bad transaction max batch (%u). FSCK?\00", [58 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-464\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bad blocksize (%u)\00", [45 x i8] zeroinitializer }, align 32
@alloc_journal_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&jl->j_commit_mutex\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flush_commit_list\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-601\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"buffer write failed\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-615\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2200\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"last commit %lu, current %lu\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Journal write error in %s\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"journal-2\00", [22 x i8] zeroinitializer }, align 32
@__func__.put_journal_list = private unnamed_addr constant [17 x i8] c"put_journal_list\00", align 1
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"trans id %u, refcount at %d\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"checking transaction log (%pg)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"journal-1153: found in header: first_unflushed_offset %d, last_flushed_trans_id %lu\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"journal-1179: Setting oldest_start to offset %llu, trans_id %lu\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"journal-1180: Resetting oldest_start to offset %lu, trans_id %lu\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"journal-1299: Setting newest_mount_id to %d\00", [52 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"journal-1206: Starting replay from offset %llu, trans_id %lu\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"journal-1225: No valid transactions found\00", [54 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"journal-1299: Setting newest_mount_id to %lu\00", [51 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"replayed %d transactions in %lu seconds\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ReIsErLB\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"journal-986: transaction is valid returning because trans_id %d is greater than oldest_invalid %lu\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"journal-1087: transaction is valid returning because mount_id %d is less than newest_mount_id %lu\00", [62 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-2018\00", [19 x i8] zeroinitializer }, align 32
@__func__.journal_transaction_is_valid = private unnamed_addr constant [29 x i8] c"journal_transaction_is_valid\00", align 1
@.str.86 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Bad transaction length %d encountered, ignoring transaction\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"journal_transaction_is_valid, commit offset %ld had bad time %d or length %d\00", [51 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"journal-1004: transaction_is_valid setting oldest invalid trans_id to %d\00", [55 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"journal-1006: found valid transaction start offset %llu, len %d id %d\00", [58 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"journal-1037: journal_read_transaction, offset %llu, len %d mount_id %d\00", [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"journal-1039: journal_read_trans skipping because %lu is too old\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"journal-1146: journal_read_trans skipping because %d is != newest_mount_id %lu\00", [49 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"journal_read_transaction, commit offset %llu had bad time %d or length %d\00", [54 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2076\00", [23 x i8] zeroinitializer }, align 32
@__func__.journal_read_transaction = private unnamed_addr constant [25 x i8] c"journal_read_transaction\00", align 1
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device is readonly, unable to replay log\00", [55 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1169\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kmalloc failed, unable to mount FS\00", [61 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1207\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"REPLAY FAILURE fsck required! Block to replay is outside of filesystem\00", [57 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1204\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"REPLAY FAILURE fsck required! Trying to replay onto a log block\00", [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1212\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"REPLAY FAILURE fsck required! buffer write failed\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1226\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"REPLAY FAILURE, fsck required! buffer write failed\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"journal-1095: setting journal start to offset %ld\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-699\00", [20 x i8] zeroinitializer }, align 32
@__func__._update_journal_header_block = private unnamed_addr constant [29 x i8] c"_update_journal_header_block\00", align 1
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-837\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IO error during journal replay\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"get_cnode\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1752\00", [19 x i8] zeroinitializer }, align 32
@__func__.remove_from_transaction = private unnamed_addr constant [24 x i8] c"remove_from_transaction\00", align 1
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"b_count < 0\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"free_cnode\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.118 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal end\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1676\00", [19 x i8] zeroinitializer }, align 32
@__func__.do_journal_end = private unnamed_addr constant [15 x i8] c"do_journal_end\00", align 1
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get_cnode returned NULL\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-2332\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trying to log block %lu, which is a log block\00", [50 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-2048\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"BAD, buffer in journal hash, but not JDirty!\00", [51 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1996\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not get a list bitmap\00", [36 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal end2\00", [19 x i8] zeroinitializer }, align 32
@__func__.check_journal_end = private unnamed_addr constant [18 x i8] c"check_journal_end\00", align 1
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-003\00", [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"j_start (%ld) is too high\00", [38 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.132 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2048\00", [23 x i8] zeroinitializer }, align 32
@__func__.flush_journal_list = private unnamed_addr constant [19 x i8] c"flush_journal_list\00", align 1
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"called with wcount %d\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-715\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"length is %lu, trans id %lu\00", [36 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-844\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"journal list is flushing, wcount is not 0\00", [54 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-813\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"BAD! buffer %llu %cdirty %cjwait, not in a newer transaction\00", [35 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2082\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to flush buffer %llu in %s\00", [62 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-945\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saved_bh->b_count < 0\00", [42 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1011\00", [19 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cn->bh is NULL\00", [17 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"journal-1012\00", [19 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"journal-949\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Write error while pushing transaction to disk in %s\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Write error while updating journal header in %s\00", [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2201\00", [23 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"last flush %lu, current %lu\00", [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clm-2084\00", [23 x i8] zeroinitializer }, align 32
@__func__.reiserfs_end_buffer_io_sync = private unnamed_addr constant [28 x i8] c"reiserfs_end_buffer_io_sync\00", align 1
@.str.153 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pinned buffer %lu:%pg sent to disk\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 292, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"nr_reiserfs_jh\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 709, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2723, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2754, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2771, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2779, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2791, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2801, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2826, i32 20 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2845, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2856, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2857, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2858, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2871, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2891, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2898, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2903, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2960, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3236, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3246, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3291, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3310, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3321, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3332, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3353, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3390, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3768, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3806, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 139, i32 13 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2623, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2638, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2646, i32 9 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2678, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2685, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2698, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2576, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 982, i32 31 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1086, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1126, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1133, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1159, i32 29 }
@___asan_gen_.380 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 354, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 552, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2386, i32 20 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2411, i32 11 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2463, i32 13 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2473, i32 13 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2482, i32 13 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2497, i32 11 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2522, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2543, i32 42 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2548, i32 10 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2019, i32 47 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2023, i32 12 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2033, i32 12 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2041, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2063, i32 12 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2074, i32 13 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2083, i32 11 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2132, i32 42 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2137, i32 43 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2145, i32 43 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2162, i32 11 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2174, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2197, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2220, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2229, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2248, i32 4 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2273, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 2291, i32 10 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1253, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1278, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 372, i32 32 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3462, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 399, i32 32 }
@___asan_gen_.512 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 260, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 1160, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 717, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 4019, i32 32 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 4132, i32 5 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 4150, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 4226, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 4361, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 4376, i32 32 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 3716, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 44, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1363, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1376, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1408, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1480, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1502, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1516, i32 5 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1526, i32 6 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1535, i32 6 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1540, i32 6 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1564, i32 11 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1596, i32 12 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1606, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.623 = private constant [25 x i8] c"../fs/reiserfs/journal.c\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 620, i32 3 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @.str, ptr @.str.1, ptr @nr_reiserfs_jh, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @journal_init.__key, ptr @.str.14, ptr @journal_init.__key.15, ptr @.str.16, ptr @journal_init.__key.17, ptr @.str.18, ptr @journal_init.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @journal_init.__key.27, ptr @.str.28, ptr @journal_init.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @allocate_bitmap_node.id, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @alloc_journal_list.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_reiserfs_jh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 130, i32 192, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_init.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_init.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @journal_init.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocate_bitmap_node.id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_journal_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_allocate_list_bitmaps(ptr noundef %sb, ptr nocapture noundef %jb_array, i32 noundef %bmap_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %bmap_nr, 2
  %0 = ptrtoint ptr %jb_array to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %jb_array, align 4
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #16
  %bitmaps = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 0, i32 1
  %1 = ptrtoint ptr %bitmaps to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %bitmaps, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond:                                         ; preds = %entry
  %add.ptr.1 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 1
  %2 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %add.ptr.1, align 4
  %call.1 = tail call noalias ptr @vzalloc(i32 noundef %mul) #16
  %bitmaps.1 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 1, i32 1
  %3 = ptrtoint ptr %bitmaps.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.1, ptr %bitmaps.1, align 4
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %add.ptr.2 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 2
  %4 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %add.ptr.2, align 4
  %call.2 = tail call noalias ptr @vzalloc(i32 noundef %mul) #16
  %bitmaps.2 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 2, i32 1
  %5 = ptrtoint ptr %bitmaps.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.2, ptr %bitmaps.2, align 4
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %add.ptr.3 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 3
  %6 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %add.ptr.3, align 4
  %call.3 = tail call noalias ptr @vzalloc(i32 noundef %mul) #16
  %bitmaps.3 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 3, i32 1
  %7 = ptrtoint ptr %bitmaps.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.3, ptr %bitmaps.3, align 4
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %add.ptr.4 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 4
  %8 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %add.ptr.4, align 4
  %call.4 = tail call noalias ptr @vzalloc(i32 noundef %mul) #16
  %bitmaps.4 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 4, i32 1
  %9 = ptrtoint ptr %bitmaps.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.4, ptr %bitmaps.4, align 4
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %for.cond.3.if.then_crit_edge, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.reiserfs_allocate_list_bitmaps, ptr noundef nonnull @.str.1) #13
  tail call fastcc void @free_list_bitmaps(ptr noundef %sb, ptr noundef %jb_array)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.3.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_list_bitmaps(ptr nocapture noundef readonly %sb, ptr nocapture noundef %jb_array) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %jb_array to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %jb_array, align 4
  tail call fastcc void @cleanup_bitmap_list(ptr noundef %sb, ptr noundef %jb_array)
  %bitmaps = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 0, i32 1
  %1 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bitmaps, align 4
  tail call void @vfree(ptr noundef %2) #13
  %3 = ptrtoint ptr %bitmaps to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bitmaps, align 4
  %add.ptr.1 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 1
  %4 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %add.ptr.1, align 4
  tail call fastcc void @cleanup_bitmap_list(ptr noundef %sb, ptr noundef %add.ptr.1)
  %bitmaps.1 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 1, i32 1
  %5 = ptrtoint ptr %bitmaps.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bitmaps.1, align 4
  tail call void @vfree(ptr noundef %6) #13
  %7 = ptrtoint ptr %bitmaps.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bitmaps.1, align 4
  %add.ptr.2 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 2
  %8 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %add.ptr.2, align 4
  tail call fastcc void @cleanup_bitmap_list(ptr noundef %sb, ptr noundef %add.ptr.2)
  %bitmaps.2 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 2, i32 1
  %9 = ptrtoint ptr %bitmaps.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bitmaps.2, align 4
  tail call void @vfree(ptr noundef %10) #13
  %11 = ptrtoint ptr %bitmaps.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bitmaps.2, align 4
  %add.ptr.3 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 3
  %12 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %add.ptr.3, align 4
  tail call fastcc void @cleanup_bitmap_list(ptr noundef %sb, ptr noundef %add.ptr.3)
  %bitmaps.3 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 3, i32 1
  %13 = ptrtoint ptr %bitmaps.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bitmaps.3, align 4
  tail call void @vfree(ptr noundef %14) #13
  %15 = ptrtoint ptr %bitmaps.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %bitmaps.3, align 4
  %add.ptr.4 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 4
  %16 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %add.ptr.4, align 4
  tail call fastcc void @cleanup_bitmap_list(ptr noundef %sb, ptr noundef %add.ptr.4)
  %bitmaps.4 = getelementptr %struct.reiserfs_list_bitmap, ptr %jb_array, i32 4, i32 1
  %17 = ptrtoint ptr %bitmaps.4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmaps.4, align 4
  tail call void @vfree(ptr noundef %18) #13
  %19 = ptrtoint ptr %bitmaps.4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bitmaps.4, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_in_journal(ptr noundef %sb, i32 noundef %bmap_nr, i32 noundef %bit_nr, i32 noundef %search_all, ptr nocapture noundef writeonly %next_zero_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %4 = ptrtoint ptr %next_zero_bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %next_zero_bit, align 4
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %journal2 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 27, i32 32
  %6 = ptrtoint ptr %journal2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %journal2, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %journal2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %search_all)
  %tobool.not = icmp eq i32 %search_all, 0
  br i1 %tobool.not, label %if.end20.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %j_list_bitmap = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 49
  %div3.i = lshr i32 %bit_nr, 5
  %and.i = and i32 %bit_nr, 31
  %8 = shl nuw i32 1, %and.i
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_bitmap = getelementptr inbounds %struct.reiserfs_sb_info, ptr %10, i32 0, i32 27, i32 32, i32 1
  %11 = ptrtoint ptr %in_journal_bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in_journal_bitmap, align 4
  %inc6 = add i32 %12, 1
  store i32 %inc6, ptr %in_journal_bitmap, align 4
  %13 = ptrtoint ptr %j_list_bitmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %j_list_bitmap, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %for.cond.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end20.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %s_blocksize2197 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %15 = ptrtoint ptr %s_blocksize2197 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocksize2197, align 16
  %shl2298 = shl i32 %bmap_nr, 3
  %mul99 = mul i32 %shl2298, %16
  %add23100 = add i32 %mul99, %bit_nr
  br label %if.end30

land.lhs.true:                                    ; preds = %for.cond.preheader
  %bitmaps = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 0, i32 1
  %17 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmaps, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %bmap_nr
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true9

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i32, ptr %22, i32 %div3.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i, align 4
  %25 = and i32 %24, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not = icmp eq i32 %25, 0
  br i1 %tobool13.not, label %land.lhs.true9.for.inc_crit_edge, label %land.lhs.true9.if.then14_crit_edge

land.lhs.true9.if.then14_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true9.4.if.then14_crit_edge, %land.lhs.true9.3.if.then14_crit_edge, %land.lhs.true9.2.if.then14_crit_edge, %land.lhs.true9.1.if.then14_crit_edge, %land.lhs.true9.if.then14_crit_edge
  %.lcssa = phi ptr [ %22, %land.lhs.true9.if.then14_crit_edge ], [ %40, %land.lhs.true9.1.if.then14_crit_edge ], [ %55, %land.lhs.true9.2.if.then14_crit_edge ], [ %70, %land.lhs.true9.3.if.then14_crit_edge ], [ %85, %land.lhs.true9.4.if.then14_crit_edge ]
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %26 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize, align 16
  %shl = shl i32 %27, 3
  %add = add i32 %bit_nr, 1
  %call18 = tail call i32 @_find_next_zero_bit_be(ptr noundef %.lcssa, i32 noundef %shl, i32 noundef %add) #13
  %28 = ptrtoint ptr %next_zero_bit to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call18, ptr %next_zero_bit, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_bitmap.1 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %30, i32 0, i32 27, i32 32, i32 1
  %31 = ptrtoint ptr %in_journal_bitmap.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_journal_bitmap.1, align 4
  %inc6.1 = add i32 %32, 1
  store i32 %inc6.1, ptr %in_journal_bitmap.1, align 4
  %add.ptr.1 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 1
  %33 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.1, align 4
  %tobool7.not.1 = icmp eq ptr %34, null
  br i1 %tobool7.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %bitmaps.1 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 1, i32 1
  %35 = ptrtoint ptr %bitmaps.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bitmaps.1, align 4
  %arrayidx.1 = getelementptr ptr, ptr %36, i32 %bmap_nr
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.1, align 4
  %tobool8.not.1 = icmp eq ptr %38, null
  br i1 %tobool8.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true9.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

land.lhs.true9.1:                                 ; preds = %land.lhs.true.1
  %data.1 = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.1, align 4
  %arrayidx.i.1 = getelementptr i32, ptr %40, i32 %div3.i
  %41 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %arrayidx.i.1, align 4
  %43 = and i32 %42, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool13.not.1 = icmp eq i32 %43, 0
  br i1 %tobool13.not.1, label %land.lhs.true9.1.for.inc.1_crit_edge, label %land.lhs.true9.1.if.then14_crit_edge

land.lhs.true9.1.if.then14_crit_edge:             ; preds = %land.lhs.true9.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

land.lhs.true9.1.for.inc.1_crit_edge:             ; preds = %land.lhs.true9.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true9.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %44 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_bitmap.2 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %45, i32 0, i32 27, i32 32, i32 1
  %46 = ptrtoint ptr %in_journal_bitmap.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %in_journal_bitmap.2, align 4
  %inc6.2 = add i32 %47, 1
  store i32 %inc6.2, ptr %in_journal_bitmap.2, align 4
  %add.ptr.2 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 2
  %48 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.2, align 4
  %tobool7.not.2 = icmp eq ptr %49, null
  br i1 %tobool7.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %bitmaps.2 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 2, i32 1
  %50 = ptrtoint ptr %bitmaps.2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bitmaps.2, align 4
  %arrayidx.2 = getelementptr ptr, ptr %51, i32 %bmap_nr
  %52 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.2, align 4
  %tobool8.not.2 = icmp eq ptr %53, null
  br i1 %tobool8.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true9.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

land.lhs.true9.2:                                 ; preds = %land.lhs.true.2
  %data.2 = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.2, align 4
  %arrayidx.i.2 = getelementptr i32, ptr %55, i32 %div3.i
  %56 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i.2, align 4
  %58 = and i32 %57, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool13.not.2 = icmp eq i32 %58, 0
  br i1 %tobool13.not.2, label %land.lhs.true9.2.for.inc.2_crit_edge, label %land.lhs.true9.2.if.then14_crit_edge

land.lhs.true9.2.if.then14_crit_edge:             ; preds = %land.lhs.true9.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

land.lhs.true9.2.for.inc.2_crit_edge:             ; preds = %land.lhs.true9.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true9.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %59 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_bitmap.3 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %60, i32 0, i32 27, i32 32, i32 1
  %61 = ptrtoint ptr %in_journal_bitmap.3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %in_journal_bitmap.3, align 4
  %inc6.3 = add i32 %62, 1
  store i32 %inc6.3, ptr %in_journal_bitmap.3, align 4
  %add.ptr.3 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 3
  %63 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.3, align 4
  %tobool7.not.3 = icmp eq ptr %64, null
  br i1 %tobool7.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %bitmaps.3 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 3, i32 1
  %65 = ptrtoint ptr %bitmaps.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bitmaps.3, align 4
  %arrayidx.3 = getelementptr ptr, ptr %66, i32 %bmap_nr
  %67 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.3, align 4
  %tobool8.not.3 = icmp eq ptr %68, null
  br i1 %tobool8.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true9.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

land.lhs.true9.3:                                 ; preds = %land.lhs.true.3
  %data.3 = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.3, align 4
  %arrayidx.i.3 = getelementptr i32, ptr %70, i32 %div3.i
  %71 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx.i.3, align 4
  %73 = and i32 %72, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool13.not.3 = icmp eq i32 %73, 0
  br i1 %tobool13.not.3, label %land.lhs.true9.3.for.inc.3_crit_edge, label %land.lhs.true9.3.if.then14_crit_edge

land.lhs.true9.3.if.then14_crit_edge:             ; preds = %land.lhs.true9.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

land.lhs.true9.3.for.inc.3_crit_edge:             ; preds = %land.lhs.true9.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true9.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %74 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_bitmap.4 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %75, i32 0, i32 27, i32 32, i32 1
  %76 = ptrtoint ptr %in_journal_bitmap.4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %in_journal_bitmap.4, align 4
  %inc6.4 = add i32 %77, 1
  store i32 %inc6.4, ptr %in_journal_bitmap.4, align 4
  %add.ptr.4 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 4
  %78 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.4, align 4
  %tobool7.not.4 = icmp eq ptr %79, null
  br i1 %tobool7.not.4, label %for.inc.3.land.lhs.true25_crit_edge, label %land.lhs.true.4

for.inc.3.land.lhs.true25_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true25

land.lhs.true.4:                                  ; preds = %for.inc.3
  %bitmaps.4 = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 4, i32 1
  %80 = ptrtoint ptr %bitmaps.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bitmaps.4, align 4
  %arrayidx.4 = getelementptr ptr, ptr %81, i32 %bmap_nr
  %82 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.4, align 4
  %tobool8.not.4 = icmp eq ptr %83, null
  br i1 %tobool8.not.4, label %land.lhs.true.4.land.lhs.true25_crit_edge, label %land.lhs.true9.4

land.lhs.true.4.land.lhs.true25_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true25

land.lhs.true9.4:                                 ; preds = %land.lhs.true.4
  %data.4 = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %data.4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.4, align 4
  %arrayidx.i.4 = getelementptr i32, ptr %85, i32 %div3.i
  %86 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %arrayidx.i.4, align 4
  %88 = and i32 %87, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool13.not.4 = icmp eq i32 %88, 0
  br i1 %tobool13.not.4, label %land.lhs.true9.4.land.lhs.true25_crit_edge, label %land.lhs.true9.4.if.then14_crit_edge

land.lhs.true9.4.if.then14_crit_edge:             ; preds = %land.lhs.true9.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14

land.lhs.true9.4.land.lhs.true25_crit_edge:       ; preds = %land.lhs.true9.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %land.lhs.true9.4.land.lhs.true25_crit_edge, %land.lhs.true.4.land.lhs.true25_crit_edge, %for.inc.3.land.lhs.true25_crit_edge
  %s_blocksize21 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %89 = ptrtoint ptr %s_blocksize21 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_blocksize21, align 16
  %shl22 = shl i32 %bmap_nr, 3
  %mul = mul i32 %shl22, %90
  %add23 = add i32 %mul, %bit_nr
  %j_list_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 48
  %91 = ptrtoint ptr %sb to i32
  %shr.i70 = lshr i32 %91, 7
  %shl.i = shl i32 %add23, 7
  %92 = lshr i32 %add23, 13
  %shl2.i = shl i32 %add23, 1
  %xor.i = xor i32 %92, %shr.i70
  %xor3.i = xor i32 %xor.i, %shl.i
  %xor4.i = xor i32 %xor3.i, %shl2.i
  %and.i71 = and i32 %xor4.i, 8191
  %arrayidx.i72 = getelementptr ptr, ptr %j_list_hash_table, i32 %and.i71
  %93 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %cn.015.i = load ptr, ptr %arrayidx.i72, align 4
  %tobool.not16.i = icmp eq ptr %cn.015.i, null
  br i1 %tobool.not16.i, label %land.lhs.true25.if.end30_crit_edge, label %land.lhs.true25.while.body.i_crit_edge

land.lhs.true25.while.body.i_crit_edge:           ; preds = %land.lhs.true25
  br label %while.body.i

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %land.lhs.true25.while.body.i_crit_edge
  %cn.017.i = phi ptr [ %cn.0.i, %if.end.i.while.body.i_crit_edge ], [ %cn.015.i, %land.lhs.true25.while.body.i_crit_edge ]
  %blocknr.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 2
  %94 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %blocknr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %add23)
  %cmp.i = icmp eq i32 %95, %add23
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %sb5.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 1
  %96 = ptrtoint ptr %sb5.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sb5.i, align 4
  %cmp6.i = icmp eq ptr %97, %sb
  br i1 %cmp6.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %hnext.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 8
  %98 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %cn.0.i = load ptr, ptr %hnext.i, align 4
  %tobool.not.i = icmp eq ptr %cn.0.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end30_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.if.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.if.end30_crit_edge, %land.lhs.true25.if.end30_crit_edge, %if.end20.thread
  %add23101 = phi i32 [ %add23100, %if.end20.thread ], [ %add23, %land.lhs.true25.if.end30_crit_edge ], [ %add23, %if.end.i.if.end30_crit_edge ]
  %j_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 47
  %99 = ptrtoint ptr %sb to i32
  %shr.i73 = lshr i32 %99, 7
  %shl.i74 = shl i32 %add23101, 7
  %100 = lshr i32 %add23101, 13
  %shl2.i75 = shl i32 %add23101, 1
  %xor.i76 = xor i32 %100, %shr.i73
  %xor3.i77 = xor i32 %xor.i76, %shl.i74
  %xor4.i78 = xor i32 %xor3.i77, %shl2.i75
  %and.i79 = and i32 %xor4.i78, 8191
  %arrayidx.i80 = getelementptr ptr, ptr %j_hash_table, i32 %and.i79
  %101 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %101)
  %cn.015.i81 = load ptr, ptr %arrayidx.i80, align 4
  %tobool.not16.i82 = icmp eq ptr %cn.015.i81, null
  br i1 %tobool.not16.i82, label %if.end30.if.end38_crit_edge, label %if.end30.while.body.i86_crit_edge

if.end30.while.body.i86_crit_edge:                ; preds = %if.end30
  br label %while.body.i86

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

while.body.i86:                                   ; preds = %if.end.i93.while.body.i86_crit_edge, %if.end30.while.body.i86_crit_edge
  %cn.017.i83 = phi ptr [ %cn.0.i91, %if.end.i93.while.body.i86_crit_edge ], [ %cn.015.i81, %if.end30.while.body.i86_crit_edge ]
  %blocknr.i84 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i83, i32 0, i32 2
  %102 = ptrtoint ptr %blocknr.i84 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %blocknr.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %add23101)
  %cmp.i85 = icmp eq i32 %103, %add23101
  br i1 %cmp.i85, label %land.lhs.true.i89, label %while.body.i86.if.end.i93_crit_edge

while.body.i86.if.end.i93_crit_edge:              ; preds = %while.body.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i93

land.lhs.true.i89:                                ; preds = %while.body.i86
  %sb5.i87 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i83, i32 0, i32 1
  %104 = ptrtoint ptr %sb5.i87 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sb5.i87, align 4
  %cmp6.i88 = icmp eq ptr %105, %sb
  br i1 %cmp6.i88, label %do.body, label %land.lhs.true.i89.if.end.i93_crit_edge

land.lhs.true.i89.if.end.i93_crit_edge:           ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i93

if.end.i93:                                       ; preds = %land.lhs.true.i89.if.end.i93_crit_edge, %while.body.i86.if.end.i93_crit_edge
  %hnext.i90 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i83, i32 0, i32 8
  %106 = ptrtoint ptr %hnext.i90 to i32
  call void @__asan_load4_noabort(i32 %106)
  %cn.0.i91 = load ptr, ptr %hnext.i90, align 4
  %tobool.not.i92 = icmp eq ptr %cn.0.i91, null
  br i1 %tobool.not.i92, label %if.end.i93.if.end38_crit_edge, label %if.end.i93.while.body.i86_crit_edge

if.end.i93.while.body.i86_crit_edge:              ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i86

if.end.i93.if.end38_crit_edge:                    ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

do.body:                                          ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 505, 0\0A.popsection", ""() #13, !srcloc !293
  unreachable

if.end38:                                         ; preds = %if.end.i93.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %107 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_fs_info.i, align 16
  %in_journal_reusable = getelementptr inbounds %struct.reiserfs_sb_info, ptr %108, i32 0, i32 27, i32 32, i32 2
  %109 = ptrtoint ptr %in_journal_reusable to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %in_journal_reusable, align 4
  %inc42 = add i32 %110, 1
  store i32 %inc42, ptr %in_journal_reusable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %land.lhs.true.i.cleanup_crit_edge, %if.then14
  %retval.0 = phi i32 [ 1, %if.then14 ], [ 0, %if.end38 ], [ 1, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_free_jh(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %0 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %b_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %b_private, align 8
  %bh2 = getelementptr inbounds %struct.reiserfs_jh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %bh2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bh2, align 4
  %list = getelementptr inbounds %struct.reiserfs_jh, ptr %1, i32 0, i32 2
  %call.i.i14 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i14, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.reiserfs_jh, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.reiserfs_jh, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_reiserfs_jh, i32 noundef 4) #13
  %12 = load volatile i32, ptr @nr_reiserfs_jh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp slt i32 %12, 1
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 738, 0\0A.popsection", ""() #13, !srcloc !294
  unreachable

if.end:                                           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i13 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_reiserfs_jh, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_reiserfs_jh, i32 1, i32 3, i32 1) #13
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_reiserfs_jh, ptr nonnull @nr_reiserfs_jh, i32 1, ptr nonnull elementtype(i32) @nr_reiserfs_jh) #13, !srcloc !295
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !295
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_add_tail_list(ptr nocapture noundef readonly %inode, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  tail call fastcc void @__add_jh(ptr noundef %5, ptr noundef %bh, i32 noundef 1)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_jh(ptr noundef %j, ptr noundef %bh, i32 noundef %tail) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %0 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.no_jh_crit_edge, label %if.then

entry.no_jh_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %no_jh

if.then:                                          ; preds = %entry
  %j_dirty_buffers_lock = getelementptr inbounds %struct.reiserfs_journal, ptr %j, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %j_dirty_buffers_lock) #13
  %2 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_private, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock) #13
  br label %no_jh

if.end:                                           ; preds = %if.then
  %list = getelementptr inbounds %struct.reiserfs_jh, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.reiserfs_jh, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.reiserfs_jh, ptr %3, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %if.end21

no_jh:                                            ; preds = %if.then3, %entry.no_jh_crit_edge
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !297
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3136, i32 noundef 16) #17
  %tobool.not3.i = icmp eq ptr %call7.i2.i, null
  br i1 %tobool.not3.i, label %no_jh.if.end.i_crit_edge, label %no_jh.alloc_jh.exit_crit_edge

no_jh.alloc_jh.exit_crit_edge:                    ; preds = %no_jh
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_jh.exit

no_jh.if.end.i_crit_edge:                         ; preds = %no_jh
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %no_jh.if.end.i_crit_edge
  tail call void @yield() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3136, i32 noundef 16) #17
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end.i_crit_edge, label %if.end.i.alloc_jh.exit_crit_edge

if.end.i.alloc_jh.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %alloc_jh.exit

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

alloc_jh.exit:                                    ; preds = %if.end.i.alloc_jh.exit_crit_edge, %no_jh.alloc_jh.exit_crit_edge
  %call7.i.lcssa.i = phi ptr [ %call7.i2.i, %no_jh.alloc_jh.exit_crit_edge ], [ %call7.i.i, %if.end.i.alloc_jh.exit_crit_edge ]
  %call.i.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nr_reiserfs_jh, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @nr_reiserfs_jh, i32 1, i32 3, i32 1) #13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_reiserfs_jh, ptr nonnull @nr_reiserfs_jh, i32 1, ptr nonnull elementtype(i32) @nr_reiserfs_jh) #13, !srcloc !297
  %j_dirty_buffers_lock6 = getelementptr inbounds %struct.reiserfs_journal, ptr %j, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %j_dirty_buffers_lock6) #13
  %16 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_private, align 8
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %do.end18, label %do.body12, !prof !298

do.body12:                                        ; preds = %alloc_jh.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 766, 0\0A.popsection", ""() #13, !srcloc !299
  unreachable

do.end18:                                         ; preds = %alloc_jh.exit
  call void @__sanitizer_cov_trace_pc() #15
  %bh19 = getelementptr inbounds %struct.reiserfs_jh, ptr %call7.i.lcssa.i, i32 0, i32 1
  %18 = ptrtoint ptr %bh19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bh, ptr %bh19, align 4
  %19 = ptrtoint ptr %b_private to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.lcssa.i, ptr %b_private, align 8
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %list_del_init.exit
  %jh.0 = phi ptr [ %3, %list_del_init.exit ], [ %call7.i.lcssa.i, %do.end18 ]
  %j_current_jl = getelementptr inbounds %struct.reiserfs_journal, ptr %j, i32 0, i32 35
  %20 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %j_current_jl, align 4
  %22 = ptrtoint ptr %jh.0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %jh.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tail)
  %tobool22.not = icmp eq i32 %tail, 0
  %list27 = getelementptr inbounds %struct.reiserfs_jh, ptr %jh.0, i32 0, i32 2
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.end21
  %j_tail_bh_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %21, i32 0, i32 15
  %prev.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %21, i32 0, i32 15, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i2 = tail call zeroext i1 @__list_add_valid(ptr noundef %list27, ptr noundef %24, ptr noundef %j_tail_bh_list) #13
  br i1 %call.i.i2, label %if.then23.if.end29.sink.split_crit_edge, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then23.if.end29.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.sink.split

if.else26:                                        ; preds = %if.end21
  %j_bh_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %21, i32 0, i32 16
  %prev.i4 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %21, i32 0, i32 16, i32 1
  %25 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i4, align 4
  %call.i.i5 = tail call zeroext i1 @__list_add_valid(ptr noundef %list27, ptr noundef %26, ptr noundef %j_bh_list) #13
  br i1 %call.i.i5, label %if.else26.if.end29.sink.split_crit_edge, label %if.else26.if.end29_crit_edge

if.else26.if.end29_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.else26.if.end29.sink.split_crit_edge:          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else26.if.end29.sink.split_crit_edge, %if.then23.if.end29.sink.split_crit_edge
  %prev.i4.sink = phi ptr [ %prev.i, %if.then23.if.end29.sink.split_crit_edge ], [ %prev.i4, %if.else26.if.end29.sink.split_crit_edge ]
  %j_bh_list.sink = phi ptr [ %j_tail_bh_list, %if.then23.if.end29.sink.split_crit_edge ], [ %j_bh_list, %if.else26.if.end29.sink.split_crit_edge ]
  %.sink9 = phi ptr [ %24, %if.then23.if.end29.sink.split_crit_edge ], [ %26, %if.else26.if.end29.sink.split_crit_edge ]
  %27 = ptrtoint ptr %prev.i4.sink to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list27, ptr %prev.i4.sink, align 4
  %28 = ptrtoint ptr %list27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %j_bh_list.sink, ptr %list27, align 4
  %prev3.i.i6 = getelementptr inbounds %struct.reiserfs_jh, ptr %jh.0, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev3.i.i6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.sink9, ptr %prev3.i.i6, align 4
  %30 = ptrtoint ptr %.sink9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list27, ptr %.sink9, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else26.if.end29_crit_edge, %if.then23.if.end29_crit_edge
  %j_dirty_buffers_lock30 = getelementptr inbounds %struct.reiserfs_journal, ptr %j, i32 0, i32 44
  tail call void @_raw_spin_unlock(ptr noundef %j_dirty_buffers_lock30) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_add_ordered_list(ptr nocapture noundef readonly %inode, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  tail call fastcc void @__add_jh(ptr noundef %5, ptr noundef %bh, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_release(ptr noundef %th, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_journal_release(ptr noundef %th, ptr noundef %sb, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_journal_release(ptr noundef %th, ptr noundef %sb, i32 noundef %error) unnamed_addr #0 align 64 {
entry:
  %myth = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %myth) #13
  %0 = call ptr @memset(ptr %myth, i32 255, i32 36)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_journal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end47_crit_edge

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

land.lhs.true:                                    ; preds = %entry
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body, label %land.lhs.true.land.lhs.true26_crit_edge

land.lhs.true.land.lhs.true26_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26

do.body:                                          ; preds = %land.lhs.true
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %7 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %do.body7, label %do.end12, !prof !300

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1916, 0\0A.popsection", ""() #13, !srcloc !301
  unreachable

do.end12:                                         ; preds = %do.body
  %call13 = tail call fastcc i32 @do_journal_end(ptr noundef %th, i32 noundef 1)
  %9 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 146
  %13 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %journal_info.i, align 4
  %t_handle_save.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %myth, i32 0, i32 5
  %15 = ptrtoint ptr %t_handle_save.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %t_handle_save.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end12.journal_join.exit_crit_edge, label %land.rhs.i

do.end12.journal_join.exit_crit_edge:             ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_join.exit

land.rhs.i:                                       ; preds = %do.end12
  %t_refcount.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %t_refcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp sgt i32 %17, 1
  br i1 %cmp.i, label %do.body3.i, label %land.rhs.i.journal_join.exit_crit_edge, !prof !300

land.rhs.i.journal_join.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_join.exit

do.body3.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3204, 0\0A.popsection", ""() #13, !srcloc !302
  unreachable

journal_join.exit:                                ; preds = %land.rhs.i.journal_join.exit_crit_edge, %do.end12.journal_join.exit_crit_edge
  %call9.i = call fastcc i32 @do_journal_begin_r(ptr noundef nonnull %myth, ptr noundef %sb, i32 noundef 1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool15.not = icmp eq i32 %call9.i, 0
  br i1 %tobool15.not, label %if.then16, label %journal_join.exit.land.lhs.true26_crit_edge

journal_join.exit.land.lhs.true26_crit_edge:      ; preds = %journal_join.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true26

if.then16:                                        ; preds = %journal_join.exit
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call18 = call i32 @reiserfs_prepare_for_journal(ptr noundef %sb, ptr noundef %21, i32 noundef 1)
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call21 = call i32 @journal_mark_dirty(ptr noundef nonnull %myth, ptr noundef %25)
  %call22 = call fastcc i32 @do_journal_end(ptr noundef nonnull %myth, i32 noundef 1)
  br label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.then16, %journal_join.exit.land.lhs.true26_crit_edge, %land.lhs.true.land.lhs.true26_crit_edge
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal, ptr %4, i32 0, i32 6
  %26 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %j_state.i, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end47_crit_edge, label %if.then35, !prof !298

land.lhs.true26.if.end47_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then35:                                        ; preds = %land.lhs.true26
  %29 = call ptr @memset(ptr %myth, i32 0, i32 36)
  %call36 = call i32 @journal_join_abort(ptr noundef nonnull %myth, ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %if.then35.if.end47_crit_edge

if.then35.if.end47_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then38:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call41 = call i32 @reiserfs_prepare_for_journal(ptr noundef %sb, ptr noundef %33, i32 noundef 1)
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call44 = call i32 @journal_mark_dirty(ptr noundef nonnull %myth, ptr noundef %37)
  %call45 = call fastcc i32 @do_journal_end(ptr noundef nonnull %myth, i32 noundef 1)
  br label %if.end47

if.end47:                                         ; preds = %if.then38, %if.then35.if.end47_crit_edge, %land.lhs.true26.if.end47_crit_edge, %entry.if.end47_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %sb) #13
  call void @reiserfs_cancel_old_flush(ptr noundef %sb) #13
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal49 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %s_journal49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_journal49, align 4
  %j_work = getelementptr inbounds %struct.reiserfs_journal, ptr %41, i32 0, i32 55
  %call50 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %j_work) #13
  call fastcc void @free_journal_ram(ptr noundef %sb)
  call void @reiserfs_write_lock(ptr noundef %sb) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %myth) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_release_error(ptr nocapture noundef readnone %th, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  tail call void @reiserfs_write_unlock(ptr noundef %sb) #13
  tail call void @reiserfs_cancel_old_flush(ptr noundef %sb) #13
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_journal49.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal49.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal49.i, align 4
  %j_work.i = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 55
  %call50.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %j_work.i) #13
  tail call fastcc void @free_journal_ram(ptr noundef %sb) #13
  tail call void @reiserfs_write_lock(ptr noundef %sb) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_init(ptr noundef %sb, ptr noundef %j_dev_name, i32 noundef %old_format, i32 noundef %commit_max_age) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_rs, align 4
  %jp_journal_size = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %3, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %jp_journal_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %jp_journal_size, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %mul = shl i32 %6, 1
  %call1 = tail call noalias ptr @vzalloc(i32 noundef 66184) #16
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal3 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %s_journal3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %s_journal3, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %j_bitmap_nodes = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 42
  %10 = ptrtoint ptr %j_bitmap_nodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %j_bitmap_nodes, ptr %j_bitmap_nodes, align 4
  %prev.i = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 42, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %j_bitmap_nodes, ptr %prev.i, align 4
  %j_prealloc_list = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 50
  %12 = ptrtoint ptr %j_prealloc_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %j_prealloc_list, ptr %j_prealloc_list, align 4
  %prev.i323 = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 50, i32 1
  %13 = ptrtoint ptr %prev.i323 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %j_prealloc_list, ptr %prev.i323, align 4
  %j_working_list = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 46
  %14 = ptrtoint ptr %j_working_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %j_working_list, ptr %j_working_list, align 4
  %prev.i324 = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 46, i32 1
  %15 = ptrtoint ptr %prev.i324 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %j_working_list, ptr %prev.i324, align 4
  %j_journal_list = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 45
  %16 = ptrtoint ptr %j_journal_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %j_journal_list, ptr %j_journal_list, align 4
  %prev.i325 = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 45, i32 1
  %17 = ptrtoint ptr %prev.i325 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %j_journal_list, ptr %prev.i325, align 4
  %j_persistent_trans = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 51
  %18 = ptrtoint ptr %j_persistent_trans to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %j_persistent_trans, align 4
  %j_list_bitmap = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 49
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_rs.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %22, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  %sub.i = add i32 %25, -1
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %26 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %27, 3
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add i32 %div.i, 1
  %call5 = tail call i32 @reiserfs_allocate_list_bitmaps(ptr noundef %sb, ptr noundef %j_list_bitmap, i32 noundef %add.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.free_and_return_crit_edge

if.end.free_and_return_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_and_return

if.end8:                                          ; preds = %if.end
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_journal.i, align 4
  %j_bitmap_nodes.i = getelementptr inbounds %struct.reiserfs_journal, ptr %31, i32 0, i32 42
  %j_free_bitmap_nodes.i = getelementptr inbounds %struct.reiserfs_journal, ptr %31, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %list_add.exit.i.for.body.i_crit_edge, %if.end8
  %i.09.i = phi i32 [ 0, %if.end8 ], [ %inc2.i, %list_add.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3136, i32 noundef 16) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.allocate_bitmap_nodes.exit_crit_edge, label %if.end8.i.i.i.i

for.body.i.allocate_bitmap_nodes.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %allocate_bitmap_nodes.exit

if.end8.i.i.i.i:                                  ; preds = %for.body.i
  %33 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_blocksize.i, align 16
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %34, i32 noundef 3392) #16
  %data.i.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i.i.i, ptr %data.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.then.i

if.then4.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %allocate_bitmap_nodes.exit

if.then.i:                                        ; preds = %if.end8.i.i.i.i
  %36 = load i32, ptr @allocate_bitmap_node.id, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr @allocate_bitmap_node.id, align 4
  %37 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %call7.i.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %call7.i.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %j_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %j_bitmap_nodes.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %j_bitmap_nodes.i, ptr noundef %41) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add.exit.i_crit_edge

if.then.i.list_add.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list.i.i, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %list.i.i, align 8
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %j_bitmap_nodes.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %j_bitmap_nodes.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list.i.i, ptr %j_bitmap_nodes.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_add.exit.i_crit_edge
  %46 = ptrtoint ptr %j_free_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %j_free_bitmap_nodes.i, align 8
  %inc.i = add i32 %47, 1
  store i32 %inc.i, ptr %j_free_bitmap_nodes.i, align 8
  %inc2.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc2.i, 10
  br i1 %exitcond.not.i, label %list_add.exit.i.allocate_bitmap_nodes.exit_crit_edge, label %list_add.exit.i.for.body.i_crit_edge

list_add.exit.i.for.body.i_crit_edge:             ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

list_add.exit.i.allocate_bitmap_nodes.exit_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %allocate_bitmap_nodes.exit

allocate_bitmap_nodes.exit:                       ; preds = %list_add.exit.i.allocate_bitmap_nodes.exit_crit_edge, %if.then4.i.i, %for.body.i.allocate_bitmap_nodes.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_format)
  %tobool9.not = icmp eq i32 %old_format, 0
  %48 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_blocksize.i, align 16
  br i1 %tobool9.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %allocate_bitmap_nodes.exit
  call void @__sanitizer_cov_trace_pc() #15
  %div = udiv i32 8192, %49
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs.i328 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %s_rs.i328 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_rs.i328, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %53, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #13
  %sub.i329 = add i32 %56, -1
  %mul.i331 = shl i32 %49, 3
  %div.i332 = udiv i32 %sub.i329, %mul.i331
  %add = add nuw nsw i32 %div, 2
  %add11 = add i32 %add, %div.i332
  br label %cond.end

cond.false:                                       ; preds = %allocate_bitmap_nodes.exit
  call void @__sanitizer_cov_trace_pc() #15
  %div13 = udiv i32 65536, %49
  %add14 = add nuw nsw i32 %div13, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add11, %cond.true ], [ %add14, %cond.false ]
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal16 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %s_journal16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_journal16, align 4
  %j_1st_reserved_block = getelementptr inbounds %struct.reiserfs_journal, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %j_1st_reserved_block to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond, ptr %j_1st_reserved_block, align 4
  %62 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs18 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %s_rs18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_rs18, align 4
  %jp_journal_dev = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %64, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %jp_journal_dev to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %jp_journal_dev, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool21.not = icmp eq i32 %66, 0
  br i1 %tobool21.not, label %land.lhs.true, label %cond.end.if.end68_crit_edge

cond.end.if.end68_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

land.lhs.true:                                    ; preds = %cond.end
  %s_journal23 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %62, i32 0, i32 3
  %67 = ptrtoint ptr %s_journal23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_journal23, align 4
  %j_1st_reserved_block24 = getelementptr inbounds %struct.reiserfs_journal, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %j_1st_reserved_block24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %j_1st_reserved_block24, align 4
  %jp_journal_size29 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %64, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %jp_journal_size29 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %jp_journal_size29, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %add30 = add i32 %73, %70
  %74 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_blocksize.i, align 16
  %mul32 = shl i32 %75, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %mul32)
  %cmp = icmp ugt i32 %add30, %mul32
  br i1 %cmp, label %if.then33, label %land.lhs.true50

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.5, i32 noundef %70, i32 noundef %73, i32 noundef %75) #13
  br label %free_and_return

land.lhs.true50:                                  ; preds = %land.lhs.true
  %s_journal54 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %64, i32 0, i32 3
  %76 = ptrtoint ptr %s_journal54 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %s_journal54, align 1
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %s_journal23 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_journal23, align 4
  %j_1st_reserved_block57 = getelementptr inbounds %struct.reiserfs_journal, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %j_1st_reserved_block57 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %j_1st_reserved_block57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %82)
  %cmp58 = icmp ult i32 %78, %82
  br i1 %cmp58, label %if.then59, label %land.lhs.true50.if.end68_crit_edge

land.lhs.true50.if.end68_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then59:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.6, i32 noundef %82, i32 noundef %78) #13
  br label %free_and_return

if.end68:                                         ; preds = %land.lhs.true50.if.end68_crit_edge, %cond.end.if.end68_crit_edge
  %j_dev_bd.i = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 3
  %83 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %j_dev_bd.i, align 4
  %84 = ptrtoint ptr %s_rs18 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_rs18, align 4
  %jp_journal_dev.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %85, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %jp_journal_dev.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %jp_journal_dev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #13
  %and1.i.i = and i32 %88, 255
  %shr2.i.i = lshr i32 %88, 12
  %and3.i.i = and i32 %shr2.i.i, 1048320
  %or.i.i = or i32 %and3.i.i, %and1.i.i
  %89 = shl i32 %88, 12
  %shl.i.i = and i32 %89, -1048576
  %or4.i.i = or i32 %or.i.i, %shl.i.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 1
  %90 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %s_dev.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %or4.i.i, %cond.true.i ], [ %91, %cond.false.i ]
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %92 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_bdev.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bd_read_only.i.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i.i347 = icmp eq i8 %95, 0
  br i1 %tobool.not.i.i347, label %lor.rhs.i.i, label %cond.end.i.bdev_read_only.exit.thread.i_crit_edge

cond.end.i.bdev_read_only.exit.thread.i_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_read_only.exit.thread.i

lor.rhs.i.i:                                      ; preds = %cond.end.i
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %93, i32 0, i32 17
  %96 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %97, i32 0, i32 7
  %98 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %part0.i.i.i, align 4
  %bd_read_only.i.i.i = getelementptr inbounds %struct.block_device, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %bd_read_only.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bd_read_only.i.i.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i.i.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i.i.i, label %bdev_read_only.exit.i, label %lor.rhs.i.i.bdev_read_only.exit.thread.i_crit_edge

lor.rhs.i.i.bdev_read_only.exit.thread.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %bdev_read_only.exit.thread.i

bdev_read_only.exit.i:                            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %state.i.i.i = getelementptr inbounds %struct.gendisk, ptr %97, i32 0, i32 12
  %102 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %state.i.i.i, align 4
  %104 = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool8.not.i = icmp eq i32 %104, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 131, i32 1
  br label %bdev_read_only.exit.thread.i

bdev_read_only.exit.thread.i:                     ; preds = %bdev_read_only.exit.i, %lor.rhs.i.i.bdev_read_only.exit.thread.i_crit_edge, %cond.end.i.bdev_read_only.exit.thread.i_crit_edge
  %105 = phi i32 [ 1, %cond.end.i.bdev_read_only.exit.thread.i_crit_edge ], [ 1, %lor.rhs.i.i.bdev_read_only.exit.thread.i_crit_edge ], [ %spec.select.i, %bdev_read_only.exit.i ]
  %tobool9.not.i = icmp eq ptr %j_dev_name, null
  br i1 %tobool9.not.i, label %bdev_read_only.exit.thread.i.if.then11.i_crit_edge, label %lor.lhs.false.i

bdev_read_only.exit.thread.i.if.then11.i_crit_edge: ; preds = %bdev_read_only.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %bdev_read_only.exit.thread.i
  %106 = ptrtoint ptr %j_dev_name to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %j_dev_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool10.not.i = icmp eq i8 %107, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i.if.then11.i_crit_edge, label %if.end31.i

lor.lhs.false.i.if.then11.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.if.then11.i_crit_edge, %bdev_read_only.exit.thread.i.if.then11.i_crit_edge
  %s_dev12.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 1
  %108 = ptrtoint ptr %s_dev12.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_dev12.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %109)
  %cmp.i = icmp eq i32 %cond.i, %109
  %and.i = and i32 %105, 3
  %spec.select87.i = select i1 %cmp.i, i32 %and.i, i32 %105
  %call15.i = tail call ptr @blkdev_get_by_dev(i32 noundef %cond.i, i32 noundef %spec.select87.i, ptr noundef %call1) #13
  %110 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call15.i, ptr %j_dev_bd.i, align 4
  %j_dev_mode.i = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 4
  %111 = ptrtoint ptr %j_dev_mode.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.select87.i, ptr %j_dev_mode.i, align 8
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  %112 = ptrtoint ptr %call15.i to i32
  %113 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %j_dev_bd.i, align 4
  %shr.i = lshr i32 %cond.i, 20
  %and23.i = and i32 %cond.i, 1048575
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.journal_init_dev, ptr noundef nonnull @.str.53, i32 noundef %shr.i, i32 noundef %and23.i, i32 noundef %112) #13
  br label %if.then71

if.else.i:                                        ; preds = %if.then11.i
  %114 = ptrtoint ptr %s_dev12.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %s_dev12.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %115)
  %cmp25.not.i = icmp eq i32 %cond.i, %115
  br i1 %cmp25.not.i, label %if.else.i.if.end72_crit_edge, label %if.then26.i

if.else.i.if.end72_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %116 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %s_blocksize.i, align 16
  %call28.i = tail call i32 @set_blocksize(ptr noundef %call15.i, i32 noundef %117) #13
  br label %if.end72

if.end31.i:                                       ; preds = %lor.lhs.false.i
  %j_dev_mode32.i = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 4
  %118 = ptrtoint ptr %j_dev_mode32.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %105, ptr %j_dev_mode32.i, align 8
  %call33.i = tail call ptr @blkdev_get_by_path(ptr noundef nonnull %j_dev_name, i32 noundef %105, ptr noundef %call1) #13
  %119 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call33.i, ptr %j_dev_bd.i, align 4
  %cmp.i89.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89.i, label %if.then37.i, label %if.end41.i

if.then37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %call33.i to i32
  %121 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %j_dev_bd.i, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.journal_init_dev, ptr noundef nonnull @.str.55, ptr noundef nonnull %j_dev_name, i32 noundef %120) #13
  br label %if.then71

if.end41.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  %122 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %s_blocksize.i, align 16
  %call44.i = tail call i32 @set_blocksize(ptr noundef %call33.i, i32 noundef %123) #13
  %124 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %j_dev_bd.i, align 4
  tail call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %sb, ptr noundef nonnull @.str.56, ptr noundef %125) #13
  br label %if.end72

if.then71:                                        ; preds = %if.then37.i, %if.then19.i
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.8) #13
  br label %free_and_return

if.end72:                                         ; preds = %if.end41.i, %if.then26.i, %if.else.i.if.end72_crit_edge
  %126 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs74 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %s_rs74 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_rs74, align 4
  %s_journal76 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %127, i32 0, i32 3
  %130 = ptrtoint ptr %s_journal76 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_journal76, align 4
  %j_dev_bd = getelementptr inbounds %struct.reiserfs_journal, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %j_dev_bd to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %j_dev_bd, align 4
  %s_journal80 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %129, i32 0, i32 3
  %134 = ptrtoint ptr %s_journal80 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %s_journal80, align 1
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %jp_journal_size86 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %129, i32 0, i32 3, i32 2
  %137 = ptrtoint ptr %jp_journal_size86 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %jp_journal_size86, align 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %add87 = add i32 %139, %136
  %conv = zext i32 %add87 to i64
  %140 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %133, i64 noundef %conv, i32 noundef %141, i32 noundef 8) #13
  %tobool90.not = icmp eq ptr %call.i, null
  br i1 %tobool90.not, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.10) #13
  br label %free_and_return

if.end92:                                         ; preds = %if.end72
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %142 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %b_data, align 4
  %call93 = tail call i32 @is_reiserfs_jr(ptr noundef %129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end92.if.end108_crit_edge, label %land.lhs.true95

if.end92.if.end108_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

land.lhs.true95:                                  ; preds = %if.end92
  %jp_journal_magic = getelementptr inbounds %struct.reiserfs_journal_header, ptr %143, i32 0, i32 3, i32 4
  %144 = ptrtoint ptr %jp_journal_magic to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %jp_journal_magic, align 4
  %jp_journal_magic98 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %129, i32 0, i32 3, i32 4
  %146 = ptrtoint ptr %jp_journal_magic98 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %jp_journal_magic98, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp99.not = icmp eq i32 %145, %147
  br i1 %cmp99.not, label %land.lhs.true95.if.end108_crit_edge, label %brelse.exit

land.lhs.true95.if.end108_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end108

brelse.exit:                                      ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #15
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %149 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %j_dev_bd.i, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.12, i32 noundef %145, ptr noundef %150, i32 noundef %148) #13
  tail call void @__brelse(ptr noundef nonnull %call.i) #13
  br label %free_and_return

if.end108:                                        ; preds = %land.lhs.true95.if.end108_crit_edge, %if.end92.if.end108_crit_edge
  %jp_journal_trans_max = getelementptr inbounds %struct.reiserfs_journal_header, ptr %143, i32 0, i32 3, i32 3
  %151 = ptrtoint ptr %jp_journal_trans_max to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %jp_journal_trans_max, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %j_trans_max = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 28
  %154 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %j_trans_max, align 8
  %jp_journal_max_batch = getelementptr inbounds %struct.reiserfs_journal_header, ptr %143, i32 0, i32 3, i32 5
  %155 = ptrtoint ptr %jp_journal_max_batch to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %jp_journal_max_batch, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %j_max_batch = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 29
  %158 = ptrtoint ptr %j_max_batch to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %j_max_batch, align 4
  %jp_journal_max_commit_age = getelementptr inbounds %struct.reiserfs_journal_header, ptr %143, i32 0, i32 3, i32 6
  %159 = ptrtoint ptr %jp_journal_max_commit_age to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %jp_journal_max_commit_age, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160)
  %j_max_commit_age = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 30
  %162 = ptrtoint ptr %j_max_commit_age to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %j_max_commit_age, align 8
  %j_max_trans_age = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 31
  %163 = ptrtoint ptr %j_max_trans_age to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 30, ptr %j_max_trans_age, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.i355 = icmp eq i32 %152, 0
  %164 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %s_blocksize.i, align 16
  br i1 %tobool.not.i355, label %if.else.i363, label %if.then.i357

if.then.i357:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %165)
  %cmp.i356 = icmp ult i32 %165, 4096
  br i1 %cmp.i356, label %if.then1.i, label %if.then.i357.if.end.i_crit_edge

if.then.i357.if.end.i_crit_edge:                  ; preds = %if.then.i357
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i357
  call void @__sanitizer_cov_trace_pc() #15
  %div.rhs.trunc.i = trunc i32 %165 to i16
  %div54.i = udiv i16 4096, %div.rhs.trunc.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i357.if.end.i_crit_edge
  %ratio.0.i = phi i16 [ %div54.i, %if.then1.i ], [ 1, %if.then.i357.if.end.i_crit_edge ]
  %div455.i = udiv i16 1024, %ratio.0.i
  %div4.zext.i = zext i16 %div455.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %div4.zext.i)
  %cmp5.i = icmp ugt i32 %153, %div4.zext.i
  br i1 %cmp5.i, label %if.end.i.if.then13.i_crit_edge, label %lor.lhs.false.i358

if.end.i.if.then13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

lor.lhs.false.i358:                               ; preds = %if.end.i
  %div756.i = udiv i16 256, %ratio.0.i
  %div7.zext.i = zext i16 %div756.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %div7.zext.i)
  %cmp8.i = icmp ult i32 %153, %div7.zext.i
  br i1 %cmp8.i, label %lor.lhs.false.i358.if.then13.i_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i358.if.then13.i_crit_edge:         ; preds = %lor.lhs.false.i358
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i358
  %166 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs.i360 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %s_rs.i360 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %s_rs.i360, align 4
  %jp_journal_size.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %169, i32 0, i32 3, i32 2
  %170 = ptrtoint ptr %jp_journal_size.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %jp_journal_size.i, align 1
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #13
  %div11.i = udiv i32 %172, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div11.i)
  %cmp12.i = icmp ult i32 %div11.i, 2
  br i1 %cmp12.i, label %lor.lhs.false9.i.if.then13.i_crit_edge, label %if.end15.i

lor.lhs.false9.i.if.then13.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false9.i.if.then13.i_crit_edge, %lor.lhs.false.i358.if.then13.i_crit_edge, %if.end.i.if.then13.i_crit_edge
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.check_advise_trans_params, ptr noundef nonnull @.str.57, i32 noundef %153) #13
  br label %free_and_return

if.end15.i:                                       ; preds = %lor.lhs.false9.i
  %mul.i361 = mul i32 %153, 900
  %div1751.i = lshr i32 %mul.i361, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %div1751.i)
  %cmp18.not.i = icmp eq i32 %157, %div1751.i
  br i1 %cmp18.not.i, label %if.end15.i.if.end116_crit_edge, label %if.then19.i362

if.end15.i.if.end116_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then19.i362:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.check_advise_trans_params, ptr noundef nonnull @.str.59, i32 noundef %157) #13
  br label %free_and_return

if.else.i363:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %165)
  %cmp23.not.i = icmp eq i32 %165, 4096
  br i1 %cmp23.not.i, label %if.end26.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.else.i363
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.check_advise_trans_params, ptr noundef nonnull @.str.61, i32 noundef %165) #13
  br label %free_and_return

if.end26.i:                                       ; preds = %if.else.i363
  call void @__sanitizer_cov_trace_pc() #15
  %173 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1024, ptr %j_trans_max, align 8
  %174 = ptrtoint ptr %j_max_batch to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 900, ptr %j_max_batch, align 4
  %175 = ptrtoint ptr %j_max_commit_age to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 30, ptr %j_max_commit_age, align 8
  br label %if.end116

if.end116:                                        ; preds = %if.end26.i, %if.end15.i.if.end116_crit_edge
  %176 = ptrtoint ptr %j_max_commit_age to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %j_max_commit_age, align 8
  %j_default_max_commit_age = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 32
  %178 = ptrtoint ptr %j_default_max_commit_age to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %j_default_max_commit_age, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %commit_max_age)
  %cmp118.not = icmp eq i32 %commit_max_age, 0
  br i1 %cmp118.not, label %if.end116.brelse.exit369_crit_edge, label %if.then120

if.end116.brelse.exit369_crit_edge:               ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit369

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %179 = ptrtoint ptr %j_max_commit_age to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %commit_max_age, ptr %j_max_commit_age, align 8
  %180 = ptrtoint ptr %j_max_trans_age to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %commit_max_age, ptr %j_max_trans_age, align 4
  br label %brelse.exit369

brelse.exit369:                                   ; preds = %if.then120, %if.end116.brelse.exit369_crit_edge
  %181 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %j_dev_bd.i, align 4
  %183 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs126 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %s_rs126 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %s_rs126, align 4
  %jp_journal_size129 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %186, i32 0, i32 3, i32 2
  %187 = ptrtoint ptr %jp_journal_size129 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %jp_journal_size129, align 1
  %189 = tail call i32 @llvm.bswap.i32(i32 %188)
  %s_journal133 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %186, i32 0, i32 3
  %190 = ptrtoint ptr %s_journal133 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %s_journal133, align 1
  %192 = tail call i32 @llvm.bswap.i32(i32 %191)
  %193 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %j_trans_max, align 8
  %195 = ptrtoint ptr %j_max_batch to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %j_max_batch, align 4
  %197 = ptrtoint ptr %j_max_commit_age to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %j_max_commit_age, align 8
  %199 = ptrtoint ptr %j_max_trans_age to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %j_max_trans_age, align 4
  tail call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %sb, ptr noundef nonnull @.str.13, ptr noundef %182, i32 noundef %189, i32 noundef %192, i32 noundef %194, i32 noundef %196, i32 noundef %198, i32 noundef %200) #13
  tail call void @__brelse(ptr noundef nonnull %call.i) #13
  %j_list_bitmap_index = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 22
  %201 = ptrtoint ptr %j_list_bitmap_index to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %j_list_bitmap_index, align 8
  tail call fastcc void @journal_list_init(ptr noundef %sb)
  %j_list_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 48
  %202 = call ptr @memset(ptr %j_list_hash_table, i32 0, i32 32768)
  %j_dirty_buffers = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 43
  %203 = ptrtoint ptr %j_dirty_buffers to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %j_dirty_buffers, ptr %j_dirty_buffers, align 4
  %prev.i370 = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 43, i32 1
  %204 = ptrtoint ptr %prev.i370 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %j_dirty_buffers, ptr %prev.i370, align 4
  %j_dirty_buffers_lock = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %j_dirty_buffers_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @journal_init.__key, i16 noundef signext 3) #13
  %j_start = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 9
  %205 = ptrtoint ptr %j_start to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %j_start, align 4
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 10
  %206 = ptrtoint ptr %j_len to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %j_len, align 8
  %j_len_alloc = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 11
  %207 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %j_len_alloc, align 4
  %j_wcount = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_wcount, i32 noundef 4) #13
  %208 = ptrtoint ptr %j_wcount to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile i32 0, ptr %j_wcount, align 4
  %j_async_throttle = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 57
  %call.i.i320 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_async_throttle, i32 noundef 4) #13
  %209 = ptrtoint ptr %j_async_throttle to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile i32 0, ptr %j_async_throttle, align 4
  %j_bcount = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 13
  %210 = ptrtoint ptr %j_bcount to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %j_bcount, align 4
  %j_trans_start_time = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 17
  %211 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 0, ptr %j_trans_start_time, align 8
  %j_last = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 1
  %212 = ptrtoint ptr %j_last to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr null, ptr %j_last, align 4
  %j_first = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 2
  %213 = ptrtoint ptr %j_first to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr null, ptr %j_first, align 8
  %j_join_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %j_join_wait, ptr noundef nonnull @.str.16, ptr noundef nonnull @journal_init.__key.15) #13
  %j_mutex = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %j_mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @journal_init.__key.17) #13
  %j_flush_mutex = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %j_flush_mutex, ptr noundef nonnull @.str.20, ptr noundef nonnull @journal_init.__key.19) #13
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 7
  %214 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 10, ptr %j_trans_id, align 4
  %j_mount_id = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 8
  %215 = ptrtoint ptr %j_mount_id to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 10, ptr %j_mount_id, align 8
  %j_state = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 6
  %216 = ptrtoint ptr %j_state to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %j_state, align 8
  %j_jlock = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 21
  %call.i.i321 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_jlock, i32 noundef 4) #13
  %217 = ptrtoint ptr %j_jlock to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile i32 0, ptr %j_jlock, align 4
  %call150 = tail call fastcc ptr @allocate_cnodes(i32 noundef %mul)
  %j_cnode_free_list = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 33
  %218 = ptrtoint ptr %j_cnode_free_list to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call150, ptr %j_cnode_free_list, align 4
  %j_cnode_free_orig = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 34
  %219 = ptrtoint ptr %j_cnode_free_orig to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call150, ptr %j_cnode_free_orig, align 8
  %tobool153.not = icmp eq ptr %call150, null
  %spec.select = select i1 %tobool153.not, i32 0, i32 %mul
  %j_cnode_free = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 27
  %220 = ptrtoint ptr %j_cnode_free to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %spec.select, ptr %j_cnode_free, align 4
  %j_cnode_used = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 26
  %221 = ptrtoint ptr %j_cnode_used to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %j_cnode_used, align 8
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 23
  %222 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 0, ptr %j_must_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp159 = icmp eq i32 %spec.select, 0
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %brelse.exit369
  call void @__sanitizer_cov_trace_pc() #15
  %mul162 = mul i32 %6, 72
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.22, i32 noundef %mul162) #13
  br label %free_and_return

if.end163:                                        ; preds = %brelse.exit369
  %223 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i372 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %s_journal.i372 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %s_journal.i372, align 4
  %j_hash_table.i = getelementptr inbounds %struct.reiserfs_journal, ptr %226, i32 0, i32 47
  %227 = call ptr @memset(ptr %j_hash_table.i, i32 0, i32 32768)
  %j_current_jl = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 35
  %228 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %j_current_jl, align 4
  tail call void @reiserfs_write_lock(ptr noundef %sb) #13
  %call164 = tail call fastcc ptr @get_list_bitmap(ptr noundef %sb, ptr noundef %229)
  %j_list_bitmap165 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %229, i32 0, i32 9
  %230 = ptrtoint ptr %j_list_bitmap165 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call164, ptr %j_list_bitmap165, align 8
  tail call void @reiserfs_write_unlock(ptr noundef %sb) #13
  %231 = ptrtoint ptr %j_list_bitmap165 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %j_list_bitmap165, align 8
  %tobool167.not = icmp eq ptr %232, null
  br i1 %tobool167.not, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.24) #13
  br label %free_and_return

if.end169:                                        ; preds = %if.end163
  %call170 = tail call fastcc i32 @journal_read(ptr noundef %sb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %cmp171 = icmp slt i32 %call170, 0
  br i1 %cmp171, label %if.then173, label %do.body176

if.then173:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.journal_init, ptr noundef nonnull @.str.26) #13
  br label %free_and_return

do.body176:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #15
  %j_work = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 55
  tail call void @__init_work(ptr noundef %j_work, i32 noundef 0) #13
  %233 = ptrtoint ptr %j_work to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -64, ptr %j_work, align 4
  %lockdep_map = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 55, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @journal_init.__key.27, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry183 = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 55, i32 0, i32 1
  %234 = ptrtoint ptr %entry183 to i32
  call void @__asan_store4_noabort(i32 %234)
  store volatile ptr %entry183, ptr %entry183, align 4
  %prev.i373 = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 55, i32 0, i32 1, i32 1
  %235 = ptrtoint ptr %prev.i373 to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %entry183, ptr %prev.i373, align 4
  %func = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 55, i32 0, i32 2
  %236 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @flush_async_commits, ptr %func, align 4
  %timer = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 55, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.30, ptr noundef nonnull @journal_init.__key.29) #13
  %j_work_sb = getelementptr inbounds %struct.reiserfs_journal, ptr %call1, i32 0, i32 56
  %237 = ptrtoint ptr %j_work_sb to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %sb, ptr %j_work_sb, align 8
  br label %cleanup

free_and_return:                                  ; preds = %if.then173, %if.then168, %if.then161, %if.then24.i, %if.then19.i362, %if.then13.i, %brelse.exit, %if.then91, %if.then71, %if.then59, %if.then33, %if.end.free_and_return_crit_edge
  tail call fastcc void @free_journal_ram(ptr noundef %sb)
  br label %cleanup

cleanup:                                          ; preds = %free_and_return, %do.body176, %if.then
  %retval.0 = phi i32 [ 1, %free_and_return ], [ 0, %do.body176 ], [ 1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_reiserfs_jr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @journal_list_init(ptr nocapture noundef readonly %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 36160, i32 noundef 184) #17
  %j_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 13
  %1 = ptrtoint ptr %j_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %j_list.i, ptr %j_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %j_list.i, ptr %prev.i.i, align 4
  %j_working_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 14
  %3 = ptrtoint ptr %j_working_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %j_working_list.i, ptr %j_working_list.i, align 8
  %prev.i8.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %j_working_list.i, ptr %prev.i8.i, align 4
  %j_tail_bh_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 15
  %5 = ptrtoint ptr %j_tail_bh_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %j_tail_bh_list.i, ptr %j_tail_bh_list.i, align 8
  %prev.i9.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %j_tail_bh_list.i, ptr %prev.i9.i, align 4
  %j_bh_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 16
  %7 = ptrtoint ptr %j_bh_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %j_bh_list.i, ptr %j_bh_list.i, align 8
  %prev.i10.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %8 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %j_bh_list.i, ptr %prev.i10.i, align 4
  %j_commit_mutex.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %j_commit_mutex.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @alloc_journal_list.__key) #13
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_journal.i, align 4
  %j_num_lists.i = getelementptr inbounds %struct.reiserfs_journal, ptr %12, i32 0, i32 38
  %13 = ptrtoint ptr %j_num_lists.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_num_lists.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %j_num_lists.i, align 8
  %j_refcount.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %j_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %j_refcount.i.i, align 8
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %j_refcount.i.i, align 8
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_journal, align 4
  %j_current_jl = getelementptr inbounds %struct.reiserfs_journal, ptr %19, i32 0, i32 35
  %20 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %j_current_jl, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @allocate_cnodes(i32 noundef %num_cnodes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_cnodes)
  %cmp = icmp slt i32 %num_cnodes, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_cnodes, i32 36) #13
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %retval.0.i = select i1 %1, i32 -1, i32 %2
  %call1 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %prev = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %call1, i32 0, i32 6
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %prev, align 4
  %add.ptr = getelementptr %struct.reiserfs_journal_cnode, ptr %call1, i32 1
  %next = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_cnodes)
  %cmp533 = icmp ugt i32 %num_cnodes, 1
  br i1 %cmp533, label %if.end3.for.body_crit_edge, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.034 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 1, %if.end3.for.body_crit_edge ]
  %sub = add nsw i32 %i.034, -1
  %add.ptr6 = getelementptr %struct.reiserfs_journal_cnode, ptr %call1, i32 %sub
  %prev8 = getelementptr %struct.reiserfs_journal_cnode, ptr %call1, i32 %i.034, i32 6
  %5 = ptrtoint ptr %prev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr6, ptr %prev8, align 4
  %add = add nuw nsw i32 %i.034, 1
  %add.ptr9 = getelementptr %struct.reiserfs_journal_cnode, ptr %call1, i32 %add
  %next11 = getelementptr %struct.reiserfs_journal_cnode, ptr %call1, i32 %i.034, i32 5
  %6 = ptrtoint ptr %next11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr9, ptr %next11, align 4
  %exitcond.not = icmp eq i32 %add, %num_cnodes
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  %sub12 = add nsw i32 %num_cnodes, -1
  %next14 = getelementptr %struct.reiserfs_journal_cnode, ptr %call1, i32 %sub12, i32 5
  %7 = ptrtoint ptr %next14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %next14, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %for.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_list_bitmap(ptr noundef %sb, ptr noundef %jl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %j_list_bitmap_index = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 22
  %j_list_bitmap = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %if.then.for.body_crit_edge, %entry
  %j.034 = phi i32 [ 0, %entry ], [ %inc, %if.then.for.body_crit_edge ]
  %4 = ptrtoint ptr %j_list_bitmap_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %j_list_bitmap_index, align 8
  %add = add i32 %5, 1
  %rem = srem i32 %add, 5
  store i32 %rem, ptr %j_list_bitmap_index, align 8
  %arrayidx = getelementptr %struct.reiserfs_journal, ptr %3, i32 0, i32 49, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.then

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then:                                          ; preds = %for.body
  tail call fastcc void @flush_commit_list(ptr noundef %sb, ptr noundef nonnull %7, i32 noundef 1)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %9, null
  %inc = add nuw nsw i32 %j.034, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 15
  %or.cond = select i1 %tobool10.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.then.for.end_crit_edge, %for.body.for.end_crit_edge
  %add.ptr.le = getelementptr %struct.reiserfs_list_bitmap, ptr %j_list_bitmap, i32 %5
  %10 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.le, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end16, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %add.ptr.le to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %jl, ptr %add.ptr.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.le, %if.end16 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @journal_read(ptr noundef %sb) unnamed_addr #0 align 64 {
entry:
  %bhlist.i = alloca [64 x ptr], align 4
  %oldest_invalid_trans_id = alloca i32, align 4
  %newest_mount_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oldest_invalid_trans_id) #13
  %4 = ptrtoint ptr %oldest_invalid_trans_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %oldest_invalid_trans_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newest_mount_id) #13
  %5 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 9, ptr %newest_mount_id, align 4
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_rs, align 4
  %s_journal2 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_journal2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %s_journal2, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %j_dev_bd = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %j_dev_bd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %j_dev_bd, align 4
  tail call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %sb, ptr noundef nonnull @.str.73, ptr noundef %12) #13
  %call3 = tail call i64 @ktime_get_seconds() #13
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal5 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %s_journal5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_journal5, align 4
  %j_dev_bd6 = getelementptr inbounds %struct.reiserfs_journal, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %j_dev_bd6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %j_dev_bd6, align 4
  %s_rs8 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %s_rs8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_rs8, align 4
  %s_journal10 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_journal10 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %s_journal10, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %jp_journal_size = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %20, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %jp_journal_size to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %jp_journal_size, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %add = add i32 %26, %23
  %conv = zext i32 %add to i64
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %27 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %18, i64 noundef %conv, i32 noundef %28, i32 noundef 8) #13
  %j_header_bh = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 16
  %29 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %j_header_bh, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data, align 4
  %j_first_unflushed_offset = getelementptr inbounds %struct.reiserfs_journal_header, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %j_first_unflushed_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %j_first_unflushed_offset, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs20 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %s_rs20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_rs20, align 4
  %jp_journal_size23 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %38, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %jp_journal_size23 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %jp_journal_size23, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %41)
  %cmp = icmp ult i32 %34, %41
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end56_crit_edge

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp25.not = icmp eq i32 %43, 0
  br i1 %cmp25.not, label %land.lhs.true.if.end56_crit_edge, label %if.then27

land.lhs.true.if.end56_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then27:                                        ; preds = %land.lhs.true
  %s_journal31 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %38, i32 0, i32 3
  %44 = ptrtoint ptr %s_journal31 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %s_journal31, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %add34 = add i32 %46, %34
  %47 = tail call i32 @llvm.bswap.i32(i32 %43)
  %add36 = add i32 %47, 1
  %j_mount_id = getelementptr inbounds %struct.reiserfs_journal_header, ptr %31, i32 0, i32 2
  %48 = ptrtoint ptr %j_mount_id to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %j_mount_id, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %newest_mount_id, align 4
  %52 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %31, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.74, i32 noundef %34, i32 noundef %54) #13
  %55 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal40 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %s_journal40 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_journal40, align 4
  %j_dev_bd41 = getelementptr inbounds %struct.reiserfs_journal, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %j_dev_bd41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %j_dev_bd41, align 4
  %s_rs43 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %s_rs43 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %s_rs43, align 4
  %s_journal45 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %s_journal45 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %s_journal45, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  %66 = ptrtoint ptr %j_first_unflushed_offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %j_first_unflushed_offset, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %add48 = add i32 %68, %65
  %conv49 = zext i32 %add48 to i64
  %69 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %s_blocksize, align 16
  %call.i338 = tail call ptr @__bread_gfp(ptr noundef %60, i64 noundef %conv49, i32 noundef %70, i32 noundef 8) #13
  %call52 = tail call fastcc i32 @journal_transaction_is_valid(ptr noundef %sb, ptr noundef %call.i338, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp ne i32 %call52, 0
  %tobool.not.i = icmp eq ptr %call.i338, null
  br i1 %tobool.not.i, label %if.then27.start_log_replay_crit_edge, label %if.then.i

if.then27.start_log_replay_crit_edge:             ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %start_log_replay

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call.i338) #13
  br label %start_log_replay

if.end56:                                         ; preds = %land.lhs.true.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %71 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs59482 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %s_rs59482 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_rs59482, align 4
  %s_journal61483 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %s_journal61483 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %s_journal61483, align 1
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %jp_journal_size67484 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %74, i32 0, i32 3, i32 2
  %78 = ptrtoint ptr %jp_journal_size67484 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %jp_journal_size67484, align 1
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %add68485 = add i32 %80, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %add68485, i32 %10)
  %cmp69486 = icmp ugt i32 %add68485, %10
  br i1 %cmp69486, label %while.body.lr.ph, label %if.end56.if.end134_crit_edge

if.end56.if.end134_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

while.body.lr.ph:                                 ; preds = %if.end56
  %81 = getelementptr inbounds i8, ptr %bhlist.i, i32 4
  br label %while.body

while.body:                                       ; preds = %brelse.exit349.while.body_crit_edge, %while.body.lr.ph
  %add68493 = phi i32 [ %add68485, %while.body.lr.ph ], [ %add68, %brelse.exit349.while.body_crit_edge ]
  %cur_dblock.0489 = phi i32 [ %10, %while.body.lr.ph ], [ %cur_dblock.1, %brelse.exit349.while.body_crit_edge ]
  %oldest_start.0488 = phi i32 [ 0, %while.body.lr.ph ], [ %oldest_start.2, %brelse.exit349.while.body_crit_edge ]
  %oldest_trans_id.0487 = phi i32 [ 0, %while.body.lr.ph ], [ %oldest_trans_id.2, %brelse.exit349.while.body_crit_edge ]
  %82 = ptrtoint ptr %j_dev_bd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %j_dev_bd, align 4
  %84 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bhlist.i) #13
  %86 = call ptr @memset(ptr %81, i32 255, i32 252)
  %conv.i = zext i32 %cur_dblock.0489 to i64
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %83, i64 noundef %conv.i, i32 noundef %85, i32 noundef 8) #13
  %87 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i343 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i343, label %if.end.i, label %while.body.reiserfs_breada.exit_crit_edge

while.body.reiserfs_breada.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %reiserfs_breada.exit

if.end.i:                                         ; preds = %while.body
  %add.i = add i32 %cur_dblock.0489, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add68493)
  %cmp.i = icmp ugt i32 %add.i, %add68493
  %sub.i = sub i32 %add68493, %cur_dblock.0489
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 64
  %89 = ptrtoint ptr %bhlist.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.i, ptr %bhlist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.i)
  %cmp568.i = icmp ugt i32 %spec.select.i, 1
  br i1 %cmp568.i, label %if.end.i.for.body.i_crit_edge, label %for.end.thread.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.end.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bhlist.i) #13
  br label %for.end23.i

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %j.070.i = phi i32 [ %inc.i, %if.else.i.for.body.i_crit_edge ], [ 1, %if.end.i.for.body.i_crit_edge ]
  %add7.i = add i32 %j.070.i, %cur_dblock.0489
  %conv8.i = zext i32 %add7.i to i64
  %call.i57.i = call ptr @__getblk_gfp(ptr noundef %83, i64 noundef %conv8.i, i32 noundef %85, i32 noundef 8) #13
  %90 = ptrtoint ptr %call.i57.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %call.i57.i, align 4
  %and1.i.i55.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i55.i)
  %tobool11.not.i = icmp eq i32 %and1.i.i55.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i
  %tobool.not.i.i = icmp eq ptr %call.i57.i, null
  br i1 %tobool.not.i.i, label %if.then12.i.for.end.i_crit_edge, label %if.then.i.i

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %call.i57.i) #13
  br label %for.end.i

if.else.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %j.070.i, 1
  %arrayidx13.i = getelementptr [64 x ptr], ptr %bhlist.i, i32 0, i32 %j.070.i
  %92 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i57.i, ptr %arrayidx13.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %spec.select.i
  br i1 %cmp5.i, label %if.else.i.for.body.i_crit_edge, label %if.else.i.for.end.i_crit_edge

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %if.else.i.for.end.i_crit_edge, %if.then.i.i, %if.then12.i.for.end.i_crit_edge
  %j.067.i = phi i32 [ %j.070.i, %if.then.i.i ], [ %j.070.i, %if.then12.i.for.end.i_crit_edge ], [ %inc.i, %if.else.i.for.end.i_crit_edge ]
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef %j.067.i, ptr noundef nonnull %bhlist.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.067.i)
  %cmp1771.i = icmp sgt i32 %j.067.i, 1
  br i1 %cmp1771.i, label %for.end.i.for.body19.i_crit_edge, label %for.end.i.for.end23.i_crit_edge

for.end.i.for.end23.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end23.i

for.end.i.for.body19.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body19.i

for.body19.i:                                     ; preds = %brelse.exit60.i.for.body19.i_crit_edge, %for.end.i.for.body19.i_crit_edge
  %i.172.i = phi i32 [ %inc22.i, %brelse.exit60.i.for.body19.i_crit_edge ], [ 1, %for.end.i.for.body19.i_crit_edge ]
  %arrayidx20.i = getelementptr [64 x ptr], ptr %bhlist.i, i32 0, i32 %i.172.i
  %93 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx20.i, align 4
  %tobool.not.i58.i = icmp eq ptr %94, null
  br i1 %tobool.not.i58.i, label %for.body19.i.brelse.exit60.i_crit_edge, label %if.then.i59.i

for.body19.i.brelse.exit60.i_crit_edge:           ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit60.i

if.then.i59.i:                                    ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %94) #13
  br label %brelse.exit60.i

brelse.exit60.i:                                  ; preds = %if.then.i59.i, %for.body19.i.brelse.exit60.i_crit_edge
  %inc22.i = add nuw nsw i32 %i.172.i, 1
  %exitcond.not.i = icmp eq i32 %inc22.i, %j.067.i
  br i1 %exitcond.not.i, label %brelse.exit60.i.for.end23.i_crit_edge, label %brelse.exit60.i.for.body19.i_crit_edge

brelse.exit60.i.for.body19.i_crit_edge:           ; preds = %brelse.exit60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19.i

brelse.exit60.i.for.end23.i_crit_edge:            ; preds = %brelse.exit60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end23.i

for.end23.i:                                      ; preds = %brelse.exit60.i.for.end23.i_crit_edge, %for.end.i.for.end23.i_crit_edge, %for.end.thread.i
  %95 = ptrtoint ptr %bhlist.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bhlist.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 354) #13
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  %99 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i61.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i61.i, label %for.end23.i.wait_on_buffer.exit.i_crit_edge, label %if.then.i62.i

for.end23.i.wait_on_buffer.exit.i_crit_edge:      ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_on_buffer.exit.i

if.then.i62.i:                                    ; preds = %for.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__wait_on_buffer(ptr noundef %96) #13
  br label %wait_on_buffer.exit.i

wait_on_buffer.exit.i:                            ; preds = %if.then.i62.i, %for.end23.i.wait_on_buffer.exit.i_crit_edge
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %96, align 4
  %and1.i.i56.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i56.i)
  %tobool26.not.i = icmp eq i32 %and1.i.i56.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %wait_on_buffer.exit.i.reiserfs_breada.exit_crit_edge

wait_on_buffer.exit.i.reiserfs_breada.exit_crit_edge: ; preds = %wait_on_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reiserfs_breada.exit

if.end28.i:                                       ; preds = %wait_on_buffer.exit.i
  %tobool.not.i63.i = icmp eq ptr %96, null
  br i1 %tobool.not.i63.i, label %if.end28.i.reiserfs_breada.exit_crit_edge, label %if.then.i64.i

if.end28.i.reiserfs_breada.exit_crit_edge:        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reiserfs_breada.exit

if.then.i64.i:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %96) #13
  br label %reiserfs_breada.exit

reiserfs_breada.exit:                             ; preds = %if.then.i64.i, %if.end28.i.reiserfs_breada.exit_crit_edge, %wait_on_buffer.exit.i.reiserfs_breada.exit_crit_edge, %while.body.reiserfs_breada.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i.i, %while.body.reiserfs_breada.exit_crit_edge ], [ %96, %wait_on_buffer.exit.i.reiserfs_breada.exit_crit_edge ], [ null, %if.end28.i.reiserfs_breada.exit_crit_edge ], [ null, %if.then.i64.i ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bhlist.i) #13
  %call85 = call fastcc i32 @journal_transaction_is_valid(ptr noundef %sb, ptr noundef %retval.0.i, ptr noundef nonnull %oldest_invalid_trans_id, ptr noundef nonnull %newest_mount_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call85)
  %cmp86 = icmp eq i32 %call85, 1
  br i1 %cmp86, label %if.then88, label %reiserfs_breada.exit.if.end125_crit_edge

reiserfs_breada.exit.if.end125_crit_edge:         ; preds = %reiserfs_breada.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then88:                                        ; preds = %reiserfs_breada.exit
  %b_data89 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i, i32 0, i32 5
  %102 = ptrtoint ptr %b_data89 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_data89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oldest_start.0488)
  %cmp90 = icmp eq i32 %oldest_start.0488, 0
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %106 = call i32 @llvm.bswap.i32(i32 %105)
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i, i32 0, i32 3
  %107 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %b_blocknr, align 8
  %conv93 = trunc i64 %108 to i32
  %j_mount_id94 = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %103, i32 0, i32 2
  %109 = ptrtoint ptr %j_mount_id94 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %j_mount_id94, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %newest_mount_id, align 4
  br label %if.end114.sink.split

if.else:                                          ; preds = %if.then88
  call void @__sanitizer_cov_trace_cmp4(i32 %oldest_trans_id.0487, i32 %106)
  %cmp101 = icmp ugt i32 %oldest_trans_id.0487, %106
  br i1 %cmp101, label %if.then103, label %if.else.if.end114_crit_edge

if.else.if.end114_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then103:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr105 = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i, i32 0, i32 3
  %113 = ptrtoint ptr %b_blocknr105 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %b_blocknr105, align 8
  %conv106 = trunc i64 %114 to i32
  br label %if.end114.sink.split

if.end114.sink.split:                             ; preds = %if.then103, %if.then92
  %conv106.sink = phi i32 [ %conv106, %if.then103 ], [ %conv93, %if.then92 ]
  %.str.76.sink = phi ptr [ @.str.76, %if.then103 ], [ @.str.75, %if.then92 ]
  %115 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs108 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %s_rs108 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %s_rs108, align 4
  %s_journal110 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %s_journal110 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %s_journal110, align 1
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  %sub112 = sub i32 %conv106.sink, %121
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull %.str.76.sink, i32 noundef %sub112, i32 noundef %106) #13
  br label %if.end114

if.end114:                                        ; preds = %if.end114.sink.split, %if.else.if.end114_crit_edge
  %oldest_trans_id.1 = phi i32 [ %oldest_trans_id.0487, %if.else.if.end114_crit_edge ], [ %106, %if.end114.sink.split ]
  %oldest_start.1 = phi i32 [ %oldest_start.0488, %if.else.if.end114_crit_edge ], [ %conv106.sink, %if.end114.sink.split ]
  %122 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %newest_mount_id, align 4
  %j_mount_id115 = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %103, i32 0, i32 2
  %124 = ptrtoint ptr %j_mount_id115 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %j_mount_id115, align 4
  %126 = call i32 @llvm.bswap.i32(i32 %125)
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %126)
  %cmp116 = icmp ult i32 %123, %126
  br i1 %cmp116, label %if.then118, label %if.end114.if.end121_crit_edge

if.end114.if.end121_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  %127 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %newest_mount_id, align 4
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.77, i32 noundef %126) #13
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.end114.if.end121_crit_edge
  %j_len = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %103, i32 0, i32 1
  %128 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %j_len, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129)
  %add122 = add i32 %130, 2
  br label %if.end125

if.end125:                                        ; preds = %if.end121, %reiserfs_breada.exit.if.end125_crit_edge
  %oldest_trans_id.2 = phi i32 [ %oldest_trans_id.1, %if.end121 ], [ %oldest_trans_id.0487, %reiserfs_breada.exit.if.end125_crit_edge ]
  %oldest_start.2 = phi i32 [ %oldest_start.1, %if.end121 ], [ %oldest_start.0488, %reiserfs_breada.exit.if.end125_crit_edge ]
  %add122.pn = phi i32 [ %add122, %if.end121 ], [ 1, %reiserfs_breada.exit.if.end125_crit_edge ]
  %cur_dblock.1 = add i32 %add122.pn, %cur_dblock.0489
  %tobool.not.i346 = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i346, label %if.end125.brelse.exit349_crit_edge, label %if.then.i347

if.end125.brelse.exit349_crit_edge:               ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit349

if.then.i347:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %retval.0.i) #13
  br label %brelse.exit349

brelse.exit349:                                   ; preds = %if.then.i347, %if.end125.brelse.exit349_crit_edge
  %131 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs59 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %s_rs59 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_rs59, align 4
  %s_journal61 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %s_journal61 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %s_journal61, align 1
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  %jp_journal_size67 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %134, i32 0, i32 3, i32 2
  %138 = ptrtoint ptr %jp_journal_size67 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %jp_journal_size67, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139)
  %add68 = add i32 %140, %137
  %cmp69 = icmp ugt i32 %add68, %cur_dblock.1
  br i1 %cmp69, label %brelse.exit349.while.body_crit_edge, label %brelse.exit349.start_log_replay_crit_edge

brelse.exit349.start_log_replay_crit_edge:        ; preds = %brelse.exit349
  call void @__sanitizer_cov_trace_pc() #15
  br label %start_log_replay

brelse.exit349.while.body_crit_edge:              ; preds = %brelse.exit349
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

start_log_replay:                                 ; preds = %brelse.exit349.start_log_replay_crit_edge, %if.then.i, %if.then27.start_log_replay_crit_edge
  %oldest_trans_id.3 = phi i32 [ %add36, %if.then27.start_log_replay_crit_edge ], [ %add36, %if.then.i ], [ %oldest_trans_id.2, %brelse.exit349.start_log_replay_crit_edge ]
  %oldest_start.3 = phi i32 [ %add34, %if.then27.start_log_replay_crit_edge ], [ %add34, %if.then.i ], [ %oldest_start.2, %brelse.exit349.start_log_replay_crit_edge ]
  %tobool168.not = phi i1 [ true, %if.then27.start_log_replay_crit_edge ], [ true, %if.then.i ], [ false, %brelse.exit349.start_log_replay_crit_edge ]
  %continue_replay.1.shrunk = phi i1 [ %tobool53.not, %if.then27.start_log_replay_crit_edge ], [ %tobool53.not, %if.then.i ], [ true, %brelse.exit349.start_log_replay_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oldest_trans_id.3)
  %tobool126.not = icmp eq i32 %oldest_trans_id.3, 0
  br i1 %tobool126.not, label %start_log_replay.if.end134_crit_edge, label %if.then127

start_log_replay.if.end134_crit_edge:             ; preds = %start_log_replay
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then127:                                       ; preds = %start_log_replay
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs129 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %s_rs129 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %s_rs129, align 4
  %s_journal131 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %s_journal131 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %s_journal131, align 1
  %147 = call i32 @llvm.bswap.i32(i32 %146)
  %sub133 = sub i32 %oldest_start.3, %147
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.78, i32 noundef %sub133, i32 noundef %oldest_trans_id.3) #13
  br label %if.end134

if.end134:                                        ; preds = %if.then127, %start_log_replay.if.end134_crit_edge, %if.end56.if.end134_crit_edge
  %tobool126.not607 = phi i1 [ false, %if.then127 ], [ true, %start_log_replay.if.end134_crit_edge ], [ true, %if.end56.if.end134_crit_edge ]
  %continue_replay.1.shrunk606 = phi i1 [ %continue_replay.1.shrunk, %if.then127 ], [ %continue_replay.1.shrunk, %start_log_replay.if.end134_crit_edge ], [ true, %if.end56.if.end134_crit_edge ]
  %tobool168.not605 = phi i1 [ %tobool168.not, %if.then127 ], [ %tobool168.not, %start_log_replay.if.end134_crit_edge ], [ false, %if.end56.if.end134_crit_edge ]
  %oldest_start.3604 = phi i32 [ %oldest_start.3, %if.then127 ], [ %oldest_start.3, %start_log_replay.if.end134_crit_edge ], [ 0, %if.end56.if.end134_crit_edge ]
  %oldest_trans_id.3603 = phi i32 [ %oldest_trans_id.3, %if.then127 ], [ 0, %start_log_replay.if.end134_crit_edge ], [ 0, %if.end56.if.end134_crit_edge ]
  %tobool136.not = xor i1 %continue_replay.1.shrunk606, true
  %or.cond = or i1 %tobool126.not607, %tobool136.not
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %j_start = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 9
  br label %while.cond135

while.cond135:                                    ; preds = %if.end151.while.cond135_crit_edge, %if.end134
  %cur_dblock.2 = phi i32 [ %oldest_start.3604, %if.end134 ], [ %add157, %if.end151.while.cond135_crit_edge ]
  %replay_count.0 = phi i32 [ 0, %if.end134 ], [ %inc158, %if.end151.while.cond135_crit_edge ]
  br i1 %or.cond, label %while.cond135.while.end163_crit_edge, label %while.body141

while.cond135.while.end163_crit_edge:             ; preds = %while.cond135
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end163

while.body141:                                    ; preds = %while.cond135
  %148 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %newest_mount_id, align 4
  %150 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %151, i32 0, i32 3
  %152 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_journal.i, align 4
  %j_dev_bd.i = getelementptr inbounds %struct.reiserfs_journal, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %j_dev_bd.i, align 4
  %conv.i351 = zext i32 %cur_dblock.2 to i64
  %156 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_blocksize, align 16
  %call.i.i352 = call ptr @__bread_gfp(ptr noundef %155, i64 noundef %conv.i351, i32 noundef %157, i32 noundef 8) #13
  %tobool.not.i353 = icmp eq ptr %call.i.i352, null
  br i1 %tobool.not.i353, label %while.body141.while.end163_crit_edge, label %if.end.i355

while.body141.while.end163_crit_edge:             ; preds = %while.body141
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end163

if.end.i355:                                      ; preds = %while.body141
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i352, i32 0, i32 5
  %158 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %b_data.i, align 4
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i352, i32 0, i32 3
  %160 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %b_blocknr.i, align 8
  %162 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %s_rs.i, align 4
  %s_journal5.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %s_journal5.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %s_journal5.i, align 1
  %168 = call i32 @llvm.bswap.i32(i32 %167) #13
  %169 = trunc i64 %161 to i32
  %conv7.i = sub i32 %169, %168
  %conv14.i = zext i32 %168 to i64
  %sub15.i = sub i64 %161, %conv14.i
  %j_len.i = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %159, i32 0, i32 1
  %170 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %j_len.i, align 4
  %172 = call i32 @llvm.bswap.i32(i32 %171) #13
  %j_mount_id.i = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %159, i32 0, i32 2
  %173 = ptrtoint ptr %j_mount_id.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %j_mount_id.i, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174) #13
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.90, i64 noundef %sub15.i, i32 noundef %172, i32 noundef %175) #13
  %176 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %159, align 4
  %178 = call i32 @llvm.bswap.i32(i32 %177) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %oldest_trans_id.3603)
  %cmp.i354 = icmp ult i32 %178, %oldest_trans_id.3603
  br i1 %cmp.i354, label %brelse.exit.i, label %if.end24.i

brelse.exit.i:                                    ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #15
  %179 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs19.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %s_rs19.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %s_rs19.i, align 4
  %s_journal21.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %s_journal21.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %s_journal21.i, align 1
  %185 = call i32 @llvm.bswap.i32(i32 %184) #13
  %sub23.i = sub i32 %cur_dblock.2, %185
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.91, i32 noundef %sub23.i) #13
  br label %while.end163.sink.split

if.end24.i:                                       ; preds = %if.end.i355
  %186 = ptrtoint ptr %j_mount_id.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %j_mount_id.i, align 4
  %188 = call i32 @llvm.bswap.i32(i32 %187) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %149)
  %cmp26.not.i = icmp eq i32 %188, %149
  br i1 %cmp26.not.i, label %if.end30.i, label %brelse.exit14.i

brelse.exit14.i:                                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.92, i32 noundef %188, i32 noundef %149) #13
  br label %while.end163.sink.split

if.end30.i:                                       ; preds = %if.end24.i
  %189 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal32.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %190, i32 0, i32 3
  %191 = ptrtoint ptr %s_journal32.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %s_journal32.i, align 4
  %j_dev_bd33.i = getelementptr inbounds %struct.reiserfs_journal, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %j_dev_bd33.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %j_dev_bd33.i, align 4
  %s_rs35.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %190, i32 0, i32 1
  %195 = ptrtoint ptr %s_rs35.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %s_rs35.i, align 4
  %s_journal37.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %s_journal37.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %s_journal37.i, align 1
  %199 = call i32 @llvm.bswap.i32(i32 %198) #13
  %200 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %j_len.i, align 4
  %202 = call i32 @llvm.bswap.i32(i32 %201) #13
  %add.i356 = add i32 %conv7.i, 1
  %add40.i = add i32 %202, %add.i356
  %jp_journal_size.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %196, i32 0, i32 3, i32 2
  %203 = ptrtoint ptr %jp_journal_size.i to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %jp_journal_size.i, align 1
  %205 = call i32 @llvm.bswap.i32(i32 %204) #13
  %rem.i = urem i32 %add40.i, %205
  %add45.i = add i32 %rem.i, %199
  %conv46.i = zext i32 %add45.i to i64
  %206 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %s_blocksize, align 16
  %call.i18.i = call ptr @__bread_gfp(ptr noundef %194, i64 noundef %conv46.i, i32 noundef %207, i32 noundef 8) #13
  %tobool49.not.i = icmp eq ptr %call.i18.i, null
  br i1 %tobool49.not.i, label %if.end30.i.while.end163.sink.split_crit_edge, label %if.end51.i

if.end30.i.while.end163.sink.split_crit_edge:     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end163.sink.split

if.end51.i:                                       ; preds = %if.end30.i
  %b_data52.i = getelementptr inbounds %struct.buffer_head, ptr %call.i18.i, i32 0, i32 5
  %208 = ptrtoint ptr %b_data52.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %b_data52.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %212 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %159, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %213)
  %cmp.not.i.i = icmp eq i32 %211, %213
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end51.i.brelse.exit28.i_crit_edge

if.end51.i.brelse.exit28.i_crit_edge:             ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit28.i

lor.lhs.false.i.i:                                ; preds = %if.end51.i
  %j_len.i.i = getelementptr inbounds %struct.reiserfs_journal_commit, ptr %209, i32 0, i32 1
  %214 = ptrtoint ptr %j_len.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %j_len.i.i, align 4
  %216 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %j_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp3.not.i.i = icmp eq i32 %215, %217
  br i1 %cmp3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.brelse.exit28.i_crit_edge

lor.lhs.false.i.i.brelse.exit28.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit28.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %218 = call i32 @llvm.bswap.i32(i32 %215) #13
  %219 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %s_journal.i.i, align 4
  %j_trans_max.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %222, i32 0, i32 28
  %223 = ptrtoint ptr %j_trans_max.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %j_trans_max.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %224)
  %cmp6.i.i = icmp ugt i32 %218, %224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp9.i.not.i = icmp eq i32 %215, 0
  %or.cond194.i = select i1 %cmp6.i.i, i1 true, i1 %cmp9.i.not.i
  br i1 %or.cond194.i, label %lor.lhs.false4.i.i.brelse.exit28.i_crit_edge, label %if.end66.i

lor.lhs.false4.i.i.brelse.exit28.i_crit_edge:     ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit28.i

brelse.exit28.i:                                  ; preds = %lor.lhs.false4.i.i.brelse.exit28.i_crit_edge, %lor.lhs.false.i.i.brelse.exit28.i_crit_edge, %if.end51.i.brelse.exit28.i_crit_edge
  %b_blocknr56.i = getelementptr inbounds %struct.buffer_head, ptr %call.i18.i, i32 0, i32 3
  %225 = ptrtoint ptr %b_blocknr56.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %b_blocknr56.i, align 8
  %227 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs58.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %s_rs58.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %s_rs58.i, align 4
  %s_journal60.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %s_journal60.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %232 = load i32, ptr %s_journal60.i, align 1
  %233 = call i32 @llvm.bswap.i32(i32 %232) #13
  %conv62.i = zext i32 %233 to i64
  %sub63.i = sub i64 %226, %conv62.i
  %234 = call i32 @llvm.bswap.i32(i32 %211) #13
  %j_len65.i = getelementptr inbounds %struct.reiserfs_journal_commit, ptr %209, i32 0, i32 1
  %235 = ptrtoint ptr %j_len65.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %j_len65.i, align 4
  %237 = call i32 @llvm.bswap.i32(i32 %236) #13
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.93, i64 noundef %sub63.i, i32 noundef %234, i32 noundef %237) #13
  call void @__brelse(ptr noundef nonnull %call.i18.i) #13
  br label %while.end163.sink.split

if.end66.i:                                       ; preds = %lor.lhs.false4.i.i
  %238 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %s_bdev.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %239, i32 0, i32 4
  %240 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %bd_read_only.i.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool.not.i29.i = icmp eq i8 %241, 0
  br i1 %tobool.not.i29.i, label %lor.rhs.i.i, label %if.end66.i.brelse.exit35.i_crit_edge

if.end66.i.brelse.exit35.i_crit_edge:             ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit35.i

lor.rhs.i.i:                                      ; preds = %if.end66.i
  %bd_disk.i.i = getelementptr inbounds %struct.block_device, ptr %239, i32 0, i32 17
  %242 = ptrtoint ptr %bd_disk.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bd_disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %243, i32 0, i32 7
  %244 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %part0.i.i.i, align 4
  %bd_read_only.i.i.i = getelementptr inbounds %struct.block_device, ptr %245, i32 0, i32 4
  %246 = ptrtoint ptr %bd_read_only.i.i.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %bd_read_only.i.i.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool.not.i.i.i = icmp eq i8 %247, 0
  br i1 %tobool.not.i.i.i, label %bdev_read_only.exit.i, label %lor.rhs.i.i.brelse.exit35.i_crit_edge

lor.rhs.i.i.brelse.exit35.i_crit_edge:            ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit35.i

bdev_read_only.exit.i:                            ; preds = %lor.rhs.i.i
  %state.i.i.i = getelementptr inbounds %struct.gendisk, ptr %243, i32 0, i32 12
  %248 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %state.i.i.i, align 4
  %250 = and i32 %249, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool68.not.i = icmp eq i32 %250, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %bdev_read_only.exit.i.brelse.exit35.i_crit_edge

bdev_read_only.exit.i.brelse.exit35.i_crit_edge:  ; preds = %bdev_read_only.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit35.i

brelse.exit35.i:                                  ; preds = %bdev_read_only.exit.i.brelse.exit35.i_crit_edge, %lor.rhs.i.i.brelse.exit35.i_crit_edge, %if.end66.i.brelse.exit35.i_crit_edge
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.journal_read_transaction, ptr noundef nonnull @.str.95) #13
  call void @__brelse(ptr noundef nonnull %call.i18.i) #13
  call void @__brelse(ptr noundef nonnull %call.i.i352) #13
  br label %cleanup

if.end70.i:                                       ; preds = %bdev_read_only.exit.i
  %251 = call i32 @llvm.bswap.i32(i32 %211) #13
  %252 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %218, i32 4) #13
  %253 = extractvalue { i32, i1 } %252, 1
  br i1 %253, label %if.end70.i.kmalloc_array.exit.i_crit_edge, label %if.end7.i.i, !prof !300

if.end70.i.kmalloc_array.exit.i_crit_edge:        ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kmalloc_array.exit.i

if.end7.i.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #15
  %254 = extractvalue { i32, i1 } %252, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %254, i32 noundef 3136) #16
  br label %kmalloc_array.exit.i

kmalloc_array.exit.i:                             ; preds = %if.end7.i.i, %if.end70.i.kmalloc_array.exit.i_crit_edge
  %retval.0.i36.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.end70.i.kmalloc_array.exit.i_crit_edge ]
  %255 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %j_len.i, align 4
  %257 = call i32 @llvm.bswap.i32(i32 %256) #13
  %258 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %257, i32 4) #13
  %259 = extractvalue { i32, i1 } %258, 1
  br i1 %259, label %kmalloc_array.exit.i.brelse.exit77.i_crit_edge, label %if.end7.i67.i, !prof !300

kmalloc_array.exit.i.brelse.exit77.i_crit_edge:   ; preds = %kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit77.i

if.end7.i67.i:                                    ; preds = %kmalloc_array.exit.i
  %260 = extractvalue { i32, i1 } %258, 0
  %call8.i66.i = call noalias align 128 ptr @__kmalloc(i32 noundef %260, i32 noundef 3136) #16
  %tobool76.not.i = icmp eq ptr %retval.0.i36.i, null
  %tobool77.not.i = icmp eq ptr %call8.i66.i, null
  %or.cond.i = select i1 %tobool76.not.i, i1 true, i1 %tobool77.not.i
  br i1 %or.cond.i, label %if.end7.i67.i.brelse.exit77.i_crit_edge, label %if.end79.i

if.end7.i67.i.brelse.exit77.i_crit_edge:          ; preds = %if.end7.i67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit77.i

brelse.exit77.i:                                  ; preds = %if.end7.i67.i.brelse.exit77.i_crit_edge, %kmalloc_array.exit.i.brelse.exit77.i_crit_edge
  %retval.0.i68192.i = phi ptr [ %call8.i66.i, %if.end7.i67.i.brelse.exit77.i_crit_edge ], [ null, %kmalloc_array.exit.i.brelse.exit77.i_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i18.i) #13
  call void @__brelse(ptr noundef nonnull %call.i.i352) #13
  call void @kfree(ptr noundef %retval.0.i36.i) #13
  call void @kfree(ptr noundef %retval.0.i68192.i) #13
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.96, ptr noundef nonnull @__func__.journal_read_transaction, ptr noundef nonnull @.str.97) #13
  br label %cleanup

if.end79.i:                                       ; preds = %if.end7.i67.i
  %261 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %s_blocksize, align 16
  %sub83.i = add i32 %262, -24
  %div1.i = lshr i32 %sub83.i, 2
  %263 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %j_len.i, align 4
  %265 = call i32 @llvm.bswap.i32(i32 %264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp85204.not.i = icmp eq i32 %264, 0
  br i1 %cmp85204.not.i, label %if.end79.i.for.end.i359_crit_edge, label %if.end79.i.for.body.i357_crit_edge

if.end79.i.for.body.i357_crit_edge:               ; preds = %if.end79.i
  br label %for.body.i357

if.end79.i.for.end.i359_crit_edge:                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i359

for.body.i357:                                    ; preds = %for.inc.i.for.body.i357_crit_edge, %if.end79.i.for.body.i357_crit_edge
  %i.0205.i = phi i32 [ %inc.i358, %for.inc.i.for.body.i357_crit_edge ], [ 0, %if.end79.i.for.body.i357_crit_edge ]
  %266 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal88.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %267, i32 0, i32 3
  %268 = ptrtoint ptr %s_journal88.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %s_journal88.i, align 4
  %j_dev_bd89.i = getelementptr inbounds %struct.reiserfs_journal, ptr %269, i32 0, i32 3
  %270 = ptrtoint ptr %j_dev_bd89.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %j_dev_bd89.i, align 4
  %s_rs91.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %267, i32 0, i32 1
  %272 = ptrtoint ptr %s_rs91.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %s_rs91.i, align 4
  %s_journal93.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %273, i32 0, i32 3
  %274 = ptrtoint ptr %s_journal93.i to i32
  call void @__asan_loadN_noabort(i32 %274, i32 4)
  %275 = load i32, ptr %s_journal93.i, align 1
  %276 = call i32 @llvm.bswap.i32(i32 %275) #13
  %add96.i = add i32 %i.0205.i, %add.i356
  %jp_journal_size101.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %273, i32 0, i32 3, i32 2
  %277 = ptrtoint ptr %jp_journal_size101.i to i32
  call void @__asan_loadN_noabort(i32 %277, i32 4)
  %278 = load i32, ptr %jp_journal_size101.i, align 1
  %279 = call i32 @llvm.bswap.i32(i32 %278) #13
  %rem102.i = urem i32 %add96.i, %279
  %add103.i = add i32 %rem102.i, %276
  %conv104.i = zext i32 %add103.i to i64
  %280 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %s_blocksize, align 16
  %call.i81.i = call ptr @__getblk_gfp(ptr noundef %271, i64 noundef %conv104.i, i32 noundef %281, i32 noundef 8) #13
  %arrayidx.i = getelementptr ptr, ptr %retval.0.i36.i, i32 %i.0205.i
  %282 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call.i81.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0205.i, i32 %div1.i)
  %cmp107.i = icmp slt i32 %i.0205.i, %div1.i
  %sub115.i = sub i32 %i.0205.i, %div1.i
  %arrayidx116.i = getelementptr %struct.reiserfs_journal_commit, ptr %209, i32 0, i32 2, i32 %sub115.i
  %arrayidx110.i = getelementptr %struct.reiserfs_journal_desc, ptr %159, i32 0, i32 3, i32 %i.0205.i
  %arrayidx116.sink.i = select i1 %cmp107.i, ptr %arrayidx110.i, ptr %arrayidx116.i
  %283 = ptrtoint ptr %arrayidx116.sink.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx116.sink.i, align 4
  %285 = call i32 @llvm.bswap.i32(i32 %284) #13
  %conv117.i = zext i32 %285 to i64
  %286 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %s_bdev.i, align 4
  %288 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %s_blocksize, align 16
  %call.i85.i = call ptr @__getblk_gfp(ptr noundef %287, i64 noundef %conv117.i, i32 noundef %289, i32 noundef 8) #13
  %290 = getelementptr ptr, ptr %call8.i66.i, i32 %i.0205.i
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %call.i85.i, ptr %290, align 4
  %b_blocknr122.i = getelementptr inbounds %struct.buffer_head, ptr %call.i85.i, i32 0, i32 3
  %292 = ptrtoint ptr %b_blocknr122.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %b_blocknr122.i, align 8
  %294 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs124.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %s_rs124.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %s_rs124.i, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_loadN_noabort(i32 %298, i32 4)
  %299 = load i32, ptr %297, align 1
  %300 = call i32 @llvm.bswap.i32(i32 %299) #13
  %conv126.i = zext i32 %300 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %293, i64 %conv126.i)
  %cmp127.i = icmp ugt i64 %293, %conv126.i
  br i1 %cmp127.i, label %if.then129.i, label %if.end130.i

if.then129.i:                                     ; preds = %for.body.i357
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.98, ptr noundef nonnull @__func__.journal_read_transaction, ptr noundef nonnull @.str.99) #13
  br label %abort_replay.i

if.end130.i:                                      ; preds = %for.body.i357
  %s_journal134.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %295, i32 0, i32 3
  %301 = ptrtoint ptr %s_journal134.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %s_journal134.i, align 4
  %j_1st_reserved_block.i = getelementptr inbounds %struct.reiserfs_journal, ptr %302, i32 0, i32 5
  %303 = ptrtoint ptr %j_1st_reserved_block.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %j_1st_reserved_block.i, align 4
  %conv135.i = sext i32 %304 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %293, i64 %conv135.i)
  %cmp136.not.i = icmp ult i64 %293, %conv135.i
  br i1 %cmp136.not.i, label %if.end130.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end130.i.for.inc.i_crit_edge:                  ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end130.i
  %call145.i = call i32 @is_reiserfs_jr(ptr noundef %297) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %tobool146.not.i = icmp eq i32 %call145.i, 0
  %305 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs148.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %306, i32 0, i32 1
  %307 = ptrtoint ptr %s_rs148.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %s_rs148.i, align 4
  br i1 %tobool146.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %jp_journal_size151.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %308, i32 0, i32 3, i32 2
  %309 = ptrtoint ptr %jp_journal_size151.i to i32
  call void @__asan_loadN_noabort(i32 %309, i32 4)
  %310 = load i32, ptr %jp_journal_size151.i, align 1
  %311 = call i32 @llvm.bswap.i32(i32 %310) #13
  %add152.i = add i32 %311, 1
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %s_reserved_for_journal.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %308, i32 0, i32 14
  %312 = ptrtoint ptr %s_reserved_for_journal.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 2)
  %313 = load i16, ptr %s_reserved_for_journal.i, align 1
  %314 = call i16 @llvm.bswap.i16(i16 %313) #13
  %conv156.i = zext i16 %314 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add152.i, %cond.true.i ], [ %conv156.i, %cond.false.i ]
  %add157.i = add i32 %cond.i, %304
  %conv158.i = zext i32 %add157.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %293, i64 %conv158.i)
  %cmp159.i = icmp ult i64 %293, %conv158.i
  br i1 %cmp159.i, label %if.then161.i, label %cond.end.i.for.inc.i_crit_edge

cond.end.i.for.inc.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then161.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.journal_read_transaction, ptr noundef nonnull @.str.101) #13
  br label %abort_replay.i

abort_replay.i:                                   ; preds = %if.then161.i, %if.then129.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0205.i)
  %cmp3.i.i = icmp sgt i32 %i.0205.i, 0
  br i1 %cmp3.i.i, label %abort_replay.i.for.body.i.i_crit_edge, label %abort_replay.i.brelse.exit111.i_crit_edge

abort_replay.i.brelse.exit111.i_crit_edge:        ; preds = %abort_replay.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit111.i

abort_replay.i.for.body.i.i_crit_edge:            ; preds = %abort_replay.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %brelse.exit.i.i.for.body.i.i_crit_edge, %abort_replay.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i, %brelse.exit.i.i.for.body.i.i_crit_edge ], [ 0, %abort_replay.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %retval.0.i36.i, i32 %i.04.i.i
  %315 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i92.i = icmp eq ptr %316, null
  br i1 %tobool.not.i.i92.i, label %for.body.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i93.i

for.body.i.i.brelse.exit.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i.i

if.then.i.i93.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %316) #13
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i93.i, %for.body.i.i.brelse.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %i.0205.i
  br i1 %exitcond.not.i.i, label %brelse.exit.i.i.for.body.i98.i_crit_edge, label %brelse.exit.i.i.for.body.i.i_crit_edge

brelse.exit.i.i.for.body.i.i_crit_edge:           ; preds = %brelse.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

brelse.exit.i.i.for.body.i98.i_crit_edge:         ; preds = %brelse.exit.i.i
  br label %for.body.i98.i

for.body.i98.i:                                   ; preds = %brelse.exit.i102.i.for.body.i98.i_crit_edge, %brelse.exit.i.i.for.body.i98.i_crit_edge
  %i.04.i95.i = phi i32 [ %inc.i100.i, %brelse.exit.i102.i.for.body.i98.i_crit_edge ], [ 0, %brelse.exit.i.i.for.body.i98.i_crit_edge ]
  %arrayidx.i96.i = getelementptr ptr, ptr %call8.i66.i, i32 %i.04.i95.i
  %317 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx.i96.i, align 4
  %tobool.not.i.i97.i = icmp eq ptr %318, null
  br i1 %tobool.not.i.i97.i, label %for.body.i98.i.brelse.exit.i102.i_crit_edge, label %if.then.i.i99.i

for.body.i98.i.brelse.exit.i102.i_crit_edge:      ; preds = %for.body.i98.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i102.i

if.then.i.i99.i:                                  ; preds = %for.body.i98.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %318) #13
  br label %brelse.exit.i102.i

brelse.exit.i102.i:                               ; preds = %if.then.i.i99.i, %for.body.i98.i.brelse.exit.i102.i_crit_edge
  %inc.i100.i = add nuw nsw i32 %i.04.i95.i, 1
  %exitcond.not.i101.i = icmp eq i32 %inc.i100.i, %i.0205.i
  br i1 %exitcond.not.i101.i, label %brelse.exit.i102.i.brelse.exit111.i_crit_edge, label %brelse.exit.i102.i.for.body.i98.i_crit_edge

brelse.exit.i102.i.for.body.i98.i_crit_edge:      ; preds = %brelse.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i98.i

brelse.exit.i102.i.brelse.exit111.i_crit_edge:    ; preds = %brelse.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit111.i

brelse.exit111.i:                                 ; preds = %brelse.exit.i102.i.brelse.exit111.i_crit_edge, %abort_replay.i.brelse.exit111.i_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i18.i) #13
  call void @__brelse(ptr noundef nonnull %call.i.i352) #13
  call void @kfree(ptr noundef nonnull %retval.0.i36.i) #13
  call void @kfree(ptr noundef nonnull %call8.i66.i) #13
  br label %cleanup

for.inc.i:                                        ; preds = %cond.end.i.for.inc.i_crit_edge, %if.end130.i.for.inc.i_crit_edge
  %inc.i358 = add nuw i32 %i.0205.i, 1
  %319 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %j_len.i, align 4
  %321 = call i32 @llvm.bswap.i32(i32 %320) #13
  %cmp85.i = icmp ult i32 %inc.i358, %321
  br i1 %cmp85.i, label %for.inc.i.for.body.i357_crit_edge, label %for.inc.i.for.end.i359_crit_edge

for.inc.i.for.end.i359_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i359

for.inc.i.for.body.i357_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i357

for.end.i359:                                     ; preds = %for.inc.i.for.end.i359_crit_edge, %if.end79.i.for.end.i359_crit_edge
  %.lcssa198.i = phi i32 [ %265, %if.end79.i.for.end.i359_crit_edge ], [ %321, %for.inc.i.for.end.i359_crit_edge ]
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef %.lcssa198.i, ptr noundef nonnull %retval.0.i36.i) #13
  %322 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %j_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %323)
  %cmp166207.not.i = icmp eq i32 %323, 0
  br i1 %cmp166207.not.i, label %for.end.i359.if.end151_crit_edge, label %for.end.i359.for.body168.i_crit_edge

for.end.i359.for.body168.i_crit_edge:             ; preds = %for.end.i359
  br label %for.body168.i

for.end.i359.if.end151_crit_edge:                 ; preds = %for.end.i359
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

for.cond188.preheader.i:                          ; preds = %brelse.exit146.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %cmp190209.not.i = icmp eq i32 %358, 0
  br i1 %cmp190209.not.i, label %for.cond188.preheader.i.if.end151_crit_edge, label %for.cond188.preheader.i.for.body192.i_crit_edge

for.cond188.preheader.i.for.body192.i_crit_edge:  ; preds = %for.cond188.preheader.i
  br label %for.body192.i

for.cond188.preheader.i.if.end151_crit_edge:      ; preds = %for.cond188.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

for.body168.i:                                    ; preds = %brelse.exit146.i.for.body168.i_crit_edge, %for.end.i359.for.body168.i_crit_edge
  %i.1208.i = phi i32 [ %inc186.i, %brelse.exit146.i.for.body168.i_crit_edge ], [ 0, %for.end.i359.for.body168.i_crit_edge ]
  %arrayidx169.i = getelementptr ptr, ptr %retval.0.i36.i, i32 %i.1208.i
  %324 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %arrayidx169.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 354) #13
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load volatile i32, ptr %325, align 4
  %328 = and i32 %327, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %tobool.not.i112.i = icmp eq i32 %328, 0
  br i1 %tobool.not.i112.i, label %for.body168.i.wait_on_buffer.exit.i361_crit_edge, label %if.then.i113.i

for.body168.i.wait_on_buffer.exit.i361_crit_edge: ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_on_buffer.exit.i361

if.then.i113.i:                                   ; preds = %for.body168.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__wait_on_buffer(ptr noundef %325) #13
  br label %wait_on_buffer.exit.i361

wait_on_buffer.exit.i361:                         ; preds = %if.then.i113.i, %for.body168.i.wait_on_buffer.exit.i361_crit_edge
  %329 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx169.i, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load volatile i32, ptr %330, align 4
  %and1.i.i.i360 = and i32 %332, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i360)
  %tobool172.not.i = icmp eq i32 %and1.i.i.i360, 0
  br i1 %tobool172.not.i, label %if.then173.i, label %if.end177.i

if.then173.i:                                     ; preds = %wait_on_buffer.exit.i361
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.journal_read_transaction, ptr noundef nonnull @.str.103) #13
  %333 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %j_len.i, align 4
  %335 = call i32 @llvm.bswap.i32(i32 %334) #13
  %sub175.i = sub i32 %335, %i.1208.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub175.i)
  %cmp3.i115.i = icmp sgt i32 %sub175.i, 0
  br i1 %cmp3.i115.i, label %if.then173.i.for.body.i119.i_crit_edge, label %if.then173.i.brelse_array.exit124.i_crit_edge

if.then173.i.brelse_array.exit124.i_crit_edge:    ; preds = %if.then173.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse_array.exit124.i

if.then173.i.for.body.i119.i_crit_edge:           ; preds = %if.then173.i
  br label %for.body.i119.i

for.body.i119.i:                                  ; preds = %brelse.exit.i123.i.for.body.i119.i_crit_edge, %if.then173.i.for.body.i119.i_crit_edge
  %i.04.i116.i = phi i32 [ %inc.i121.i, %brelse.exit.i123.i.for.body.i119.i_crit_edge ], [ 0, %if.then173.i.for.body.i119.i_crit_edge ]
  %arrayidx.i117.i = getelementptr ptr, ptr %arrayidx169.i, i32 %i.04.i116.i
  %336 = ptrtoint ptr %arrayidx.i117.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %arrayidx.i117.i, align 4
  %tobool.not.i.i118.i = icmp eq ptr %337, null
  br i1 %tobool.not.i.i118.i, label %for.body.i119.i.brelse.exit.i123.i_crit_edge, label %if.then.i.i120.i

for.body.i119.i.brelse.exit.i123.i_crit_edge:     ; preds = %for.body.i119.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i123.i

if.then.i.i120.i:                                 ; preds = %for.body.i119.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %337) #13
  br label %brelse.exit.i123.i

brelse.exit.i123.i:                               ; preds = %if.then.i.i120.i, %for.body.i119.i.brelse.exit.i123.i_crit_edge
  %inc.i121.i = add nuw nsw i32 %i.04.i116.i, 1
  %exitcond.not.i122.i = icmp eq i32 %inc.i121.i, %sub175.i
  br i1 %exitcond.not.i122.i, label %brelse.exit.i123.i.brelse_array.exit124.i_crit_edge, label %brelse.exit.i123.i.for.body.i119.i_crit_edge

brelse.exit.i123.i.for.body.i119.i_crit_edge:     ; preds = %brelse.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i119.i

brelse.exit.i123.i.brelse_array.exit124.i_crit_edge: ; preds = %brelse.exit.i123.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse_array.exit124.i

brelse_array.exit124.i:                           ; preds = %brelse.exit.i123.i.brelse_array.exit124.i_crit_edge, %if.then173.i.brelse_array.exit124.i_crit_edge
  %338 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %j_len.i, align 4
  %340 = call i32 @llvm.bswap.i32(i32 %339) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %cmp3.i125.i = icmp sgt i32 %340, 0
  br i1 %cmp3.i125.i, label %brelse_array.exit124.i.for.body.i129.i_crit_edge, label %brelse_array.exit124.i.brelse.exit142.i_crit_edge

brelse_array.exit124.i.brelse.exit142.i_crit_edge: ; preds = %brelse_array.exit124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit142.i

brelse_array.exit124.i.for.body.i129.i_crit_edge: ; preds = %brelse_array.exit124.i
  br label %for.body.i129.i

for.body.i129.i:                                  ; preds = %brelse.exit.i133.i.for.body.i129.i_crit_edge, %brelse_array.exit124.i.for.body.i129.i_crit_edge
  %i.04.i126.i = phi i32 [ %inc.i131.i, %brelse.exit.i133.i.for.body.i129.i_crit_edge ], [ 0, %brelse_array.exit124.i.for.body.i129.i_crit_edge ]
  %arrayidx.i127.i = getelementptr ptr, ptr %call8.i66.i, i32 %i.04.i126.i
  %341 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %arrayidx.i127.i, align 4
  %tobool.not.i.i128.i = icmp eq ptr %342, null
  br i1 %tobool.not.i.i128.i, label %for.body.i129.i.brelse.exit.i133.i_crit_edge, label %if.then.i.i130.i

for.body.i129.i.brelse.exit.i133.i_crit_edge:     ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i133.i

if.then.i.i130.i:                                 ; preds = %for.body.i129.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %342) #13
  br label %brelse.exit.i133.i

brelse.exit.i133.i:                               ; preds = %if.then.i.i130.i, %for.body.i129.i.brelse.exit.i133.i_crit_edge
  %inc.i131.i = add nuw nsw i32 %i.04.i126.i, 1
  %exitcond.not.i132.i = icmp eq i32 %inc.i131.i, %340
  br i1 %exitcond.not.i132.i, label %brelse.exit.i133.i.brelse.exit142.i_crit_edge, label %brelse.exit.i133.i.for.body.i129.i_crit_edge

brelse.exit.i133.i.for.body.i129.i_crit_edge:     ; preds = %brelse.exit.i133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i129.i

brelse.exit.i133.i.brelse.exit142.i_crit_edge:    ; preds = %brelse.exit.i133.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit142.i

brelse.exit142.i:                                 ; preds = %brelse.exit.i133.i.brelse.exit142.i_crit_edge, %brelse_array.exit124.i.brelse.exit142.i_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i18.i) #13
  call void @__brelse(ptr noundef nonnull %call.i.i352) #13
  call void @kfree(ptr noundef nonnull %retval.0.i36.i) #13
  call void @kfree(ptr noundef nonnull %call8.i66.i) #13
  br label %cleanup

if.end177.i:                                      ; preds = %wait_on_buffer.exit.i361
  %arrayidx178.i = getelementptr ptr, ptr %call8.i66.i, i32 %i.1208.i
  %343 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %arrayidx178.i, align 4
  %b_data179.i = getelementptr inbounds %struct.buffer_head, ptr %344, i32 0, i32 5
  %345 = ptrtoint ptr %b_data179.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %b_data179.i, align 4
  %b_data181.i = getelementptr inbounds %struct.buffer_head, ptr %330, i32 0, i32 5
  %347 = ptrtoint ptr %b_data181.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %b_data181.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %344, i32 0, i32 4
  %349 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %b_size.i, align 8
  %351 = call ptr @memcpy(ptr %346, ptr %348, i32 %350)
  %352 = load ptr, ptr %arrayidx178.i, align 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load volatile i32, ptr %352, align 4
  %and1.i.i2.i = and i32 %354, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i2.i)
  %tobool.not.i.i362 = icmp eq i32 %and1.i.i2.i, 0
  br i1 %tobool.not.i.i362, label %if.then.i.i363, label %if.end177.i.set_buffer_uptodate.exit.i_crit_edge

if.end177.i.set_buffer_uptodate.exit.i_crit_edge: ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_uptodate.exit.i

if.then.i.i363:                                   ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 0, ptr noundef %352) #13
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i.i363, %if.end177.i.set_buffer_uptodate.exit.i_crit_edge
  %355 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %arrayidx169.i, align 4
  %tobool.not.i143.i = icmp eq ptr %356, null
  br i1 %tobool.not.i143.i, label %set_buffer_uptodate.exit.i.brelse.exit146.i_crit_edge, label %if.then.i144.i

set_buffer_uptodate.exit.i.brelse.exit146.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit146.i

if.then.i144.i:                                   ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %356) #13
  br label %brelse.exit146.i

brelse.exit146.i:                                 ; preds = %if.then.i144.i, %set_buffer_uptodate.exit.i.brelse.exit146.i_crit_edge
  %inc186.i = add nuw i32 %i.1208.i, 1
  %357 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %j_len.i, align 4
  %359 = call i32 @llvm.bswap.i32(i32 %358) #13
  %cmp166.i = icmp ult i32 %inc186.i, %359
  br i1 %cmp166.i, label %brelse.exit146.i.for.body168.i_crit_edge, label %for.cond188.preheader.i

brelse.exit146.i.for.body168.i_crit_edge:         ; preds = %brelse.exit146.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body168.i

for.cond198.preheader.i:                          ; preds = %set_buffer_dirty.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %cmp200211.not.i = icmp eq i32 %368, 0
  br i1 %cmp200211.not.i, label %for.cond198.preheader.i.if.end151_crit_edge, label %for.cond198.preheader.i.for.body202.i_crit_edge

for.cond198.preheader.i.for.body202.i_crit_edge:  ; preds = %for.cond198.preheader.i
  br label %for.body202.i

for.cond198.preheader.i.if.end151_crit_edge:      ; preds = %for.cond198.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

for.body192.i:                                    ; preds = %set_buffer_dirty.exit.i.for.body192.i_crit_edge, %for.cond188.preheader.i.for.body192.i_crit_edge
  %i.2210.i = phi i32 [ %inc196.i, %set_buffer_dirty.exit.i.for.body192.i_crit_edge ], [ 0, %for.cond188.preheader.i.for.body192.i_crit_edge ]
  %arrayidx193.i = getelementptr ptr, ptr %call8.i66.i, i32 %i.2210.i
  %360 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx193.i, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load volatile i32, ptr %361, align 4
  %364 = and i32 %363, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool.not.i3.i = icmp eq i32 %364, 0
  br i1 %tobool.not.i3.i, label %if.then.i4.i, label %for.body192.i.set_buffer_dirty.exit.i_crit_edge

for.body192.i.set_buffer_dirty.exit.i_crit_edge:  ; preds = %for.body192.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_dirty.exit.i

if.then.i4.i:                                     ; preds = %for.body192.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 1, ptr noundef %361) #13
  br label %set_buffer_dirty.exit.i

set_buffer_dirty.exit.i:                          ; preds = %if.then.i4.i, %for.body192.i.set_buffer_dirty.exit.i_crit_edge
  %365 = ptrtoint ptr %arrayidx193.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx193.i, align 4
  call void @write_dirty_buffer(ptr noundef %366, i32 noundef 0) #13
  %inc196.i = add nuw i32 %i.2210.i, 1
  %367 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %j_len.i, align 4
  %369 = call i32 @llvm.bswap.i32(i32 %368) #13
  %cmp190.i = icmp ult i32 %inc196.i, %369
  br i1 %cmp190.i, label %set_buffer_dirty.exit.i.for.body192.i_crit_edge, label %for.cond198.preheader.i

set_buffer_dirty.exit.i.for.body192.i_crit_edge:  ; preds = %set_buffer_dirty.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body192.i

for.body202.i:                                    ; preds = %brelse.exit172.i.for.body202.i_crit_edge, %for.cond198.preheader.i.for.body202.i_crit_edge
  %i.3212.i = phi i32 [ %inc214.i, %brelse.exit172.i.for.body202.i_crit_edge ], [ 0, %for.cond198.preheader.i.for.body202.i_crit_edge ]
  %arrayidx203.i = getelementptr ptr, ptr %call8.i66.i, i32 %i.3212.i
  %370 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx203.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 354) #13
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load volatile i32, ptr %371, align 4
  %374 = and i32 %373, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool.not.i147.i = icmp eq i32 %374, 0
  br i1 %tobool.not.i147.i, label %for.body202.i.wait_on_buffer.exit150.i_crit_edge, label %if.then.i148.i

for.body202.i.wait_on_buffer.exit150.i_crit_edge: ; preds = %for.body202.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_on_buffer.exit150.i

if.then.i148.i:                                   ; preds = %for.body202.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__wait_on_buffer(ptr noundef %371) #13
  br label %wait_on_buffer.exit150.i

wait_on_buffer.exit150.i:                         ; preds = %if.then.i148.i, %for.body202.i.wait_on_buffer.exit150.i_crit_edge
  %375 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %arrayidx203.i, align 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load volatile i32, ptr %376, align 4
  %and1.i.i5.i = and i32 %378, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i5.i)
  %tobool206.not.i = icmp eq i32 %and1.i.i5.i, 0
  br i1 %tobool206.not.i, label %if.then207.i, label %if.end211.i

if.then207.i:                                     ; preds = %wait_on_buffer.exit150.i
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.journal_read_transaction, ptr noundef nonnull @.str.105) #13
  %379 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %j_len.i, align 4
  %381 = call i32 @llvm.bswap.i32(i32 %380) #13
  %sub210.i = sub i32 %381, %i.3212.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub210.i)
  %cmp3.i151.i = icmp sgt i32 %sub210.i, 0
  br i1 %cmp3.i151.i, label %if.then207.i.for.body.i155.i_crit_edge, label %if.then207.i.brelse.exit168.i_crit_edge

if.then207.i.brelse.exit168.i_crit_edge:          ; preds = %if.then207.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit168.i

if.then207.i.for.body.i155.i_crit_edge:           ; preds = %if.then207.i
  br label %for.body.i155.i

for.body.i155.i:                                  ; preds = %brelse.exit.i159.i.for.body.i155.i_crit_edge, %if.then207.i.for.body.i155.i_crit_edge
  %i.04.i152.i = phi i32 [ %inc.i157.i, %brelse.exit.i159.i.for.body.i155.i_crit_edge ], [ 0, %if.then207.i.for.body.i155.i_crit_edge ]
  %arrayidx.i153.i = getelementptr ptr, ptr %arrayidx203.i, i32 %i.04.i152.i
  %382 = ptrtoint ptr %arrayidx.i153.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %arrayidx.i153.i, align 4
  %tobool.not.i.i154.i = icmp eq ptr %383, null
  br i1 %tobool.not.i.i154.i, label %for.body.i155.i.brelse.exit.i159.i_crit_edge, label %if.then.i.i156.i

for.body.i155.i.brelse.exit.i159.i_crit_edge:     ; preds = %for.body.i155.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit.i159.i

if.then.i.i156.i:                                 ; preds = %for.body.i155.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %383) #13
  br label %brelse.exit.i159.i

brelse.exit.i159.i:                               ; preds = %if.then.i.i156.i, %for.body.i155.i.brelse.exit.i159.i_crit_edge
  %inc.i157.i = add nuw nsw i32 %i.04.i152.i, 1
  %exitcond.not.i158.i = icmp eq i32 %inc.i157.i, %sub210.i
  br i1 %exitcond.not.i158.i, label %brelse.exit.i159.i.brelse.exit168.i_crit_edge, label %brelse.exit.i159.i.for.body.i155.i_crit_edge

brelse.exit.i159.i.for.body.i155.i_crit_edge:     ; preds = %brelse.exit.i159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i155.i

brelse.exit.i159.i.brelse.exit168.i_crit_edge:    ; preds = %brelse.exit.i159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit168.i

brelse.exit168.i:                                 ; preds = %brelse.exit.i159.i.brelse.exit168.i_crit_edge, %if.then207.i.brelse.exit168.i_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i18.i) #13
  call void @__brelse(ptr noundef nonnull %call.i.i352) #13
  call void @kfree(ptr noundef nonnull %retval.0.i36.i) #13
  call void @kfree(ptr noundef nonnull %call8.i66.i) #13
  br label %cleanup

if.end211.i:                                      ; preds = %wait_on_buffer.exit150.i
  %tobool.not.i169.i = icmp eq ptr %376, null
  br i1 %tobool.not.i169.i, label %if.end211.i.brelse.exit172.i_crit_edge, label %if.then.i170.i

if.end211.i.brelse.exit172.i_crit_edge:           ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit172.i

if.then.i170.i:                                   ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__brelse(ptr noundef nonnull %376) #13
  br label %brelse.exit172.i

brelse.exit172.i:                                 ; preds = %if.then.i170.i, %if.end211.i.brelse.exit172.i_crit_edge
  %inc214.i = add nuw i32 %i.3212.i, 1
  %384 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %j_len.i, align 4
  %386 = call i32 @llvm.bswap.i32(i32 %385) #13
  %cmp200.i = icmp ult i32 %inc214.i, %386
  br i1 %cmp200.i, label %brelse.exit172.i.for.body202.i_crit_edge, label %brelse.exit172.i.if.end151_crit_edge

brelse.exit172.i.if.end151_crit_edge:             ; preds = %brelse.exit172.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end151

brelse.exit172.i.for.body202.i_crit_edge:         ; preds = %brelse.exit172.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body202.i

if.end151:                                        ; preds = %brelse.exit172.i.if.end151_crit_edge, %for.cond198.preheader.i.if.end151_crit_edge, %for.cond188.preheader.i.if.end151_crit_edge, %for.end.i359.if.end151_crit_edge
  %.lcssa.i = phi i32 [ %369, %for.cond198.preheader.i.if.end151_crit_edge ], [ 0, %for.end.i359.if.end151_crit_edge ], [ 0, %for.cond188.preheader.i.if.end151_crit_edge ], [ %386, %brelse.exit172.i.if.end151_crit_edge ]
  %387 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs217.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %388, i32 0, i32 1
  %389 = ptrtoint ptr %s_rs217.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %s_rs217.i, align 4
  %s_journal219.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %390, i32 0, i32 3
  %391 = ptrtoint ptr %s_journal219.i to i32
  call void @__asan_loadN_noabort(i32 %391, i32 4)
  %392 = load i32, ptr %s_journal219.i, align 1
  %393 = call i32 @llvm.bswap.i32(i32 %392) #13
  %add222.i = add i32 %conv7.i, 2
  %add223.i = add i32 %add222.i, %.lcssa.i
  %jp_journal_size228.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %390, i32 0, i32 3, i32 2
  %394 = ptrtoint ptr %jp_journal_size228.i to i32
  call void @__asan_loadN_noabort(i32 %394, i32 4)
  %395 = load i32, ptr %jp_journal_size228.i, align 1
  %396 = call i32 @llvm.bswap.i32(i32 %395) #13
  %rem229.i = urem i32 %add223.i, %396
  %add230.i = add i32 %rem229.i, %393
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.106, i32 noundef %rem229.i) #13
  %397 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs238.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %398, i32 0, i32 1
  %399 = ptrtoint ptr %s_rs238.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %s_rs238.i, align 4
  %s_journal240.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %400, i32 0, i32 3
  %401 = ptrtoint ptr %s_journal240.i to i32
  call void @__asan_loadN_noabort(i32 %401, i32 4)
  %402 = load i32, ptr %s_journal240.i, align 1
  %403 = call i32 @llvm.bswap.i32(i32 %402) #13
  %sub242.i = sub i32 %add230.i, %403
  %j_start.i = getelementptr inbounds %struct.reiserfs_journal, ptr %153, i32 0, i32 9
  %404 = ptrtoint ptr %j_start.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %sub242.i, ptr %j_start.i, align 4
  %j_last_flush_trans_id.i = getelementptr inbounds %struct.reiserfs_journal, ptr %153, i32 0, i32 15
  %405 = ptrtoint ptr %j_last_flush_trans_id.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %251, ptr %j_last_flush_trans_id.i, align 4
  %add243.i = add i32 %251, 1
  %j_trans_id244.i = getelementptr inbounds %struct.reiserfs_journal, ptr %153, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add243.i)
  %cmp246.i = icmp eq i32 %add243.i, 0
  %spec.select.i364 = select i1 %cmp246.i, i32 10, i32 %add243.i
  %406 = ptrtoint ptr %j_trans_id244.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 %spec.select.i364, ptr %j_trans_id244.i, align 4
  call void @__brelse(ptr noundef nonnull %call.i18.i) #13
  call void @__brelse(ptr noundef nonnull %call.i.i352) #13
  call void @kfree(ptr noundef nonnull %retval.0.i36.i) #13
  call void @kfree(ptr noundef nonnull %call8.i66.i) #13
  %407 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs153 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %s_rs153 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %s_rs153, align 4
  %s_journal155 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %410, i32 0, i32 3
  %411 = ptrtoint ptr %s_journal155 to i32
  call void @__asan_loadN_noabort(i32 %411, i32 4)
  %412 = load i32, ptr %s_journal155, align 1
  %413 = call i32 @llvm.bswap.i32(i32 %412)
  %414 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %j_start, align 4
  %add157 = add i32 %413, %415
  %inc158 = add i32 %replay_count.0, 1
  %cmp159 = icmp eq i32 %add157, %oldest_start.3604
  br i1 %cmp159, label %if.end151.while.end163_crit_edge, label %if.end151.while.cond135_crit_edge

if.end151.while.cond135_crit_edge:                ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond135

if.end151.while.end163_crit_edge:                 ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end163

while.end163.sink.split:                          ; preds = %brelse.exit28.i, %if.end30.i.while.end163.sink.split_crit_edge, %brelse.exit14.i, %brelse.exit.i
  call void @__brelse(ptr noundef nonnull %call.i.i352) #13
  br label %while.end163

while.end163:                                     ; preds = %while.end163.sink.split, %if.end151.while.end163_crit_edge, %while.body141.while.end163_crit_edge, %while.cond135.while.end163_crit_edge
  %replay_count.1 = phi i32 [ %replay_count.0, %while.end163.sink.split ], [ %replay_count.0, %while.body141.while.end163_crit_edge ], [ 0, %while.cond135.while.end163_crit_edge ], [ %inc158, %if.end151.while.end163_crit_edge ]
  br i1 %tobool126.not607, label %if.then166, label %while.end163.if.end167_crit_edge

while.end163.if.end167_crit_edge:                 ; preds = %while.end163
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end167

if.then166:                                       ; preds = %while.end163
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.79) #13
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %while.end163.if.end167_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replay_count.1)
  %cmp170 = icmp eq i32 %replay_count.1, 0
  %or.cond328 = select i1 %tobool168.not605, i1 %cmp170, i1 false
  br i1 %or.cond328, label %if.then172, label %if.else189

if.then172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  %416 = ptrtoint ptr %j_first_unflushed_offset to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %j_first_unflushed_offset, align 4
  %418 = call i32 @llvm.bswap.i32(i32 %417)
  %419 = ptrtoint ptr %j_start to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %j_start, align 4
  %420 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %31, align 4
  %422 = call i32 @llvm.bswap.i32(i32 %421)
  %add176 = add i32 %422, 1
  %j_trans_id177 = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add176)
  %cmp179 = icmp eq i32 %add176, 0
  %spec.select329 = select i1 %cmp179, i32 10, i32 %add176
  %423 = ptrtoint ptr %j_trans_id177 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %spec.select329, ptr %j_trans_id177, align 4
  %424 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %31, align 4
  %426 = call i32 @llvm.bswap.i32(i32 %425)
  %j_last_flush_trans_id185 = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 15
  %427 = ptrtoint ptr %j_last_flush_trans_id185 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 %426, ptr %j_last_flush_trans_id185, align 4
  %j_mount_id186 = getelementptr inbounds %struct.reiserfs_journal_header, ptr %31, i32 0, i32 2
  %428 = ptrtoint ptr %j_mount_id186 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %j_mount_id186, align 4
  %430 = call i32 @llvm.bswap.i32(i32 %429)
  br label %if.end192

if.else189:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #15
  %431 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %newest_mount_id, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.else189, %if.then172
  %add190.sink.in = phi i32 [ %430, %if.then172 ], [ %432, %if.else189 ]
  %add190.sink = add i32 %add190.sink.in, 1
  %433 = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 8
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %add190.sink, ptr %433, align 8
  call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.80, i32 noundef %add190.sink) #13
  %435 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %j_start, align 4
  %j_first_unflushed_offset195 = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 14
  %437 = ptrtoint ptr %j_first_unflushed_offset195 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %436, ptr %j_first_unflushed_offset195, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replay_count.1)
  %cmp196 = icmp sgt i32 %replay_count.1, 0
  br i1 %cmp196, label %if.then198, label %if.end192.if.end201_crit_edge

if.end192.if.end201_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end201

if.then198:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #15
  %call199 = call i64 @ktime_get_seconds() #13
  %sub200 = sub i64 %call199, %call3
  call void (ptr, ptr, ...) @reiserfs_info(ptr noundef %sb, ptr noundef nonnull @.str.81, i32 noundef %replay_count.1, i64 noundef %sub200) #13
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %if.end192.if.end201_crit_edge
  call void @reiserfs_write_lock(ptr noundef %sb) #13
  %438 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %s_bdev.i, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %439, i32 0, i32 4
  %440 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %bd_read_only.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool.not.i367 = icmp eq i8 %441, 0
  br i1 %tobool.not.i367, label %lor.rhs.i, label %if.end201.if.end210_crit_edge

if.end201.if.end210_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end210

lor.rhs.i:                                        ; preds = %if.end201
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %439, i32 0, i32 17
  %442 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %443, i32 0, i32 7
  %444 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i368 = getelementptr inbounds %struct.block_device, ptr %445, i32 0, i32 4
  %446 = ptrtoint ptr %bd_read_only.i.i368 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %bd_read_only.i.i368, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %447)
  %tobool.not.i.i369 = icmp eq i8 %447, 0
  br i1 %tobool.not.i.i369, label %bdev_read_only.exit, label %lor.rhs.i.if.end210_crit_edge

lor.rhs.i.if.end210_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end210

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %443, i32 0, i32 12
  %448 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load volatile i32, ptr %state.i.i, align 4
  %450 = and i32 %449, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %450)
  %tobool203.not = icmp eq i32 %450, 0
  br i1 %tobool203.not, label %land.lhs.true204, label %bdev_read_only.exit.if.end210_crit_edge

bdev_read_only.exit.if.end210_crit_edge:          ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end210

land.lhs.true204:                                 ; preds = %bdev_read_only.exit
  %451 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %j_start, align 4
  %j_last_flush_trans_id206 = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 15
  %453 = ptrtoint ptr %j_last_flush_trans_id206 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %j_last_flush_trans_id206, align 4
  %call207 = call fastcc i32 @_update_journal_header_block(ptr noundef %sb, i32 noundef %452, i32 noundef %454)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %land.lhs.true204.if.end210_crit_edge, label %if.then209

land.lhs.true204.if.end210_crit_edge:             ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end210

if.then209:                                       ; preds = %land.lhs.true204
  call void @__sanitizer_cov_trace_pc() #15
  call void @reiserfs_write_unlock(ptr noundef %sb) #13
  br label %cleanup

if.end210:                                        ; preds = %land.lhs.true204.if.end210_crit_edge, %bdev_read_only.exit.if.end210_crit_edge, %lor.rhs.i.if.end210_crit_edge, %if.end201.if.end210_crit_edge
  call void @reiserfs_write_unlock(ptr noundef %sb) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end210, %if.then209, %brelse.exit168.i, %brelse.exit142.i, %brelse.exit111.i, %brelse.exit77.i, %brelse.exit35.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end210 ], [ -1, %if.then209 ], [ 1, %entry.cleanup_crit_edge ], [ -30, %brelse.exit35.i ], [ -1, %brelse.exit111.i ], [ -1, %brelse.exit142.i ], [ -1, %brelse.exit168.i ], [ -1, %brelse.exit77.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newest_mount_id) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oldest_invalid_trans_id) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_async_commits(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %j_work_sb = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %j_work_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %j_work_sb, align 8
  tail call void @reiserfs_write_lock(ptr noundef %1) #13
  %j_journal_list = getelementptr i8, ptr %work, i32 -65616
  %2 = ptrtoint ptr %j_journal_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %j_journal_list, align 4
  %cmp.i.not = icmp eq ptr %3, %j_journal_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev = getelementptr i8, ptr %work, i32 -65612
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 -144
  tail call fastcc void @flush_commit_list(ptr noundef %1, ptr noundef %add.ptr5, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @reiserfs_write_unlock(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_journal_ram(ptr nocapture noundef readonly %sb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %j_current_jl = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %j_current_jl, align 4
  tail call void @kfree(ptr noundef %5) #13
  %j_num_lists = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 38
  %6 = ptrtoint ptr %j_num_lists to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %j_num_lists, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %j_num_lists, align 8
  %j_cnode_free_orig = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 34
  %8 = ptrtoint ptr %j_cnode_free_orig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %j_cnode_free_orig, align 8
  tail call void @vfree(ptr noundef %9) #13
  %j_list_bitmap = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 49
  tail call fastcc void @free_list_bitmaps(ptr noundef %sb, ptr noundef %j_list_bitmap)
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_journal.i, align 4
  %j_bitmap_nodes.i = getelementptr inbounds %struct.reiserfs_journal, ptr %13, i32 0, i32 42
  %14 = ptrtoint ptr %j_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %j_bitmap_nodes.i, align 8
  %cmp.not1.i = icmp eq ptr %15, %j_bitmap_nodes.i
  br i1 %cmp.not1.i, label %entry.free_bitmap_nodes.exit_crit_edge, label %while.body.lr.ph.i

entry.free_bitmap_nodes.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_bitmap_nodes.exit

while.body.lr.ph.i:                               ; preds = %entry
  %j_free_bitmap_nodes.i = getelementptr inbounds %struct.reiserfs_journal, ptr %13, i32 0, i32 36
  br label %while.body.i

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %next.02.i = phi ptr [ %15, %while.body.lr.ph.i ], [ %27, %list_del.exit.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %next.02.i, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %next.02.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %next.02.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %next.02.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next.02.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %next.02.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %next.02.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %next.02.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %data.i = getelementptr i8, ptr %next.02.i, i32 -4
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %25) #13
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  %26 = ptrtoint ptr %j_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %j_bitmap_nodes.i, align 8
  %28 = ptrtoint ptr %j_free_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %j_free_bitmap_nodes.i, align 8
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %j_free_bitmap_nodes.i, align 8
  %cmp.not.i = icmp eq ptr %27, %j_bitmap_nodes.i
  br i1 %cmp.not.i, label %list_del.exit.i.free_bitmap_nodes.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

list_del.exit.i.free_bitmap_nodes.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_bitmap_nodes.exit

free_bitmap_nodes.exit:                           ; preds = %list_del.exit.i.free_bitmap_nodes.exit_crit_edge, %entry.free_bitmap_nodes.exit_crit_edge
  %j_header_bh = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 16
  %30 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %j_header_bh, align 8
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %free_bitmap_nodes.exit.if.end_crit_edge, label %brelse.exit

free_bitmap_nodes.exit.if.end_crit_edge:          ; preds = %free_bitmap_nodes.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

brelse.exit:                                      ; preds = %free_bitmap_nodes.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %31) #13
  br label %if.end

if.end:                                           ; preds = %brelse.exit, %free_bitmap_nodes.exit.if.end_crit_edge
  %j_dev_bd.i = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %j_dev_bd.i, align 4
  %cmp.not.i14 = icmp eq ptr %33, null
  br i1 %cmp.not.i14, label %if.end.release_journal_dev.exit_crit_edge, label %if.then.i15

if.end.release_journal_dev.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %release_journal_dev.exit

if.then.i15:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %j_dev_mode.i = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 4
  %34 = ptrtoint ptr %j_dev_mode.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %j_dev_mode.i, align 8
  tail call void @blkdev_put(ptr noundef nonnull %33, i32 noundef %35) #13
  %36 = ptrtoint ptr %j_dev_bd.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %j_dev_bd.i, align 4
  br label %release_journal_dev.exit

release_journal_dev.exit:                         ; preds = %if.then.i15, %if.end.release_journal_dev.exit_crit_edge
  tail call void @vfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_transaction_should_end(ptr nocapture noundef %th, i32 noundef %new_alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  %call1 = tail call i64 @ktime_get_seconds() #13
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %6 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !300

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2922, 0\0A.popsection", ""() #13, !srcloc !304
  unreachable

do.end10:                                         ; preds = %entry
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %8 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %do.end10.cleanup_crit_edge, label %if.end12

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %do.end10
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 23
  %10 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %j_must_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp sgt i32 %11, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %j_len_alloc = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_len_alloc, align 4
  %add = add i32 %13, %new_alloc
  %j_max_batch = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 29
  %14 = ptrtoint ptr %j_max_batch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %j_max_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp14.not = icmp ult i32 %add, %15
  br i1 %cmp14.not, label %lor.lhs.false15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %j_jlock = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_jlock, i32 noundef 4) #13
  %16 = ptrtoint ptr %j_jlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %j_jlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %j_trans_start_time = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 17
  %18 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %j_trans_start_time, align 8
  %sub = sub i64 %call1, %19
  %j_max_trans_age = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 31
  %20 = ptrtoint ptr %j_max_trans_age to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %j_max_trans_age, align 4
  %conv = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp19 = icmp sgt i64 %sub, %conv
  br i1 %cmp19, label %lor.lhs.false18.cleanup_crit_edge, label %lor.lhs.false21

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %j_cnode_free = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 27
  %22 = ptrtoint ptr %j_cnode_free to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %j_cnode_free, align 4
  %j_trans_max = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 28
  %24 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %j_trans_max, align 8
  %mul = mul i32 %25, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mul)
  %cmp22 = icmp ult i32 %23, %mul
  br i1 %cmp22, label %lor.lhs.false21.cleanup_crit_edge, label %if.end25

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %j_len_alloc, align 4
  %add27 = add i32 %27, %new_alloc
  store i32 %add27, ptr %j_len_alloc, align 4
  %t_blocks_allocated = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 3
  %28 = ptrtoint ptr %t_blocks_allocated to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_blocks_allocated, align 4
  %add28 = add i32 %29, %new_alloc
  store i32 %add28, ptr %t_blocks_allocated, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %lor.lhs.false21.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 0, %do.end10.cleanup_crit_edge ], [ 1, %lor.lhs.false21.cleanup_crit_edge ], [ 1, %lor.lhs.false18.cleanup_crit_edge ], [ 1, %lor.lhs.false15.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_block_writes(ptr nocapture noundef readonly %th) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %0 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !300

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2942, 0\0A.popsection", ""() #13, !srcloc !305
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_journal, align 4
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %j_must_wait, align 4
  %j_state = getelementptr inbounds %struct.reiserfs_journal, ptr %7, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %j_state) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_allow_writes(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %j_state = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %j_state) #13
  %j_join_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %j_join_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_wait_on_write_block(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 2961) #13
  %j_state = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %j_state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %if.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end14

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %7 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %j_join_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 20
  %call622 = call i32 @prepare_to_wait_event(ptr noundef %j_join_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %8 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %j_state, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not23 = icmp eq i32 %10, 0
  br i1 %tobool9.not23, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #13
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %j_join_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #13
  %11 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %j_state, align 4
  %13 = and i32 %12, 2
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %j_join_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.end14

do.end14:                                         ; preds = %for.end, %entry.do.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @reiserfs_persistent_transaction(ptr noundef %s, i32 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end12_crit_edge, label %land.lhs.true.i

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true.i:                                  ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp.i = icmp eq ptr %7, %s
  br i1 %cmp.i, label %if.then, label %land.lhs.true2.critedge.i

land.lhs.true2.critedge.i:                        ; preds = %land.lhs.true.i
  %cmp4.i = icmp eq ptr %7, null
  br i1 %cmp4.i, label %do.body.i, label %land.lhs.true2.critedge.i.if.end12_crit_edge

land.lhs.true2.critedge.i.if.end12_crit_edge:     ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

do.body.i:                                        ; preds = %land.lhs.true2.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/reiserfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #13, !srcloc !306
  unreachable

if.then:                                          ; preds = %land.lhs.true.i
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_refcount, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp slt i32 %inc, 2
  br i1 %cmp, label %do.body6, label %if.then.cleanup_crit_edge, !prof !300

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3162, 0\0A.popsection", ""() #13, !srcloc !307
  unreachable

if.end12:                                         ; preds = %land.lhs.true2.critedge.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3136, i32 noundef 36) #17
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @journal_begin(ptr noundef nonnull %call7.i, ptr noundef %s, i32 noundef %nblocks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_journal, align 4
  %j_persistent_trans = getelementptr inbounds %struct.reiserfs_journal, ptr %14, i32 0, i32 51
  %15 = ptrtoint ptr %j_persistent_trans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %j_persistent_trans, align 4
  %inc22 = add i32 %16, 1
  store i32 %inc22, ptr %j_persistent_trans, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then19, %if.end12.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then19 ], [ %call7.i, %if.end20 ], [ %5, %if.then.cleanup_crit_edge ], [ null, %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_begin(ptr noundef %th, ptr noundef %sb, i32 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %t_handle_save = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 5
  %6 = ptrtoint ptr %t_handle_save to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %t_handle_save, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %cmp = icmp eq ptr %8, %sb
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %do.body7, label %do.end12, !prof !300

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3232, 0\0A.popsection", ""() #13, !srcloc !308
  unreachable

do.end12:                                         ; preds = %do.body
  %inc = add i32 %10, 1
  %11 = ptrtoint ptr %t_refcount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %t_refcount, align 4
  %12 = call ptr @memcpy(ptr %th, ptr %5, i32 36)
  %t_refcount14 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %13 = ptrtoint ptr %t_refcount14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t_refcount14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp15 = icmp slt i32 %14, 2
  br i1 %cmp15, label %if.then16, label %do.end12.cleanup_crit_edge

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.journal_begin, ptr noundef nonnull @.str.33) #13
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.journal_begin, ptr noundef nonnull @.str.35) #13
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %journal_info20 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 146
  %17 = ptrtoint ptr %journal_info20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %journal_info20, align 4
  %19 = ptrtoint ptr %t_handle_save to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %t_handle_save, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %entry.if.end30_crit_edge
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %journal_info29 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 146
  %22 = ptrtoint ptr %journal_info29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %th, ptr %journal_info29, align 4
  %call31 = tail call fastcc i32 @do_journal_begin_r(ptr noundef %th, ptr noundef %sb, i32 noundef %nblocks, i32 noundef 0)
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %journal_info35 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 146
  %25 = ptrtoint ptr %journal_info35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %journal_info35, align 4
  %cmp36.not = icmp eq ptr %26, %th
  br i1 %cmp36.not, label %do.end52, label %do.body44, !prof !298

do.body44:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3255, 0\0A.popsection", ""() #13, !srcloc !309
  unreachable

do.end52:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool53.not = icmp eq i32 %call31, 0
  br i1 %tobool53.not, label %do.body60, label %if.then54

if.then54:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %t_handle_save to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t_handle_save, align 4
  %29 = ptrtoint ptr %journal_info35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %journal_info35, align 4
  br label %cleanup

do.body60:                                        ; preds = %do.end52
  %t_refcount61 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %30 = ptrtoint ptr %t_refcount61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %t_refcount61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool62.not = icmp eq i32 %31, 0
  br i1 %tobool62.not, label %do.body72, label %do.body60.cleanup_crit_edge, !prof !300

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3264, 0\0A.popsection", ""() #13, !srcloc !310
  unreachable

cleanup:                                          ; preds = %do.body60.cleanup_crit_edge, %if.then54, %if.then16, %do.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %do.end12.cleanup_crit_edge ], [ 0, %do.body60.cleanup_crit_edge ], [ %call31, %if.then54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_end_persistent_transaction(ptr noundef %th) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %2 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @journal_end(ptr noundef %th)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %4 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_journal, align 4
  %j_persistent_trans = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 51
  %10 = ptrtoint ptr %j_persistent_trans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %j_persistent_trans, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %j_persistent_trans, align 4
  tail call void @kfree(ptr noundef %th) #13
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_end(ptr noundef %th) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 146
  %6 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %journal_info, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %8 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.journal_end, ptr noundef nonnull @.str.47, i32 noundef %9) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %10 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 3394, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %t_refcount22 = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %12 = ptrtoint ptr %t_refcount22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t_refcount22, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %t_refcount22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp24 = icmp sgt i32 %dec, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %journal_info28 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %journal_info28, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %th, align 4
  %cmp32.not = icmp eq ptr %19, %21
  br i1 %cmp32.not, label %do.end48, label %do.body40, !prof !298

do.body40:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3407, 0\0A.popsection", ""() #13, !srcloc !311
  unreachable

do.end48:                                         ; preds = %if.then25
  %cmp49.not = icmp eq ptr %17, %th
  br i1 %cmp49.not, label %do.end48.cleanup_crit_edge, label %if.then50

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then50:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #15
  %22 = call ptr @memcpy(ptr %17, ptr %th, i32 36)
  %23 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %t_trans_id, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = tail call fastcc i32 @do_journal_end(ptr noundef %th, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then50, %do.end48.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call56, %if.else ], [ -5, %do.end ], [ 0, %if.then50 ], [ 0, %do.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_join_abort(ptr noundef %th, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %t_handle_save = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 5
  %6 = ptrtoint ptr %t_handle_save to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %t_handle_save, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %land.rhs

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.rhs:                                         ; preds = %entry
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.body3, label %land.rhs.do.end8_crit_edge, !prof !300

land.rhs.do.end8_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

do.body3:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3218, 0\0A.popsection", ""() #13, !srcloc !312
  unreachable

do.end8:                                          ; preds = %land.rhs.do.end8_crit_edge, %entry.do.end8_crit_edge
  %call9 = tail call fastcc i32 @do_journal_begin_r(ptr noundef %th, ptr noundef %sb, i32 noundef 1, i32 noundef 2)
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_journal_begin_r(ptr noundef %th, ptr noundef %sb, i32 noundef %nblocks, i32 noundef %join) unnamed_addr #0 align 64 {
entry:
  %myth = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_seconds() #13
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %myth) #13
  %4 = call ptr @memset(ptr %myth, i32 255, i32 36)
  tail call void @reiserfs_check_lock_depth(ptr noundef %sb, ptr noundef nonnull @__func__.journal_begin) #13
  %j_trans_max = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 28
  %5 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %j_trans_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %nblocks)
  %cmp = icmp ult i32 %6, %nblocks
  br i1 %cmp, label %do.body4, label %do.end9, !prof !300

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3038, 0\0A.popsection", ""() #13, !srcloc !313
  unreachable

do.end9:                                          ; preds = %entry
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %journal_being = getelementptr inbounds %struct.reiserfs_sb_info, ptr %8, i32 0, i32 27, i32 32, i32 5
  %9 = ptrtoint ptr %journal_being to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %journal_being, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %journal_being, align 4
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %11 = ptrtoint ptr %t_refcount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %t_refcount, align 4
  %12 = ptrtoint ptr %th to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sb, ptr %th, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %join)
  %cmp12.not = icmp eq i32 %join, 2
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 6
  %j_bcount = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %join)
  %tobool34.not = icmp eq i32 %join, 0
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 23
  %j_len_alloc = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 11
  %add = add i32 %nblocks, 2
  %j_max_batch = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 29
  %j_wcount = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 12
  %j_trans_start_time = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 17
  %j_max_trans_age = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 31
  %j_jlock = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 21
  %j_cnode_free = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 27
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 7
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 10
  %t_handle_save.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %myth, i32 0, i32 5
  br label %relock

relock:                                           ; preds = %relock.backedge, %do.end9
  %13 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i, align 16
  %lock_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %14, i32 0, i32 27, i32 32, i32 3
  %15 = ptrtoint ptr %lock_journal.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lock_journal.i, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %lock_journal.i, align 4
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_journal.i, align 4
  %j_mutex.i = getelementptr inbounds %struct.reiserfs_journal, ptr %19, i32 0, i32 18
  %call.i.i212 = call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #13
  call void @mutex_lock_nested(ptr noundef %j_mutex.i, i32 noundef 0) #13
  call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %call.i.i212) #13
  br i1 %cmp12.not, label %relock.if.end22_crit_edge, label %land.lhs.true

relock.if.end22_crit_edge:                        ; preds = %relock
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true:                                    ; preds = %relock
  %20 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %j_state.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool14.not = icmp eq i32 %22, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end22_crit_edge, label %if.then21, !prof !298

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i214 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %s_journal.i214 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_journal.i214, align 4
  %j_mutex.i215 = getelementptr inbounds %struct.reiserfs_journal, ptr %26, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %j_mutex.i215) #13
  %j_errno = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 54
  %27 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %j_errno, align 8
  br label %out_fail

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %relock.if.end22_crit_edge
  %29 = ptrtoint ptr %j_bcount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %j_bcount, align 4
  %inc23 = add i32 %30, 1
  store i32 %inc23, ptr %j_bcount, align 4
  %31 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %j_state.i, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not = icmp eq i32 %33, 0
  br i1 %tobool25.not, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i217 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %s_journal.i217 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_journal.i217, align 4
  %j_mutex.i218 = getelementptr inbounds %struct.reiserfs_journal, ptr %37, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %j_mutex.i218) #13
  %call27 = call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #13
  call void @reiserfs_wait_on_write_block(ptr noundef %sb)
  call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %call27) #13
  %38 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i, align 16
  %journal_relock_writers = getelementptr inbounds %struct.reiserfs_sb_info, ptr %39, i32 0, i32 27, i32 32, i32 6
  br label %relock.backedge.sink.split

relock.backedge.sink.split:                       ; preds = %if.end113, %if.then26
  %journal_relock_writers.sink228 = phi ptr [ %journal_relock_writers, %if.then26 ], [ %journal_relock_wcount, %if.end113 ]
  %40 = ptrtoint ptr %journal_relock_writers.sink228 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %journal_relock_writers.sink228, align 4
  %inc31 = add i32 %41, 1
  store i32 %inc31, ptr %journal_relock_writers.sink228, align 4
  br label %relock.backedge

if.end32:                                         ; preds = %if.end22
  %call33 = call i64 @ktime_get_seconds() #13
  br i1 %tobool34.not, label %land.lhs.true35, label %if.end32.if.end118_crit_edge

if.end32.if.end118_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

land.lhs.true35:                                  ; preds = %if.end32
  %42 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %j_must_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp36 = icmp sgt i32 %43, 0
  br i1 %cmp36, label %land.lhs.true35.land.lhs.true65_crit_edge, label %land.lhs.true38.critedge

land.lhs.true35.land.lhs.true65_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true65

land.lhs.true38.critedge:                         ; preds = %land.lhs.true35
  %44 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %j_len_alloc, align 4
  %add39 = add i32 %45, %add
  %46 = ptrtoint ptr %j_max_batch to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %j_max_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add39, i32 %47)
  %cmp40.not = icmp ult i32 %add39, %47
  br i1 %cmp40.not, label %land.lhs.true43.critedge, label %land.lhs.true38.critedge.land.lhs.true65_crit_edge

land.lhs.true38.critedge.land.lhs.true65_crit_edge: ; preds = %land.lhs.true38.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true65

land.lhs.true43.critedge:                         ; preds = %land.lhs.true38.critedge
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %48 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %j_wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp45 = icmp sgt i32 %49, 0
  br i1 %cmp45, label %land.lhs.true46, label %land.lhs.true43.critedge.land.lhs.true54_crit_edge

land.lhs.true43.critedge.land.lhs.true54_crit_edge: ; preds = %land.lhs.true43.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true54

land.lhs.true46:                                  ; preds = %land.lhs.true43.critedge
  %50 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %j_trans_start_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %cmp47 = icmp sgt i64 %51, 0
  br i1 %cmp47, label %land.lhs.true48, label %land.lhs.true46.land.lhs.true54_crit_edge

land.lhs.true46.land.lhs.true54_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true54

land.lhs.true48:                                  ; preds = %land.lhs.true46
  %sub = sub i64 %call33, %51
  %52 = ptrtoint ptr %j_max_trans_age to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %j_max_trans_age, align 4
  %conv = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp50 = icmp sgt i64 %sub, %conv
  br i1 %cmp50, label %land.lhs.true48.land.lhs.true65_crit_edge, label %land.lhs.true48.land.lhs.true54_crit_edge

land.lhs.true48.land.lhs.true54_crit_edge:        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true54

land.lhs.true48.land.lhs.true65_crit_edge:        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true65

land.lhs.true54:                                  ; preds = %land.lhs.true48.land.lhs.true54_crit_edge, %land.lhs.true46.land.lhs.true54_crit_edge, %land.lhs.true43.critedge.land.lhs.true54_crit_edge
  %call.i.i206 = call zeroext i1 @__kasan_check_read(ptr noundef %j_jlock, i32 noundef 4) #13
  %54 = ptrtoint ptr %j_jlock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %j_jlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool56.not = icmp eq i32 %55, 0
  br i1 %tobool56.not, label %land.lhs.true59, label %land.lhs.true54.land.lhs.true65_crit_edge

land.lhs.true54.land.lhs.true65_crit_edge:        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true65

land.lhs.true59:                                  ; preds = %land.lhs.true54
  %56 = ptrtoint ptr %j_cnode_free to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %j_cnode_free, align 4
  %58 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %j_trans_max, align 8
  %mul = mul i32 %59, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %mul)
  %cmp61 = icmp ult i32 %57, %mul
  br i1 %cmp61, label %land.lhs.true59.land.lhs.true65_crit_edge, label %land.lhs.true59.if.end118_crit_edge

land.lhs.true59.if.end118_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end118

land.lhs.true59.land.lhs.true65_crit_edge:        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true65

land.lhs.true65:                                  ; preds = %land.lhs.true59.land.lhs.true65_crit_edge, %land.lhs.true54.land.lhs.true65_crit_edge, %land.lhs.true48.land.lhs.true65_crit_edge, %land.lhs.true38.critedge.land.lhs.true65_crit_edge, %land.lhs.true35.land.lhs.true65_crit_edge
  %60 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %j_trans_id, align 4
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i221 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %s_journal.i221 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_journal.i221, align 4
  %j_mutex.i222 = getelementptr inbounds %struct.reiserfs_journal, ptr %65, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %j_mutex.i222) #13
  %66 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %j_len_alloc, align 4
  %add68 = add i32 %67, %add
  %68 = ptrtoint ptr %j_max_batch to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %j_max_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %69)
  %cmp70.not = icmp ult i32 %add68, %69
  br i1 %cmp70.not, label %land.lhs.true65.if.end88_crit_edge, label %land.lhs.true72

land.lhs.true65.if.end88_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

land.lhs.true72:                                  ; preds = %land.lhs.true65
  %70 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %j_len, align 8
  %add73 = add i32 %71, %nblocks
  %72 = mul i32 %add73, 100
  %mul75 = add i32 %72, 200
  %mul77 = mul i32 %67, 75
  call void @__sanitizer_cov_trace_cmp4(i32 %mul75, i32 %mul77)
  %cmp78 = icmp ult i32 %mul75, %mul77
  br i1 %cmp78, label %if.then80, label %land.lhs.true72.if.end88_crit_edge

land.lhs.true72.if.end88_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then80:                                        ; preds = %land.lhs.true72
  %call.i.i207 = call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %73 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %j_wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %74)
  %cmp83 = icmp sgt i32 %74, 10
  br i1 %cmp83, label %if.then85, label %if.then80.if.end88_crit_edge

if.then80.if.end88_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end88

if.then85:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @queue_log_writer(ptr noundef %sb)
  br label %relock.backedge

relock.backedge:                                  ; preds = %while.body.relock.backedge_crit_edge, %land.rhs.relock.backedge_crit_edge, %while.cond.preheader.relock.backedge_crit_edge, %if.then85, %relock.backedge.sink.split
  br label %relock

if.end88:                                         ; preds = %if.then80.if.end88_crit_edge, %land.lhs.true72.if.end88_crit_edge, %land.lhs.true65.if.end88_crit_edge
  %call.i.i208 = call zeroext i1 @__kasan_check_read(ptr noundef %j_jlock, i32 noundef 4) #13
  %75 = ptrtoint ptr %j_jlock to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %j_jlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool91.not = icmp eq i32 %76, 0
  br i1 %tobool91.not, label %if.end99, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end88
  %77 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %j_trans_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %61)
  %cmp94227 = icmp eq i32 %78, %61
  br i1 %cmp94227, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.relock.backedge_crit_edge

while.cond.preheader.relock.backedge_crit_edge:   ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %relock.backedge

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %call.i.i209 = call zeroext i1 @__kasan_check_read(ptr noundef %j_jlock, i32 noundef 4) #13
  %79 = ptrtoint ptr %j_jlock to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %j_jlock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool98.not = icmp eq i32 %80, 0
  br i1 %tobool98.not, label %land.rhs.relock.backedge_crit_edge, label %while.body

land.rhs.relock.backedge_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %relock.backedge

while.body:                                       ; preds = %land.rhs
  call fastcc void @queue_log_writer(ptr noundef %sb)
  %81 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %j_trans_id, align 4
  %cmp94 = icmp eq i32 %82, %61
  br i1 %cmp94, label %while.body.land.rhs_crit_edge, label %while.body.relock.backedge_crit_edge

while.body.relock.backedge_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %relock.backedge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs

if.end99:                                         ; preds = %if.end88
  %83 = call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 146
  %87 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %journal_info.i, align 4
  %89 = ptrtoint ptr %t_handle_save.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %t_handle_save.i, align 4
  %tobool.not.i = icmp eq ptr %88, null
  br i1 %tobool.not.i, label %if.end99.journal_join.exit_crit_edge, label %land.rhs.i

if.end99.journal_join.exit_crit_edge:             ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_join.exit

land.rhs.i:                                       ; preds = %if.end99
  %t_refcount.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %88, i32 0, i32 1
  %90 = ptrtoint ptr %t_refcount.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %t_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp.i = icmp sgt i32 %91, 1
  br i1 %cmp.i, label %do.body3.i, label %land.rhs.i.journal_join.exit_crit_edge, !prof !300

land.rhs.i.journal_join.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_join.exit

do.body3.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3204, 0\0A.popsection", ""() #13, !srcloc !302
  unreachable

journal_join.exit:                                ; preds = %land.rhs.i.journal_join.exit_crit_edge, %if.end99.journal_join.exit_crit_edge
  %call9.i = call fastcc i32 @do_journal_begin_r(ptr noundef nonnull %myth, ptr noundef %sb, i32 noundef 1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool101.not = icmp eq i32 %call9.i, 0
  br i1 %tobool101.not, label %if.end103, label %journal_join.exit.out_fail_crit_edge

journal_join.exit.out_fail_crit_edge:             ; preds = %journal_join.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fail

if.end103:                                        ; preds = %journal_join.exit
  %92 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %j_trans_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %93)
  %cmp105.not = icmp eq i32 %61, %93
  %. = select i1 %cmp105.not, i32 2, i32 0
  %call109 = call fastcc i32 @do_journal_end(ptr noundef nonnull %myth, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool111.not = icmp eq i32 %call109, 0
  br i1 %tobool111.not, label %if.end113, label %if.end103.out_fail_crit_edge

if.end103.out_fail_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_fail

if.end113:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_fs_info.i, align 16
  %journal_relock_wcount = getelementptr inbounds %struct.reiserfs_sb_info, ptr %95, i32 0, i32 27, i32 32, i32 7
  br label %relock.backedge.sink.split

if.end118:                                        ; preds = %land.lhs.true59.if.end118_crit_edge, %if.end32.if.end118_crit_edge
  %96 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %j_trans_start_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %cmp120 = icmp eq i64 %97, 0
  br i1 %cmp120, label %if.then122, label %if.end118.if.end125_crit_edge

if.end118.if.end125_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end125

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #15
  %call123 = call i64 @ktime_get_seconds() #13
  %98 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %call123, ptr %j_trans_start_time, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end118.if.end125_crit_edge
  %call.i.i210 = call zeroext i1 @__kasan_check_write(ptr noundef %j_wcount, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %j_wcount, i32 1, i32 3, i32 1) #13
  %99 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_wcount, ptr %j_wcount, i32 1, ptr elementtype(i32) %j_wcount) #13, !srcloc !297
  %100 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %j_len_alloc, align 4
  %add128 = add i32 %101, %nblocks
  store i32 %add128, ptr %j_len_alloc, align 4
  %t_blocks_logged = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 2
  %102 = ptrtoint ptr %t_blocks_logged to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %t_blocks_logged, align 4
  %t_blocks_allocated = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 3
  %103 = ptrtoint ptr %t_blocks_allocated to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %nblocks, ptr %t_blocks_allocated, align 4
  %104 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %j_trans_id, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %106 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %t_trans_id, align 4
  %107 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i225 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %s_journal.i225 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_journal.i225, align 4
  %j_mutex.i226 = getelementptr inbounds %struct.reiserfs_journal, ptr %110, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %j_mutex.i226) #13
  %t_list = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 7
  %111 = ptrtoint ptr %t_list to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %t_list, ptr %t_list, align 4
  %prev.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 7, i32 1
  %112 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %t_list, ptr %prev.i, align 4
  br label %cleanup

out_fail:                                         ; preds = %if.end103.out_fail_crit_edge, %journal_join.exit.out_fail_crit_edge, %if.then21
  %retval2.1 = phi i32 [ %28, %if.then21 ], [ %call9.i, %journal_join.exit.out_fail_crit_edge ], [ %call109, %if.end103.out_fail_crit_edge ]
  %113 = call ptr @memset(ptr %t_refcount, i32 0, i32 32)
  %114 = ptrtoint ptr %th to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %sb, ptr %th, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_fail, %if.end125
  %retval.0 = phi i32 [ %retval2.1, %out_fail ], [ 0, %if.end125 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %myth) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_mark_dirty(ptr nocapture noundef %th, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %6 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !300

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3287, 0\0A.popsection", ""() #13, !srcloc !314
  unreachable

do.end9:                                          ; preds = %entry
  %mark_dirty = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 27, i32 32, i32 8
  %8 = ptrtoint ptr %mark_dirty to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mark_dirty, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %mark_dirty, align 4
  %10 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_trans_id, align 4
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_trans_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %if.end17, label %if.then13

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %th, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %15, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.journal_mark_dirty, ptr noundef nonnull @.str.37, i32 noundef %11, i32 noundef %13) #18
  unreachable

if.end17:                                         ; preds = %do.end9
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 19, ptr noundef %bh) #13
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %bh) #13
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %bh, align 4
  %18 = and i32 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %if.end26, label %if.then21

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %mark_dirty_already = getelementptr inbounds %struct.reiserfs_sb_info, ptr %20, i32 0, i32 27, i32 32, i32 9
  %21 = ptrtoint ptr %mark_dirty_already to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mark_dirty_already, align 4
  %inc25 = add i32 %22, 1
  store i32 %inc25, ptr %mark_dirty_already, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end26.if.then30_crit_edge, label %lor.lhs.false

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end26
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %bh, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not = icmp eq i32 %25, 0
  br i1 %tobool29.not, label %lor.lhs.false.if.end41_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then30

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end26.if.then30_crit_edge
  %cond = phi i32 [ 32, %lor.lhs.false.if.then30_crit_edge ], [ 33, %if.end26.if.then30_crit_edge ]
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %26 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %b_blocknr, align 8
  %28 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %bh, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool33.not = icmp eq i32 %30, 0
  %cond34 = select i1 %tobool33.not, i32 33, i32 32
  %31 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %bh, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool36.not = icmp eq i32 %33, 0
  %cond37 = select i1 %tobool36.not, i32 33, i32 32
  %34 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %bh, align 4
  %36 = and i32 %35, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  %cond40 = select i1 %tobool39.not, i32 33, i32 32
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.journal_mark_dirty, ptr noundef nonnull @.str.39, i64 noundef %27, i32 noundef %cond, i32 noundef %cond34, i32 noundef %cond37, i32 noundef %cond40) #13
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %lor.lhs.false.if.end41_crit_edge
  %j_wcount = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %37 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %j_wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp43 = icmp slt i32 %38, 1
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i182 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %39 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %j_wcount, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.journal_mark_dirty, ptr noundef nonnull @.str.41, i32 noundef %40) #13
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %j_len, align 8
  %j_trans_max = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 28
  %43 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %j_trans_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp48.not = icmp ult i32 %42, %44
  br i1 %cmp48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %th, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %46, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.journal_mark_dirty, ptr noundef nonnull @.str.43, i32 noundef %42) #18
  unreachable

if.end52:                                         ; preds = %if.end47
  %47 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %bh, align 4
  %49 = and i32 %48, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool54.not = icmp eq i32 %49, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %if.then55

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %mark_dirty_notjournal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %51, i32 0, i32 27, i32 32, i32 10
  %52 = ptrtoint ptr %mark_dirty_notjournal to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mark_dirty_notjournal, align 4
  %inc59 = add i32 %53, 1
  store i32 %inc59, ptr %mark_dirty_notjournal, align 4
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %bh) #13
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end52.if.end60_crit_edge
  %54 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %j_len, align 8
  %j_len_alloc = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 11
  %56 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %j_len_alloc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp62 = icmp ugt i32 %55, %57
  br i1 %cmp62, label %if.then63, label %if.end60.if.end66_crit_edge

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %add = add i32 %55, 18
  %58 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add, ptr %j_len_alloc, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %bh, align 4
  %61 = and i32 %60, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end66.set_buffer_journaled.exit_crit_edge

if.end66.set_buffer_journaled.exit_crit_edge:     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_journaled.exit

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 16, ptr noundef %bh) #13
  br label %set_buffer_journaled.exit

set_buffer_journaled.exit:                        ; preds = %if.then.i, %if.end66.set_buffer_journaled.exit_crit_edge
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_journal.i, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef %1, ptr noundef nonnull @.str.111) #13
  %j_cnode_free.i = getelementptr inbounds %struct.reiserfs_journal, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %j_cnode_free.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %j_cnode_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp.i = icmp slt i32 %67, 1
  br i1 %cmp.i, label %set_buffer_journaled.exit.if.then71_crit_edge, label %if.end.i

set_buffer_journaled.exit.if.then71_crit_edge:    ; preds = %set_buffer_journaled.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then71

if.end.i:                                         ; preds = %set_buffer_journaled.exit
  %j_cnode_used.i = getelementptr inbounds %struct.reiserfs_journal, ptr %65, i32 0, i32 26
  %68 = ptrtoint ptr %j_cnode_used.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %j_cnode_used.i, align 8
  %inc.i = add i32 %69, 1
  store i32 %inc.i, ptr %j_cnode_used.i, align 8
  %dec.i = add nsw i32 %67, -1
  %70 = ptrtoint ptr %j_cnode_free.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %dec.i, ptr %j_cnode_free.i, align 4
  %j_cnode_free_list.i = getelementptr inbounds %struct.reiserfs_journal, ptr %65, i32 0, i32 33
  %71 = ptrtoint ptr %j_cnode_free_list.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %j_cnode_free_list.i, align 4
  %tobool.not.i188 = icmp eq ptr %72, null
  br i1 %tobool.not.i188, label %if.end.i.if.then71_crit_edge, label %if.end3.i

if.end.i.if.then71_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then71

if.end3.i:                                        ; preds = %if.end.i
  %next.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %next.i, align 4
  %tobool4.not.i = icmp eq ptr %74, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end72_crit_edge, label %if.then5.i

if.end3.i.if.end72_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %prev.i, align 4
  br label %if.end72

if.then71:                                        ; preds = %if.end.i.if.then71_crit_edge, %set_buffer_journaled.exit.if.then71_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.journal_mark_dirty, ptr noundef nonnull @.str.45) #18
  unreachable

if.end72:                                         ; preds = %if.then5.i, %if.end3.i.if.end72_crit_edge
  %76 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %next.i, align 4
  %78 = ptrtoint ptr %j_cnode_free_list.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %j_cnode_free_list.i, align 4
  %79 = call ptr @memset(ptr %72, i32 0, i32 36)
  %t_blocks_logged = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 2
  %80 = ptrtoint ptr %t_blocks_logged to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %t_blocks_logged, align 4
  %t_blocks_allocated = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 3
  %82 = ptrtoint ptr %t_blocks_allocated to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %t_blocks_allocated, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp73 = icmp eq i32 %81, %83
  br i1 %cmp73, label %if.then74, label %if.end72.if.end79_crit_edge

if.end72.if.end79_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %add76 = add i32 %81, 18
  %84 = ptrtoint ptr %t_blocks_allocated to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add76, ptr %t_blocks_allocated, align 4
  %85 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %j_len_alloc, align 4
  %add78 = add i32 %86, 18
  store i32 %add78, ptr %j_len_alloc, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end72.if.end79_crit_edge
  %87 = ptrtoint ptr %t_blocks_logged to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %t_blocks_logged, align 4
  %inc81 = add i32 %88, 1
  store i32 %inc81, ptr %t_blocks_logged, align 4
  %89 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %j_len, align 8
  %inc83 = add i32 %90, 1
  store i32 %inc83, ptr %j_len, align 8
  %91 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %bh, ptr %72, align 4
  %b_blocknr85 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %92 = ptrtoint ptr %b_blocknr85 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %b_blocknr85, align 8
  %conv = trunc i64 %93 to i32
  %blocknr = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %72, i32 0, i32 2
  %94 = ptrtoint ptr %blocknr to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv, ptr %blocknr, align 4
  %sb86 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %72, i32 0, i32 1
  %95 = ptrtoint ptr %sb86 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %1, ptr %sb86, align 4
  %jlist = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %72, i32 0, i32 4
  %96 = ptrtoint ptr %jlist to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %jlist, align 4
  %j_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 47
  %97 = ptrtoint ptr %1 to i32
  %shr.i = lshr i32 %97, 7
  %shl.i = shl i32 %conv, 7
  %shr2.i = lshr i32 %conv, 13
  %shl4.i = shl i32 %conv, 1
  %xor.i = xor i32 %shr2.i, %shr.i
  %xor5.i = xor i32 %xor.i, %shl.i
  %xor6.i = xor i32 %xor5.i, %shl4.i
  %and.i = and i32 %xor6.i, 8191
  %arrayidx.i = getelementptr ptr, ptr %j_hash_table, i32 %and.i
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i, align 4
  %hnext.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %72, i32 0, i32 8
  %100 = ptrtoint ptr %hnext.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %hnext.i, align 4
  %hprev.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %72, i32 0, i32 7
  %101 = ptrtoint ptr %hprev.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %hprev.i, align 4
  %tobool.not.i189 = icmp eq ptr %99, null
  br i1 %tobool.not.i189, label %if.end79.insert_journal_hash.exit_crit_edge, label %if.then.i190

if.end79.insert_journal_hash.exit_crit_edge:      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_journal_hash.exit

if.then.i190:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %hprev7.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %99, i32 0, i32 7
  %102 = ptrtoint ptr %hprev7.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %72, ptr %hprev7.i, align 4
  br label %insert_journal_hash.exit

insert_journal_hash.exit:                         ; preds = %if.then.i190, %if.end79.insert_journal_hash.exit_crit_edge
  %103 = ptrtoint ptr %sb86 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sb86, align 4
  %105 = ptrtoint ptr %104 to i32
  %shr9.i = lshr i32 %105, 7
  %106 = ptrtoint ptr %blocknr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %blocknr, align 4
  %shl11.i = shl i32 %107, 7
  %shr13.i = lshr i32 %107, 13
  %xor14.i = xor i32 %shl11.i, %shr13.i
  %shl16.i = shl i32 %107, 1
  %xor17.i = xor i32 %xor14.i, %shl16.i
  %xor18.i = xor i32 %xor17.i, %shr9.i
  %and19.i = and i32 %xor18.i, 8191
  %arrayidx20.i = getelementptr ptr, ptr %j_hash_table, i32 %and19.i
  %108 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %72, ptr %arrayidx20.i, align 4
  br i1 %tobool54.not, label %if.then88, label %insert_journal_hash.exit.if.end90_crit_edge

insert_journal_hash.exit.if.end90_crit_edge:      ; preds = %insert_journal_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end90

if.then88:                                        ; preds = %insert_journal_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !297
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %insert_journal_hash.exit.if.end90_crit_edge
  %110 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %next.i, align 4
  %j_last = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 1
  %111 = ptrtoint ptr %j_last to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %j_last, align 4
  %prev = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %72, i32 0, i32 6
  %113 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %prev, align 4
  %114 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %bh, ptr %72, align 4
  %115 = load ptr, ptr %j_last, align 4
  %tobool93.not = icmp eq ptr %115, null
  br i1 %tobool93.not, label %if.else, label %if.then94

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %next96 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %next96 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %72, ptr %next96, align 4
  br label %if.end99

if.else:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %j_first = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 2
  %117 = ptrtoint ptr %j_first to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %72, ptr %j_first, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.else, %if.then94
  %118 = ptrtoint ptr %j_last to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %72, ptr %j_last, align 4
  tail call void @reiserfs_schedule_old_flush(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then44, %if.then21
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 1, %if.then44 ], [ 0, %if.end99 ]
  ret i32 %retval.0
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_schedule_old_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_journal_end(ptr noundef %th, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %__wbq_entry.i = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %6 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.body3, label %do.body9, !prof !300

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4005, 0\0A.popsection", ""() #13, !srcloc !315
  unreachable

do.body9:                                         ; preds = %entry
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %8 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %do.body20, label %do.body29, !prof !300

do.body20:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4006, 0\0A.popsection", ""() #13, !srcloc !316
  unreachable

do.body29:                                        ; preds = %do.body9
  %tobool31.not = icmp eq ptr %1, null
  br i1 %tobool31.not, label %do.body41, label %do.end49, !prof !300

do.body41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4007, 0\0A.popsection", ""() #13, !srcloc !317
  unreachable

do.end49:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp51 = icmp eq i32 %9, -1
  %spec.select = select i1 %cmp51, i32 7, i32 %flags
  %and = and i32 %spec.select, 1
  %and54 = and i32 %spec.select, 4
  %t_handle_save = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 5
  %10 = ptrtoint ptr %t_handle_save to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_handle_save, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %journal_info, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef nonnull %1, ptr noundef nonnull @.str.119) #13
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 10
  %17 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %j_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp56 = icmp eq i32 %18, 0
  br i1 %cmp56, label %if.then57, label %do.end49.if.end63_crit_edge

do.end49.if.end63_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then57:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i, align 16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call59 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef nonnull %1, ptr noundef %22, i32 noundef 1)
  %23 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i, align 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call62 = tail call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %26)
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %do.end49.if.end63_crit_edge
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %lock_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %28, i32 0, i32 27, i32 32, i32 3
  %29 = ptrtoint ptr %lock_journal.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lock_journal.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %lock_journal.i, align 4
  %31 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_journal.i, align 4
  %j_mutex.i = getelementptr inbounds %struct.reiserfs_journal, ptr %33, i32 0, i32 18
  %call.i.i735 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef nonnull %1) #13
  tail call void @mutex_lock_nested(ptr noundef %j_mutex.i, i32 noundef 0) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef nonnull %1, i32 noundef %call.i.i735) #13
  %j_next_full_flush = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 24
  %34 = ptrtoint ptr %j_next_full_flush to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %j_next_full_flush, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool64.not = icmp eq i32 %35, 0
  %not.tobool64.not = xor i1 %tobool64.not, true
  %or66 = zext i1 %not.tobool64.not to i32
  %spec.select713 = or i32 %spec.select, %or66
  %j_next_async_flush = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 25
  %36 = ptrtoint ptr %j_next_async_flush to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %j_next_async_flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool68.not = icmp eq i32 %37, 0
  %or70 = or i32 %spec.select713, 6
  %flags.addr.2 = select i1 %tobool68.not, i32 %spec.select713, i32 %or70
  %and.i736 = and i32 %flags.addr.2, 1
  %and1.i = and i32 %flags.addr.2, 2
  %and2.i = and i32 %flags.addr.2, 4
  %38 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %th, align 4
  %s_fs_info.i.i737 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_journal.i738 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %s_journal.i738 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_journal.i738, align 4
  %44 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i739 = icmp eq i32 %45, 0
  br i1 %tobool.not.i739, label %do.body6.i, label %do.end11.i, !prof !300

do.body6.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3626, 0\0A.popsection", ""() #13, !srcloc !318
  unreachable

do.end11.i:                                       ; preds = %if.end63
  %j_trans_id.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 7
  %46 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %j_trans_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp.not.i = icmp eq i32 %45, %47
  br i1 %cmp.not.i, label %if.end17.i, label %if.then13.i

if.then13.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %39, ptr noundef nonnull @.str.36, ptr noundef nonnull @__func__.check_journal_end, ptr noundef nonnull @.str.37, i32 noundef %45, i32 noundef %47) #18
  unreachable

if.end17.i:                                       ; preds = %do.end11.i
  %t_blocks_allocated.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 3
  %48 = ptrtoint ptr %t_blocks_allocated.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %t_blocks_allocated.i, align 4
  %t_blocks_logged.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 2
  %50 = ptrtoint ptr %t_blocks_logged.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %t_blocks_logged.i, align 4
  %sub.neg.i = sub i32 %51, %49
  %j_len_alloc.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 11
  %52 = ptrtoint ptr %j_len_alloc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %j_len_alloc.i, align 4
  %sub18.i = add i32 %sub.neg.i, %53
  store i32 %sub18.i, ptr %j_len_alloc.i, align 4
  %j_wcount.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount.i, i32 noundef 4) #13
  %54 = ptrtoint ptr %j_wcount.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %j_wcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp20.i = icmp sgt i32 %55, 0
  br i1 %cmp20.i, label %if.then21.i, label %if.end17.i.do.body24.i_crit_edge

if.end17.i.do.body24.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i201.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_wcount.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %j_wcount.i, i32 1, i32 3, i32 1) #13
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_wcount.i, ptr %j_wcount.i, i32 1, ptr elementtype(i32) %j_wcount.i) #13, !srcloc !295
  br label %do.body24.i

do.body24.i:                                      ; preds = %if.then21.i, %if.end17.i.do.body24.i_crit_edge
  %j_len.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 10
  %57 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %j_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp25.i = icmp eq i32 %58, 0
  br i1 %cmp25.i, label %do.body33.i, label %do.end41.i, !prof !300

do.body33.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3645, 0\0A.popsection", ""() #13, !srcloc !319
  unreachable

do.end41.i:                                       ; preds = %do.body24.i
  %call.i.i202.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount.i, i32 noundef 4) #13
  %59 = ptrtoint ptr %j_wcount.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %j_wcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp44.i = icmp sgt i32 %60, 0
  br i1 %cmp44.i, label %if.then45.i, label %if.end96.i

if.then45.i:                                      ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i736)
  %tobool46.not.i = icmp eq i32 %and.i736, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool47.not.i = icmp eq i32 %and1.i, 0
  %61 = and i32 %flags.addr.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %if.end95.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.then45.i
  %j_current_jl.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 35
  %63 = ptrtoint ptr %j_current_jl.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %j_current_jl.i, align 4
  %j_trans_id49.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %64, i32 0, i32 7
  %65 = ptrtoint ptr %j_trans_id49.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %j_trans_id49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool50.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool50.not.i, label %if.then48.i.if.end52.i_crit_edge, label %if.then51.i

if.then48.i.if.end52.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.i

if.then51.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #15
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %j_state.i, align 4
  %or.i = or i32 %68, 4
  store i32 %or.i, ptr %j_state.i, align 4
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %if.then48.i.if.end52.i_crit_edge
  %j_jlock.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 21
  %call.i.i203.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_jlock.i, i32 noundef 4) #13
  %69 = ptrtoint ptr %j_jlock.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 1, ptr %j_jlock.i, align 4
  br i1 %tobool46.not.i, label %if.end52.i.if.end55.i_crit_edge, label %if.then54.i

if.end52.i.if.end55.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %j_next_full_flush.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 24
  %70 = ptrtoint ptr %j_next_full_flush.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %j_next_full_flush.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %if.end52.i.if.end55.i_crit_edge
  %71 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_journal.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_journal.i.i, align 4
  %j_mutex.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %74, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %j_mutex.i.i) #13
  %75 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %j_trans_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %66)
  %cmp57227.i = icmp eq i32 %76, %66
  br i1 %cmp57227.i, label %if.end55.i.while.body.i_crit_edge, label %if.end55.i.do.end86.i_crit_edge

if.end55.i.do.end86.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86.i

if.end55.i.while.body.i_crit_edge:                ; preds = %if.end55.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end67.i.while.body.i_crit_edge, %if.end55.i.while.body.i_crit_edge
  %call.i.i204.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_jlock.i, i32 noundef 4) #13
  %77 = ptrtoint ptr %j_jlock.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %j_jlock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool60.not.i = icmp eq i32 %78, 0
  br i1 %tobool60.not.i, label %if.else.i, label %if.then61.i

if.then61.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @queue_log_writer(ptr noundef %39) #13
  br label %if.end67.i

if.else.i:                                        ; preds = %while.body.i
  %79 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i.i737, align 16
  %lock_journal.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %80, i32 0, i32 27, i32 32, i32 3
  %81 = ptrtoint ptr %lock_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %lock_journal.i.i, align 4
  %inc.i.i = add i32 %82, 1
  store i32 %inc.i.i, ptr %lock_journal.i.i, align 4
  %83 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_journal.i208.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %s_journal.i208.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %s_journal.i208.i, align 4
  %j_mutex.i209.i = getelementptr inbounds %struct.reiserfs_journal, ptr %85, i32 0, i32 18
  %call.i.i210.i = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %39) #13
  tail call void @mutex_lock_nested(ptr noundef %j_mutex.i209.i, i32 noundef 0) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef %39, i32 noundef %call.i.i210.i) #13
  %86 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %j_trans_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %66)
  %cmp63.i = icmp eq i32 %87, %66
  br i1 %cmp63.i, label %if.then64.i, label %if.else.i.if.end66.i_crit_edge

if.else.i.if.end66.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.then64.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i205.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_jlock.i, i32 noundef 4) #13
  %88 = ptrtoint ptr %j_jlock.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 1, ptr %j_jlock.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then64.i, %if.else.i.if.end66.i_crit_edge
  %89 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_journal.i212.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %s_journal.i212.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_journal.i212.i, align 4
  %j_mutex.i213.i = getelementptr inbounds %struct.reiserfs_journal, ptr %92, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %j_mutex.i213.i) #13
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end66.i, %if.then61.i
  %93 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %j_trans_id.i, align 4
  %cmp57.i = icmp eq i32 %94, %66
  br i1 %cmp57.i, label %if.end67.i.while.body.i_crit_edge, label %if.end67.i.do.end86.i_crit_edge

if.end67.i.do.end86.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end86.i

if.end67.i.while.body.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

do.end86.i:                                       ; preds = %if.end67.i.do.end86.i_crit_edge, %if.end55.i.do.end86.i_crit_edge
  br i1 %tobool47.not.i, label %do.end86.i.if.then74_crit_edge, label %land.lhs.true.i

do.end86.i.if.then74_crit_edge:                   ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then74

land.lhs.true.i:                                  ; preds = %do.end86.i
  %95 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_journal.i215.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %s_journal.i215.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_journal.i215.i, align 4
  %j_journal_list.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %98, i32 0, i32 45
  %99 = ptrtoint ptr %j_journal_list.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %j_journal_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %100, %j_journal_list.i.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.if.then74_crit_edge, label %if.then.i.i

land.lhs.true.i.if.then74_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then74

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %j_trans_id.i.i = getelementptr i8, ptr %100, i32 -28
  %101 = ptrtoint ptr %j_trans_id.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %j_trans_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %66)
  %cmp.not.i.i = icmp ugt i32 %102, %66
  %or.cond226.i = or i1 %tobool50.not.i, %cmp.not.i.i
  br i1 %or.cond226.i, label %if.then.i.i.if.then74_crit_edge, label %if.then92.i

if.then.i.i.if.then74_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then74

if.then92.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flush_commit_list(ptr noundef %39, ptr noundef %64, i32 noundef 1) #13
  br label %if.then74

if.end95.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_journal.i217.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %s_journal.i217.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_journal.i217.i, align 4
  %j_mutex.i218.i = getelementptr inbounds %struct.reiserfs_journal, ptr %106, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %j_mutex.i218.i) #13
  br label %if.then74

if.end96.i:                                       ; preds = %do.end41.i
  %call97.i = tail call i64 @ktime_get_seconds() #13
  %j_trans_start_time.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 17
  %107 = ptrtoint ptr %j_trans_start_time.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %j_trans_start_time.i, align 8
  %sub98.i = sub i64 %call97.i, %108
  %j_max_trans_age.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 31
  %109 = ptrtoint ptr %j_max_trans_age.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %j_max_trans_age.i, align 4
  %conv.i = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub98.i, i64 %conv.i)
  %cmp99.i = icmp sgt i64 %sub98.i, %conv.i
  br i1 %cmp99.i, label %if.then101.i, label %if.end96.i.if.end102.i_crit_edge

if.end96.i.if.end102.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102.i

if.then101.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  %j_next_async_flush.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 25
  %111 = ptrtoint ptr %j_next_async_flush.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %j_next_async_flush.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then101.i, %if.end96.i.if.end102.i_crit_edge
  %commit_now.0.i = phi i32 [ 1, %if.then101.i ], [ %and1.i, %if.end96.i.if.end102.i_crit_edge ]
  %j_must_wait.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 23
  %112 = ptrtoint ptr %j_must_wait.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %j_must_wait.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp103.i = icmp sgt i32 %113, 0
  br i1 %cmp103.i, label %if.end102.i.if.end126.i_crit_edge, label %land.lhs.true105.i

if.end102.i.if.end126.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126.i

land.lhs.true105.i:                               ; preds = %if.end102.i
  %j_jlock106.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 21
  %call.i.i206.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_jlock106.i, i32 noundef 4) #13
  %114 = ptrtoint ptr %j_jlock106.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %j_jlock106.i, align 4
  %116 = or i32 %commit_now.0.i, %and.i736
  %117 = or i32 %116, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %land.lhs.true113.i, label %land.lhs.true105.i.if.end126.i_crit_edge

land.lhs.true105.i.if.end126.i_crit_edge:         ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126.i

land.lhs.true113.i:                               ; preds = %land.lhs.true105.i
  %119 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %j_len.i, align 8
  %j_max_batch.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 29
  %121 = ptrtoint ptr %j_max_batch.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %j_max_batch.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %122)
  %cmp115.i = icmp ult i32 %120, %122
  br i1 %cmp115.i, label %land.lhs.true117.i, label %land.lhs.true113.i.if.end126.i_crit_edge

land.lhs.true113.i.if.end126.i_crit_edge:         ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126.i

land.lhs.true117.i:                               ; preds = %land.lhs.true113.i
  %123 = ptrtoint ptr %j_len_alloc.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %j_len_alloc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %122)
  %cmp120.i = icmp ult i32 %124, %122
  br i1 %cmp120.i, label %land.lhs.true122.i, label %land.lhs.true117.i.if.end126.i_crit_edge

land.lhs.true117.i.if.end126.i_crit_edge:         ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126.i

land.lhs.true122.i:                               ; preds = %land.lhs.true117.i
  %j_cnode_free.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 27
  %125 = ptrtoint ptr %j_cnode_free.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %j_cnode_free.i, align 4
  %j_trans_max.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 28
  %127 = ptrtoint ptr %j_trans_max.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %j_trans_max.i, align 8
  %mul.i = mul i32 %128, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %mul.i)
  %cmp123.i = icmp ugt i32 %126, %mul.i
  br i1 %cmp123.i, label %if.then125.i, label %land.lhs.true122.i.if.end126.i_crit_edge

land.lhs.true122.i.if.end126.i_crit_edge:         ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end126.i

if.then125.i:                                     ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #15
  %j_bcount.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 13
  %129 = ptrtoint ptr %j_bcount.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %j_bcount.i, align 4
  %inc.i740 = add i32 %130, 1
  store i32 %inc.i740, ptr %j_bcount.i, align 4
  %131 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_journal.i220.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %s_journal.i220.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_journal.i220.i, align 4
  %j_mutex.i221.i = getelementptr inbounds %struct.reiserfs_journal, ptr %134, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %j_mutex.i221.i) #13
  br label %if.then74

if.end126.i:                                      ; preds = %land.lhs.true122.i.if.end126.i_crit_edge, %land.lhs.true117.i.if.end126.i_crit_edge, %land.lhs.true113.i.if.end126.i_crit_edge, %land.lhs.true105.i.if.end126.i_crit_edge, %if.end102.i.if.end126.i_crit_edge
  %j_start.i = getelementptr inbounds %struct.reiserfs_journal, ptr %43, i32 0, i32 9
  %135 = ptrtoint ptr %j_start.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %j_start.i, align 4
  %137 = ptrtoint ptr %s_fs_info.i.i737 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_fs_info.i.i737, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_rs.i, align 4
  %jp_journal_size.i = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %140, i32 0, i32 3, i32 2
  %141 = ptrtoint ptr %jp_journal_size.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %jp_journal_size.i, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %143)
  %cmp129.i = icmp ugt i32 %136, %143
  br i1 %cmp129.i, label %if.then131.i, label %if.end76

if.then131.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %39, ptr noundef nonnull @.str.129, ptr noundef nonnull @__func__.check_journal_end, ptr noundef nonnull @.str.130, i32 noundef %136) #18
  unreachable

if.then74:                                        ; preds = %if.then125.i, %if.end95.i, %if.then92.i, %if.then.i.i.if.then74_crit_edge, %land.lhs.true.i.if.then74_crit_edge, %do.end86.i.if.then74_crit_edge
  tail call void @reiserfs_schedule_old_flush(ptr noundef nonnull %1) #13
  %144 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i742 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %s_journal.i742 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %s_journal.i742, align 4
  %j_state.i743 = getelementptr inbounds %struct.reiserfs_journal, ptr %147, i32 0, i32 6
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %j_state.i743) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i744 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i744, label %if.then74.wake_queued_writers.exit_crit_edge, label %if.then.i745

if.then74.wake_queued_writers.exit_crit_edge:     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %wake_queued_writers.exit

if.then.i745:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  %j_join_wait.i = getelementptr inbounds %struct.reiserfs_journal, ptr %147, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %j_join_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %wake_queued_writers.exit

wake_queued_writers.exit:                         ; preds = %if.then.i745, %if.then74.wake_queued_writers.exit_crit_edge
  %148 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i747 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %s_journal.i747 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_journal.i747, align 4
  %j_async_throttle.i = getelementptr inbounds %struct.reiserfs_journal, ptr %151, i32 0, i32 57
  %call.i.i.i748 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_async_throttle.i, i32 noundef 4) #13
  %152 = ptrtoint ptr %j_async_throttle.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %j_async_throttle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i749 = icmp eq i32 %153, 0
  br i1 %tobool.not.i749, label %wake_queued_writers.exit.out_crit_edge, label %if.then.i750

wake_queued_writers.exit.out_crit_edge:           ; preds = %wake_queued_writers.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i750:                                     ; preds = %wake_queued_writers.exit
  %call2.i = tail call i32 @reiserfs_write_unlock_nested(ptr noundef nonnull %1) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.31, i32 noundef 956) #13
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_async_throttle.i, i32 noundef 4) #13
  %154 = ptrtoint ptr %j_async_throttle.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %j_async_throttle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp.i = icmp eq i32 %155, 0
  br i1 %cmp.i, label %if.then.i750.if.end43.i_crit_edge, label %if.then14.i

if.then.i750.if.end43.i_crit_edge:                ; preds = %if.then.i750
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43.i

if.then14.i:                                      ; preds = %if.then.i750
  %call16.i = tail call ptr @__var_waitqueue(ptr noundef %j_async_throttle.i) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry.i) #13
  %156 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry.i, i32 0, i32 1
  %157 = call ptr @memset(ptr %__wbq_entry.i, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry.i, ptr noundef %j_async_throttle.i, i32 noundef 0) #13
  %call196.i = call i32 @prepare_to_wait_event(ptr noundef %call16.i, ptr noundef %156, i32 noundef 2) #13
  %call.i.i27.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_async_throttle.i, i32 noundef 4) #13
  %158 = ptrtoint ptr %j_async_throttle.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %j_async_throttle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp238.i = icmp eq i32 %159, 0
  br i1 %cmp238.i, label %if.then14.i.for.end.i_crit_edge, label %if.then14.i.cleanup.i_crit_edge

if.then14.i.cleanup.i_crit_edge:                  ; preds = %if.then14.i
  br label %cleanup.i

if.then14.i.for.end.i_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then14.i.cleanup.i_crit_edge
  %__ret17.19.i = phi i32 [ %__ret17.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 10, %if.then14.i.cleanup.i_crit_edge ]
  %call40.i = call i32 @schedule_timeout(i32 noundef %__ret17.19.i) #13
  %call19.i = call i32 @prepare_to_wait_event(ptr noundef %call16.i, ptr noundef %156, i32 noundef 2) #13
  %call.i.i2.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_async_throttle.i, i32 noundef 4) #13
  %160 = ptrtoint ptr %j_async_throttle.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %j_async_throttle.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp23.i = icmp eq i32 %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool27.not.i = icmp eq i32 %call40.i, 0
  %162 = select i1 %cmp23.i, i1 %tobool27.not.i, i1 false
  %__ret17.1.i = select i1 %162, i32 1, i32 %call40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.1.i)
  %tobool33.not.i = icmp eq i32 %__ret17.1.i, 0
  %163 = select i1 %cmp23.i, i1 true, i1 %tobool33.not.i
  br i1 %163, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then14.i.for.end.i_crit_edge
  call void @finish_wait(ptr noundef %call16.i, ptr noundef %156) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry.i) #13
  br label %if.end43.i

if.end43.i:                                       ; preds = %for.end.i, %if.then.i750.if.end43.i_crit_edge
  call void @reiserfs_write_lock_nested(ptr noundef nonnull %1, i32 noundef %call2.i) #13
  br label %out

if.end76:                                         ; preds = %if.end126.i
  %164 = ptrtoint ptr %j_next_full_flush to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %j_next_full_flush, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool78.not = icmp eq i32 %165, 0
  %j_must_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 23
  %166 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %j_must_wait, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp81.inv = icmp slt i32 %167, 1
  %168 = select i1 %cmp81.inv, i1 %tobool78.not, i1 false
  %169 = select i1 %168, i1 %tobool64.not, i1 false
  %170 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %task, align 8
  %journal_info86 = getelementptr inbounds %struct.task_struct, ptr %171, i32 0, i32 146
  %172 = ptrtoint ptr %journal_info86 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %th, ptr %journal_info86, align 4
  %173 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %t_refcount, align 4
  %inc = add i32 %174, 1
  store i32 %inc, ptr %t_refcount, align 4
  tail call void @reiserfs_discard_all_prealloc(ptr noundef %th) #13
  %175 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %t_refcount, align 4
  %dec = add i32 %176, -1
  store i32 %dec, ptr %t_refcount, align 4
  %177 = ptrtoint ptr %t_handle_save to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %t_handle_save, align 4
  %179 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %task, align 8
  %journal_info92 = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 146
  %181 = ptrtoint ptr %journal_info92 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %178, ptr %journal_info92, align 4
  %182 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal94 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %s_journal94 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %s_journal94, align 4
  %j_dev_bd = getelementptr inbounds %struct.reiserfs_journal, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %j_dev_bd to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %j_dev_bd, align 4
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %183, i32 0, i32 1
  %188 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %s_rs, align 4
  %s_journal96 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %s_journal96 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %191 = load i32, ptr %s_journal96, align 1
  %192 = tail call i32 @llvm.bswap.i32(i32 %191)
  %j_start = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 9
  %193 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %j_start, align 4
  %add = add i32 %192, %194
  %conv = zext i32 %add to i64
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %195 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__getblk_gfp(ptr noundef %187, i64 noundef %conv, i32 noundef %196, i32 noundef 8) #13
  %197 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %call.i, align 4
  %and1.i.i = and i32 %198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end76.set_buffer_uptodate.exit_crit_edge

if.end76.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i) #13
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end76.set_buffer_uptodate.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %199 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 4
  %201 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %b_size, align 8
  %203 = call ptr @memset(ptr %200, i32 0, i32 %202)
  %204 = load ptr, ptr %b_data, align 4
  %205 = load i32, ptr %b_size, align 8
  %add.ptr = getelementptr i8, ptr %204, i32 %205
  %add.ptr101 = getelementptr i8, ptr %add.ptr, i32 -12
  %206 = ptrtoint ptr %add.ptr101 to i32
  call void @__asan_storeN_noabort(i32 %206, i32 8)
  store i64 5937232443193052226, ptr %add.ptr101, align 1
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 7
  %207 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %j_trans_id, align 4
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  %210 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %200, align 4
  %211 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal107 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %s_journal107 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %s_journal107, align 4
  %j_dev_bd108 = getelementptr inbounds %struct.reiserfs_journal, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %j_dev_bd108 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %j_dev_bd108, align 4
  %s_rs110 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %212, i32 0, i32 1
  %217 = ptrtoint ptr %s_rs110 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %s_rs110, align 4
  %s_journal112 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %s_journal112 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %220 = load i32, ptr %s_journal112, align 1
  %221 = tail call i32 @llvm.bswap.i32(i32 %220)
  %222 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %j_start, align 4
  %224 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %j_len, align 8
  %add116 = add i32 %223, 1
  %add117 = add i32 %add116, %225
  %jp_journal_size = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %218, i32 0, i32 3, i32 2
  %226 = ptrtoint ptr %jp_journal_size to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %227 = load i32, ptr %jp_journal_size, align 1
  %228 = tail call i32 @llvm.bswap.i32(i32 %227)
  %rem = urem i32 %add117, %228
  %add122 = add i32 %rem, %221
  %conv123 = zext i32 %add122 to i64
  %229 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %s_blocksize, align 16
  %call.i756 = tail call ptr @__getblk_gfp(ptr noundef %216, i64 noundef %conv123, i32 noundef %230, i32 noundef 8) #13
  %b_data126 = getelementptr inbounds %struct.buffer_head, ptr %call.i756, i32 0, i32 5
  %231 = ptrtoint ptr %b_data126 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %b_data126, align 4
  %b_size128 = getelementptr inbounds %struct.buffer_head, ptr %call.i756, i32 0, i32 4
  %233 = ptrtoint ptr %b_size128 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %b_size128, align 8
  %235 = call ptr @memset(ptr %232, i32 0, i32 %234)
  %236 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %j_trans_id, align 4
  %238 = tail call i32 @llvm.bswap.i32(i32 %237)
  %239 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %232, align 4
  %240 = ptrtoint ptr %call.i756 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %call.i756, align 4
  %and1.i.i716 = and i32 %241, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i716)
  %tobool.not.i717 = icmp eq i32 %and1.i.i716, 0
  br i1 %tobool.not.i717, label %if.then.i718, label %set_buffer_uptodate.exit.set_buffer_uptodate.exit719_crit_edge

set_buffer_uptodate.exit.set_buffer_uptodate.exit719_crit_edge: ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_uptodate.exit719

if.then.i718:                                     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i756) #13
  br label %set_buffer_uptodate.exit719

set_buffer_uptodate.exit719:                      ; preds = %if.then.i718, %set_buffer_uptodate.exit.set_buffer_uptodate.exit719_crit_edge
  %j_current_jl = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 35
  %242 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %j_current_jl, align 4
  %j_commit_mutex = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 6
  %call.i757 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef nonnull %1) #13
  tail call void @mutex_lock_nested(ptr noundef %j_commit_mutex, i32 noundef 0) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef nonnull %1, i32 noundef %call.i757) #13
  %j_trans_id134 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 7
  %244 = ptrtoint ptr %j_trans_id134 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %j_trans_id134, align 4
  %j_older_commits_done = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_older_commits_done, i32 noundef 4) #13
  %246 = ptrtoint ptr %j_older_commits_done to i32
  call void @__asan_store4_noabort(i32 %246)
  store volatile i32 0, ptr %j_older_commits_done, align 4
  %247 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %j_trans_id, align 4
  %249 = ptrtoint ptr %j_trans_id134 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %j_trans_id134, align 4
  %j_trans_start_time = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 17
  %250 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %j_trans_start_time, align 8
  %j_timestamp = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 8
  %252 = ptrtoint ptr %j_timestamp to i32
  call void @__asan_store8_noabort(i32 %252)
  store i64 %251, ptr %j_timestamp, align 8
  %j_commit_bh = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 10
  %253 = ptrtoint ptr %j_commit_bh to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call.i756, ptr %j_commit_bh, align 4
  %254 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %j_start, align 4
  %256 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %243, align 8
  %257 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %j_len, align 8
  %j_len140 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 2
  %259 = ptrtoint ptr %j_len140 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %j_len140, align 8
  %j_nonzerolen = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 3
  %260 = load i32, ptr %j_len, align 8
  %call.i.i720 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_nonzerolen, i32 noundef 4) #13
  %261 = ptrtoint ptr %j_nonzerolen to i32
  call void @__asan_store4_noabort(i32 %261)
  store volatile i32 %260, ptr %j_nonzerolen, align 4
  %j_commit_left = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 4
  %262 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %j_len, align 8
  %add143 = add i32 %263, 2
  %call.i.i721 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_commit_left, i32 noundef 4) #13
  %264 = ptrtoint ptr %j_commit_left to i32
  call void @__asan_store4_noabort(i32 %264)
  store volatile i32 %add143, ptr %j_commit_left, align 4
  %j_realblock = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 11
  %265 = ptrtoint ptr %j_realblock to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr null, ptr %j_realblock, align 8
  %266 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %s_blocksize, align 16
  %sub146 = add i32 %267, -24
  %div711 = lshr i32 %sub146, 2
  %j_first = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 2
  %268 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %268)
  %cn.0866 = load ptr, ptr %j_first, align 4
  %tobool147.not867 = icmp eq ptr %cn.0866, null
  br i1 %tobool147.not867, label %set_buffer_uptodate.exit719.do.body223_crit_edge, label %for.body.lr.ph

set_buffer_uptodate.exit719.do.body223_crit_edge: ; preds = %set_buffer_uptodate.exit719
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body223

for.body.lr.ph:                                   ; preds = %set_buffer_uptodate.exit719
  %j_list_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 48
  %269 = ptrtoint ptr %1 to i32
  %shr.i = lshr i32 %269, 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cn.0870 = phi ptr [ %cn.0866, %for.body.lr.ph ], [ %cn.0, %for.inc.for.body_crit_edge ]
  %i.0869 = phi i32 [ 0, %for.body.lr.ph ], [ %inc222, %for.inc.for.body_crit_edge ]
  %last_cn.0868 = phi ptr [ null, %for.body.lr.ph ], [ %last_cn.1, %for.inc.for.body_crit_edge ]
  %270 = ptrtoint ptr %cn.0870 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cn.0870, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load volatile i32, ptr %271, align 4
  %274 = and i32 %273, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool149.not = icmp eq i32 %274, 0
  br i1 %tobool149.not, label %if.else218, label %if.then150

if.then150:                                       ; preds = %for.body
  %275 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i759 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %276, i32 0, i32 3
  %277 = ptrtoint ptr %s_journal.i759 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %s_journal.i759, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef nonnull %1, ptr noundef nonnull @.str.111) #13
  %j_cnode_free.i760 = getelementptr inbounds %struct.reiserfs_journal, ptr %278, i32 0, i32 27
  %279 = ptrtoint ptr %j_cnode_free.i760 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %j_cnode_free.i760, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %280)
  %cmp.i761 = icmp slt i32 %280, 1
  br i1 %cmp.i761, label %if.then150.if.then153_crit_edge, label %if.end.i

if.then150.if.then153_crit_edge:                  ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then153

if.end.i:                                         ; preds = %if.then150
  %j_cnode_used.i = getelementptr inbounds %struct.reiserfs_journal, ptr %278, i32 0, i32 26
  %281 = ptrtoint ptr %j_cnode_used.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %j_cnode_used.i, align 8
  %inc.i762 = add i32 %282, 1
  store i32 %inc.i762, ptr %j_cnode_used.i, align 8
  %dec.i = add nsw i32 %280, -1
  %283 = ptrtoint ptr %j_cnode_free.i760 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %dec.i, ptr %j_cnode_free.i760, align 4
  %j_cnode_free_list.i = getelementptr inbounds %struct.reiserfs_journal, ptr %278, i32 0, i32 33
  %284 = ptrtoint ptr %j_cnode_free_list.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %j_cnode_free_list.i, align 4
  %tobool.not.i763 = icmp eq ptr %285, null
  br i1 %tobool.not.i763, label %if.end.i.if.then153_crit_edge, label %if.end3.i

if.end.i.if.then153_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then153

if.end3.i:                                        ; preds = %if.end.i
  %next.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 5
  %286 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %next.i, align 4
  %tobool4.not.i = icmp eq ptr %287, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end154_crit_edge, label %if.then5.i

if.end3.i.if.end154_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %287, i32 0, i32 6
  %288 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr null, ptr %prev.i, align 4
  br label %if.end154

if.then153:                                       ; preds = %if.end.i.if.then153_crit_edge, %if.then150.if.then153_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef nonnull %1, ptr noundef nonnull @.str.120, ptr noundef nonnull @__func__.do_journal_end, ptr noundef nonnull @.str.121) #18
  unreachable

if.end154:                                        ; preds = %if.then5.i, %if.end3.i.if.end154_crit_edge
  %289 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %next.i, align 4
  %291 = ptrtoint ptr %j_cnode_free_list.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %290, ptr %j_cnode_free_list.i, align 4
  %292 = call ptr @memset(ptr %285, i32 0, i32 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0869)
  %cmp155 = icmp eq i32 %i.0869, 0
  br i1 %cmp155, label %if.then157, label %if.end154.if.end159_crit_edge

if.end154.if.end159_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end159

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  %293 = ptrtoint ptr %j_realblock to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %285, ptr %j_realblock, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.end154.if.end159_crit_edge
  %prev = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 6
  %294 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %last_cn.0868, ptr %prev, align 4
  %295 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr null, ptr %next.i, align 4
  %tobool161.not = icmp eq ptr %last_cn.0868, null
  br i1 %tobool161.not, label %if.end159.if.end164_crit_edge, label %if.then162

if.end159.if.end164_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end164

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  %next163 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %last_cn.0868, i32 0, i32 5
  %296 = ptrtoint ptr %next163 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %285, ptr %next163, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.end159.if.end164_crit_edge
  %297 = ptrtoint ptr %cn.0870 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cn.0870, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %298, i32 0, i32 3
  %299 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %b_blocknr, align 8
  %301 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal167 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %302, i32 0, i32 3
  %303 = ptrtoint ptr %s_journal167 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %s_journal167, align 4
  %j_1st_reserved_block = getelementptr inbounds %struct.reiserfs_journal, ptr %304, i32 0, i32 5
  %305 = ptrtoint ptr %j_1st_reserved_block to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %j_1st_reserved_block, align 4
  %conv168 = sext i32 %306 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %300, i64 %conv168)
  %cmp169.not = icmp ult i64 %300, %conv168
  br i1 %cmp169.not, label %if.end164.if.end197_crit_edge, label %land.lhs.true

if.end164.if.end197_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197

land.lhs.true:                                    ; preds = %if.end164
  %s_rs177 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %302, i32 0, i32 1
  %307 = ptrtoint ptr %s_rs177 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %s_rs177, align 4
  %call178 = tail call i32 @is_reiserfs_jr(ptr noundef %308) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  %309 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs181 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %310, i32 0, i32 1
  %311 = ptrtoint ptr %s_rs181 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %s_rs181, align 4
  br i1 %tobool179.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %jp_journal_size184 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %312, i32 0, i32 3, i32 2
  %313 = ptrtoint ptr %jp_journal_size184 to i32
  call void @__asan_loadN_noabort(i32 %313, i32 4)
  %314 = load i32, ptr %jp_journal_size184, align 1
  %315 = tail call i32 @llvm.bswap.i32(i32 %314)
  %add185 = add i32 %315, 1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %s_reserved_for_journal = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %312, i32 0, i32 14
  %316 = ptrtoint ptr %s_reserved_for_journal to i32
  call void @__asan_loadN_noabort(i32 %316, i32 2)
  %317 = load i16, ptr %s_reserved_for_journal, align 1
  %318 = tail call i16 @llvm.bswap.i16(i16 %317)
  %conv189 = zext i16 %318 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add185, %cond.true ], [ %conv189, %cond.false ]
  %add190 = add i32 %cond, %306
  %conv191 = zext i32 %add190 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %300, i64 %conv191)
  %cmp192 = icmp ult i64 %300, %conv191
  br i1 %cmp192, label %if.then194, label %cond.end.if.end197_crit_edge

cond.end.if.end197_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end197

if.then194:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %319 = ptrtoint ptr %cn.0870 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cn.0870, align 4
  %b_blocknr196 = getelementptr inbounds %struct.buffer_head, ptr %320, i32 0, i32 3
  %321 = ptrtoint ptr %b_blocknr196 to i32
  call void @__asan_load8_noabort(i32 %321)
  %322 = load i64, ptr %b_blocknr196, align 8
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef nonnull %1, ptr noundef nonnull @.str.122, ptr noundef nonnull @__func__.do_journal_end, ptr noundef nonnull @.str.123, i64 noundef %322) #18
  unreachable

if.end197:                                        ; preds = %cond.end.if.end197_crit_edge, %if.end164.if.end197_crit_edge
  %323 = ptrtoint ptr %cn.0870 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %cn.0870, align 4
  %b_blocknr199 = getelementptr inbounds %struct.buffer_head, ptr %324, i32 0, i32 3
  %325 = ptrtoint ptr %b_blocknr199 to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %b_blocknr199, align 8
  %conv200 = trunc i64 %326 to i32
  %blocknr = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 2
  %327 = ptrtoint ptr %blocknr to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %conv200, ptr %blocknr, align 4
  %state = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 3
  %328 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %state, align 4
  %sb201 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 1
  %329 = ptrtoint ptr %sb201 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %1, ptr %sb201, align 4
  %330 = load ptr, ptr %cn.0870, align 4
  %331 = ptrtoint ptr %285 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %330, ptr %285, align 4
  %jlist = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 4
  %332 = ptrtoint ptr %jlist to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %243, ptr %jlist, align 4
  %shl.i = shl i32 %conv200, 7
  %shr2.i = lshr i32 %conv200, 13
  %shl4.i = shl i32 %conv200, 1
  %xor.i = xor i32 %shr2.i, %shr.i
  %xor5.i = xor i32 %xor.i, %shl.i
  %xor6.i = xor i32 %xor5.i, %shl4.i
  %and.i771 = and i32 %xor6.i, 8191
  %arrayidx.i = getelementptr ptr, ptr %j_list_hash_table, i32 %and.i771
  %333 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %arrayidx.i, align 4
  %hnext.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 8
  %335 = ptrtoint ptr %hnext.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr %334, ptr %hnext.i, align 4
  %hprev.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %285, i32 0, i32 7
  %336 = ptrtoint ptr %hprev.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr null, ptr %hprev.i, align 4
  %tobool.not.i772 = icmp eq ptr %334, null
  br i1 %tobool.not.i772, label %if.end197.insert_journal_hash.exit_crit_edge, label %if.then.i773

if.end197.insert_journal_hash.exit_crit_edge:     ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  br label %insert_journal_hash.exit

if.then.i773:                                     ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #15
  %hprev7.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %334, i32 0, i32 7
  %337 = ptrtoint ptr %hprev7.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %285, ptr %hprev7.i, align 4
  br label %insert_journal_hash.exit

insert_journal_hash.exit:                         ; preds = %if.then.i773, %if.end197.insert_journal_hash.exit_crit_edge
  %338 = ptrtoint ptr %sb201 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %sb201, align 4
  %340 = ptrtoint ptr %339 to i32
  %shr9.i = lshr i32 %340, 7
  %341 = ptrtoint ptr %blocknr to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %blocknr, align 4
  %shl11.i = shl i32 %342, 7
  %shr13.i = lshr i32 %342, 13
  %xor14.i = xor i32 %shl11.i, %shr13.i
  %shl16.i = shl i32 %342, 1
  %xor17.i = xor i32 %xor14.i, %shl16.i
  %xor18.i = xor i32 %xor17.i, %shr9.i
  %and19.i = and i32 %xor18.i, 8191
  %arrayidx20.i = getelementptr ptr, ptr %j_list_hash_table, i32 %and19.i
  %343 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr %285, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0869, i32 %div711)
  %cmp204 = icmp slt i32 %i.0869, %div711
  %344 = ptrtoint ptr %cn.0870 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cn.0870, align 4
  %b_blocknr208 = getelementptr inbounds %struct.buffer_head, ptr %345, i32 0, i32 3
  %346 = ptrtoint ptr %b_blocknr208 to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %b_blocknr208, align 8
  %conv209 = trunc i64 %347 to i32
  %348 = tail call i32 @llvm.bswap.i32(i32 %conv209)
  br i1 %cmp204, label %if.then206, label %if.else

if.then206:                                       ; preds = %insert_journal_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.reiserfs_journal_desc, ptr %200, i32 0, i32 3, i32 %i.0869
  %349 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %348, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %insert_journal_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  %sub215 = sub i32 %i.0869, %div711
  %arrayidx216 = getelementptr %struct.reiserfs_journal_commit, ptr %232, i32 0, i32 2, i32 %sub215
  %350 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %348, ptr %arrayidx216, align 4
  br label %for.inc

if.else218:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %dec219 = add i32 %i.0869, -1
  br label %for.inc

for.inc:                                          ; preds = %if.else218, %if.else, %if.then206
  %last_cn.1 = phi ptr [ %285, %if.then206 ], [ %285, %if.else ], [ %last_cn.0868, %if.else218 ]
  %i.1 = phi i32 [ %i.0869, %if.then206 ], [ %i.0869, %if.else ], [ %dec219, %if.else218 ]
  %next221 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.0870, i32 0, i32 5
  %inc222 = add i32 %i.1, 1
  %351 = ptrtoint ptr %next221 to i32
  call void @__asan_load4_noabort(i32 %351)
  %cn.0 = load ptr, ptr %next221, align 4
  %tobool147.not = icmp eq ptr %cn.0, null
  br i1 %tobool147.not, label %for.inc.do.body223_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.do.body223_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body223

do.body223:                                       ; preds = %for.inc.do.body223_crit_edge, %set_buffer_uptodate.exit719.do.body223_crit_edge
  %352 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %j_len, align 8
  %354 = tail call i32 @llvm.bswap.i32(i32 %353)
  %j_len225 = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %200, i32 0, i32 1
  %355 = ptrtoint ptr %j_len225 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %j_len225, align 4
  %j_mount_id = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 8
  %356 = ptrtoint ptr %j_mount_id to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %j_mount_id, align 8
  %358 = tail call i32 @llvm.bswap.i32(i32 %357)
  %j_mount_id229 = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %200, i32 0, i32 2
  %359 = ptrtoint ptr %j_mount_id229 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %j_mount_id229, align 4
  %360 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %j_trans_id, align 4
  %362 = tail call i32 @llvm.bswap.i32(i32 %361)
  %363 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %200, align 4
  %364 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %j_len, align 8
  %366 = tail call i32 @llvm.bswap.i32(i32 %365)
  %j_len239 = getelementptr inbounds %struct.reiserfs_journal_commit, ptr %232, i32 0, i32 1
  %367 = ptrtoint ptr %j_len239 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 %366, ptr %j_len239, align 4
  %368 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %j_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %369)
  %cmp244 = icmp eq i32 %369, 0
  br i1 %cmp244, label %do.body253, label %do.end261, !prof !300

do.body253:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4181, 0\0A.popsection", ""() #13, !srcloc !320
  unreachable

do.end261:                                        ; preds = %do.body223
  tail call void @mark_buffer_dirty(ptr noundef %call.i) #13
  %370 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %j_start, align 4
  %372 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %j_first, align 8
  %tobool264.not873 = icmp eq ptr %373, null
  br i1 %tobool264.not873, label %do.end261.while.end_crit_edge, label %do.end261.while.body_crit_edge

do.end261.while.body_crit_edge:                   ; preds = %do.end261
  br label %while.body

do.end261.while.end_crit_edge:                    ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %reiserfs_cond_resched.exit.while.body_crit_edge, %do.end261.while.body_crit_edge
  %cn.1875 = phi ptr [ %431, %reiserfs_cond_resched.exit.while.body_crit_edge ], [ %373, %do.end261.while.body_crit_edge ]
  %jindex.0874 = phi i32 [ %jindex.1, %reiserfs_cond_resched.exit.while.body_crit_edge ], [ 1, %do.end261.while.body_crit_edge ]
  %374 = ptrtoint ptr %cn.1875 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %cn.1875, align 4
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %375) #13
  %376 = ptrtoint ptr %cn.1875 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %cn.1875, align 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load volatile i32, ptr %377, align 4
  %380 = and i32 %379, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %tobool268.not = icmp eq i32 %380, 0
  br i1 %tobool268.not, label %if.else301, label %if.then269

if.then269:                                       ; preds = %while.body
  %381 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal271 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %382, i32 0, i32 3
  %383 = ptrtoint ptr %s_journal271 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %s_journal271, align 4
  %j_dev_bd272 = getelementptr inbounds %struct.reiserfs_journal, ptr %384, i32 0, i32 3
  %385 = ptrtoint ptr %j_dev_bd272 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %j_dev_bd272, align 4
  %s_rs274 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %382, i32 0, i32 1
  %387 = ptrtoint ptr %s_rs274 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %s_rs274, align 4
  %s_journal276 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %388, i32 0, i32 3
  %389 = ptrtoint ptr %s_journal276 to i32
  call void @__asan_loadN_noabort(i32 %389, i32 4)
  %390 = load i32, ptr %s_journal276, align 1
  %391 = tail call i32 @llvm.bswap.i32(i32 %390)
  %add278 = add i32 %jindex.0874, %371
  %jp_journal_size283 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %388, i32 0, i32 3, i32 2
  %392 = ptrtoint ptr %jp_journal_size283 to i32
  call void @__asan_loadN_noabort(i32 %392, i32 4)
  %393 = load i32, ptr %jp_journal_size283, align 1
  %394 = tail call i32 @llvm.bswap.i32(i32 %393)
  %rem284 = urem i32 %add278, %394
  %add285 = add i32 %rem284, %391
  %conv286 = zext i32 %add285 to i64
  %395 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %s_blocksize, align 16
  %call.i778 = tail call ptr @__getblk_gfp(ptr noundef %386, i64 noundef %conv286, i32 noundef %396, i32 noundef 8) #13
  %397 = ptrtoint ptr %call.i778 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load volatile i32, ptr %call.i778, align 4
  %and1.i.i725 = and i32 %398, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i725)
  %tobool.not.i726 = icmp eq i32 %and1.i.i725, 0
  br i1 %tobool.not.i726, label %if.then.i727, label %if.then269.set_buffer_uptodate.exit728_crit_edge

if.then269.set_buffer_uptodate.exit728_crit_edge: ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_uptodate.exit728

if.then.i727:                                     ; preds = %if.then269
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call.i778) #13
  br label %set_buffer_uptodate.exit728

set_buffer_uptodate.exit728:                      ; preds = %if.then.i727, %if.then269.set_buffer_uptodate.exit728_crit_edge
  %399 = ptrtoint ptr %cn.1875 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %cn.1875, align 4
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %400, i32 0, i32 2
  %401 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %b_page, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.131, i32 noundef 44) #13
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %402, align 4
  %shr.i.i779 = lshr i32 %404, 30
  %405 = zext i32 %shr.i.i779 to i64
  call void @__sanitizer_cov_trace_switch(i64 %405, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i779, label %set_buffer_uptodate.exit728.if.then.i780_crit_edge [
    i32 2, label %set_buffer_uptodate.exit728.if.else.i781_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

set_buffer_uptodate.exit728.if.else.i781_crit_edge: ; preds = %set_buffer_uptodate.exit728
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i781

set_buffer_uptodate.exit728.if.then.i780_crit_edge: ; preds = %set_buffer_uptodate.exit728
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i780

is_highmem_idx.exit.i:                            ; preds = %set_buffer_uptodate.exit728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %406 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %406)
  %cmp2.i.not.i = icmp eq i32 %406, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i781_crit_edge, label %is_highmem_idx.exit.i.if.then.i780_crit_edge

is_highmem_idx.exit.i.if.then.i780_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i780

is_highmem_idx.exit.i.if.else.i781_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i781

if.then.i780:                                     ; preds = %is_highmem_idx.exit.i.if.then.i780_crit_edge, %set_buffer_uptodate.exit728.if.then.i780_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %402) #13
  br label %kmap.exit

if.else.i781:                                     ; preds = %is_highmem_idx.exit.i.if.else.i781_crit_edge, %set_buffer_uptodate.exit728.if.else.i781_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %402) #13
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i781, %if.then.i780
  %addr.0.i = phi ptr [ %call6.i, %if.else.i781 ], [ %call5.i, %if.then.i780 ]
  %b_data291 = getelementptr inbounds %struct.buffer_head, ptr %call.i778, i32 0, i32 5
  %407 = ptrtoint ptr %b_data291 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %b_data291, align 4
  %409 = ptrtoint ptr %cn.1875 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %cn.1875, align 4
  %b_data293 = getelementptr inbounds %struct.buffer_head, ptr %410, i32 0, i32 5
  %411 = ptrtoint ptr %b_data293 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %b_data293, align 4
  %413 = ptrtoint ptr %412 to i32
  %and294 = and i32 %413, 4095
  %add.ptr295 = getelementptr i8, ptr %addr.0.i, i32 %and294
  %b_size297 = getelementptr inbounds %struct.buffer_head, ptr %410, i32 0, i32 4
  %414 = ptrtoint ptr %b_size297 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %b_size297, align 8
  %416 = call ptr @memcpy(ptr %408, ptr %add.ptr295, i32 %415)
  tail call void @__might_sleep(ptr noundef nonnull @.str.131, i32 noundef 55) #13
  %417 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %402, align 4
  %shr.i.i783 = lshr i32 %418, 30
  %419 = zext i32 %shr.i.i783 to i64
  call void @__sanitizer_cov_trace_switch(i64 %419, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %shr.i.i783, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i786_crit_edge
    i32 3, label %is_highmem_idx.exit.i785
  ]

kmap.exit.if.end.i786_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i786

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i785:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %420 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %420)
  %cmp2.i.not.i784 = icmp eq i32 %420, 2
  br i1 %cmp2.i.not.i784, label %is_highmem_idx.exit.i785.if.end.i786_crit_edge, label %is_highmem_idx.exit.i785.kunmap.exit_crit_edge

is_highmem_idx.exit.i785.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i785
  call void @__sanitizer_cov_trace_pc() #15
  br label %kunmap.exit

is_highmem_idx.exit.i785.if.end.i786_crit_edge:   ; preds = %is_highmem_idx.exit.i785
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i786

if.end.i786:                                      ; preds = %is_highmem_idx.exit.i785.if.end.i786_crit_edge, %kmap.exit.if.end.i786_crit_edge
  tail call void @kunmap_high(ptr noundef %402) #13
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i786, %is_highmem_idx.exit.i785.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %call.i778) #13
  %inc298 = add i32 %jindex.0874, 1
  %421 = ptrtoint ptr %cn.1875 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %cn.1875, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load volatile i32, ptr %422, align 4
  %425 = and i32 %424, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool.not.i729 = icmp eq i32 %425, 0
  br i1 %tobool.not.i729, label %if.then.i730, label %kunmap.exit.set_buffer_journal_dirty.exit_crit_edge

kunmap.exit.set_buffer_journal_dirty.exit_crit_edge: ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_journal_dirty.exit

if.then.i730:                                     ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 17, ptr noundef %422) #13
  br label %set_buffer_journal_dirty.exit

set_buffer_journal_dirty.exit:                    ; preds = %if.then.i730, %kunmap.exit.set_buffer_journal_dirty.exit_crit_edge
  %426 = ptrtoint ptr %cn.1875 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %cn.1875, align 4
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %427) #13
  br label %if.end303

if.else301:                                       ; preds = %while.body
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef nonnull %1, ptr noundef nonnull @.str.124, ptr noundef nonnull @__func__.do_journal_end, ptr noundef nonnull @.str.125) #13
  %428 = ptrtoint ptr %cn.1875 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %cn.1875, align 4
  %tobool.not.i787 = icmp eq ptr %429, null
  br i1 %tobool.not.i787, label %if.else301.if.end303_crit_edge, label %if.then.i788

if.else301.if.end303_crit_edge:                   ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end303

if.then.i788:                                     ; preds = %if.else301
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %429) #13
  br label %if.end303

if.end303:                                        ; preds = %if.then.i788, %if.else301.if.end303_crit_edge, %set_buffer_journal_dirty.exit
  %jindex.1 = phi i32 [ %inc298, %set_buffer_journal_dirty.exit ], [ %jindex.0874, %if.else301.if.end303_crit_edge ], [ %jindex.0874, %if.then.i788 ]
  %next304 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.1875, i32 0, i32 5
  %430 = ptrtoint ptr %next304 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %next304, align 4
  %432 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i791 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %433, i32 0, i32 3
  %434 = ptrtoint ptr %s_journal.i791 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %s_journal.i791, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef nonnull %1, ptr noundef nonnull @.str.114) #13
  %j_cnode_used.i792 = getelementptr inbounds %struct.reiserfs_journal, ptr %435, i32 0, i32 26
  %436 = ptrtoint ptr %j_cnode_used.i792 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %j_cnode_used.i792, align 8
  %dec.i793 = add i32 %437, -1
  store i32 %dec.i793, ptr %j_cnode_used.i792, align 8
  %j_cnode_free.i794 = getelementptr inbounds %struct.reiserfs_journal, ptr %435, i32 0, i32 27
  %438 = ptrtoint ptr %j_cnode_free.i794 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %j_cnode_free.i794, align 4
  %inc.i795 = add i32 %439, 1
  store i32 %inc.i795, ptr %j_cnode_free.i794, align 4
  %j_cnode_free_list.i796 = getelementptr inbounds %struct.reiserfs_journal, ptr %435, i32 0, i32 33
  %440 = ptrtoint ptr %j_cnode_free_list.i796 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %j_cnode_free_list.i796, align 4
  %442 = ptrtoint ptr %next304 to i32
  call void @__asan_store4_noabort(i32 %442)
  store ptr %441, ptr %next304, align 4
  %443 = load ptr, ptr %j_cnode_free_list.i796, align 4
  %tobool.not.i798 = icmp eq ptr %443, null
  br i1 %tobool.not.i798, label %if.end303.free_cnode.exit_crit_edge, label %if.then.i800

if.end303.free_cnode.exit_crit_edge:              ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cnode.exit

if.then.i800:                                     ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i799 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %443, i32 0, i32 6
  %444 = ptrtoint ptr %prev.i799 to i32
  call void @__asan_store4_noabort(i32 %444)
  store ptr %cn.1875, ptr %prev.i799, align 4
  br label %free_cnode.exit

free_cnode.exit:                                  ; preds = %if.then.i800, %if.end303.free_cnode.exit_crit_edge
  %prev3.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.1875, i32 0, i32 6
  %445 = ptrtoint ptr %prev3.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr null, ptr %prev3.i, align 4
  %446 = ptrtoint ptr %j_cnode_free_list.i796 to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %cn.1875, ptr %j_cnode_free_list.i796, align 4
  %447 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i.i.i = and i32 %447, -16384
  %448 = inttoptr i32 %and.i.i.i to ptr
  %449 = ptrtoint ptr %448 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load volatile i32, ptr %448, align 16384
  %451 = and i32 %450, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %tobool.i.not.i = icmp eq i32 %451, 0
  br i1 %tobool.i.not.i, label %free_cnode.exit.reiserfs_cond_resched.exit_crit_edge, label %if.then.i803

free_cnode.exit.reiserfs_cond_resched.exit_crit_edge: ; preds = %free_cnode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %reiserfs_cond_resched.exit

if.then.i803:                                     ; preds = %free_cnode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i802 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef nonnull %1) #13
  tail call void @schedule() #13
  tail call void @reiserfs_write_lock_nested(ptr noundef nonnull %1, i32 noundef %call1.i802) #13
  br label %reiserfs_cond_resched.exit

reiserfs_cond_resched.exit:                       ; preds = %if.then.i803, %free_cnode.exit.reiserfs_cond_resched.exit_crit_edge
  %tobool264.not = icmp eq ptr %431, null
  br i1 %tobool264.not, label %reiserfs_cond_resched.exit.while.end_crit_edge, label %reiserfs_cond_resched.exit.while.body_crit_edge

reiserfs_cond_resched.exit.while.body_crit_edge:  ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

reiserfs_cond_resched.exit.while.end_crit_edge:   ; preds = %reiserfs_cond_resched.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %reiserfs_cond_resched.exit.while.end_crit_edge, %do.end261.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %452 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %452, i32 noundef 36160, i32 noundef 184) #17
  %j_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 13
  %453 = ptrtoint ptr %j_list.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store volatile ptr %j_list.i, ptr %j_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %454 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store ptr %j_list.i, ptr %prev.i.i, align 4
  %j_working_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 14
  %455 = ptrtoint ptr %j_working_list.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store volatile ptr %j_working_list.i, ptr %j_working_list.i, align 8
  %prev.i8.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %456 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store ptr %j_working_list.i, ptr %prev.i8.i, align 4
  %j_tail_bh_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 15
  %457 = ptrtoint ptr %j_tail_bh_list.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store volatile ptr %j_tail_bh_list.i, ptr %j_tail_bh_list.i, align 8
  %prev.i9.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %458 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store ptr %j_tail_bh_list.i, ptr %prev.i9.i, align 4
  %j_bh_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 16
  %459 = ptrtoint ptr %j_bh_list.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store volatile ptr %j_bh_list.i, ptr %j_bh_list.i, align 8
  %prev.i10.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %460 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %j_bh_list.i, ptr %prev.i10.i, align 4
  %j_commit_mutex.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %j_commit_mutex.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @alloc_journal_list.__key) #13
  %461 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i806 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %462, i32 0, i32 3
  %463 = ptrtoint ptr %s_journal.i806 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %s_journal.i806, align 4
  %j_num_lists.i = getelementptr inbounds %struct.reiserfs_journal, ptr %464, i32 0, i32 38
  %465 = ptrtoint ptr %j_num_lists.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %j_num_lists.i, align 8
  %inc.i807 = add i32 %466, 1
  store i32 %inc.i807, ptr %j_num_lists.i, align 8
  %j_refcount.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %call7.i.i.i, i32 0, i32 17
  %467 = ptrtoint ptr %j_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %j_refcount.i.i, align 8
  %inc.i.i808 = add i32 %468, 1
  store i32 %inc.i.i808, ptr %j_refcount.i.i, align 8
  %469 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_store4_noabort(i32 %469)
  store ptr %call7.i.i.i, ptr %j_current_jl, align 4
  %j_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 13
  %j_journal_list = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 45
  %prev.i809 = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 45, i32 1
  %470 = ptrtoint ptr %prev.i809 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %prev.i809, align 4
  %call.i.i810 = tail call zeroext i1 @__list_add_valid(ptr noundef %j_list, ptr noundef %471, ptr noundef %j_journal_list) #13
  br i1 %call.i.i810, label %if.end.i.i, label %while.end.list_add_tail.exit_crit_edge

while.end.list_add_tail.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %472 = ptrtoint ptr %prev.i809 to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %j_list, ptr %prev.i809, align 4
  %473 = ptrtoint ptr %j_list to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %j_journal_list, ptr %j_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 13, i32 1
  %474 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store ptr %471, ptr %prev3.i.i, align 4
  %475 = ptrtoint ptr %471 to i32
  call void @__asan_store4_noabort(i32 %475)
  store volatile ptr %j_list, ptr %471, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %while.end.list_add_tail.exit_crit_edge
  %j_working_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 14
  %j_working_list307 = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 46
  %prev.i811 = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 46, i32 1
  %476 = ptrtoint ptr %prev.i811 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %prev.i811, align 4
  %call.i.i812 = tail call zeroext i1 @__list_add_valid(ptr noundef %j_working_list, ptr noundef %477, ptr noundef %j_working_list307) #13
  br i1 %call.i.i812, label %if.end.i.i814, label %list_add_tail.exit.list_add_tail.exit815_crit_edge

list_add_tail.exit.list_add_tail.exit815_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit815

if.end.i.i814:                                    ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %478 = ptrtoint ptr %prev.i811 to i32
  call void @__asan_store4_noabort(i32 %478)
  store ptr %j_working_list, ptr %prev.i811, align 4
  %479 = ptrtoint ptr %j_working_list to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %j_working_list307, ptr %j_working_list, align 4
  %prev3.i.i813 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 14, i32 1
  %480 = ptrtoint ptr %prev3.i.i813 to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr %477, ptr %prev3.i.i813, align 4
  %481 = ptrtoint ptr %477 to i32
  call void @__asan_store4_noabort(i32 %481)
  store volatile ptr %j_working_list, ptr %477, align 4
  br label %list_add_tail.exit815

list_add_tail.exit815:                            ; preds = %if.end.i.i814, %list_add_tail.exit.list_add_tail.exit815_crit_edge
  %j_num_work_lists = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 39
  %482 = ptrtoint ptr %j_num_work_lists to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %j_num_work_lists, align 4
  %inc308 = add i32 %483, 1
  store i32 %inc308, ptr %j_num_work_lists, align 4
  %484 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %j_start, align 4
  %486 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %j_len, align 8
  %add311 = add i32 %485, 2
  %add312 = add i32 %add311, %487
  %488 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs314 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %489, i32 0, i32 1
  %490 = ptrtoint ptr %s_rs314 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %s_rs314, align 4
  %jp_journal_size317 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %491, i32 0, i32 3, i32 2
  %492 = ptrtoint ptr %jp_journal_size317 to i32
  call void @__asan_loadN_noabort(i32 %492, i32 4)
  %493 = load i32, ptr %jp_journal_size317, align 1
  %494 = tail call i32 @llvm.bswap.i32(i32 %493)
  %rem318 = urem i32 %add312, %494
  %495 = ptrtoint ptr %j_start to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %rem318, ptr %j_start, align 4
  %j_wcount = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 12
  %call.i.i731 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_wcount, i32 noundef 4) #13
  %496 = ptrtoint ptr %j_wcount to i32
  call void @__asan_store4_noabort(i32 %496)
  store volatile i32 0, ptr %j_wcount, align 4
  %j_bcount = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 13
  %497 = ptrtoint ptr %j_bcount to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 0, ptr %j_bcount, align 4
  %j_last = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 1
  %498 = ptrtoint ptr %j_last to i32
  call void @__asan_store4_noabort(i32 %498)
  store ptr null, ptr %j_last, align 4
  %499 = ptrtoint ptr %j_first to i32
  call void @__asan_store4_noabort(i32 %499)
  store ptr null, ptr %j_first, align 8
  %500 = ptrtoint ptr %j_len to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 0, ptr %j_len, align 8
  %501 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_store8_noabort(i32 %501)
  store i64 0, ptr %j_trans_start_time, align 8
  %502 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %j_trans_id, align 4
  %inc324 = add i32 %503, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc324)
  %cmp325 = icmp eq i32 %inc324, 0
  %spec.select715 = select i1 %cmp325, i32 10, i32 %inc324
  %504 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %spec.select715, ptr %j_trans_id, align 4
  %505 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %j_current_jl, align 4
  %j_trans_id332 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %506, i32 0, i32 7
  %507 = ptrtoint ptr %j_trans_id332 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %spec.select715, ptr %j_trans_id332, align 4
  %508 = ptrtoint ptr %j_must_wait to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 0, ptr %j_must_wait, align 4
  %j_len_alloc = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 11
  %509 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 0, ptr %j_len_alloc, align 4
  %510 = ptrtoint ptr %j_next_full_flush to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 0, ptr %j_next_full_flush, align 8
  %511 = ptrtoint ptr %j_next_async_flush to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 0, ptr %j_next_async_flush, align 4
  %512 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i818 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %513, i32 0, i32 3
  %514 = ptrtoint ptr %s_journal.i818 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %s_journal.i818, align 4
  %j_hash_table.i = getelementptr inbounds %struct.reiserfs_journal, ptr %515, i32 0, i32 47
  %516 = call ptr @memset(ptr %j_hash_table.i, i32 0, i32 32768)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !321
  %j_tail_bh_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 15
  %517 = ptrtoint ptr %j_tail_bh_list to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load volatile ptr, ptr %j_tail_bh_list, align 4
  %cmp.i819.not = icmp eq ptr %518, %j_tail_bh_list
  br i1 %cmp.i819.not, label %list_add_tail.exit815.do.body349_crit_edge, label %if.then344

list_add_tail.exit815.do.body349_crit_edge:       ; preds = %list_add_tail.exit815
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body349

if.then344:                                       ; preds = %list_add_tail.exit815
  call void @__sanitizer_cov_trace_pc() #15
  %call345 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef nonnull %1) #13
  %j_dirty_buffers_lock = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 44
  %519 = tail call fastcc i32 @write_ordered_buffers(ptr noundef %j_dirty_buffers_lock, ptr noundef %5, ptr noundef %j_tail_bh_list)
  tail call void @reiserfs_write_lock_nested(ptr noundef nonnull %1, i32 noundef %call345) #13
  br label %do.body349

do.body349:                                       ; preds = %if.then344, %list_add_tail.exit815.do.body349_crit_edge
  %520 = ptrtoint ptr %j_tail_bh_list to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load volatile ptr, ptr %j_tail_bh_list, align 4
  %cmp.i821.not = icmp eq ptr %521, %j_tail_bh_list
  br i1 %cmp.i821.not, label %do.end370, label %do.body362, !prof !298

do.body362:                                       ; preds = %do.body349
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4289, 0\0A.popsection", ""() #13, !srcloc !322
  unreachable

do.end370:                                        ; preds = %do.body349
  tail call void @mutex_unlock(ptr noundef %j_commit_mutex) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool372.not857 = icmp eq i32 %and, 0
  %tobool372.not = select i1 %169, i1 %tobool372.not857, i1 false
  br i1 %tobool372.not, label %if.else376, label %if.then373

if.then373:                                       ; preds = %do.end370
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flush_commit_list(ptr noundef nonnull %1, ptr noundef %243, i32 noundef 1)
  tail call fastcc void @flush_journal_list(ptr noundef nonnull %1, ptr noundef %243, i32 noundef 1)
  br label %if.end387

if.else376:                                       ; preds = %do.end370
  %j_state = getelementptr inbounds %struct.reiserfs_journal_list, ptr %243, i32 0, i32 1
  %522 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %j_state, align 4
  %and377 = and i32 %523, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and377)
  %tobool378.not = icmp eq i32 %and377, 0
  br i1 %tobool378.not, label %if.then379, label %if.else376.if.end387_crit_edge

if.else376.if.end387_crit_edge:                   ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end387

if.then379:                                       ; preds = %if.else376
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %524 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %s_flags, align 4
  %and380 = and i32 %525, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380)
  %tobool381.not = icmp eq i32 %and380, 0
  br i1 %tobool381.not, label %if.then379.if.end387_crit_edge, label %if.then382

if.then379.if.end387_crit_edge:                   ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end387

if.then382:                                       ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #15
  %526 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %s_fs_info.i, align 16
  %commit_wq = getelementptr inbounds %struct.reiserfs_sb_info, ptr %527, i32 0, i32 8
  %528 = ptrtoint ptr %commit_wq to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %commit_wq, align 4
  %j_work = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 55
  %call.i824 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %529, ptr noundef %j_work, i32 noundef 10) #13
  br label %if.end387

if.end387:                                        ; preds = %if.then382, %if.then379.if.end387_crit_edge, %if.else376.if.end387_crit_edge, %if.then373
  %530 = ptrtoint ptr %j_journal_list to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %j_journal_list, align 4
  %cmp.i825.not879883 = icmp eq ptr %531, %j_journal_list
  br i1 %cmp.i825.not879883, label %if.end387.for.end460_crit_edge, label %for.body397.lr.ph.lr.ph

if.end387.for.end460_crit_edge:                   ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end460

for.body397.lr.ph.lr.ph:                          ; preds = %if.end387
  %j_trans_max = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 28
  br label %for.body397.lr.ph

for.body397.lr.ph:                                ; preds = %first_jl.backedge.for.body397.lr.ph_crit_edge, %for.body397.lr.ph.lr.ph
  %532 = phi ptr [ %531, %for.body397.lr.ph.lr.ph ], [ %541, %first_jl.backedge.for.body397.lr.ph_crit_edge ]
  %533 = ptrtoint ptr %j_start to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %j_start, align 4
  %add405 = add i32 %534, 1
  %535 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %j_trans_max, align 8
  %add431 = add i32 %add405, %536
  br label %for.body397

for.body397:                                      ; preds = %for.body397.backedge, %for.body397.lr.ph
  %entry1.0880 = phi ptr [ %532, %for.body397.lr.ph ], [ %safe.0881, %for.body397.backedge ]
  %537 = ptrtoint ptr %entry1.0880 to i32
  call void @__asan_load4_noabort(i32 %537)
  %safe.0881 = load ptr, ptr %entry1.0880, align 4
  %add.ptr398 = getelementptr i8, ptr %entry1.0880, i32 -144
  %538 = ptrtoint ptr %add.ptr398 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %add.ptr398, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %534, i32 %539)
  %cmp401.not = icmp ugt i32 %534, %539
  br i1 %cmp401.not, label %if.else427, label %if.then403

if.then403:                                       ; preds = %for.body397
  call void @__sanitizer_cov_trace_cmp4(i32 %add431, i32 %539)
  %cmp408.not = icmp ult i32 %add431, %539
  br i1 %cmp408.not, label %if.else412, label %if.then403.first_jl.backedge_crit_edge

if.then403.first_jl.backedge_crit_edge:           ; preds = %if.then403
  call void @__sanitizer_cov_trace_pc() #15
  br label %first_jl.backedge

first_jl.backedge:                                ; preds = %if.then439.first_jl.backedge_crit_edge, %if.then403.first_jl.backedge_crit_edge
  %add.ptr398.le903.sink = getelementptr i8, ptr %entry1.0880, i32 -144
  tail call fastcc void @flush_used_journal_lists(ptr noundef nonnull %1, ptr noundef %add.ptr398.le903.sink)
  %540 = ptrtoint ptr %j_journal_list to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %j_journal_list, align 4
  %cmp.i825.not879 = icmp eq ptr %541, %j_journal_list
  br i1 %cmp.i825.not879, label %first_jl.backedge.for.end460_crit_edge, label %first_jl.backedge.for.body397.lr.ph_crit_edge

first_jl.backedge.for.body397.lr.ph_crit_edge:    ; preds = %first_jl.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body397.lr.ph

first_jl.backedge.for.end460_crit_edge:           ; preds = %first_jl.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end460

if.else412:                                       ; preds = %if.then403
  %542 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs418 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %543, i32 0, i32 1
  %544 = ptrtoint ptr %s_rs418 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %s_rs418, align 4
  %jp_journal_size421 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %545, i32 0, i32 3, i32 2
  %546 = ptrtoint ptr %jp_journal_size421 to i32
  call void @__asan_loadN_noabort(i32 %546, i32 4)
  %547 = load i32, ptr %jp_journal_size421, align 1
  %548 = tail call i32 @llvm.bswap.i32(i32 %547)
  call void @__sanitizer_cov_trace_cmp4(i32 %add431, i32 %548)
  %cmp422 = icmp ult i32 %add431, %548
  %cmp.i825.not = icmp eq ptr %safe.0881, %j_journal_list
  %or.cond905 = select i1 %cmp422, i1 true, i1 %cmp.i825.not
  br i1 %or.cond905, label %if.else412.for.end460_crit_edge, label %if.else412.for.body397.backedge_crit_edge

if.else412.for.body397.backedge_crit_edge:        ; preds = %if.else412
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body397.backedge

if.else412.for.end460_crit_edge:                  ; preds = %if.else412
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end460

if.else427:                                       ; preds = %for.body397
  %549 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs433 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %550, i32 0, i32 1
  %551 = ptrtoint ptr %s_rs433 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %s_rs433, align 4
  %jp_journal_size436 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %552, i32 0, i32 3, i32 2
  %553 = ptrtoint ptr %jp_journal_size436 to i32
  call void @__asan_loadN_noabort(i32 %553, i32 4)
  %554 = load i32, ptr %jp_journal_size436, align 1
  %555 = tail call i32 @llvm.bswap.i32(i32 %554)
  call void @__sanitizer_cov_trace_cmp4(i32 %add431, i32 %555)
  %cmp437 = icmp ugt i32 %add431, %555
  br i1 %cmp437, label %if.then439, label %for.inc458

if.then439:                                       ; preds = %if.else427
  %rem449 = urem i32 %add431, %555
  call void @__sanitizer_cov_trace_cmp4(i32 %rem449, i32 %539)
  %cmp451.not = icmp ult i32 %rem449, %539
  br i1 %cmp451.not, label %if.then439.for.end460_crit_edge, label %if.then439.first_jl.backedge_crit_edge

if.then439.first_jl.backedge_crit_edge:           ; preds = %if.then439
  call void @__sanitizer_cov_trace_pc() #15
  br label %first_jl.backedge

if.then439.for.end460_crit_edge:                  ; preds = %if.then439
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end460

for.inc458:                                       ; preds = %if.else427
  %cmp.i825.not.old = icmp eq ptr %safe.0881, %j_journal_list
  br i1 %cmp.i825.not.old, label %for.inc458.for.end460_crit_edge, label %for.inc458.for.body397.backedge_crit_edge

for.inc458.for.body397.backedge_crit_edge:        ; preds = %for.inc458
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body397.backedge

for.inc458.for.end460_crit_edge:                  ; preds = %for.inc458
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end460

for.body397.backedge:                             ; preds = %for.inc458.for.body397.backedge_crit_edge, %if.else412.for.body397.backedge_crit_edge
  br label %for.body397

for.end460:                                       ; preds = %for.inc458.for.end460_crit_edge, %if.then439.for.end460_crit_edge, %if.else412.for.end460_crit_edge, %first_jl.backedge.for.end460_crit_edge, %if.end387.for.end460_crit_edge
  %556 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %j_current_jl, align 4
  %558 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i831 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %559, i32 0, i32 3
  %560 = ptrtoint ptr %s_journal.i831 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %s_journal.i831, align 4
  %j_list_bitmap_index.i = getelementptr inbounds %struct.reiserfs_journal, ptr %561, i32 0, i32 22
  %j_list_bitmap.i = getelementptr inbounds %struct.reiserfs_journal, ptr %561, i32 0, i32 49
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i835.for.body.i_crit_edge, %for.end460
  %j.034.i = phi i32 [ 0, %for.end460 ], [ %inc.i834, %if.then.i835.for.body.i_crit_edge ]
  %562 = ptrtoint ptr %j_list_bitmap_index.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %j_list_bitmap_index.i, align 8
  %add.i = add i32 %563, 1
  %rem.i = srem i32 %add.i, 5
  store i32 %rem.i, ptr %j_list_bitmap_index.i, align 8
  %arrayidx.i832 = getelementptr %struct.reiserfs_journal, ptr %561, i32 0, i32 49, i32 %563
  %564 = ptrtoint ptr %arrayidx.i832 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %arrayidx.i832, align 4
  %tobool.not.i833 = icmp eq ptr %565, null
  br i1 %tobool.not.i833, label %for.body.i.for.end.i836_crit_edge, label %if.then.i835

for.body.i.for.end.i836_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i836

if.then.i835:                                     ; preds = %for.body.i
  tail call fastcc void @flush_commit_list(ptr noundef nonnull %1, ptr noundef nonnull %565, i32 noundef 1) #13
  %566 = ptrtoint ptr %arrayidx.i832 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %arrayidx.i832, align 4
  %tobool10.not.i = icmp eq ptr %567, null
  %inc.i834 = add nuw nsw i32 %j.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc.i834)
  %exitcond.not.i = icmp eq i32 %inc.i834, 15
  %or.cond.i = select i1 %tobool10.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.then.i835.for.end.i836_crit_edge, label %if.then.i835.for.body.i_crit_edge

if.then.i835.for.body.i_crit_edge:                ; preds = %if.then.i835
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then.i835.for.end.i836_crit_edge:              ; preds = %if.then.i835
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i836

for.end.i836:                                     ; preds = %if.then.i835.for.end.i836_crit_edge, %for.body.i.for.end.i836_crit_edge
  %add.ptr.le.i = getelementptr %struct.reiserfs_list_bitmap, ptr %j_list_bitmap.i, i32 %563
  %568 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %add.ptr.le.i, align 4
  %tobool14.not.i = icmp eq ptr %569, null
  br i1 %tobool14.not.i, label %if.end16.i, label %for.end.i836.get_list_bitmap.exit_crit_edge

for.end.i836.get_list_bitmap.exit_crit_edge:      ; preds = %for.end.i836
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_list_bitmap.exit

if.end16.i:                                       ; preds = %for.end.i836
  call void @__sanitizer_cov_trace_pc() #15
  %570 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store ptr %557, ptr %add.ptr.le.i, align 4
  br label %get_list_bitmap.exit

get_list_bitmap.exit:                             ; preds = %if.end16.i, %for.end.i836.get_list_bitmap.exit_crit_edge
  %retval.0.i837 = phi ptr [ %add.ptr.le.i, %if.end16.i ], [ null, %for.end.i836.get_list_bitmap.exit_crit_edge ]
  %571 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %j_current_jl, align 4
  %j_list_bitmap = getelementptr inbounds %struct.reiserfs_journal_list, ptr %572, i32 0, i32 9
  %573 = ptrtoint ptr %j_list_bitmap to i32
  call void @__asan_store4_noabort(i32 %573)
  store ptr %retval.0.i837, ptr %j_list_bitmap, align 8
  %574 = load ptr, ptr %j_current_jl, align 4
  %j_list_bitmap465 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %574, i32 0, i32 9
  %575 = ptrtoint ptr %j_list_bitmap465 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %j_list_bitmap465, align 8
  %tobool466.not = icmp eq ptr %576, null
  br i1 %tobool466.not, label %if.then467, label %if.end468

if.then467:                                       ; preds = %get_list_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef nonnull %1, ptr noundef nonnull @.str.126, ptr noundef nonnull @__func__.do_journal_end, ptr noundef nonnull @.str.127) #18
  unreachable

if.end468:                                        ; preds = %get_list_bitmap.exit
  %j_jlock = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 21
  %call.i.i732 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_jlock, i32 noundef 4) #13
  %577 = ptrtoint ptr %j_jlock to i32
  call void @__asan_store4_noabort(i32 %577)
  store volatile i32 0, ptr %j_jlock, align 4
  %578 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i840 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %579, i32 0, i32 3
  %580 = ptrtoint ptr %s_journal.i840 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %s_journal.i840, align 4
  %j_mutex.i841 = getelementptr inbounds %struct.reiserfs_journal, ptr %581, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %j_mutex.i841) #13
  %j_state469 = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %j_state469) #13
  %j_join_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %j_join_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  %tobool372.not.not = xor i1 %tobool372.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool472.not858 = icmp eq i32 %and54, 0
  %tobool472.not = select i1 %tobool68.not, i1 %tobool472.not858, i1 false
  %or.cond = select i1 %tobool372.not.not, i1 true, i1 %tobool472.not
  br i1 %or.cond, label %if.end468.out_crit_edge, label %land.lhs.true473

if.end468.out_crit_edge:                          ; preds = %if.end468
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true473:                                 ; preds = %if.end468
  %582 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i843 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %583, i32 0, i32 3
  %584 = ptrtoint ptr %s_journal.i843 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %s_journal.i843, align 4
  %j_journal_list.i = getelementptr inbounds %struct.reiserfs_journal, ptr %585, i32 0, i32 45
  %586 = ptrtoint ptr %j_journal_list.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load volatile ptr, ptr %j_journal_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %587, %j_journal_list.i
  br i1 %cmp.i.not.i, label %land.lhs.true473.out_crit_edge, label %if.then.i846

land.lhs.true473.out_crit_edge:                   ; preds = %land.lhs.true473
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i846:                                     ; preds = %land.lhs.true473
  %j_trans_id.i844 = getelementptr i8, ptr %587, i32 -28
  %588 = ptrtoint ptr %j_trans_id.i844 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %j_trans_id.i844, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %589, i32 %245)
  %cmp.not.i845 = icmp ugt i32 %589, %245
  br i1 %cmp.not.i845, label %if.then.i846.out_crit_edge, label %if.then476

if.then.i846.out_crit_edge:                       ; preds = %if.then.i846
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then476:                                       ; preds = %if.then.i846
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flush_commit_list(ptr noundef nonnull %1, ptr noundef %243, i32 noundef 1)
  br label %out

out:                                              ; preds = %if.then476, %if.then.i846.out_crit_edge, %land.lhs.true473.out_crit_edge, %if.end468.out_crit_edge, %if.end43.i, %wake_queued_writers.exit.out_crit_edge
  call void @reiserfs_check_lock_depth(ptr noundef nonnull %1, ptr noundef nonnull @.str.128) #13
  %590 = getelementptr inbounds i8, ptr %th, i32 4
  %591 = call ptr @memset(ptr %590, i32 0, i32 32)
  %592 = ptrtoint ptr %th to i32
  call void @__asan_store4_noabort(i32 %592)
  store ptr %1, ptr %th, align 4
  %j_errno = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 54
  %593 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %j_errno, align 8
  ret i32 %594
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_end_sync(ptr noundef %th) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %th to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %th, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %6 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !300

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3528, 0\0A.popsection", ""() #13, !srcloc !323
  unreachable

do.body10:                                        ; preds = %entry
  %t_refcount = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 1
  %8 = ptrtoint ptr %t_refcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t_refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %do.body18, label %do.end26, !prof !300

do.body18:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3530, 0\0A.popsection", ""() #13, !srcloc !324
  unreachable

do.end26:                                         ; preds = %do.body10
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %j_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp27 = icmp eq i32 %11, 0
  br i1 %cmp27, label %if.then28, label %do.end26.if.end34_crit_edge

do.end26.if.end34_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then28:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call30 = tail call i32 @reiserfs_prepare_for_journal(ptr noundef %1, ptr noundef %13, i32 noundef 1)
  %14 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i, align 16
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call33 = tail call i32 @journal_mark_dirty(ptr noundef %th, ptr noundef %17)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.end26.if.end34_crit_edge
  %call35 = tail call fastcc i32 @do_journal_end(ptr noundef %th, i32 noundef 6)
  ret i32 %call35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_prepare_for_journal(ptr nocapture noundef readonly %sb, ptr noundef %bh, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %prepare = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 27, i32 32, i32 12
  %2 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prepare, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %prepare, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #13
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %and.i.i.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

trylock_buffer.exit:                              ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  %7 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.not = icmp eq i32 %7, 0
  br i1 %tobool.not.not, label %trylock_buffer.exit.if.end4_crit_edge, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

trylock_buffer.exit.if.end4_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool2.not = icmp eq i32 %wait, 0
  br i1 %tobool2.not, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 366) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #13
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end.if.then.i20_crit_edge

if.end.if.then.i20_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i20

trylock_buffer.exit.i:                            ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  %11 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.if.end4_crit_edge, label %trylock_buffer.exit.i.if.then.i20_crit_edge

trylock_buffer.exit.i.if.then.i20_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i20

trylock_buffer.exit.i.if.end4_crit_edge:          ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then.i20:                                      ; preds = %trylock_buffer.exit.i.if.then.i20_crit_edge, %if.end.if.then.i20_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then.i20, %trylock_buffer.exit.i.if.end4_crit_edge, %trylock_buffer.exit.if.end4_crit_edge
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %bh, align 4
  %14 = and i32 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end4.set_buffer_journal_prepared.exit_crit_edge

if.end4.set_buffer_journal_prepared.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_journal_prepared.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 19, ptr noundef %bh) #13
  br label %set_buffer_journal_prepared.exit

set_buffer_journal_prepared.exit:                 ; preds = %if.then.i, %if.end4.set_buffer_journal_prepared.exit_crit_edge
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %set_buffer_journal_prepared.exit.if.end10_crit_edge, label %land.lhs.true

set_buffer_journal_prepared.exit.if.end10_crit_edge: ; preds = %set_buffer_journal_prepared.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

land.lhs.true:                                    ; preds = %set_buffer_journal_prepared.exit
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %bh, align 4
  %17 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %if.then9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %bh) #13
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %bh, align 4
  %20 = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i18 = icmp eq i32 %20, 0
  br i1 %tobool.not.i18, label %if.then.i19, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then.i19:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 20, ptr noundef %bh) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then.i19, %if.then9.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %set_buffer_journal_prepared.exit.if.end10_crit_edge
  tail call void @unlock_buffer(ptr noundef %bh) #13
  br label %return

return:                                           ; preds = %if.end10, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end10 ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_flush_old_commits(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %th = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th) #13
  %0 = call ptr @memset(ptr %th, i32 255, i32 36)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_journal, align 4
  %call1 = tail call i64 @ktime_get_seconds() #13
  %j_journal_list = getelementptr inbounds %struct.reiserfs_journal, ptr %4, i32 0, i32 45
  %5 = ptrtoint ptr %j_journal_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %j_journal_list, align 4
  %cmp.i.not = icmp eq ptr %6, %j_journal_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %j_wcount = getelementptr inbounds %struct.reiserfs_journal, ptr %4, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %7 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %j_wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %j_trans_start_time = getelementptr inbounds %struct.reiserfs_journal, ptr %4, i32 0, i32 17
  %9 = ptrtoint ptr %j_trans_start_time to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %j_trans_start_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp4 = icmp sgt i64 %10, 0
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true5:                                   ; preds = %land.lhs.true
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %4, i32 0, i32 10
  %11 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %j_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6.not = icmp eq i32 %12, 0
  br i1 %cmp6.not, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true7

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %sub = sub i64 %call1, %10
  %j_max_trans_age = getelementptr inbounds %struct.reiserfs_journal, ptr %4, i32 0, i32 31
  %13 = ptrtoint ptr %j_max_trans_age to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_max_trans_age, align 4
  %conv = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp9 = icmp sgt i64 %sub, %conv
  br i1 %cmp9, label %if.then11, label %land.lhs.true7.cleanup_crit_edge

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true7
  %15 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 146
  %19 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %journal_info.i, align 4
  %t_handle_save.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 5
  %21 = ptrtoint ptr %t_handle_save.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %t_handle_save.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then11.journal_join.exit_crit_edge, label %land.rhs.i

if.then11.journal_join.exit_crit_edge:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_join.exit

land.rhs.i:                                       ; preds = %if.then11
  %t_refcount.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %t_refcount.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i34 = icmp sgt i32 %23, 1
  br i1 %cmp.i34, label %do.body3.i, label %land.rhs.i.journal_join.exit_crit_edge, !prof !300

land.rhs.i.journal_join.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_join.exit

do.body3.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3204, 0\0A.popsection", ""() #13, !srcloc !302
  unreachable

journal_join.exit:                                ; preds = %land.rhs.i.journal_join.exit_crit_edge, %if.then11.journal_join.exit_crit_edge
  %call9.i = call fastcc i32 @do_journal_begin_r(ptr noundef nonnull %th, ptr noundef %sb, i32 noundef 1, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool13.not = icmp eq i32 %call9.i, 0
  br i1 %tobool13.not, label %if.then14, label %journal_join.exit.cleanup_crit_edge

journal_join.exit.cleanup_crit_edge:              ; preds = %journal_join.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then14:                                        ; preds = %journal_join.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call16 = call i32 @reiserfs_prepare_for_journal(ptr noundef %sb, ptr noundef %27, i32 noundef 1)
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call19 = call i32 @journal_mark_dirty(ptr noundef nonnull %th, ptr noundef %31)
  %call20 = call fastcc i32 @do_journal_end(ptr noundef nonnull %th, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %journal_join.exit.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @journal_mark_freed(ptr nocapture noundef readonly %th, ptr noundef %sb, i32 noundef %blocknr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %t_trans_id = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th, i32 0, i32 4
  %4 = ptrtoint ptr %t_trans_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !300

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3748, 0\0A.popsection", ""() #13, !srcloc !327
  unreachable

do.end9:                                          ; preds = %entry
  %j_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 47
  %6 = ptrtoint ptr %sb to i32
  %shr.i = lshr i32 %6, 7
  %shl.i = shl i32 %blocknr, 7
  %7 = lshr i32 %blocknr, 13
  %shl2.i = shl i32 %blocknr, 1
  %xor.i = xor i32 %7, %shr.i
  %xor3.i = xor i32 %xor.i, %shl.i
  %xor4.i = xor i32 %xor3.i, %shl2.i
  %and.i = and i32 %xor4.i, 8191
  %arrayidx.i = getelementptr ptr, ptr %j_hash_table, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cn.015.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not16.i = icmp eq ptr %cn.015.i, null
  br i1 %tobool.not16.i, label %do.end9.if.else_crit_edge, label %do.end9.while.body.i_crit_edge

do.end9.while.body.i_crit_edge:                   ; preds = %do.end9
  br label %while.body.i

do.end9.if.else_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.end9.while.body.i_crit_edge
  %cn.017.i = phi ptr [ %cn.0.i, %if.end.i.while.body.i_crit_edge ], [ %cn.015.i, %do.end9.while.body.i_crit_edge ]
  %blocknr.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 2
  %9 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blocknr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %blocknr)
  %cmp.i = icmp eq i32 %10, %blocknr
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %sb5.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 1
  %11 = ptrtoint ptr %sb5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sb5.i, align 4
  %cmp6.i = icmp eq ptr %12, %sb
  br i1 %cmp6.i, label %land.lhs.true, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %hnext.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 8
  %13 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cn.0.i = load ptr, ptr %hnext.i, align 4
  %tobool.not.i = icmp eq ptr %cn.0.i, null
  br i1 %tobool.not.i, label %if.end.i.if.else_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %cn.017.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cn.017.i, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true18

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !297
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %15, align 4
  %19 = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.else_crit_edge, label %reiserfs_clean_and_file_buffer.exit

land.lhs.true18.if.else_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

reiserfs_clean_and_file_buffer.exit:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 18, ptr noundef nonnull %15) #13
  tail call void @_clear_bit(i32 noundef 19, ptr noundef nonnull %15) #13
  tail call void @_clear_bit(i32 noundef 20, ptr noundef nonnull %15) #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %15) #13
  tail call void @_clear_bit(i32 noundef 21, ptr noundef nonnull %15) #13
  %20 = tail call fastcc i32 @remove_from_transaction(ptr noundef %sb, i32 noundef %blocknr)
  br label %if.then65

if.else:                                          ; preds = %land.lhs.true18.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.i.if.else_crit_edge, %do.end9.if.else_crit_edge
  %tobool17.not157 = phi i1 [ false, %land.lhs.true18.if.else_crit_edge ], [ true, %land.lhs.true.if.else_crit_edge ], [ true, %do.end9.if.else_crit_edge ], [ true, %if.end.i.if.else_crit_edge ]
  %bh.0156 = phi ptr [ %15, %land.lhs.true18.if.else_crit_edge ], [ null, %land.lhs.true.if.else_crit_edge ], [ null, %do.end9.if.else_crit_edge ], [ null, %if.end.i.if.else_crit_edge ]
  %j_current_jl = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 35
  %21 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %j_current_jl, align 4
  %j_list_bitmap = getelementptr inbounds %struct.reiserfs_journal_list, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %j_list_bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %j_list_bitmap, align 8
  %tobool24.not = icmp eq ptr %24, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %sb, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.journal_mark_freed, ptr noundef nonnull @.str.49) #18
  unreachable

if.end26:                                         ; preds = %if.else
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %25 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize.i, align 16
  %shl.i117 = shl i32 %26, 3
  %shl.i117.frozen = freeze i32 %shl.i117
  %div.i = udiv i32 %blocknr, %shl.i117.frozen
  %bitmaps.i = getelementptr inbounds %struct.reiserfs_list_bitmap, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx.i118 = getelementptr ptr, ptr %28, i32 %div.i
  %29 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i118, align 4
  %tobool.not.i119 = icmp eq ptr %30, null
  br i1 %tobool.not.i119, label %if.then.i120, label %if.end26.set_bit_in_list_bitmap.exit_crit_edge

if.end26.set_bit_in_list_bitmap.exit_crit_edge:   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_bit_in_list_bitmap.exit

if.then.i120:                                     ; preds = %if.end26
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_journal.i.i, align 4
  %j_bitmap_nodes.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %34, i32 0, i32 42
  %35 = ptrtoint ptr %j_bitmap_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %j_bitmap_nodes.i.i, align 8
  %j_used_bitmap_nodes.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %34, i32 0, i32 37
  %37 = ptrtoint ptr %j_used_bitmap_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %j_used_bitmap_nodes.i.i, align 4
  %inc.i.i = add i32 %38, 1
  store i32 %inc.i.i, ptr %j_used_bitmap_nodes.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %36, %j_bitmap_nodes.i.i
  br i1 %cmp.not.i.i, label %if.then.i120.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i120.if.end.i.i_crit_edge:                ; preds = %if.then.i120
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i120
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 -8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i.i, align 4
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %data.i.i = getelementptr i8, ptr %36, i32 -4
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %49 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_blocksize.i, align 16
  %51 = call ptr @memset(ptr %48, i32 0, i32 %50)
  %j_free_bitmap_nodes.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %34, i32 0, i32 36
  %52 = ptrtoint ptr %j_free_bitmap_nodes.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %j_free_bitmap_nodes.i.i, align 8
  %dec.i.i = add i32 %53, -1
  store i32 %dec.i.i, ptr %j_free_bitmap_nodes.i.i, align 8
  br label %get_bitmap_node.exit.i

if.end.i.i:                                       ; preds = %if.then4.i.i, %if.then.i120.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3136, i32 noundef 16) #17
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.then4.i.i_crit_edge, label %if.end8.i.i.i.i.i

if.end.i.i.if.then4.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4.i.i

if.end8.i.i.i.i.i:                                ; preds = %if.end.i.i
  %55 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_blocksize.i, align 16
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3392) #16
  %data.i.i.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %call7.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i.i.i.i, ptr %data.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %if.then4.i.i.i, label %allocate_bitmap_node.exit.i.i

if.then4.i.i.i:                                   ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  br label %if.then4.i.i

allocate_bitmap_node.exit.i.i:                    ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %58 = load i32, ptr @allocate_bitmap_node.id, align 4
  %inc.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i, ptr @allocate_bitmap_node.id, align 4
  %59 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %call7.i.i.i.i, align 8
  %list.i.i.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %call7.i.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %list.i.i.i, ptr %list.i.i.i, align 8
  %prev.i.i18.i.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %prev.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list.i.i.i, ptr %prev.i.i18.i.i, align 4
  br label %get_bitmap_node.exit.i

if.then4.i.i:                                     ; preds = %if.then4.i.i.i, %if.end.i.i.if.then4.i.i_crit_edge
  tail call void @yield() #13
  br label %if.end.i.i

get_bitmap_node.exit.i:                           ; preds = %allocate_bitmap_node.exit.i.i, %list_del.exit.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %list_del.exit.i.i ], [ %call7.i.i.i.i, %allocate_bitmap_node.exit.i.i ]
  %62 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %63, i32 %div.i
  %64 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %retval.0.i.i, ptr %arrayidx4.i, align 4
  br label %set_bit_in_list_bitmap.exit

set_bit_in_list_bitmap.exit:                      ; preds = %get_bitmap_node.exit.i, %if.end26.set_bit_in_list_bitmap.exit_crit_edge
  %65 = mul i32 %div.i, %shl.i117.frozen
  %rem.i.decomposed = sub i32 %blocknr, %65
  %66 = ptrtoint ptr %bitmaps.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bitmaps.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %67, i32 %div.i
  %68 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx6.i, align 4
  %data.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 4
  tail call void @_set_bit(i32 noundef %rem.i.decomposed, ptr noundef %71) #13
  br i1 %tobool17.not157, label %set_bit_in_list_bitmap.exit.if.end31_crit_edge, label %reiserfs_clean_and_file_buffer.exit125

set_bit_in_list_bitmap.exit.if.end31_crit_edge:   ; preds = %set_bit_in_list_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

reiserfs_clean_and_file_buffer.exit125:           ; preds = %set_bit_in_list_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %bh.0156) #13
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %bh.0156) #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %bh.0156) #13
  tail call void @_clear_bit(i32 noundef 21, ptr noundef nonnull %bh.0156) #13
  br label %if.end31

if.end31:                                         ; preds = %reiserfs_clean_and_file_buffer.exit125, %set_bit_in_list_bitmap.exit.if.end31_crit_edge
  %call32 = tail call fastcc i32 @remove_from_transaction(ptr noundef %sb, i32 noundef %blocknr)
  %j_list_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 48
  %arrayidx.i133 = getelementptr ptr, ptr %j_list_hash_table, i32 %and.i
  %72 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %cn.015.i134 = load ptr, ptr %arrayidx.i133, align 4
  %tobool.not16.i135 = icmp eq ptr %cn.015.i134, null
  br i1 %tobool.not16.i135, label %if.end31.if.end63_crit_edge, label %if.end31.while.body.i139_crit_edge

if.end31.while.body.i139_crit_edge:               ; preds = %if.end31
  br label %while.body.i139

if.end31.if.end63_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

while.body.i139:                                  ; preds = %if.end.i146.while.body.i139_crit_edge, %if.end31.while.body.i139_crit_edge
  %cn.017.i136 = phi ptr [ %cn.0.i144, %if.end.i146.while.body.i139_crit_edge ], [ %cn.015.i134, %if.end31.while.body.i139_crit_edge ]
  %blocknr.i137 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i136, i32 0, i32 2
  %73 = ptrtoint ptr %blocknr.i137 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blocknr.i137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %blocknr)
  %cmp.i138 = icmp eq i32 %74, %blocknr
  br i1 %cmp.i138, label %land.lhs.true.i142, label %while.body.i139.if.end.i146_crit_edge

while.body.i139.if.end.i146_crit_edge:            ; preds = %while.body.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i146

land.lhs.true.i142:                               ; preds = %while.body.i139
  %sb5.i140 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i136, i32 0, i32 1
  %75 = ptrtoint ptr %sb5.i140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sb5.i140, align 4
  %cmp6.i141 = icmp eq ptr %76, %sb
  br i1 %cmp6.i141, label %land.lhs.true.i142.while.body_crit_edge, label %land.lhs.true.i142.if.end.i146_crit_edge

land.lhs.true.i142.if.end.i146_crit_edge:         ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i146

land.lhs.true.i142.while.body_crit_edge:          ; preds = %land.lhs.true.i142
  br label %while.body

if.end.i146:                                      ; preds = %land.lhs.true.i142.if.end.i146_crit_edge, %while.body.i139.if.end.i146_crit_edge
  %hnext.i143 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i136, i32 0, i32 8
  %77 = ptrtoint ptr %hnext.i143 to i32
  call void @__asan_load4_noabort(i32 %77)
  %cn.0.i144 = load ptr, ptr %hnext.i143, align 4
  %tobool.not.i145 = icmp eq ptr %cn.0.i144, null
  br i1 %tobool.not.i145, label %if.end.i146.if.end63_crit_edge, label %if.end.i146.while.body.i139_crit_edge

if.end.i146.while.body.i139_crit_edge:            ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i139

if.end.i146.if.end63_crit_edge:                   ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

while.body:                                       ; preds = %if.end62.while.body_crit_edge, %land.lhs.true.i142.while.body_crit_edge
  %cleaned.0164 = phi i32 [ %cleaned.2, %if.end62.while.body_crit_edge ], [ %call32, %land.lhs.true.i142.while.body_crit_edge ]
  %cn.0162 = phi ptr [ %100, %if.end62.while.body_crit_edge ], [ %cn.017.i136, %land.lhs.true.i142.while.body_crit_edge ]
  %sb36 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.0162, i32 0, i32 1
  %78 = ptrtoint ptr %sb36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sb36, align 4
  %cmp = icmp eq ptr %79, %sb
  br i1 %cmp, label %land.lhs.true37, label %while.body.if.end62_crit_edge

while.body.if.end62_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

land.lhs.true37:                                  ; preds = %while.body
  %blocknr38 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.0162, i32 0, i32 2
  %80 = ptrtoint ptr %blocknr38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blocknr38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %blocknr)
  %cmp39 = icmp eq i32 %81, %blocknr
  br i1 %cmp39, label %if.then40, label %land.lhs.true37.if.end62_crit_edge

land.lhs.true37.if.end62_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then40:                                        ; preds = %land.lhs.true37
  %state = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.0162, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state) #13
  %82 = ptrtoint ptr %cn.0162 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cn.0162, align 4
  %tobool42.not = icmp eq ptr %83, null
  br i1 %tobool42.not, label %if.then40.if.end62_crit_edge, label %if.then43

if.then40.if.end62_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cleaned.0164)
  %tobool44.not = icmp eq i32 %cleaned.0164, 0
  br i1 %tobool44.not, label %if.then45, label %if.then43.if.end55_crit_edge

if.then43.if.end55_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then45:                                        ; preds = %if.then43
  tail call void @_clear_bit(i32 noundef 17, ptr noundef nonnull %83) #13
  %84 = ptrtoint ptr %cn.0162 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cn.0162, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %85) #13
  %86 = ptrtoint ptr %cn.0162 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cn.0162, align 4
  tail call void @_clear_bit(i32 noundef 21, ptr noundef %87) #13
  %88 = ptrtoint ptr %cn.0162 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cn.0162, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i149 = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 11
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i149, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i149, i32 1, i32 3, i32 1) #13
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i149, ptr %b_count.i149, i32 1, ptr elementtype(i32) %b_count.i149) #13, !srcloc !295
  %91 = ptrtoint ptr %cn.0162 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cn.0162, align 4
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %92, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #13
  %93 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %b_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp52 = icmp slt i32 %94, 0
  br i1 %cmp52, label %if.then53, label %if.then45.if.end55_crit_edge

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then53:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.journal_mark_freed, ptr noundef nonnull @.str.51) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.then45.if.end55_crit_edge, %if.then43.if.end55_crit_edge
  %jlist = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.0162, i32 0, i32 4
  %95 = ptrtoint ptr %jlist to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %jlist, align 4
  %tobool56.not = icmp eq ptr %96, null
  br i1 %tobool56.not, label %if.end55.if.end59_crit_edge, label %if.then57

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %j_nonzerolen = getelementptr inbounds %struct.reiserfs_journal_list, ptr %96, i32 0, i32 3
  %call.i.i114 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_nonzerolen, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %j_nonzerolen, i32 1, i32 3, i32 1) #13
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_nonzerolen, ptr %j_nonzerolen, i32 1, ptr elementtype(i32) %j_nonzerolen) #13, !srcloc !295
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55.if.end59_crit_edge
  %98 = ptrtoint ptr %cn.0162 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %cn.0162, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end59, %if.then40.if.end62_crit_edge, %land.lhs.true37.if.end62_crit_edge, %while.body.if.end62_crit_edge
  %cleaned.2 = phi i32 [ 1, %if.end59 ], [ %cleaned.0164, %if.then40.if.end62_crit_edge ], [ %cleaned.0164, %land.lhs.true37.if.end62_crit_edge ], [ %cleaned.0164, %while.body.if.end62_crit_edge ]
  %hnext = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.0162, i32 0, i32 8
  %99 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hnext, align 4
  %tobool35.not = icmp eq ptr %100, null
  br i1 %tobool35.not, label %if.end62.if.end63_crit_edge, label %if.end62.while.body_crit_edge

if.end62.while.body_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end62.if.end63_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.end63:                                         ; preds = %if.end62.if.end63_crit_edge, %if.end.i146.if.end63_crit_edge, %if.end31.if.end63_crit_edge
  br i1 %tobool17.not157, label %if.end63.if.end66_crit_edge, label %if.end63.if.then65_crit_edge

if.end63.if.then65_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then65

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then65:                                        ; preds = %if.end63.if.then65_crit_edge, %reiserfs_clean_and_file_buffer.exit
  %bh.0155 = phi ptr [ %15, %reiserfs_clean_and_file_buffer.exit ], [ %bh.0156, %if.end63.if.then65_crit_edge ]
  tail call fastcc void @release_buffer_page(ptr noundef nonnull %bh.0155)
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_from_transaction(ptr noundef %sb, i32 noundef %blocknr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %j_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %sb to i32
  %shr.i = lshr i32 %4, 7
  %shl.i = shl i32 %blocknr, 7
  %5 = lshr i32 %blocknr, 13
  %shl2.i = shl i32 %blocknr, 1
  %xor.i = xor i32 %5, %shr.i
  %xor3.i = xor i32 %xor.i, %shl.i
  %xor4.i = xor i32 %xor3.i, %shl2.i
  %and.i = and i32 %xor4.i, 8191
  %arrayidx.i = getelementptr ptr, ptr %j_hash_table, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cn.015.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not16.i = icmp eq ptr %cn.015.i, null
  br i1 %tobool.not16.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %cn.017.i = phi ptr [ %cn.0.i, %if.end.i.while.body.i_crit_edge ], [ %cn.015.i, %entry.while.body.i_crit_edge ]
  %blocknr.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 2
  %7 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blocknr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %blocknr)
  %cmp.i = icmp eq i32 %8, %blocknr
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %sb5.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 1
  %9 = ptrtoint ptr %sb5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sb5.i, align 4
  %cmp6.i = icmp eq ptr %10, %sb
  br i1 %cmp6.i, label %lor.lhs.false, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %hnext.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 8
  %11 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cn.0.i = load ptr, ptr %hnext.i, align 4
  %tobool.not.i = icmp eq ptr %cn.0.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.i
  %12 = ptrtoint ptr %cn.017.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cn.017.i, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %prev = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 6
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %next = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 5
  %16 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %next, align 4
  %next8 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %next8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %next8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %next10 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 5
  %19 = ptrtoint ptr %next10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next10, align 4
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %if.then12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev, align 4
  %prev15 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %prev15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %prev15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9.if.end16_crit_edge
  %j_first = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %j_first to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %j_first, align 8
  %cmp = icmp eq ptr %cn.017.i, %25
  br i1 %cmp, label %if.then17, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %next10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next10, align 4
  %28 = ptrtoint ptr %j_first to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %j_first, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end16.if.end20_crit_edge
  %j_last = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %j_last to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_last, align 4
  %cmp21 = icmp eq ptr %cn.017.i, %30
  br i1 %cmp21, label %if.then22, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev, align 4
  %33 = ptrtoint ptr %j_last to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %j_last, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end20.if.end25_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 3
  %34 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %35 to i32
  tail call fastcc void @remove_journal_hash(ptr noundef %sb, ptr noundef %j_hash_table, ptr noundef null, i32 noundef %conv, i32 noundef 0)
  tail call void @_clear_bit(i32 noundef 16, ptr noundef nonnull %13) #13
  tail call void @_clear_bit(i32 noundef 17, ptr noundef nonnull %13) #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %13) #13
  tail call void @_clear_bit(i32 noundef 21, ptr noundef nonnull %13) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !295
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count.i, i32 noundef 4) #13
  %37 = ptrtoint ptr %b_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %b_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp31 = icmp slt i32 %38, 0
  br i1 %cmp31, label %if.then33, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.112, ptr noundef nonnull @__func__.remove_from_transaction, ptr noundef nonnull @.str.113) #13
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end25.if.end35_crit_edge
  %j_len = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 10
  %39 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %j_len, align 8
  %dec = add i32 %40, -1
  store i32 %dec, ptr %j_len, align 8
  %j_len_alloc = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 11
  %41 = ptrtoint ptr %j_len_alloc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %j_len_alloc, align 4
  %dec36 = add i32 %42, -1
  store i32 %dec36, ptr %j_len_alloc, align 4
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_journal.i, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef %sb, ptr noundef nonnull @.str.114) #13
  %j_cnode_used.i = getelementptr inbounds %struct.reiserfs_journal, ptr %46, i32 0, i32 26
  %47 = ptrtoint ptr %j_cnode_used.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %j_cnode_used.i, align 8
  %dec.i = add i32 %48, -1
  store i32 %dec.i, ptr %j_cnode_used.i, align 8
  %j_cnode_free.i = getelementptr inbounds %struct.reiserfs_journal, ptr %46, i32 0, i32 27
  %49 = ptrtoint ptr %j_cnode_free.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %j_cnode_free.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %j_cnode_free.i, align 4
  %j_cnode_free_list.i = getelementptr inbounds %struct.reiserfs_journal, ptr %46, i32 0, i32 33
  %51 = ptrtoint ptr %j_cnode_free_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %j_cnode_free_list.i, align 4
  %53 = ptrtoint ptr %next10 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %next10, align 4
  %54 = load ptr, ptr %j_cnode_free_list.i, align 4
  %tobool.not.i1 = icmp eq ptr %54, null
  br i1 %tobool.not.i1, label %if.end35.free_cnode.exit_crit_edge, label %if.then.i

if.end35.free_cnode.exit_crit_edge:               ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cnode.exit

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cn.017.i, ptr %prev.i, align 4
  br label %free_cnode.exit

free_cnode.exit:                                  ; preds = %if.then.i, %if.end35.free_cnode.exit_crit_edge
  %56 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %prev, align 4
  %57 = ptrtoint ptr %j_cnode_free_list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %cn.017.i, ptr %j_cnode_free_list.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_cnode.exit, %lor.lhs.false.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %free_cnode.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_buffer_page(ptr noundef %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !298

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !298

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.115) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !328
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #13
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and.i.i4.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.if.else_crit_edge

folio_flags.exit.i.i.if.else_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %8, i32 1, i32 3, i32 1) #13
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  %15 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.not.not = icmp eq i32 %15, 0
  br i1 %tobool1.not.not, label %if.then, label %trylock_page.exit.if.else_crit_edge

trylock_page.exit.if.else_crit_edge:              ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %trylock_page.exit
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %4, align 4
  %and.i.i15 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15)
  %tobool.not.i.i16 = icmp eq i32 %and.i.i15, 0
  br i1 %tobool.not.i.i16, label %if.end.i.i19, label %if.then.i.i18, !prof !298

if.then.i.i18:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i17 = add i32 %17, -1
  br label %_compound_head.exit.i21

if.end.i.i19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i21

_compound_head.exit.i21:                          ; preds = %if.end.i.i19, %if.then.i.i18
  %retval.0.i.i20 = phi i32 [ %sub.i.i17, %if.then.i.i18 ], [ %18, %if.end.i.i19 ]
  %19 = inttoptr i32 %retval.0.i.i20 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  %20 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %21, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !300

if.then.i1.i:                                     ; preds = %_compound_head.exit.i21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.117) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #13, !srcloc !329
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i21
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #13, !srcloc !297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@release_buffer_page, %if.then.i.i.i.i)) #13
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !330

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__page_ref_mod(ptr noundef %19, i32 noundef 1) #13
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !295
  %24 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mapping, align 4
  %tobool3.not = icmp eq ptr %25, null
  br i1 %tobool3.not, label %if.then4, label %get_page.exit.if.end_crit_edge

get_page.exit.if.end_crit_edge:                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then4:                                         ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 @try_to_free_buffers(ptr noundef %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then4, %get_page.exit.if.end_crit_edge
  tail call void @unlock_page(ptr noundef %1) #13
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %4, align 4
  %and.i.i22 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i26, label %if.then.i.i25, !prof !298

if.then.i.i25:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i24 = add i32 %27, -1
  br label %_compound_head.exit.i28

if.end.i.i26:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i28

_compound_head.exit.i28:                          ; preds = %if.end.i.i26, %if.then.i.i25
  %retval.0.i.i27 = phi i32 [ %sub.i.i24, %if.then.i.i25 ], [ %28, %if.end.i.i26 ]
  %29 = inttoptr i32 %retval.0.i.i27 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i29, label %do.end5.i.i.i.i, !prof !300

if.then.i.i.i.i29:                                ; preds = %_compound_head.exit.i28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.118) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !331
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i28
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !332
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !333
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@release_buffer_page, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !330

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end6_crit_edge

folio_put_testzero.exit.i.i.if.end6_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__put_page(ptr noundef %29) #13
  br label %if.end6

if.else:                                          ; preds = %trylock_page.exit.if.else_crit_edge, %folio_flags.exit.i.i.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i30 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i30, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i30, i32 1, i32 3, i32 1) #13
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i30, ptr %b_count.i30, i32 1, ptr elementtype(i32) %b_count.i30) #13, !srcloc !295
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end6_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @reiserfs_update_inode_transaction(ptr nocapture noundef %inode) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  %j_current_jl = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %j_current_jl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %j_current_jl, align 4
  %i_jl = getelementptr i8, ptr %inode, i32 -212
  %8 = ptrtoint ptr %i_jl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %i_jl, align 4
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %j_trans_id, align 4
  %i_trans_id = getelementptr i8, ptr %inode, i32 -216
  %11 = ptrtoint ptr %i_trans_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %i_trans_id, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reiserfs_commit_for_inode(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %th.i = alloca %struct.reiserfs_transaction_handle, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_trans_id = getelementptr i8, ptr %inode, i32 -216
  %0 = ptrtoint ptr %i_trans_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_trans_id, align 8
  %i_jl = getelementptr i8, ptr %inode, i32 -212
  %2 = ptrtoint ptr %i_jl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_jl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_journal.i, align 4
  %j_current_jl.i = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 35
  %10 = ptrtoint ptr %j_current_jl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %j_current_jl.i, align 4
  %12 = ptrtoint ptr %i_jl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %i_jl, align 4
  %j_trans_id.i = getelementptr inbounds %struct.reiserfs_journal, ptr %9, i32 0, i32 7
  %13 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_trans_id.i, align 4
  %15 = ptrtoint ptr %i_trans_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %i_trans_id, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %id.0 = phi i32 [ %14, %if.then ], [ %1, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %th.i) #13
  %16 = call ptr @memset(ptr %th.i, i32 255, i32 36)
  %i_sb.i14 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i14, align 4
  %s_fs_info.i.i15 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i15, align 16
  %s_journal.i16 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_journal.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_journal.i16, align 4
  %j_trans_id.i17 = getelementptr inbounds %struct.reiserfs_journal, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %j_trans_id.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %j_trans_id.i17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %id.0)
  %cmp.i = icmp eq i32 %24, %id.0
  br i1 %cmp.i, label %if.then.i, label %if.end.flush_commit_only.i_crit_edge

if.end.flush_commit_only.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_commit_only.i

if.then.i:                                        ; preds = %if.end
  %j_current_jl.i18 = getelementptr inbounds %struct.reiserfs_journal, ptr %22, i32 0, i32 35
  %25 = ptrtoint ptr %j_current_jl.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %j_current_jl.i18, align 4
  %j_bcount.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %22, i32 0, i32 13
  %27 = ptrtoint ptr %j_bcount.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %j_bcount.i.i, align 4
  %j_jlock.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %22, i32 0, i32 21
  %j_wcount.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %22, i32 0, i32 12
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end.i.i.while.cond.i.i_crit_edge, %if.then.i
  %bcount.0.i.i = phi i32 [ %28, %if.then.i ], [ %42, %if.end.i.i.while.cond.i.i_crit_edge ]
  %call1.i.i = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %18) #13
  %call2.i.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef %18, i32 noundef %call1.i.i) #13
  %29 = ptrtoint ptr %j_current_jl.i18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_current_jl.i18, align 4
  %j_state.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %j_state.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %j_state.i.i, align 4
  %or.i.i = or i32 %32, 4
  store i32 %or.i.i, ptr %j_state.i.i, align 4
  br label %while.cond3.i.i

while.cond3.i.i:                                  ; preds = %while.body7.i.i, %while.cond.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount.i.i, i32 noundef 4) #13
  %33 = ptrtoint ptr %j_wcount.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %j_wcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp sgt i32 %34, 0
  br i1 %cmp.i.i, label %while.cond3.i.i.land.rhs.i.i_crit_edge, label %lor.lhs.false.i.i

while.cond3.i.i.land.rhs.i.i_crit_edge:           ; preds = %while.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

lor.lhs.false.i.i:                                ; preds = %while.cond3.i.i
  %call.i.i27.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_jlock.i.i, i32 noundef 4) #13
  %35 = ptrtoint ptr %j_jlock.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %j_jlock.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i.while.end.i.i_crit_edge, label %lor.lhs.false.i.i.land.rhs.i.i_crit_edge

lor.lhs.false.i.i.land.rhs.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

lor.lhs.false.i.i.while.end.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false.i.i.land.rhs.i.i_crit_edge, %while.cond3.i.i.land.rhs.i.i_crit_edge
  %37 = ptrtoint ptr %j_trans_id.i17 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %j_trans_id.i17, align 4
  %cmp6.i.i = icmp eq i32 %38, %id.0
  br i1 %cmp6.i.i, label %while.body7.i.i, label %land.rhs.i.i.while.end.i.i_crit_edge

land.rhs.i.i.while.end.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body7.i.i:                                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @queue_log_writer(ptr noundef %18) #13
  br label %while.cond3.i.i

while.end.i.i:                                    ; preds = %land.rhs.i.i.while.end.i.i_crit_edge, %lor.lhs.false.i.i.while.end.i.i_crit_edge
  %39 = ptrtoint ptr %j_trans_id.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %j_trans_id.i17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %id.0)
  %cmp9.not.i.i = icmp eq i32 %40, %id.0
  br i1 %cmp9.not.i.i, label %if.end.i.i, label %while.end.i.i.flush_commit_only.i_crit_edge

while.end.i.i.flush_commit_only.i_crit_edge:      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_commit_only.i

if.end.i.i:                                       ; preds = %while.end.i.i
  %41 = ptrtoint ptr %j_bcount.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %j_bcount.i.i, align 4
  %cmp11.i.i = icmp eq i32 %bcount.0.i.i, %42
  br i1 %cmp11.i.i, label %if.end.i, label %if.end.i.i.while.cond.i.i_crit_edge

if.end.i.i.while.cond.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

if.end.i:                                         ; preds = %if.end.i.i
  %call4.i = call i32 @journal_begin(ptr noundef nonnull %th.i, ptr noundef %18, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.__commit_trans_jl.exit_crit_edge

if.end.i.__commit_trans_jl.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__commit_trans_jl.exit

if.end6.i:                                        ; preds = %if.end.i
  %43 = ptrtoint ptr %j_trans_id.i17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %j_trans_id.i17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %id.0)
  %cmp8.not.i = icmp eq i32 %44, %id.0
  br i1 %cmp8.not.i, label %if.end16.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %s_fs_info.i.i15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_fs_info.i.i15, align 16
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call11.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %18, ptr noundef %48, i32 noundef 1) #13
  %49 = ptrtoint ptr %s_fs_info.i.i15 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i.i15, align 16
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call14.i = call i32 @journal_mark_dirty(ptr noundef nonnull %th.i, ptr noundef %52) #13
  %call15.i = call i32 @journal_end(ptr noundef nonnull %th.i) #13
  br label %flush_commit_only.i

if.end16.i:                                       ; preds = %if.end6.i
  %53 = ptrtoint ptr %th.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %th.i, align 4
  %s_fs_info.i.i62.i = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i62.i, align 16
  %s_journal.i63.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %s_journal.i63.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_journal.i63.i, align 4
  %t_trans_id.i.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.i, i32 0, i32 4
  %59 = ptrtoint ptr %t_trans_id.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %t_trans_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i64.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i64.i, label %do.body4.i.i, label %do.body10.i.i, !prof !300

do.body4.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3528, 0\0A.popsection", ""() #13, !srcloc !323
  unreachable

do.body10.i.i:                                    ; preds = %if.end16.i
  %t_refcount.i.i = getelementptr inbounds %struct.reiserfs_transaction_handle, ptr %th.i, i32 0, i32 1
  %61 = ptrtoint ptr %t_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %t_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i65.i = icmp sgt i32 %62, 1
  br i1 %cmp.i65.i, label %do.body18.i.i, label %do.end26.i.i, !prof !300

do.body18.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3530, 0\0A.popsection", ""() #13, !srcloc !324
  unreachable

do.end26.i.i:                                     ; preds = %do.body10.i.i
  %j_len.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %58, i32 0, i32 10
  %63 = ptrtoint ptr %j_len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %j_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp27.i.i = icmp eq i32 %64, 0
  br i1 %cmp27.i.i, label %if.then28.i.i, label %do.end26.i.i.journal_end_sync.exit.i_crit_edge

do.end26.i.i.journal_end_sync.exit.i_crit_edge:   ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_end_sync.exit.i

if.then28.i.i:                                    ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %56, align 4
  %call30.i.i = call i32 @reiserfs_prepare_for_journal(ptr noundef %54, ptr noundef %66, i32 noundef 1) #13
  %67 = ptrtoint ptr %s_fs_info.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i.i62.i, align 16
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call33.i.i = call i32 @journal_mark_dirty(ptr noundef nonnull %th.i, ptr noundef %70) #13
  br label %journal_end_sync.exit.i

journal_end_sync.exit.i:                          ; preds = %if.then28.i.i, %do.end26.i.i.journal_end_sync.exit.i_crit_edge
  %call35.i.i = call fastcc i32 @do_journal_end(ptr noundef nonnull %th.i, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool18.not.i = icmp eq i32 %call35.i.i, 0
  %spec.store.select.i = select i1 %tobool18.not.i, i32 1, i32 %call35.i.i
  br label %__commit_trans_jl.exit

flush_commit_only.i:                              ; preds = %if.then9.i, %while.end.i.i.flush_commit_only.i_crit_edge, %if.end.flush_commit_only.i_crit_edge
  %jl.addr.0.i = phi ptr [ %26, %if.then9.i ], [ %3, %if.end.flush_commit_only.i_crit_edge ], [ %26, %while.end.i.i.flush_commit_only.i_crit_edge ]
  %ret.0.i = phi i32 [ %call15.i, %if.then9.i ], [ 0, %if.end.flush_commit_only.i_crit_edge ], [ 0, %while.end.i.i.flush_commit_only.i_crit_edge ]
  %71 = ptrtoint ptr %i_sb.i14 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb.i14, align 4
  %s_fs_info.i.i66.i = getelementptr inbounds %struct.super_block, ptr %72, i32 0, i32 33
  %73 = ptrtoint ptr %s_fs_info.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i.i66.i, align 16
  %s_journal.i67.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %s_journal.i67.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_journal.i67.i, align 4
  %j_journal_list.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %76, i32 0, i32 45
  %77 = ptrtoint ptr %j_journal_list.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %j_journal_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %78, %j_journal_list.i.i
  br i1 %cmp.i.not.i.i, label %flush_commit_only.i.__commit_trans_jl.exit_crit_edge, label %if.then.i.i

flush_commit_only.i.__commit_trans_jl.exit_crit_edge: ; preds = %flush_commit_only.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__commit_trans_jl.exit

if.then.i.i:                                      ; preds = %flush_commit_only.i
  %j_trans_id.i68.i = getelementptr i8, ptr %78, i32 -28
  %79 = ptrtoint ptr %j_trans_id.i68.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %j_trans_id.i68.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %id.0)
  %cmp.not.i.i = icmp ugt i32 %80, %id.0
  br i1 %cmp.not.i.i, label %if.then.i.i.__commit_trans_jl.exit_crit_edge, label %if.then24.i

if.then.i.i.__commit_trans_jl.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__commit_trans_jl.exit

if.then24.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %j_commit_left.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left.i, i32 noundef 4) #13
  %81 = ptrtoint ptr %j_commit_left.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %j_commit_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp26.i = icmp sgt i32 %82, 1
  %spec.select.i = select i1 %cmp26.i, i32 1, i32 %ret.0.i
  call fastcc void @flush_commit_list(ptr noundef %18, ptr noundef %jl.addr.0.i, i32 noundef 1) #13
  %j_errno.i = getelementptr inbounds %struct.reiserfs_journal, ptr %22, i32 0, i32 54
  %83 = ptrtoint ptr %j_errno.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %j_errno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool30.not.i = icmp eq i32 %84, 0
  %spec.select59.i = select i1 %tobool30.not.i, i32 %spec.select.i, i32 %84
  br label %__commit_trans_jl.exit

__commit_trans_jl.exit:                           ; preds = %if.then24.i, %if.then.i.i.__commit_trans_jl.exit_crit_edge, %flush_commit_only.i.__commit_trans_jl.exit_crit_edge, %journal_end_sync.exit.i, %if.end.i.__commit_trans_jl.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end.i.__commit_trans_jl.exit_crit_edge ], [ %spec.store.select.i, %journal_end_sync.exit.i ], [ %spec.select59.i, %if.then24.i ], [ %ret.0.i, %flush_commit_only.i.__commit_trans_jl.exit_crit_edge ], [ %ret.0.i, %if.then.i.i.__commit_trans_jl.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %th.i) #13
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_restore_prepared_buffer(ptr noundef %sb, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %restore_prepared = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 27, i32 32, i32 11
  %4 = ptrtoint ptr %restore_prepared to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %restore_prepared, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %restore_prepared, align 4
  %tobool.not = icmp eq ptr %bh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef nonnull %bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end15_crit_edge, label %if.then7

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then7:                                         ; preds = %land.lhs.true
  tail call void @reiserfs_write_lock(ptr noundef %sb) #13
  %j_list_hash_table = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 48
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %9 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %b_blocknr, align 8
  %conv = trunc i64 %10 to i32
  %11 = ptrtoint ptr %sb to i32
  %shr.i = lshr i32 %11, 7
  %shl.i = shl i32 %conv, 7
  %12 = lshr i32 %conv, 13
  %shl2.i = shl i32 %conv, 1
  %xor.i = xor i32 %12, %shr.i
  %xor3.i = xor i32 %xor.i, %shl.i
  %xor4.i = xor i32 %xor3.i, %shl2.i
  %and.i = and i32 %xor4.i, 8191
  %arrayidx.i = getelementptr ptr, ptr %j_list_hash_table, i32 %and.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cn.015.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not16.i = icmp eq ptr %cn.015.i, null
  br i1 %tobool.not16.i, label %if.then7.if.end14_crit_edge, label %if.then7.while.body.i_crit_edge

if.then7.while.body.i_crit_edge:                  ; preds = %if.then7
  br label %while.body.i

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then7.while.body.i_crit_edge
  %cn.017.i = phi ptr [ %cn.0.i, %if.end.i.while.body.i_crit_edge ], [ %cn.015.i, %if.then7.while.body.i_crit_edge ]
  %blocknr.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 2
  %14 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocknr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp.i = icmp eq i32 %15, %conv
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %sb5.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 1
  %16 = ptrtoint ptr %sb5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sb5.i, align 4
  %cmp6.i = icmp eq ptr %17, %sb
  br i1 %cmp6.i, label %land.lhs.true10, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %hnext.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.017.i, i32 0, i32 8
  %18 = ptrtoint ptr %hnext.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %cn.0.i = load ptr, ptr %hnext.i, align 4
  %tobool.not.i28 = icmp eq ptr %cn.0.i, null
  br i1 %tobool.not.i28, label %if.end.i.if.end14_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

land.lhs.true10:                                  ; preds = %land.lhs.true.i
  %call11 = tail call fastcc i32 @can_dirty(ptr noundef nonnull %cn.017.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.if.end14_crit_edge, label %if.then13

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %land.lhs.true10
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %bh, align 4
  %21 = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.set_buffer_journal_test.exit_crit_edge

if.then13.set_buffer_journal_test.exit_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_journal_test.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 21, ptr noundef nonnull %bh) #13
  br label %set_buffer_journal_test.exit

set_buffer_journal_test.exit:                     ; preds = %if.then.i, %if.then13.set_buffer_journal_test.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %bh) #13
  br label %if.end14

if.end14:                                         ; preds = %set_buffer_journal_test.exit, %land.lhs.true10.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge
  tail call void @reiserfs_write_unlock(ptr noundef %sb) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  tail call void @_clear_bit(i32 noundef 19, ptr noundef nonnull %bh) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @can_dirty(ptr nocapture noundef readonly %cn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sb1 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn, i32 0, i32 1
  %0 = ptrtoint ptr %sb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sb1, align 4
  %blocknr2 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn, i32 0, i32 2
  %2 = ptrtoint ptr %blocknr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocknr2, align 4
  %cur.0.in74 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn, i32 0, i32 7
  %4 = ptrtoint ptr %cur.0.in74 to i32
  call void @__asan_load4_noabort(i32 %4)
  %cur.075 = load ptr, ptr %cur.0.in74, align 4
  %tobool.not76 = icmp eq ptr %cur.075, null
  br i1 %tobool.not76, label %entry.while.cond15.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond15.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %if.end.while.cond15.preheader_crit_edge, %entry.while.cond15.preheader_crit_edge
  %can_dirty.0.lcssa = phi i32 [ 1, %entry.while.cond15.preheader_crit_edge ], [ %can_dirty.1, %if.end.while.cond15.preheader_crit_edge ]
  %cur.1.in78 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn, i32 0, i32 8
  %5 = ptrtoint ptr %cur.1.in78 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cur.179 = load ptr, ptr %cur.1.in78, align 4
  %tobool16.not80 = icmp eq ptr %cur.179, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_dirty.0.lcssa)
  %tobool18.not81 = icmp eq i32 %can_dirty.0.lcssa, 0
  %or.cond7182 = or i1 %tobool18.not81, %tobool16.not80
  br i1 %or.cond7182, label %while.cond15.preheader.while.end44_crit_edge, label %while.cond15.preheader.while.body20_crit_edge

while.cond15.preheader.while.body20_crit_edge:    ; preds = %while.cond15.preheader
  br label %while.body20

while.cond15.preheader.while.end44_crit_edge:     ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end44

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %cur.077 = phi ptr [ %cur.0, %if.end.while.body_crit_edge ], [ %cur.075, %entry.while.body_crit_edge ]
  %jlist = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.077, i32 0, i32 4
  %6 = ptrtoint ptr %jlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jlist, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = ptrtoint ptr %cur.077 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.077, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true6

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %blocknr7 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.077, i32 0, i32 2
  %10 = ptrtoint ptr %blocknr7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocknr7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.end_crit_edge, label %land.lhs.true9

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  %sb10 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.077, i32 0, i32 1
  %12 = ptrtoint ptr %sb10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sb10, align 4
  %cmp = icmp ne ptr %13, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp13 = icmp ne i32 %11, %3
  %or.cond70 = select i1 %cmp, i1 true, i1 %cmp13
  %spec.select = zext i1 %or.cond70 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true9, %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %can_dirty.1 = phi i32 [ 1, %land.lhs.true6.if.end_crit_edge ], [ 1, %land.lhs.true.if.end_crit_edge ], [ 1, %while.body.if.end_crit_edge ], [ %spec.select, %land.lhs.true9 ]
  %cur.0.in = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.077, i32 0, i32 7
  %14 = ptrtoint ptr %cur.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %cur.0 = load ptr, ptr %cur.0.in, align 4
  %tobool.not = icmp eq ptr %cur.0, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_dirty.1)
  %tobool3.not = icmp eq i32 %can_dirty.1, 0
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %if.end.while.cond15.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end.while.cond15.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond15.preheader

while.body20:                                     ; preds = %if.end42.while.body20_crit_edge, %while.cond15.preheader.while.body20_crit_edge
  %cur.183 = phi ptr [ %cur.1, %if.end42.while.body20_crit_edge ], [ %cur.179, %while.cond15.preheader.while.body20_crit_edge ]
  %jlist21 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.183, i32 0, i32 4
  %15 = ptrtoint ptr %jlist21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jlist21, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %while.body20.if.end42_crit_edge, label %land.lhs.true23

while.body20.if.end42_crit_edge:                  ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true23:                                  ; preds = %while.body20
  %j_len = getelementptr inbounds %struct.reiserfs_journal_list, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %j_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25.not = icmp eq i32 %18, 0
  br i1 %cmp25.not, label %land.lhs.true23.if.end42_crit_edge, label %land.lhs.true26

land.lhs.true23.if.end42_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %j_commit_left = getelementptr inbounds %struct.reiserfs_journal_list, ptr %16, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left, i32 noundef 4) #13
  %19 = ptrtoint ptr %j_commit_left to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %j_commit_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp28 = icmp sgt i32 %20, 0
  br i1 %cmp28, label %land.lhs.true29, label %land.lhs.true26.if.end42_crit_edge

land.lhs.true26.if.end42_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %21 = ptrtoint ptr %cur.183 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur.183, align 4
  %tobool31.not = icmp eq ptr %22, null
  br i1 %tobool31.not, label %land.lhs.true29.if.end42_crit_edge, label %land.lhs.true32

land.lhs.true29.if.end42_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %blocknr33 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.183, i32 0, i32 2
  %23 = ptrtoint ptr %blocknr33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blocknr33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool34.not = icmp eq i32 %24, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end42_crit_edge, label %land.lhs.true35

land.lhs.true32.if.end42_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true35:                                  ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  %sb36 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.183, i32 0, i32 1
  %25 = ptrtoint ptr %sb36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sb36, align 4
  %cmp37 = icmp ne ptr %26, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %3)
  %cmp40 = icmp ne i32 %24, %3
  %or.cond72 = select i1 %cmp37, i1 true, i1 %cmp40
  %spec.select73 = zext i1 %or.cond72 to i32
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32.if.end42_crit_edge, %land.lhs.true29.if.end42_crit_edge, %land.lhs.true26.if.end42_crit_edge, %land.lhs.true23.if.end42_crit_edge, %while.body20.if.end42_crit_edge
  %can_dirty.3 = phi i32 [ 1, %land.lhs.true32.if.end42_crit_edge ], [ 1, %land.lhs.true29.if.end42_crit_edge ], [ 1, %land.lhs.true26.if.end42_crit_edge ], [ 1, %land.lhs.true23.if.end42_crit_edge ], [ 1, %while.body20.if.end42_crit_edge ], [ %spec.select73, %land.lhs.true35 ]
  %cur.1.in = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.183, i32 0, i32 8
  %27 = ptrtoint ptr %cur.1.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %cur.1 = load ptr, ptr %cur.1.in, align 4
  %tobool16.not = icmp eq ptr %cur.1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_dirty.3)
  %tobool18.not = icmp eq i32 %can_dirty.3, 0
  %or.cond71 = or i1 %tobool18.not, %tobool16.not
  br i1 %or.cond71, label %if.end42.while.end44_crit_edge, label %if.end42.while.body20_crit_edge

if.end42.while.body20_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body20

if.end42.while.end44_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end44

while.end44:                                      ; preds = %if.end42.while.end44_crit_edge, %while.cond15.preheader.while.end44_crit_edge
  %can_dirty.2.lcssa = phi i32 [ %can_dirty.0.lcssa, %while.cond15.preheader.while.end44_crit_edge ], [ %can_dirty.3, %if.end42.while.end44_crit_edge ]
  ret i32 %can_dirty.2.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @reiserfs_abort_journal(ptr nocapture noundef %sb, i32 noundef %errno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %j_state = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %j_state, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %j_errno = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 54
  %7 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %j_errno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %j_errno to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %errno, ptr %j_errno, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %10 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %s_flags, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %j_state) #13
  tail call void @dump_stack() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_bitmap_list(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %jb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bitmaps = getelementptr inbounds %struct.reiserfs_list_bitmap, ptr %jb, i32 0, i32 1
  %0 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bitmaps, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i18 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_rs.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_rs.i18, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %sub.i19 = add i32 %8, -1
  %9 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize.i, align 16
  %mul.i20 = shl i32 %10, 3
  %div.i21 = udiv i32 %sub.i19, %mul.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %div.i21)
  %cmp123.not = icmp eq i32 %div.i21, -1
  br i1 %cmp123.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi ptr [ %36, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bitmaps, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.024
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_journal.i, align 4
  %j_used_bitmap_nodes.i = getelementptr inbounds %struct.reiserfs_journal, ptr %17, i32 0, i32 37
  %18 = ptrtoint ptr %j_used_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %j_used_bitmap_nodes.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %j_used_bitmap_nodes.i, align 4
  %j_free_bitmap_nodes.i = getelementptr inbounds %struct.reiserfs_journal, ptr %17, i32 0, i32 36
  %20 = ptrtoint ptr %j_free_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %j_free_bitmap_nodes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %21)
  %cmp.i = icmp sgt i32 %21, 100
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  %data.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %23) #13
  tail call void @kfree(ptr noundef nonnull %15) #13
  br label %free_bitmap_node.exit

if.else.i:                                        ; preds = %if.then3
  %list.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %15, i32 0, i32 2
  %j_bitmap_nodes.i = getelementptr inbounds %struct.reiserfs_journal, ptr %17, i32 0, i32 42
  %24 = ptrtoint ptr %j_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %j_bitmap_nodes.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %j_bitmap_nodes.i, ptr noundef %25) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_add.exit.i_crit_edge

if.else.i.list_add.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.reiserfs_bitmap_node, ptr %15, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %j_bitmap_nodes.i, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %j_bitmap_nodes.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list.i, ptr %j_bitmap_nodes.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i.list_add.exit.i_crit_edge
  %30 = ptrtoint ptr %j_free_bitmap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %j_free_bitmap_nodes.i, align 8
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %j_free_bitmap_nodes.i, align 8
  br label %free_bitmap_node.exit

free_bitmap_node.exit:                            ; preds = %list_add.exit.i, %if.then.i
  %32 = ptrtoint ptr %bitmaps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bitmaps, align 4
  %arrayidx7 = getelementptr ptr, ptr %33, i32 %i.024
  %34 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %free_bitmap_node.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.024, 1
  %35 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_rs.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %s_rs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_rs.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %38, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #13
  %sub.i = add i32 %41, -1
  %42 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %43, 3
  %div.i = udiv i32 %sub.i, %mul.i
  %add.i = add i32 %div.i, 1
  %cmp1 = icmp ult i32 %inc, %add.i
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_cancel_old_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_commit_list(ptr noundef %s, ptr noundef %jl, i32 noundef %flushall) unnamed_addr #0 align 64 {
entry:
  %tbh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tbh) #13
  %0 = ptrtoint ptr %tbh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tbh, align 4
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 7
  %1 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %j_trans_id, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_journal, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef %s, ptr noundef nonnull @.str.63) #13
  %j_older_commits_done = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_older_commits_done, i32 noundef 4) #13
  %7 = ptrtoint ptr %j_older_commits_done to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %j_older_commits_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %j_len = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 2
  %9 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %j_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %do.body6, label %do.body13, !prof !300

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 992, 0\0A.popsection", ""() #13, !srcloc !335
  unreachable

do.body13:                                        ; preds = %do.body
  %j_trans_id14 = getelementptr inbounds %struct.reiserfs_journal, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %j_trans_id14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %j_trans_id14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %12)
  %cmp15 = icmp eq i32 %2, %12
  br i1 %cmp15, label %do.body23, label %do.end31, !prof !300

do.body23:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 993, 0\0A.popsection", ""() #13, !srcloc !336
  unreachable

do.end31:                                         ; preds = %do.body13
  %j_refcount.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 17
  %13 = ptrtoint ptr %j_refcount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_refcount.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %j_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flushall)
  %tobool32.not = icmp eq i32 %flushall, 0
  br i1 %tobool32.not, label %do.end31.if.end38_crit_edge, label %if.then33

do.end31.if.end38_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then33:                                        ; preds = %do.end31
  %15 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_journal.i, align 4
  %19 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %j_trans_id, align 4
  %prev.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 13, i32 1
  %j_journal_list.i = getelementptr inbounds %struct.reiserfs_journal, ptr %18, i32 0, i32 45
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %entry1.0.i85110 = load ptr, ptr %prev.i, align 4
  %cmp.i87111 = icmp eq ptr %entry1.0.i85110, %j_journal_list.i
  br i1 %cmp.i87111, label %if.then33.if.end38_crit_edge, label %if.then33.lor.lhs.false.i.preheader_crit_edge

if.then33.lor.lhs.false.i.preheader_crit_edge:    ; preds = %if.then33
  br label %lor.lhs.false.i.preheader

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

lor.lhs.false.i.preheader:                        ; preds = %journal_list_still_alive.exit61.lor.lhs.false.i.preheader_crit_edge, %if.then33.lor.lhs.false.i.preheader_crit_edge
  %entry1.0.i85112 = phi ptr [ %entry1.0.i85, %journal_list_still_alive.exit61.lor.lhs.false.i.preheader_crit_edge ], [ %entry1.0.i85110, %if.then33.lor.lhs.false.i.preheader_crit_edge ]
  %j_older_commits_done.i105 = getelementptr i8, ptr %entry1.0.i85112, i32 -124
  %call.i.i.i106 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_older_commits_done.i105, i32 noundef 4) #13
  %22 = ptrtoint ptr %j_older_commits_done.i105 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %j_older_commits_done.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i107 = icmp eq i32 %23, 0
  br i1 %tobool.not.i107, label %lor.lhs.false.i.preheader.while.cond.i_crit_edge, label %lor.lhs.false.i.preheader.if.end38_crit_edge

lor.lhs.false.i.preheader.if.end38_crit_edge:     ; preds = %lor.lhs.false.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

lor.lhs.false.i.preheader.while.cond.i_crit_edge: ; preds = %lor.lhs.false.i.preheader
  br label %while.cond.i

while.cond.i:                                     ; preds = %lor.lhs.false.i.while.cond.i_crit_edge, %lor.lhs.false.i.preheader.while.cond.i_crit_edge
  %entry1.0.i89108 = phi ptr [ %entry1.0.i, %lor.lhs.false.i.while.cond.i_crit_edge ], [ %entry1.0.i85112, %lor.lhs.false.i.preheader.while.cond.i_crit_edge ]
  %prev4.i = getelementptr inbounds %struct.list_head, ptr %entry1.0.i89108, i32 0, i32 1
  %24 = ptrtoint ptr %prev4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %entry1.0.i = load ptr, ptr %prev4.i, align 4
  %cmp.i = icmp eq ptr %entry1.0.i, %j_journal_list.i
  br i1 %cmp.i, label %while.cond.i.while.end.i_crit_edge, label %lor.lhs.false.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  %j_older_commits_done.i = getelementptr i8, ptr %entry1.0.i, i32 -124
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_older_commits_done.i, i32 noundef 4) #13
  %25 = ptrtoint ptr %j_older_commits_done.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %j_older_commits_done.i, align 4
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.while.cond.i_crit_edge, label %lor.lhs.false.i.while.end.i_crit_edge

lor.lhs.false.i.while.end.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

lor.lhs.false.i.while.cond.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.end.i:                                      ; preds = %lor.lhs.false.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %add.ptr.i90.le = getelementptr i8, ptr %entry1.0.i89108, i32 -144
  %cmp5.i = icmp eq ptr %add.ptr.i90.le, %jl
  br i1 %cmp5.i, label %while.end.i.if.end38_crit_edge, label %while.end.i.while.cond9.i_crit_edge

while.end.i.while.cond9.i_crit_edge:              ; preds = %while.end.i
  br label %while.cond9.i

while.end.i.if.end38_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

while.cond9.i:                                    ; preds = %if.end29.i.while.cond9.i_crit_edge, %while.end.i.while.cond9.i_crit_edge
  %entry1.1.i = phi ptr [ %45, %if.end29.i.while.cond9.i_crit_edge ], [ %entry1.0.i89108, %while.end.i.while.cond9.i_crit_edge ]
  %add.ptr13.i = getelementptr i8, ptr %entry1.1.i, i32 -144
  %j_trans_id14.i = getelementptr i8, ptr %entry1.1.i, i32 -28
  %27 = ptrtoint ptr %j_trans_id14.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %j_trans_id14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %20)
  %cmp15.i = icmp ult i32 %28, %20
  br i1 %cmp15.i, label %if.then16.i, label %while.cond9.i.if.end38_crit_edge

while.cond9.i.if.end38_crit_edge:                 ; preds = %while.cond9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then16.i:                                      ; preds = %while.cond9.i
  %j_commit_left.i = getelementptr i8, ptr %entry1.1.i, i32 -128
  %call.i.i61.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left.i, i32 noundef 4) #13
  %29 = ptrtoint ptr %j_commit_left.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %j_commit_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp18.not.i = icmp eq i32 %30, 0
  br i1 %cmp18.not.i, label %if.then16.i.if.end29.i_crit_edge, label %if.then19.i

if.then16.i.if.end29.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then19.i:                                      ; preds = %if.then16.i
  tail call fastcc void @flush_commit_list(ptr noundef %s, ptr noundef %add.ptr13.i, i32 noundef 0) #13
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i63 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %s_journal.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_journal.i63, align 4
  %j_journal_list.i64 = getelementptr inbounds %struct.reiserfs_journal, ptr %34, i32 0, i32 45
  %35 = ptrtoint ptr %j_journal_list.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %j_journal_list.i64, align 4
  %cmp.i.not.i65 = icmp eq ptr %36, %j_journal_list.i64
  br i1 %cmp.i.not.i65, label %if.then19.i.put_jl_crit_edge, label %if.then.i68

if.then19.i.put_jl_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_jl

if.then.i68:                                      ; preds = %if.then19.i
  %j_trans_id.i66 = getelementptr i8, ptr %36, i32 -28
  %37 = ptrtoint ptr %j_trans_id.i66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %j_trans_id.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %20)
  %cmp.not.i67 = icmp ugt i32 %38, %20
  br i1 %cmp.not.i67, label %if.then.i68.put_jl_crit_edge, label %if.end24.i

if.then.i68.put_jl_crit_edge:                     ; preds = %if.then.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_jl

if.end24.i:                                       ; preds = %if.then.i68
  %39 = ptrtoint ptr %j_journal_list.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %j_journal_list.i64, align 4
  %cmp.i.not.i55 = icmp eq ptr %40, %j_journal_list.i64
  br i1 %cmp.i.not.i55, label %if.end24.i.journal_list_still_alive.exit61_crit_edge, label %if.then.i58

if.end24.i.journal_list_still_alive.exit61_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_list_still_alive.exit61

if.then.i58:                                      ; preds = %if.end24.i
  %j_trans_id.i56 = getelementptr i8, ptr %40, i32 -28
  %41 = ptrtoint ptr %j_trans_id.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %j_trans_id.i56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %28)
  %cmp.not.i57 = icmp ugt i32 %42, %28
  br i1 %cmp.not.i57, label %if.then.i58.journal_list_still_alive.exit61_crit_edge, label %if.then.i58.if.end29.i_crit_edge

if.then.i58.if.end29.i_crit_edge:                 ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i

if.then.i58.journal_list_still_alive.exit61_crit_edge: ; preds = %if.then.i58
  call void @__sanitizer_cov_trace_pc() #15
  br label %journal_list_still_alive.exit61

journal_list_still_alive.exit61:                  ; preds = %if.then.i58.journal_list_still_alive.exit61_crit_edge, %if.end24.i.journal_list_still_alive.exit61_crit_edge
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %entry1.0.i85 = load ptr, ptr %prev.i, align 4
  %cmp.i87 = icmp eq ptr %entry1.0.i85, %j_journal_list.i
  br i1 %cmp.i87, label %journal_list_still_alive.exit61.if.end38_crit_edge, label %journal_list_still_alive.exit61.lor.lhs.false.i.preheader_crit_edge

journal_list_still_alive.exit61.lor.lhs.false.i.preheader_crit_edge: ; preds = %journal_list_still_alive.exit61
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i.preheader

journal_list_still_alive.exit61.if.end38_crit_edge: ; preds = %journal_list_still_alive.exit61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end29.i:                                       ; preds = %if.then.i58.if.end29.i_crit_edge, %if.then16.i.if.end29.i_crit_edge
  %44 = ptrtoint ptr %entry1.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %entry1.1.i, align 4
  %cmp31.i = icmp eq ptr %45, %j_journal_list.i
  br i1 %cmp31.i, label %if.end29.i.if.end38_crit_edge, label %if.end29.i.while.cond9.i_crit_edge

if.end29.i.while.cond9.i_crit_edge:               ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond9.i

if.end29.i.if.end38_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end38:                                         ; preds = %if.end29.i.if.end38_crit_edge, %journal_list_still_alive.exit61.if.end38_crit_edge, %while.cond9.i.if.end38_crit_edge, %while.end.i.if.end38_crit_edge, %lor.lhs.false.i.preheader.if.end38_crit_edge, %if.then33.if.end38_crit_edge, %do.end31.if.end38_crit_edge
  %j_commit_mutex = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 6
  %call.i15 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  tail call void @mutex_lock_nested(ptr noundef %j_commit_mutex, i32 noundef 0) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call.i15) #13
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i16 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %s_journal.i16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_journal.i16, align 4
  %j_journal_list.i17 = getelementptr inbounds %struct.reiserfs_journal, ptr %49, i32 0, i32 45
  %50 = ptrtoint ptr %j_journal_list.i17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %j_journal_list.i17, align 4
  %cmp.i.not.i = icmp eq ptr %51, %j_journal_list.i17
  br i1 %cmp.i.not.i, label %if.end38.if.then41_crit_edge, label %if.then.i

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

if.then.i:                                        ; preds = %if.end38
  %j_trans_id.i18 = getelementptr i8, ptr %51, i32 -28
  %52 = ptrtoint ptr %j_trans_id.i18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %j_trans_id.i18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %2)
  %cmp.not.i = icmp ugt i32 %53, %2
  br i1 %cmp.not.i, label %if.then.i.if.then41_crit_edge, label %do.body44

if.then.i.if.then41_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

if.then41:                                        ; preds = %if.then.i.if.then41_crit_edge, %if.end38.if.then41_crit_edge
  tail call void @mutex_unlock(ptr noundef %j_commit_mutex) #13
  br label %put_jl

do.body44:                                        ; preds = %if.then.i
  %54 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %j_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp46 = icmp eq i32 %55, 0
  br i1 %cmp46, label %do.body54, label %do.end62, !prof !300

do.body54:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1013, 0\0A.popsection", ""() #13, !srcloc !337
  unreachable

do.end62:                                         ; preds = %do.body44
  %j_commit_left = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 4
  %call.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left, i32 noundef 4) #13
  %56 = ptrtoint ptr %j_commit_left to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %j_commit_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp64 = icmp slt i32 %57, 1
  br i1 %cmp64, label %if.then65, label %if.end71

if.then65:                                        ; preds = %do.end62
  br i1 %tobool32.not, label %if.then65.if.end69_crit_edge, label %if.then67

if.then65.if.end69_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then67:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_older_commits_done, i32 noundef 4) #13
  %58 = ptrtoint ptr %j_older_commits_done to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 1, ptr %j_older_commits_done, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.then65.if.end69_crit_edge
  tail call void @mutex_unlock(ptr noundef %j_commit_mutex) #13
  br label %put_jl

if.end71:                                         ; preds = %do.end62
  %j_bh_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 16
  %59 = ptrtoint ptr %j_bh_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %j_bh_list, align 4
  %cmp.i20.not = icmp eq ptr %60, %j_bh_list
  br i1 %cmp.i20.not, label %if.end71.do.body83_crit_edge, label %if.then74

if.end71.do.body83_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body83

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %call75 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  %j_dirty_buffers_lock = getelementptr inbounds %struct.reiserfs_journal, ptr %6, i32 0, i32 44
  %call77 = tail call fastcc i32 @write_ordered_buffers(ptr noundef %j_dirty_buffers_lock, ptr noundef %6, ptr noundef %j_bh_list)
  %61 = tail call i32 @llvm.smin.i32(i32 %call77, i32 0)
  tail call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call75) #13
  br label %do.body83

do.body83:                                        ; preds = %if.then74, %if.end71.do.body83_crit_edge
  %retval1.1 = phi i32 [ 0, %if.end71.do.body83_crit_edge ], [ %61, %if.then74 ]
  %62 = ptrtoint ptr %j_bh_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %j_bh_list, align 4
  %cmp.i21.not = icmp eq ptr %63, %j_bh_list
  br i1 %cmp.i21.not, label %do.end104, label %do.body96, !prof !298

do.body96:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1038, 0\0A.popsection", ""() #13, !srcloc !338
  unreachable

do.end104:                                        ; preds = %do.body83
  %j_async_throttle = getelementptr inbounds %struct.reiserfs_journal, ptr %6, i32 0, i32 57
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_async_throttle, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %j_async_throttle, i32 1, i32 3, i32 1) #13
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_async_throttle, ptr %j_async_throttle, i32 1, ptr elementtype(i32) %j_async_throttle) #13, !srcloc !297
  %65 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %j_len, align 8
  %add = add i32 %66, 1
  %67 = tail call i32 @llvm.smax.i32(i32 %add, i32 256)
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end104
  %i.094 = phi i32 [ 0, %do.end104 ], [ %inc, %for.inc.for.body_crit_edge ]
  %68 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_rs, align 4
  %s_journal111 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %s_journal111 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %s_journal111, align 1
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %jl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %jl, align 8
  %add112 = add i32 %76, %i.094
  %jp_journal_size = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %71, i32 0, i32 3, i32 2
  %77 = ptrtoint ptr %jp_journal_size to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %jp_journal_size, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  %rem = urem i32 %add112, %79
  %add117 = add i32 %rem, %74
  %s_journal119 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %69, i32 0, i32 3
  %80 = ptrtoint ptr %s_journal119 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_journal119, align 4
  %j_dev_bd = getelementptr inbounds %struct.reiserfs_journal, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %j_dev_bd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %j_dev_bd, align 4
  %conv = zext i32 %add117 to i64
  %84 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %s_blocksize, align 16
  %call120 = call ptr @__find_get_block(ptr noundef %83, i64 noundef %conv, i32 noundef %85) #13
  %86 = ptrtoint ptr %tbh to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call120, ptr %tbh, align 4
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %for.body.for.inc_crit_edge, label %if.then122

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then122:                                       ; preds = %for.body
  %87 = ptrtoint ptr %call120 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %call120, align 4
  %89 = and i32 %88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool124.not = icmp eq i32 %89, 0
  br i1 %tobool124.not, label %if.then122.if.end127_crit_edge, label %if.then125

if.then122.if.end127_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then125:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  %call126 = call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  call void @ll_rw_block(i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %tbh) #13
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call126) #13
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.then122.if.end127_crit_edge
  %90 = ptrtoint ptr %tbh to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tbh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %91, i32 0, i32 11
  %call.i.i.i26 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %92 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !295
  br label %for.inc

for.inc:                                          ; preds = %if.end127, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.094, 1
  %exitcond.not = icmp eq i32 %inc, %67
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call.i.i4 = call zeroext i1 @__kasan_check_write(ptr noundef %j_async_throttle, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !332
  call void @llvm.prefetch.p0(ptr %j_async_throttle, i32 1, i32 3, i32 1) #13
  %93 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_async_throttle, ptr %j_async_throttle, i32 1, ptr elementtype(i32) %j_async_throttle) #13, !srcloc !333
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %93, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then131, label %for.end.if.end133_crit_edge

for.end.if.end133_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133

if.then131:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @wake_up_var(ptr noundef %j_async_throttle) #13
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %for.end.if.end133_crit_edge
  %94 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %j_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp13796.not = icmp eq i32 %95, -1
  br i1 %cmp13796.not, label %if.end133.do.body183_crit_edge, label %if.end133.for.body139_crit_edge

if.end133.for.body139_crit_edge:                  ; preds = %if.end133
  br label %for.body139

if.end133.do.body183_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body183

for.body139:                                      ; preds = %if.end178.for.body139_crit_edge, %if.end133.for.body139_crit_edge
  %retval1.298 = phi i32 [ %retval1.3, %if.end178.for.body139_crit_edge ], [ %retval1.1, %if.end133.for.body139_crit_edge ]
  %i.197 = phi i32 [ %inc181, %if.end178.for.body139_crit_edge ], [ 0, %if.end133.for.body139_crit_edge ]
  %96 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs141 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %s_rs141 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_rs141, align 4
  %s_journal143 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %s_journal143 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %s_journal143, align 1
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  %103 = ptrtoint ptr %jl to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %jl, align 8
  %add146 = add i32 %104, %i.197
  %jp_journal_size151 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %99, i32 0, i32 3, i32 2
  %105 = ptrtoint ptr %jp_journal_size151 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %jp_journal_size151, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  %rem152 = urem i32 %add146, %107
  %add153 = add i32 %rem152, %102
  %s_journal155 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %97, i32 0, i32 3
  %108 = ptrtoint ptr %s_journal155 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_journal155, align 4
  %j_dev_bd156 = getelementptr inbounds %struct.reiserfs_journal, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %j_dev_bd156 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %j_dev_bd156, align 4
  %conv157 = zext i32 %add153 to i64
  %112 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_blocksize, align 16
  %call159 = call ptr @__find_get_block(ptr noundef %111, i64 noundef %conv157, i32 noundef %113) #13
  %114 = ptrtoint ptr %tbh to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call159, ptr %tbh, align 4
  %call160 = call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  %115 = ptrtoint ptr %tbh to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tbh, align 4
  call void @__wait_on_buffer(ptr noundef %116) #13
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call160) #13
  %117 = ptrtoint ptr %tbh to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tbh, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %118, align 4
  %121 = and i32 %120, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool162.not = icmp eq i32 %121, 0
  br i1 %tobool162.not, label %for.body139.if.end166_crit_edge, label %if.then163

for.body139.if.end166_crit_edge:                  ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end166

if.then163:                                       ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #15
  %call164 = call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  %122 = ptrtoint ptr %tbh to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tbh, align 4
  %call165 = call i32 @sync_dirty_buffer(ptr noundef %123) #13
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call164) #13
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %for.body139.if.end166_crit_edge
  %124 = ptrtoint ptr %tbh to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tbh, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  %and1.i.i7 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i7)
  %tobool168.not = icmp eq i32 %and1.i.i7, 0
  br i1 %tobool168.not, label %if.then177, label %if.end166.if.end178_crit_edge, !prof !300

if.end166.if.end178_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end178

if.then177:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.65) #13
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %if.end166.if.end178_crit_edge
  %retval1.3 = phi i32 [ -5, %if.then177 ], [ %retval1.298, %if.end166.if.end178_crit_edge ]
  %128 = ptrtoint ptr %tbh to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tbh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i30 = getelementptr inbounds %struct.buffer_head, ptr %129, i32 0, i32 11
  %call.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i30, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i30, i32 1, i32 3, i32 1) #13
  %130 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i30, ptr %b_count.i30, i32 1, ptr elementtype(i32) %b_count.i30) #13, !srcloc !295
  %131 = ptrtoint ptr %tbh to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tbh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i32 = getelementptr inbounds %struct.buffer_head, ptr %132, i32 0, i32 11
  %call.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i32, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i32, i32 1, i32 3, i32 1) #13
  %133 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i32, ptr %b_count.i32, i32 1, ptr elementtype(i32) %b_count.i32) #13, !srcloc !295
  %call.i.i8 = call zeroext i1 @__kasan_check_write(ptr noundef %j_commit_left, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %j_commit_left, i32 1, i32 3, i32 1) #13
  %134 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_commit_left, ptr %j_commit_left, i32 1, ptr elementtype(i32) %j_commit_left) #13, !srcloc !295
  %inc181 = add nuw i32 %i.197, 1
  %135 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %j_len, align 8
  %add136 = add i32 %136, 1
  %cmp137 = icmp ult i32 %inc181, %add136
  br i1 %cmp137, label %if.end178.for.body139_crit_edge, label %if.end178.do.body183_crit_edge

if.end178.do.body183_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body183

if.end178.for.body139_crit_edge:                  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body139

do.body183:                                       ; preds = %if.end178.do.body183_crit_edge, %if.end133.do.body183_crit_edge
  %retval1.2.lcssa = phi i32 [ %retval1.1, %if.end133.do.body183_crit_edge ], [ %retval1.3, %if.end178.do.body183_crit_edge ]
  %call.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left, i32 noundef 4) #13
  %137 = ptrtoint ptr %j_commit_left to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %j_commit_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp186.not = icmp eq i32 %138, 1
  br i1 %cmp186.not, label %do.end203, label %do.body195, !prof !298

do.body195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1098, 0\0A.popsection", ""() #13, !srcloc !339
  unreachable

do.end203:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.2.lcssa)
  %tobool204.not = icmp eq i32 %retval1.2.lcssa, 0
  br i1 %tobool204.not, label %land.rhs, label %do.end203.if.end242_crit_edge, !prof !298

do.end203.if.end242_crit_edge:                    ; preds = %do.end203
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

land.rhs:                                         ; preds = %do.end203
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal, ptr %6, i32 0, i32 6
  %139 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %j_state.i, align 4
  %141 = and i32 %140, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool206.not = icmp eq i32 %141, 0
  br i1 %tobool206.not, label %if.then221, label %land.rhs.if.end242_crit_edge, !prof !298

land.rhs.if.end242_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end242

if.then221:                                       ; preds = %land.rhs
  %j_commit_bh = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 10
  %142 = ptrtoint ptr %j_commit_bh to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %j_commit_bh, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %143, align 4
  %146 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool223.not = icmp eq i32 %146, 0
  br i1 %tobool223.not, label %if.end231, label %do.body225

do.body225:                                       ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1108, 0\0A.popsection", ""() #13, !srcloc !340
  unreachable

if.end231:                                        ; preds = %if.then221
  call void @mark_buffer_dirty(ptr noundef %143) #13
  %call233 = call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  %147 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %148, i32 0, i32 11
  %149 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %150, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool235.not = icmp eq i32 %and, 0
  %151 = ptrtoint ptr %j_commit_bh to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %j_commit_bh, align 4
  br i1 %tobool235.not, label %if.else, label %if.then236

if.then236:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #15
  %call238 = call i32 @__sync_dirty_buffer(ptr noundef %152, i32 noundef 395264) #13
  br label %if.end241

if.else:                                          ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #15
  %call240 = call i32 @sync_dirty_buffer(ptr noundef %152) #13
  br label %if.end241

if.end241:                                        ; preds = %if.else, %if.then236
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call233) #13
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %land.rhs.if.end242_crit_edge, %do.end203.if.end242_crit_edge
  %j_commit_bh243 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 10
  %153 = ptrtoint ptr %j_commit_bh243 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %j_commit_bh243, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %154, align 4
  %and1.i.i12 = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i12)
  %tobool245.not = icmp eq i32 %and1.i.i12, 0
  br i1 %tobool245.not, label %if.then254, label %if.end242.if.end255_crit_edge, !prof !300

if.end242.if.end255_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end255

if.then254:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.65) #13
  %157 = ptrtoint ptr %j_commit_bh243 to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr = load ptr, ptr %j_commit_bh243, align 4
  br label %if.end255

if.end255:                                        ; preds = %if.then254, %if.end242.if.end255_crit_edge
  %158 = phi ptr [ %.pr, %if.then254 ], [ %154, %if.end242.if.end255_crit_edge ]
  %retval1.4 = phi i32 [ -5, %if.then254 ], [ %retval1.2.lcssa, %if.end242.if.end255_crit_edge ]
  %tobool.not.i37 = icmp eq ptr %158, null
  br i1 %tobool.not.i37, label %if.end255.bforget.exit_crit_edge, label %if.then.i38

if.end255.bforget.exit_crit_edge:                 ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #15
  br label %bforget.exit

if.then.i38:                                      ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #15
  call void @__bforget(ptr noundef nonnull %158) #13
  br label %bforget.exit

bforget.exit:                                     ; preds = %if.then.i38, %if.end255.bforget.exit_crit_edge
  %j_last_commit_id = getelementptr inbounds %struct.reiserfs_journal, ptr %6, i32 0, i32 41
  %159 = ptrtoint ptr %j_last_commit_id to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %j_last_commit_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp257.not = icmp eq i32 %160, 0
  br i1 %cmp257.not, label %bforget.exit.if.end267_crit_edge, label %land.lhs.true259

bforget.exit.if.end267_crit_edge:                 ; preds = %bforget.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end267

land.lhs.true259:                                 ; preds = %bforget.exit
  %161 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %j_trans_id, align 4
  %sub = sub i32 %162, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp262.not = icmp eq i32 %sub, 1
  br i1 %cmp262.not, label %land.lhs.true259.if.end267_crit_edge, label %if.then264

land.lhs.true259.if.end267_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end267

if.then264:                                       ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.68, i32 noundef %160, i32 noundef %162) #13
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %land.lhs.true259.if.end267_crit_edge, %bforget.exit.if.end267_crit_edge
  %163 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %j_trans_id, align 4
  %165 = ptrtoint ptr %j_last_commit_id to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %j_last_commit_id, align 4
  %j_list_bitmap.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 9
  %166 = ptrtoint ptr %j_list_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %j_list_bitmap.i, align 8
  %tobool.not.i40 = icmp eq ptr %167, null
  br i1 %tobool.not.i40, label %if.end267.cleanup_freed_for_journal_list.exit_crit_edge, label %if.then.i41

if.end267.cleanup_freed_for_journal_list.exit_crit_edge: ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup_freed_for_journal_list.exit

if.then.i41:                                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @cleanup_bitmap_list(ptr noundef %s, ptr noundef nonnull %167) #13
  br label %cleanup_freed_for_journal_list.exit

cleanup_freed_for_journal_list.exit:              ; preds = %if.then.i41, %if.end267.cleanup_freed_for_journal_list.exit_crit_edge
  %168 = ptrtoint ptr %j_list_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %j_list_bitmap.i, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %169, align 4
  store ptr null, ptr %j_list_bitmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.4)
  %tobool270.not = icmp eq i32 %retval1.4, 0
  br i1 %tobool270.not, label %cond.end, label %cleanup_freed_for_journal_list.exit.if.end273_crit_edge

cleanup_freed_for_journal_list.exit.if.end273_crit_edge: ; preds = %cleanup_freed_for_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

cond.end:                                         ; preds = %cleanup_freed_for_journal_list.exit
  %j_errno = getelementptr inbounds %struct.reiserfs_journal, ptr %6, i32 0, i32 54
  %171 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %j_errno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool271.not = icmp eq i32 %172, 0
  br i1 %tobool271.not, label %if.then272, label %cond.end.if.end273_crit_edge

cond.end.if.end273_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

if.then272:                                       ; preds = %cond.end
  %j_state.i43 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 1
  %173 = ptrtoint ptr %j_state.i43 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %j_state.i43, align 4
  %or.i = or i32 %174, 2
  store i32 %or.i, ptr %j_state.i43, align 4
  %j_realblock.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 11
  %175 = ptrtoint ptr %j_realblock.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %cn.08.i = load ptr, ptr %j_realblock.i, align 4
  %tobool.not9.i = icmp eq ptr %cn.08.i, null
  br i1 %tobool.not9.i, label %if.then272.if.end273_crit_edge, label %if.then272.while.body.i_crit_edge

if.then272.while.body.i_crit_edge:                ; preds = %if.then272
  br label %while.body.i

if.then272.if.end273_crit_edge:                   ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

while.body.i:                                     ; preds = %if.end30.i.while.body.i_crit_edge, %if.then272.while.body.i_crit_edge
  %cn.010.i = phi ptr [ %cn.0.i, %if.end30.i.while.body.i_crit_edge ], [ %cn.08.i, %if.then272.while.body.i_crit_edge ]
  %sb1.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.010.i, i32 0, i32 1
  %176 = ptrtoint ptr %sb1.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sb1.i.i, align 4
  %blocknr2.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.010.i, i32 0, i32 2
  %178 = ptrtoint ptr %blocknr2.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %blocknr2.i.i, align 4
  %cn.addr.0.in19.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.010.i, i32 0, i32 7
  %180 = ptrtoint ptr %cn.addr.0.in19.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %cn.addr.020.i.i = load ptr, ptr %cn.addr.0.in19.i.i, align 4
  %tobool.not21.i.i = icmp eq ptr %cn.addr.020.i.i, null
  br i1 %tobool.not21.i.i, label %while.body.i.land.lhs.true.i_crit_edge, label %while.body.i.while.body.i.i_crit_edge

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.land.lhs.true.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %cn.addr.022.i.i = phi ptr [ %cn.addr.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %cn.addr.020.i.i, %while.body.i.while.body.i.i_crit_edge ]
  %sb3.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i.i, i32 0, i32 1
  %181 = ptrtoint ptr %sb3.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sb3.i.i, align 4
  %cmp.i.i44 = icmp eq ptr %182, %177
  br i1 %cmp.i.i44, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %blocknr4.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i.i, i32 0, i32 2
  %183 = ptrtoint ptr %blocknr4.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %blocknr4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %179)
  %cmp5.i.i = icmp eq i32 %184, %179
  br i1 %cmp5.i.i, label %land.lhs.true6.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %jlist.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i.i, i32 0, i32 4
  %185 = ptrtoint ptr %jlist.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %jlist.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %186, null
  br i1 %tobool7.not.i.i, label %land.lhs.true6.i.i.if.end.i.i_crit_edge, label %land.lhs.true6.i.i.if.end30.i_crit_edge

land.lhs.true6.i.i.if.end30.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.lhs.true6.i.i.if.end.i.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true6.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %cn.addr.0.in.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i.i, i32 0, i32 7
  %187 = ptrtoint ptr %cn.addr.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %cn.addr.0.i.i = load ptr, ptr %cn.addr.0.in.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %cn.addr.0.i.i, null
  br i1 %tobool.not.i5.i, label %if.end.i.i.land.lhs.true.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

if.end.i.i.land.lhs.true.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i.i.land.lhs.true.i_crit_edge, %while.body.i.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool2.not.i = icmp eq i32 %179, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end30.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %188 = ptrtoint ptr %cn.010.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cn.010.i, align 4
  %tobool4.not.i = icmp eq ptr %189, null
  br i1 %tobool4.not.i, label %land.lhs.true3.i.if.end30.i_crit_edge, label %land.lhs.true5.i

land.lhs.true3.i.if.end30.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true3.i
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %189, align 4
  %192 = and i32 %191, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool8.not.i = icmp eq i32 %192, 0
  br i1 %tobool8.not.i, label %land.lhs.true5.i.if.end30.i_crit_edge, label %do.body.i

land.lhs.true5.i.if.end30.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

do.body.i:                                        ; preds = %land.lhs.true5.i
  %call9.i = call fastcc i32 @can_dirty(ptr noundef nonnull %cn.010.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body15.i, label %do.end20.i, !prof !300

do.body15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1697, 0\0A.popsection", ""() #13, !srcloc !341
  unreachable

do.end20.i:                                       ; preds = %do.body.i
  %193 = ptrtoint ptr %cn.010.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cn.010.i, align 4
  call void @_clear_bit(i32 noundef 18, ptr noundef %194) #13
  %195 = ptrtoint ptr %cn.010.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cn.010.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %196, align 4
  %199 = and i32 %198, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool24.not.i = icmp eq i32 %199, 0
  %200 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile i32, ptr %196, align 4
  br i1 %tobool24.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %do.end20.i
  %202 = and i32 %201, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool.not.i.i = icmp eq i32 %202, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then25.i.if.end30.i_crit_edge

if.then25.i.if.end30.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then.i.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 20, ptr noundef %196) #13
  br label %if.end30.i

if.else.i:                                        ; preds = %do.end20.i
  %203 = and i32 %201, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i3.i = icmp eq i32 %203, 0
  br i1 %tobool.not.i3.i, label %if.then.i4.i, label %if.else.i.set_buffer_journal_test.exit.i_crit_edge

if.else.i.set_buffer_journal_test.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_journal_test.exit.i

if.then.i4.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef 21, ptr noundef %196) #13
  br label %set_buffer_journal_test.exit.i

set_buffer_journal_test.exit.i:                   ; preds = %if.then.i4.i, %if.else.i.set_buffer_journal_test.exit.i_crit_edge
  %204 = ptrtoint ptr %cn.010.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cn.010.i, align 4
  call void @mark_buffer_dirty(ptr noundef %205) #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %set_buffer_journal_test.exit.i, %if.then.i.i, %if.then25.i.if.end30.i_crit_edge, %land.lhs.true5.i.if.end30.i_crit_edge, %land.lhs.true3.i.if.end30.i_crit_edge, %land.lhs.true.i.if.end30.i_crit_edge, %land.lhs.true6.i.i.if.end30.i_crit_edge
  %next.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.010.i, i32 0, i32 5
  %206 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %cn.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i45 = icmp eq ptr %cn.0.i, null
  br i1 %tobool.not.i45, label %if.end30.i.if.end273_crit_edge, label %if.end30.i.while.body.i_crit_edge

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end30.i.if.end273_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end273

if.end273:                                        ; preds = %if.end30.i.if.end273_crit_edge, %if.then272.if.end273_crit_edge, %cond.end.if.end273_crit_edge, %cleanup_freed_for_journal_list.exit.if.end273_crit_edge
  %cond83 = phi i32 [ %172, %cond.end.if.end273_crit_edge ], [ 0, %if.then272.if.end273_crit_edge ], [ %retval1.4, %cleanup_freed_for_journal_list.exit.if.end273_crit_edge ], [ 0, %if.end30.i.if.end273_crit_edge ]
  %call.i.i13 = call zeroext i1 @__kasan_check_write(ptr noundef %j_commit_left, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %j_commit_left, i32 1, i32 3, i32 1) #13
  %207 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_commit_left, ptr %j_commit_left, i32 1, ptr elementtype(i32) %j_commit_left) #13, !srcloc !295
  br i1 %tobool32.not, label %if.end273.if.end278_crit_edge, label %if.then276

if.end273.if.end278_crit_edge:                    ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end278

if.then276:                                       ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i14 = call zeroext i1 @__kasan_check_write(ptr noundef %j_older_commits_done, i32 noundef 4) #13
  %208 = ptrtoint ptr %j_older_commits_done to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile i32 1, ptr %j_older_commits_done, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then276, %if.end273.if.end278_crit_edge
  call void @mutex_unlock(ptr noundef %j_commit_mutex) #13
  br label %put_jl

put_jl:                                           ; preds = %if.end278, %if.end69, %if.then41, %if.then.i68.put_jl_crit_edge, %if.then19.i.put_jl_crit_edge
  %retval1.5 = phi i32 [ 0, %if.end69 ], [ %cond83, %if.end278 ], [ 0, %if.then41 ], [ 0, %if.then19.i.put_jl_crit_edge ], [ 0, %if.then.i68.put_jl_crit_edge ]
  %209 = ptrtoint ptr %j_refcount.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %j_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %210)
  %cmp.i48 = icmp slt i32 %210, 1
  br i1 %cmp.i48, label %if.then.i50, label %if.end.i51

if.then.i50:                                      ; preds = %put_jl
  call void @__sanitizer_cov_trace_pc() #15
  %211 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %j_trans_id, align 4
  call void @__asan_handle_no_return()
  call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.put_journal_list, ptr noundef nonnull @.str.72, i32 noundef %212, i32 noundef %210) #18
  unreachable

if.end.i51:                                       ; preds = %put_jl
  %dec.i = add nsw i32 %210, -1
  %213 = ptrtoint ptr %j_refcount.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %dec.i, ptr %j_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i51.put_journal_list.exit_crit_edge

if.end.i51.put_journal_list.exit_crit_edge:       ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_journal_list.exit

if.then4.i:                                       ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %jl) #13
  br label %put_journal_list.exit

put_journal_list.exit:                            ; preds = %if.then4.i, %if.end.i51.put_journal_list.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.5)
  %tobool280.not = icmp eq i32 %retval1.5, 0
  br i1 %tobool280.not, label %put_journal_list.exit.cleanup_crit_edge, label %if.then281

put_journal_list.exit.cleanup_crit_edge:          ; preds = %put_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then281:                                       ; preds = %put_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, ptr, ...) @reiserfs_abort(ptr noundef %s, i32 noundef %retval1.5, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.63) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then281, %put_journal_list.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tbh) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_check_lock_depth(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reiserfs_write_unlock_nested(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_ordered_buffers(ptr noundef %lock, ptr nocapture noundef readonly %j, ptr noundef %list) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %chunk = alloca %struct.buffer_chunk, align 4
  %tmp = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #13
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !342
  %j_errno = getelementptr inbounds %struct.reiserfs_journal, ptr %j, i32 0, i32 54
  %1 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %j_errno, align 8
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %chunk) #13
  %3 = call ptr @memset(ptr %chunk, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #13
  %4 = getelementptr inbounds %struct.list_head, ptr %tmp, i32 0, i32 1
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %tmp, ptr %tmp, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tmp, ptr %4, align 4
  %nr = getelementptr inbounds %struct.buffer_chunk, ptr %chunk, i32 0, i32 1
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %nr, align 4
  call void @_raw_spin_lock(ptr noundef %lock) #13
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %list, align 4
  %cmp.i.not94 = icmp eq ptr %9, %list
  br i1 %cmp.i.not94, label %entry.if.end33_crit_edge, label %while.body.lr.ph

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

while.body.lr.ph:                                 ; preds = %entry
  %tobool13.not.i = icmp eq ptr %lock, null
  br label %while.body

while.body:                                       ; preds = %loop_next.while.body_crit_edge, %while.body.lr.ph
  %10 = phi ptr [ %9, %while.body.lr.ph ], [ %101, %loop_next.while.body_crit_edge ]
  %ret.095 = phi i32 [ %2, %while.body.lr.ph ], [ %ret.2, %loop_next.while.body_crit_edge ]
  %bh2 = getelementptr i8, ptr %10, i32 -4
  %11 = ptrtoint ptr %bh2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh2, align 4
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %bh, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !297
  %call.i.i.i11 = call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef 4) #13
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %12, align 4
  %and.i.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

trylock_buffer.exit:                              ; preds = %while.body
  call void @llvm.prefetch.p0(ptr %12, i32 1, i32 3, i32 1) #13
  %17 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 4, ptr elementtype(i32) %12) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  %18 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not.not = icmp eq i32 %18, 0
  br i1 %tobool4.not.not, label %if.end15, label %trylock_buffer.exit.if.then_crit_edge

trylock_buffer.exit.if.then_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %trylock_buffer.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool6.not = icmp eq i32 %23, 0
  br i1 %tobool6.not, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then7.__list_del_entry.exit.i_crit_edge

if.then7.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then7.__list_del_entry.exit.i_crit_edge
  %30 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tmp, align 4
  %call.i.i.i12 = call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef nonnull %tmp, ptr noundef %31) #13
  br i1 %call.i.i.i12, label %if.end.i.i.i13, label %__list_del_entry.exit.i.loop_next_crit_edge

__list_del_entry.exit.i.loop_next_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loop_next

if.end.i.i.i13:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %10, ptr %prev1.i.i2.i, align 4
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %10, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tmp, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %10, ptr %tmp, align 4
  br label %loop_next

if.end:                                           ; preds = %if.then
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  %36 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool10.not = icmp eq i32 %37, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp7.i = icmp sgt i32 %37, 0
  br i1 %cmp7.i, label %if.then11.for.body.i_crit_edge, label %if.then11.write_ordered_chunk.exit_crit_edge

if.then11.write_ordered_chunk.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_ordered_chunk.exit

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

for.body.i:                                       ; preds = %submit_ordered_buffer.exit.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %submit_ordered_buffer.exit.i.for.body.i_crit_edge ], [ 0, %if.then11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [32 x ptr], ptr %chunk, i32 0, i32 %i.08.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #13
  %40 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #13, !srcloc !297
  %b_end_io.i.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 7
  %41 = ptrtoint ptr %b_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @reiserfs_end_ordered_io, ptr %b_end_io.i.i, align 4
  call void @_clear_bit(i32 noundef 1, ptr noundef %39) #13
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %39, align 4
  %and1.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %submit_ordered_buffer.exit.i

do.body.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !343
  unreachable

submit_ordered_buffer.exit.i:                     ; preds = %for.body.i
  %call3.i.i = call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %39) #13
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %37
  br i1 %exitcond.not, label %submit_ordered_buffer.exit.i.write_ordered_chunk.exit_crit_edge, label %submit_ordered_buffer.exit.i.for.body.i_crit_edge

submit_ordered_buffer.exit.i.for.body.i_crit_edge: ; preds = %submit_ordered_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

submit_ordered_buffer.exit.i.write_ordered_chunk.exit_crit_edge: ; preds = %submit_ordered_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_ordered_chunk.exit

write_ordered_chunk.exit:                         ; preds = %submit_ordered_buffer.exit.i.write_ordered_chunk.exit_crit_edge, %if.then11.write_ordered_chunk.exit_crit_edge
  %44 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %nr, align 4
  br label %if.end12

if.end12:                                         ; preds = %write_ordered_chunk.exit, %if.end.if.end12_crit_edge
  %45 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 354) #13
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.end12.wait_on_buffer.exit_crit_edge, label %if.then.i

if.end12.wait_on_buffer.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void @__wait_on_buffer(ptr noundef %46) #13
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %if.end12.wait_on_buffer.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.31, i32 noundef 817, i32 noundef 0) #13
  %call.i = call i32 @__cond_resched() #13
  call void @_raw_spin_lock(ptr noundef %lock) #13
  br label %loop_next

if.end15:                                         ; preds = %trylock_buffer.exit
  %50 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and1.i.i1 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1)
  %tobool17.not = icmp eq i32 %and1.i.i1, 0
  br i1 %tobool17.not, label %land.lhs.true, label %if.end15.if.end21_crit_edge

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end15
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %51, align 4
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool19.not = icmp eq i32 %56, 0
  br i1 %tobool19.not, label %land.lhs.true.if.end21_crit_edge, label %if.then20

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  call void @_clear_bit(i32 noundef 1, ptr noundef %51) #13
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %ret.1 = phi i32 [ %ret.095, %if.end15.if.end21_crit_edge ], [ -5, %if.then20 ], [ %ret.095, %land.lhs.true.if.end21_crit_edge ]
  %57 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %61 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool23.not = icmp eq i32 %61, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end21
  %call.i.i15 = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #13
  br i1 %call.i.i15, label %if.end.i.i18, label %if.then24.__list_del_entry.exit.i20_crit_edge

if.then24.__list_del_entry.exit.i20_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i20

if.end.i.i18:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i16 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i16, align 4
  %64 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %10, align 4
  %prev1.i.i.i17 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i17, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i20

__list_del_entry.exit.i20:                        ; preds = %if.end.i.i18, %if.then24.__list_del_entry.exit.i20_crit_edge
  %68 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tmp, align 4
  %call.i.i.i19 = call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef nonnull %tmp, ptr noundef %69) #13
  br i1 %call.i.i.i19, label %if.end.i.i.i23, label %__list_del_entry.exit.i20.list_move.exit24_crit_edge

__list_del_entry.exit.i20.list_move.exit24_crit_edge: ; preds = %__list_del_entry.exit.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move.exit24

if.end.i.i.i23:                                   ; preds = %__list_del_entry.exit.i20
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i21 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i2.i21 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %10, ptr %prev1.i.i2.i21, align 4
  %71 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %10, align 4
  %prev3.i.i.i22 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %tmp, ptr %prev3.i.i.i22, align 4
  %73 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %10, ptr %tmp, align 4
  br label %list_move.exit24

list_move.exit24:                                 ; preds = %if.end.i.i.i23, %__list_del_entry.exit.i20.list_move.exit24_crit_edge
  %74 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %75)
  %cmp.i26 = icmp sgt i32 %75, 31
  br i1 %cmp.i26, label %do.body2.i, label %do.end7.i, !prof !300

do.body2.i:                                       ; preds = %list_move.exit24
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 694, 0\0A.popsection", ""() #13, !srcloc !344
  unreachable

do.end7.i:                                        ; preds = %list_move.exit24
  %76 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bh, align 4
  %inc.i27 = add nsw i32 %75, 1
  %78 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %inc.i27, ptr %nr, align 4
  %arrayidx.i28 = getelementptr [32 x ptr], ptr %chunk, i32 0, i32 %75
  %79 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %arrayidx.i28, align 4
  %80 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %80)
  %cmp11.i = icmp sgt i32 %80, 31
  br i1 %cmp11.i, label %if.then12.i, label %do.end7.i.loop_next_crit_edge

do.end7.i.loop_next_crit_edge:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %loop_next

if.then12.i:                                      ; preds = %do.end7.i
  br i1 %tobool13.not.i, label %if.then12.i.for.body.i65_crit_edge, label %if.then14.i

if.then12.i.for.body.i65_crit_edge:               ; preds = %if.then12.i
  br label %for.body.i65

if.then14.i:                                      ; preds = %if.then12.i
  call void @_raw_spin_unlock(ptr noundef nonnull %lock) #13
  br label %for.body.i81

for.body.i81:                                     ; preds = %submit_ordered_buffer.exit.i86.for.body.i81_crit_edge, %if.then14.i
  %i.08.i74 = phi i32 [ %inc.i84, %submit_ordered_buffer.exit.i86.for.body.i81_crit_edge ], [ 0, %if.then14.i ]
  %arrayidx.i75 = getelementptr [32 x ptr], ptr %chunk, i32 0, i32 %i.08.i74
  %81 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i75, align 4
  %b_count.i.i.i76 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 11
  %call.i.i.i.i.i77 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i76, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i76, i32 1, i32 3, i32 1) #13
  %83 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i76, ptr %b_count.i.i.i76, i32 1, ptr elementtype(i32) %b_count.i.i.i76) #13, !srcloc !297
  %b_end_io.i.i78 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 7
  %84 = ptrtoint ptr %b_end_io.i.i78 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @reiserfs_end_ordered_io, ptr %b_end_io.i.i78, align 4
  call void @_clear_bit(i32 noundef 1, ptr noundef %82) #13
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %82, align 4
  %and1.i.i.i.i79 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i79)
  %tobool.not.i.i80 = icmp eq i32 %and1.i.i.i.i79, 0
  br i1 %tobool.not.i.i80, label %do.body.i.i82, label %submit_ordered_buffer.exit.i86

do.body.i.i82:                                    ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !343
  unreachable

submit_ordered_buffer.exit.i86:                   ; preds = %for.body.i81
  %call3.i.i83 = call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %82) #13
  %inc.i84 = add nuw nsw i32 %i.08.i74, 1
  %exitcond99.not = icmp eq i32 %inc.i84, %80
  br i1 %exitcond99.not, label %write_ordered_chunk.exit87, label %submit_ordered_buffer.exit.i86.for.body.i81_crit_edge

submit_ordered_buffer.exit.i86.for.body.i81_crit_edge: ; preds = %submit_ordered_buffer.exit.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i81

write_ordered_chunk.exit87:                       ; preds = %submit_ordered_buffer.exit.i86
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %nr, align 4
  call void @_raw_spin_lock(ptr noundef nonnull %lock) #13
  br label %loop_next

for.body.i65:                                     ; preds = %submit_ordered_buffer.exit.i70.for.body.i65_crit_edge, %if.then12.i.for.body.i65_crit_edge
  %i.08.i58 = phi i32 [ %inc.i68, %submit_ordered_buffer.exit.i70.for.body.i65_crit_edge ], [ 0, %if.then12.i.for.body.i65_crit_edge ]
  %arrayidx.i59 = getelementptr [32 x ptr], ptr %chunk, i32 0, i32 %i.08.i58
  %88 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i59, align 4
  %b_count.i.i.i60 = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 11
  %call.i.i.i.i.i61 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i60, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i60, i32 1, i32 3, i32 1) #13
  %90 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i60, ptr %b_count.i.i.i60, i32 1, ptr elementtype(i32) %b_count.i.i.i60) #13, !srcloc !297
  %b_end_io.i.i62 = getelementptr inbounds %struct.buffer_head, ptr %89, i32 0, i32 7
  %91 = ptrtoint ptr %b_end_io.i.i62 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @reiserfs_end_ordered_io, ptr %b_end_io.i.i62, align 4
  call void @_clear_bit(i32 noundef 1, ptr noundef %89) #13
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %89, align 4
  %and1.i.i.i.i63 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and1.i.i.i.i63, 0
  br i1 %tobool.not.i.i64, label %do.body.i.i66, label %submit_ordered_buffer.exit.i70

do.body.i.i66:                                    ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !343
  unreachable

submit_ordered_buffer.exit.i70:                   ; preds = %for.body.i65
  %call3.i.i67 = call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %89) #13
  %inc.i68 = add nuw nsw i32 %i.08.i58, 1
  %exitcond100.not = icmp eq i32 %inc.i68, %80
  br i1 %exitcond100.not, label %write_ordered_chunk.exit71, label %submit_ordered_buffer.exit.i70.for.body.i65_crit_edge

submit_ordered_buffer.exit.i70.for.body.i65_crit_edge: ; preds = %submit_ordered_buffer.exit.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i65

write_ordered_chunk.exit71:                       ; preds = %submit_ordered_buffer.exit.i70
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %nr, align 4
  br label %loop_next

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  call void @reiserfs_free_jh(ptr noundef %58)
  %95 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bh, align 4
  call void @unlock_buffer(ptr noundef %96) #13
  br label %loop_next

loop_next:                                        ; preds = %if.else, %write_ordered_chunk.exit71, %write_ordered_chunk.exit87, %do.end7.i.loop_next_crit_edge, %wait_on_buffer.exit, %if.end.i.i.i13, %__list_del_entry.exit.i.loop_next_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.else ], [ %ret.095, %wait_on_buffer.exit ], [ %ret.095, %__list_del_entry.exit.i.loop_next_crit_edge ], [ %ret.095, %if.end.i.i.i13 ], [ %ret.1, %do.end7.i.loop_next_crit_edge ], [ %ret.1, %write_ordered_chunk.exit87 ], [ %ret.1, %write_ordered_chunk.exit71 ]
  %97 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i29 = getelementptr inbounds %struct.buffer_head, ptr %98, i32 0, i32 11
  %call.i.i.i30 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i29, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i29, i32 1, i32 3, i32 1) #13
  %99 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i29, ptr %b_count.i29, i32 1, ptr elementtype(i32) %b_count.i29) #13, !srcloc !295
  call void @__might_resched(ptr noundef nonnull @.str.31, i32 noundef 839, i32 noundef 1) #13
  %call29 = call i32 @__cond_resched_lock(ptr noundef %lock) #13
  %100 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %101, %list
  br i1 %cmp.i.not, label %while.end, label %loop_next.while.body_crit_edge

loop_next.while.body_crit_edge:                   ; preds = %loop_next
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %loop_next
  %102 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool31.not = icmp eq i32 %.pr, 0
  br i1 %tobool31.not, label %while.end.if.end33_crit_edge, label %if.then32

while.end.if.end33_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then32:                                        ; preds = %while.end
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp7.i32 = icmp sgt i32 %.pr, 0
  br i1 %cmp7.i32, label %if.then32.for.body.i40_crit_edge, label %if.then32.write_ordered_chunk.exit46_crit_edge

if.then32.write_ordered_chunk.exit46_crit_edge:   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_ordered_chunk.exit46

if.then32.for.body.i40_crit_edge:                 ; preds = %if.then32
  br label %for.body.i40

for.body.i40:                                     ; preds = %submit_ordered_buffer.exit.i45.for.body.i40_crit_edge, %if.then32.for.body.i40_crit_edge
  %i.08.i33 = phi i32 [ %inc.i43, %submit_ordered_buffer.exit.i45.for.body.i40_crit_edge ], [ 0, %if.then32.for.body.i40_crit_edge ]
  %arrayidx.i34 = getelementptr [32 x ptr], ptr %chunk, i32 0, i32 %i.08.i33
  %103 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i34, align 4
  %b_count.i.i.i35 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 11
  %call.i.i.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i35, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i35, i32 1, i32 3, i32 1) #13
  %105 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i35, ptr %b_count.i.i.i35, i32 1, ptr elementtype(i32) %b_count.i.i.i35) #13, !srcloc !297
  %b_end_io.i.i37 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 7
  %106 = ptrtoint ptr %b_end_io.i.i37 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @reiserfs_end_ordered_io, ptr %b_end_io.i.i37, align 4
  call void @_clear_bit(i32 noundef 1, ptr noundef %104) #13
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %104, align 4
  %and1.i.i.i.i38 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i38)
  %tobool.not.i.i39 = icmp eq i32 %and1.i.i.i.i38, 0
  br i1 %tobool.not.i.i39, label %do.body.i.i41, label %submit_ordered_buffer.exit.i45

do.body.i.i41:                                    ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 662, 0\0A.popsection", ""() #13, !srcloc !343
  unreachable

submit_ordered_buffer.exit.i45:                   ; preds = %for.body.i40
  %call3.i.i42 = call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %104) #13
  %inc.i43 = add nuw nsw i32 %i.08.i33, 1
  %exitcond101.not = icmp eq i32 %inc.i43, %.pr
  br i1 %exitcond101.not, label %submit_ordered_buffer.exit.i45.write_ordered_chunk.exit46_crit_edge, label %submit_ordered_buffer.exit.i45.for.body.i40_crit_edge

submit_ordered_buffer.exit.i45.for.body.i40_crit_edge: ; preds = %submit_ordered_buffer.exit.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i40

submit_ordered_buffer.exit.i45.write_ordered_chunk.exit46_crit_edge: ; preds = %submit_ordered_buffer.exit.i45
  call void @__sanitizer_cov_trace_pc() #15
  br label %write_ordered_chunk.exit46

write_ordered_chunk.exit46:                       ; preds = %submit_ordered_buffer.exit.i45.write_ordered_chunk.exit46_crit_edge, %if.then32.write_ordered_chunk.exit46_crit_edge
  %109 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %nr, align 4
  call void @_raw_spin_lock(ptr noundef %lock) #13
  br label %if.end33

if.end33:                                         ; preds = %write_ordered_chunk.exit46, %while.end.if.end33_crit_edge, %entry.if.end33_crit_edge
  %ret.0.lcssa104 = phi i32 [ %ret.2, %write_ordered_chunk.exit46 ], [ %ret.2, %while.end.if.end33_crit_edge ], [ %2, %entry.if.end33_crit_edge ]
  %110 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %tmp, align 4
  %cmp.i47.not96 = icmp eq ptr %111, %tmp
  br i1 %cmp.i47.not96, label %if.end33.while.end61_crit_edge, label %if.end33.while.body38_crit_edge

if.end33.while.body38_crit_edge:                  ; preds = %if.end33
  br label %while.body38

if.end33.while.end61_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end61

while.body38:                                     ; preds = %if.end58.while.body38_crit_edge, %if.end33.while.body38_crit_edge
  %ret.397 = phi i32 [ %spec.select, %if.end58.while.body38_crit_edge ], [ %ret.0.lcssa104, %if.end33.while.body38_crit_edge ]
  %112 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %4, align 4
  %bh42 = getelementptr i8, ptr %113, i32 -4
  %114 = ptrtoint ptr %bh42 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bh42, align 4
  %116 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %bh, align 4
  %b_count.i49 = getelementptr inbounds %struct.buffer_head, ptr %115, i32 0, i32 11
  %call.i.i.i50 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i49, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i49, i32 1, i32 3, i32 1) #13
  %117 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i49, ptr %b_count.i49, i32 1, ptr elementtype(i32) %b_count.i49) #13, !srcloc !297
  %118 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bh, align 4
  call void @reiserfs_free_jh(ptr noundef %119)
  %120 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bh, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %121, align 4
  %124 = and i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool44.not = icmp eq i32 %124, 0
  br i1 %tobool44.not, label %while.body38.if.end46_crit_edge, label %if.then45

while.body38.if.end46_crit_edge:                  ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then45:                                        ; preds = %while.body38
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  %125 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 354) #13
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %126, align 4
  %129 = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i51 = icmp eq i32 %129, 0
  br i1 %tobool.not.i51, label %if.then45.wait_on_buffer.exit53_crit_edge, label %if.then.i52

if.then45.wait_on_buffer.exit53_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %wait_on_buffer.exit53

if.then.i52:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  call void @__wait_on_buffer(ptr noundef %126) #13
  br label %wait_on_buffer.exit53

wait_on_buffer.exit53:                            ; preds = %if.then.i52, %if.then45.wait_on_buffer.exit53_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #13
  br label %if.end46

if.end46:                                         ; preds = %wait_on_buffer.exit53, %while.body38.if.end46_crit_edge
  %130 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bh, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %131, align 4
  %and1.i.i8 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i8)
  %tobool48.not = icmp eq i32 %and1.i.i8, 0
  %spec.select = select i1 %tobool48.not, i32 -5, i32 %ret.397
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %131, align 4
  %136 = and i32 %135, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool52.not = icmp eq i32 %136, 0
  br i1 %tobool52.not, label %if.end46.if.end58_crit_edge, label %land.lhs.true53

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

land.lhs.true53:                                  ; preds = %if.end46
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %131, i32 0, i32 2
  %137 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %b_page, align 8
  %mapping = getelementptr inbounds %struct.page, ptr %138, i32 0, i32 1, i32 0, i32 1
  %139 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mapping, align 4
  %cmp = icmp eq ptr %140, null
  br i1 %cmp, label %if.then57, label %land.lhs.true53.if.end58_crit_edge, !prof !300

land.lhs.true53.if.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then57:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @ll_rw_block(i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bh) #13
  call void @_raw_spin_lock(ptr noundef %lock) #13
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %land.lhs.true53.if.end58_crit_edge, %if.end46.if.end58_crit_edge
  %141 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bh, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i54 = getelementptr inbounds %struct.buffer_head, ptr %142, i32 0, i32 11
  %call.i.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i54, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %b_count.i54, i32 1, i32 3, i32 1) #13
  %143 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i54, ptr %b_count.i54, i32 1, ptr elementtype(i32) %b_count.i54) #13, !srcloc !295
  call void @__might_resched(ptr noundef nonnull @.str.31, i32 noundef 875, i32 noundef 1) #13
  %call60 = call i32 @__cond_resched_lock(ptr noundef %lock) #13
  %144 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %tmp, align 4
  %cmp.i47.not = icmp eq ptr %145, %tmp
  br i1 %cmp.i47.not, label %if.end58.while.end61_crit_edge, label %if.end58.while.body38_crit_edge

if.end58.while.body38_crit_edge:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body38

if.end58.while.end61_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end61

while.end61:                                      ; preds = %if.end58.while.end61_crit_edge, %if.end33.while.end61_crit_edge
  %ret.3.lcssa = phi i32 [ %ret.0.lcssa104, %if.end33.while.end61_crit_edge ], [ %spec.select, %if.end58.while.end61_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %chunk) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #13
  ret i32 %ret.3.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_write_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_get_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sync_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_end_ordered_io(ptr noundef %bh, i32 noundef %uptodate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uptodate)
  %tobool.not = icmp eq i32 %uptodate, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  tail call void @unlock_buffer(ptr noundef %bh) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !295
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_debug(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @journal_transaction_is_valid(ptr noundef %sb, ptr noundef readonly %d_bh, ptr noundef %oldest_invalid_trans_id, ptr noundef readonly %newest_mount_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %d_bh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %d_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %j_len = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %j_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %d_bh, i32 0, i32 4
  %4 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %b_size, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %5
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -12
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr2, ptr noundef nonnull dereferenceable(8) @.str.82, i32 8) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  %tobool5.not = icmp eq ptr %oldest_invalid_trans_id, null
  br i1 %tobool5.not, label %if.then4.if.end12_crit_edge, label %land.lhs.true6

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true6:                                   ; preds = %if.then4
  %6 = ptrtoint ptr %oldest_invalid_trans_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oldest_invalid_trans_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end12_crit_edge, label %land.lhs.true8

land.lhs.true6.if.end12_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp9 = icmp ugt i32 %10, %7
  br i1 %cmp9, label %if.then10, label %land.lhs.true8.if.end12_crit_edge

land.lhs.true8.if.end12_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.83, i32 noundef %10, i32 noundef %7) #13
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true8.if.end12_crit_edge, %land.lhs.true6.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %newest_mount_id, null
  br i1 %tobool13.not, label %if.end12.if.end18_crit_edge, label %land.lhs.true14

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.end12
  %11 = ptrtoint ptr %newest_mount_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %newest_mount_id, align 4
  %j_mount_id = getelementptr inbounds %struct.reiserfs_journal_desc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %j_mount_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %j_mount_id, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp15 = icmp ugt i32 %12, %15
  br i1 %cmp15, label %if.then16, label %land.lhs.true14.if.end18_crit_edge

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.84, i32 noundef %15, i32 noundef %12) #13
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true14.if.end18_crit_edge, %if.end12.if.end18_crit_edge
  %16 = tail call i32 @llvm.bswap.i32(i32 %3)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_journal, align 4
  %j_trans_max = getelementptr inbounds %struct.reiserfs_journal, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %j_trans_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %22)
  %cmp21 = icmp ugt i32 %16, %22
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.85, ptr noundef nonnull @__func__.journal_transaction_is_valid, ptr noundef nonnull @.str.86, i32 noundef %16) #13
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %d_bh, i32 0, i32 3
  %23 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %b_blocknr, align 8
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_rs, align 4
  %s_journal26 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %s_journal26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %s_journal26, align 1
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = trunc i64 %24 to i32
  %j_dev_bd = getelementptr inbounds %struct.reiserfs_journal, ptr %20, i32 0, i32 3
  %31 = ptrtoint ptr %j_dev_bd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %j_dev_bd, align 4
  %conv27 = add i32 %16, 1
  %add = add i32 %conv27, %30
  %add36 = sub i32 %add, %29
  %jp_journal_size = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %26, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %jp_journal_size to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %jp_journal_size, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %rem = urem i32 %add36, %35
  %add41 = add i32 %rem, %29
  %conv42 = zext i32 %add41 to i64
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %36 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %32, i64 noundef %conv42, i32 noundef %37, i32 noundef 8) #13
  %tobool44.not = icmp eq ptr %call.i, null
  br i1 %tobool44.not, label %if.end24.cleanup_crit_edge, label %if.end46

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %if.end24
  %b_data47 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %b_data47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_data47, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp.not.i = icmp eq i32 %41, %43
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end46.brelse.exit_crit_edge

if.end46.brelse.exit_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

lor.lhs.false.i:                                  ; preds = %if.end46
  %j_len.i = getelementptr inbounds %struct.reiserfs_journal_commit, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %j_len.i, align 4
  %46 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %j_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp3.not.i = icmp eq i32 %45, %47
  br i1 %cmp3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.brelse.exit_crit_edge

lor.lhs.false.i.brelse.exit_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #13
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_journal.i, align 4
  %j_trans_max.i = getelementptr inbounds %struct.reiserfs_journal, ptr %52, i32 0, i32 28
  %53 = ptrtoint ptr %j_trans_max.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %j_trans_max.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %54)
  %cmp6.i = icmp ugt i32 %48, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp9.i.not = icmp eq i32 %45, 0
  %or.cond = select i1 %cmp6.i, i1 true, i1 %cmp9.i.not
  br i1 %or.cond, label %lor.lhs.false4.i.brelse.exit_crit_edge, label %brelse.exit134

lor.lhs.false4.i.brelse.exit_crit_edge:           ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %brelse.exit

brelse.exit:                                      ; preds = %lor.lhs.false4.i.brelse.exit_crit_edge, %lor.lhs.false.i.brelse.exit_crit_edge, %if.end46.brelse.exit_crit_edge
  %b_blocknr51 = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 3
  %55 = ptrtoint ptr %b_blocknr51 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %b_blocknr51, align 8
  %57 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs53 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %s_rs53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_rs53, align 4
  %s_journal55 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %s_journal55 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %s_journal55, align 1
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %conv57 = zext i32 %63 to i64
  %sub58 = sub i64 %56, %conv57
  %64 = tail call i32 @llvm.bswap.i32(i32 %41)
  %j_len60 = getelementptr inbounds %struct.reiserfs_journal_commit, ptr %39, i32 0, i32 1
  %65 = ptrtoint ptr %j_len60 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %j_len60, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  tail call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.87, i64 noundef %sub58, i32 noundef %64, i32 noundef %67) #13
  tail call void @__brelse(ptr noundef nonnull %call.i) #13
  br i1 %tobool5.not, label %brelse.exit.cleanup_crit_edge, label %if.then62

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then62:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #15
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %1, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %oldest_invalid_trans_id to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %oldest_invalid_trans_id, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %1, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.88, i32 noundef %74) #13
  br label %cleanup

brelse.exit134:                                   ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__brelse(ptr noundef nonnull %call.i) #13
  %75 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %b_blocknr, align 8
  %77 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs69 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %s_rs69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_rs69, align 4
  %s_journal71 = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %s_journal71 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %s_journal71, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %conv73 = zext i32 %83 to i64
  %sub74 = sub i64 %76, %conv73
  %84 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %j_len, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %1, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void (ptr, i32, ptr, ...) @reiserfs_debug(ptr noundef %sb, i32 noundef 5, ptr noundef nonnull @.str.89, i64 noundef %sub74, i32 noundef %86, i32 noundef %89) #13
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit134, %if.then62, %brelse.exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then22, %if.then16, %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -1, %if.then16 ], [ -1, %if.then22 ], [ 1, %brelse.exit134 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ -1, %if.then62 ], [ -1, %brelse.exit.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_update_journal_header_block(ptr noundef %sb, i32 noundef %offset, i32 noundef %trans_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %j_state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !298

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %j_last_flush_trans_id = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %j_last_flush_trans_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %j_last_flush_trans_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %trans_id)
  %cmp.not = icmp ugt i32 %8, %trans_id
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %j_header_bh = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %j_header_bh, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.then4.if.end23_crit_edge, label %if.then7

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then7:                                         ; preds = %if.then4
  %call8 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #13
  %14 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %j_header_bh, align 8
  tail call void @__wait_on_buffer(ptr noundef %15) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %call8) #13
  %16 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %j_header_bh, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and1.i.i72 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i72)
  %tobool12.not = icmp eq i32 %and1.i.i72, 0
  br i1 %tobool12.not, label %if.then21, label %if.then7.if.end23_crit_edge, !prof !300

if.then7.if.end23_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then21:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.107, ptr noundef nonnull @__func__._update_journal_header_block, ptr noundef nonnull @.str.65) #13
  br label %cleanup

if.end23:                                         ; preds = %if.then7.if.end23_crit_edge, %if.then4.if.end23_crit_edge
  %20 = ptrtoint ptr %j_last_flush_trans_id to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %trans_id, ptr %j_last_flush_trans_id, align 4
  %j_first_unflushed_offset = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %j_first_unflushed_offset to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %offset, ptr %j_first_unflushed_offset, align 8
  %22 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %j_header_bh, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %trans_id)
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %25, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %offset)
  %j_first_unflushed_offset27 = getelementptr inbounds %struct.reiserfs_journal_header, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %j_first_unflushed_offset27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %j_first_unflushed_offset27, align 4
  %j_mount_id = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %j_mount_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %j_mount_id, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %j_mount_id28 = getelementptr inbounds %struct.reiserfs_journal_header, ptr %25, i32 0, i32 2
  %33 = ptrtoint ptr %j_mount_id28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %j_mount_id28, align 4
  %34 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %j_header_bh, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end23.set_buffer_dirty.exit_crit_edge

if.end23.set_buffer_dirty.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_buffer_dirty.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 1, ptr noundef %35) #13
  br label %set_buffer_dirty.exit

set_buffer_dirty.exit:                            ; preds = %if.then.i, %if.end23.set_buffer_dirty.exit_crit_edge
  %call30 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %sb) #13
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %42, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  %43 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %j_header_bh, align 8
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %set_buffer_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 @__sync_dirty_buffer(ptr noundef %44, i32 noundef 395264) #13
  br label %if.end38

if.else:                                          ; preds = %set_buffer_dirty.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call i32 @sync_dirty_buffer(ptr noundef %44) #13
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then33
  tail call void @reiserfs_write_lock_nested(ptr noundef %sb, i32 noundef %call30) #13
  %45 = ptrtoint ptr %j_header_bh to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %j_header_bh, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and1.i.i73 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i73)
  %tobool41.not = icmp eq i32 %and1.i.i73, 0
  br i1 %tobool41.not, label %if.then42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %sb, ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__._update_journal_header_block, ptr noundef nonnull @.str.109) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end38.cleanup_crit_edge, %if.then21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then21 ], [ -5, %if.then42 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_log_writer(ptr noundef %s) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #13
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %2 = getelementptr inbounds i8, ptr %wait, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_journal, align 4
  %j_state = getelementptr inbounds %struct.reiserfs_journal, ptr %7, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %j_state) #13
  %8 = tail call i32 @llvm.read_register.i32(metadata !283) #13
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %wait, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @default_wake_function, ptr %1, align 4
  %j_join_wait = getelementptr inbounds %struct.reiserfs_journal, ptr %7, i32 0, i32 20
  call void @add_wait_queue(ptr noundef %j_join_wait, ptr noundef nonnull %wait) #13
  br label %__here

__here:                                           ; preds = %entry
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 212
  %17 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 ptrtoint (ptr blockaddress(@queue_log_writer, %__here) to i32), ptr %task_state_change, align 4
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 2, ptr %18, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !345
  %20 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %j_state, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool65.not = icmp eq i32 %22, 0
  br i1 %tobool65.not, label %__here.__here119_crit_edge, label %if.then66

__here.__here119_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here119

if.then66:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  call void @schedule() #13
  call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call67) #13
  br label %__here119

__here119:                                        ; preds = %if.then66, %__here.__here119_crit_edge
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change123 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change123 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@queue_log_writer, %__here119) to i32), ptr %task_state_change123, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %26, align 128
  call void @remove_wait_queue(ptr noundef %j_join_wait, ptr noundef nonnull %wait) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_journal_hash(ptr noundef %sb, ptr noundef %table, ptr noundef readnone %jl, i32 noundef %block, i32 noundef %remove_freed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  %shr = lshr i32 %0, 7
  %shl = shl i32 %block, 7
  %shr1 = lshr i32 %block, 13
  %shl2 = shl i32 %block, 1
  %xor = xor i32 %shr1, %shr
  %xor3 = xor i32 %xor, %shl
  %xor4 = xor i32 %xor3, %shl2
  %and = and i32 %xor4, 8191
  %arrayidx = getelementptr ptr, ptr %table, i32 %and
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %cur.073 = load ptr, ptr %arrayidx, align 4
  %tobool5.not74 = icmp eq ptr %cur.073, null
  br i1 %tobool5.not74, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp9 = icmp eq ptr %jl, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remove_freed)
  %tobool14.not = icmp eq i32 %remove_freed, 0
  br label %while.body

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %while.body.lr.ph
  %cur.075 = phi ptr [ %cur.073, %while.body.lr.ph ], [ %cur.0, %if.end41.while.body_crit_edge ]
  %blocknr = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 2
  %2 = ptrtoint ptr %blocknr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocknr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %block)
  %cmp = icmp eq i32 %3, %block
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end41_crit_edge

while.body.if.end41_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true:                                    ; preds = %while.body
  %sb6 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 1
  %4 = ptrtoint ptr %sb6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb6, align 4
  %cmp7 = icmp eq ptr %5, %sb
  br i1 %cmp7, label %land.lhs.true8, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

land.lhs.true8:                                   ; preds = %land.lhs.true
  br i1 %cmp9, label %land.lhs.true8.land.lhs.true11_crit_edge, label %lor.lhs.false

land.lhs.true8.land.lhs.true11_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true11

lor.lhs.false:                                    ; preds = %land.lhs.true8
  %jlist = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 4
  %6 = ptrtoint ptr %jlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jlist, align 4
  %cmp10 = icmp eq ptr %7, %jl
  br i1 %cmp10, label %lor.lhs.false.land.lhs.true11_crit_edge, label %lor.lhs.false.if.end41_crit_edge

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

lor.lhs.false.land.lhs.true11_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %lor.lhs.false.land.lhs.true11_crit_edge, %land.lhs.true8.land.lhs.true11_crit_edge
  %state = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp ne i32 %10, 0
  %or.cond = and i1 %tobool14.not, %tobool12.not
  br i1 %or.cond, label %land.lhs.true11.if.end41_crit_edge, label %if.then15

land.lhs.true11.if.end41_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then15:                                        ; preds = %land.lhs.true11
  %hnext = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 8
  %11 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hnext, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.then15.if.end20_crit_edge, label %if.then17

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  %hprev = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 7
  %13 = ptrtoint ptr %hprev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hprev, align 4
  %hprev19 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %hprev19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %hprev19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then15.if.end20_crit_edge
  %hprev21 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 7
  %16 = ptrtoint ptr %hprev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hprev21, align 4
  %tobool22.not = icmp eq ptr %17, null
  %18 = ptrtoint ptr %hnext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hnext, align 4
  %hnext26 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %17, i32 0, i32 8
  %arrayidx.sink = select i1 %tobool22.not, ptr %arrayidx, ptr %hnext26
  %20 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx.sink, align 4
  %21 = ptrtoint ptr %blocknr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %blocknr, align 4
  %22 = ptrtoint ptr %sb6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sb6, align 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state, align 4
  %24 = ptrtoint ptr %cur.075 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur.075, align 4
  %tobool32.not = icmp eq ptr %25, null
  br i1 %tobool32.not, label %if.end20.if.end38_crit_edge, label %land.lhs.true33

if.end20.if.end38_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

land.lhs.true33:                                  ; preds = %if.end20
  %jlist34 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 4
  %26 = ptrtoint ptr %jlist34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jlist34, align 4
  %tobool35.not = icmp eq ptr %27, null
  br i1 %tobool35.not, label %land.lhs.true33.if.end38_crit_edge, label %if.then36

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #15
  %j_nonzerolen = getelementptr inbounds %struct.reiserfs_journal_list, ptr %27, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_nonzerolen, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %j_nonzerolen, i32 1, i32 3, i32 1) #13
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %j_nonzerolen, ptr %j_nonzerolen, i32 1, ptr elementtype(i32) %j_nonzerolen) #13, !srcloc !295
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %land.lhs.true33.if.end38_crit_edge, %if.end20.if.end38_crit_edge
  %29 = ptrtoint ptr %cur.075 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cur.075, align 4
  %jlist40 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 4
  %30 = ptrtoint ptr %jlist40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %jlist40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %land.lhs.true11.if.end41_crit_edge, %lor.lhs.false.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %while.body.if.end41_crit_edge
  %hnext42 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cur.075, i32 0, i32 8
  %31 = ptrtoint ptr %hnext42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %cur.0 = load ptr, ptr %hnext42, align 4
  %tobool5.not = icmp eq ptr %cur.0, null
  br i1 %tobool5.not, label %if.end41.cleanup_crit_edge, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %if.end41.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reiserfs_discard_all_prealloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_journal_list(ptr noundef %s, ptr noundef %jl, i32 noundef %flushall) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %j_len = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 2
  %0 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %j_len, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_journal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !300

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1360, 0\0A.popsection", ""() #13, !srcloc !346
  unreachable

do.end7:                                          ; preds = %entry
  %j_wcount = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %6 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %j_wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.not = icmp eq i32 %7, 0
  br i1 %cmp9.not, label %do.end7.if.end13_crit_edge, label %if.then10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %8 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %j_wcount, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.133, i32 noundef %9) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end7.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flushall)
  %tobool14.not = icmp eq i32 %flushall, 0
  %j_flush_mutex16 = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 19
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call.i16 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  tail call void @mutex_lock_nested(ptr noundef %j_flush_mutex16, i32 noundef 0) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call.i16) #13
  br label %if.end27

if.else:                                          ; preds = %if.end13
  %call17 = tail call i32 @mutex_trylock(ptr noundef %j_flush_mutex16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.else.if.end27_crit_edge, label %do.body20

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.body20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1371, 0\0A.popsection", ""() #13, !srcloc !347
  unreachable

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then15
  %j_trans_max = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 28
  %10 = ptrtoint ptr %j_trans_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %j_trans_max, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %11)
  %cmp28 = icmp ugt i32 %1, %11
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 7
  %12 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_trans_id, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.134, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.135, i32 noundef %1, i32 noundef %13) #18
  unreachable

if.end30:                                         ; preds = %if.end27
  %j_nonzerolen = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 3
  %call.i.i3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_nonzerolen, i32 noundef 4) #13
  %14 = ptrtoint ptr %j_nonzerolen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %j_nonzerolen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp32 = icmp slt i32 %15, 1
  br i1 %cmp32, label %land.lhs.true, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end30
  %j_commit_left = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 4
  %call.i.i4 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left, i32 noundef 4) #13
  %16 = ptrtoint ptr %j_commit_left to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %j_commit_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp34 = icmp slt i32 %17, 1
  br i1 %cmp34, label %land.lhs.true.flush_older_and_return_crit_edge, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

land.lhs.true.flush_older_and_return_crit_edge:   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_older_and_return

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  tail call fastcc void @flush_commit_list(ptr noundef %s, ptr noundef %jl, i32 noundef 1)
  %j_state = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 1
  %18 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %j_state, align 4
  %and = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %if.end36.if.end55_crit_edge

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

land.lhs.true39:                                  ; preds = %if.end36
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %j_state.i, align 4
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool41.not = icmp eq i32 %22, 0
  br i1 %tobool41.not, label %do.body49, label %land.lhs.true39.if.end55_crit_edge, !prof !298

land.lhs.true39.if.end55_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

do.body49:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1395, 0\0A.popsection", ""() #13, !srcloc !348
  unreachable

if.end55:                                         ; preds = %land.lhs.true39.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %call.i.i5 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_nonzerolen, i32 noundef 4) #13
  %23 = ptrtoint ptr %j_nonzerolen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %j_nonzerolen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp58 = icmp slt i32 %24, 1
  br i1 %cmp58, label %land.lhs.true59, label %if.end55.if.end64_crit_edge

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.lhs.true59:                                  ; preds = %if.end55
  %j_commit_left60 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 4
  %call.i.i6 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left60, i32 noundef 4) #13
  %25 = ptrtoint ptr %j_commit_left60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %j_commit_left60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp62 = icmp slt i32 %26, 1
  br i1 %cmp62, label %land.lhs.true59.flush_older_and_return_crit_edge, label %land.lhs.true59.if.end64_crit_edge

land.lhs.true59.if.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.lhs.true59.flush_older_and_return_crit_edge: ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_older_and_return

if.end64:                                         ; preds = %land.lhs.true59.if.end64_crit_edge, %if.end55.if.end64_crit_edge
  %call.i.i7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_wcount, i32 noundef 4) #13
  %27 = ptrtoint ptr %j_wcount to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %j_wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp67.not = icmp eq i32 %28, 0
  br i1 %cmp67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.136, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.137) #18
  unreachable

if.end69:                                         ; preds = %if.end64
  %j_realblock = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 11
  %29 = ptrtoint ptr %j_realblock to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %j_realblock, align 8
  %tobool70.not89 = icmp eq ptr %30, null
  br i1 %tobool70.not89, label %if.end69.flush_older_and_return_crit_edge, label %if.end69.while.body_crit_edge

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  br label %while.body

if.end69.flush_older_and_return_crit_edge:        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_older_and_return

while.body:                                       ; preds = %if.end181.while.body_crit_edge, %if.end69.while.body_crit_edge
  %count.091 = phi i32 [ %count.176, %if.end181.while.body_crit_edge ], [ 0, %if.end69.while.body_crit_edge ]
  %cn.090 = phi ptr [ %79, %if.end181.while.body_crit_edge ], [ %30, %if.end69.while.body_crit_edge ]
  %blocknr = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.090, i32 0, i32 2
  %31 = ptrtoint ptr %blocknr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blocknr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp71 = icmp eq i32 %32, 0
  br i1 %cmp71, label %while.body.free_cnode.thread_crit_edge, label %if.end73

while.body.free_cnode.thread_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cnode.thread

if.end73:                                         ; preds = %while.body
  %33 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %j_state, align 4
  %and75 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.free_cnode.thread_crit_edge, label %if.end78

if.end73.free_cnode.thread_crit_edge:             ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cnode.thread

if.end78:                                         ; preds = %if.end73
  %sb1.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.090, i32 0, i32 1
  %35 = ptrtoint ptr %sb1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sb1.i, align 4
  %cn.addr.0.in19.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.090, i32 0, i32 7
  %37 = ptrtoint ptr %cn.addr.0.in19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %cn.addr.020.i = load ptr, ptr %cn.addr.0.in19.i, align 4
  %tobool.not21.i = icmp eq ptr %cn.addr.020.i, null
  br i1 %tobool.not21.i, label %if.end78.land.lhs.true81_crit_edge, label %if.end78.while.body.i_crit_edge

if.end78.while.body.i_crit_edge:                  ; preds = %if.end78
  br label %while.body.i

if.end78.land.lhs.true81_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true81

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end78.while.body.i_crit_edge
  %cn.addr.022.i = phi ptr [ %cn.addr.0.i, %if.end.i.while.body.i_crit_edge ], [ %cn.addr.020.i, %if.end78.while.body.i_crit_edge ]
  %sb3.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i, i32 0, i32 1
  %38 = ptrtoint ptr %sb3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sb3.i, align 4
  %cmp.i = icmp eq ptr %39, %36
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %blocknr4.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i, i32 0, i32 2
  %40 = ptrtoint ptr %blocknr4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blocknr4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %32)
  %cmp5.i = icmp eq i32 %41, %32
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %jlist.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i, i32 0, i32 4
  %42 = ptrtoint ptr %jlist.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %jlist.i, align 4
  %tobool7.not.i = icmp eq ptr %43, null
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.end.i_crit_edge, label %if.then123

land.lhs.true6.i.if.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true6.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %cn.addr.0.in.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.addr.022.i, i32 0, i32 7
  %44 = ptrtoint ptr %cn.addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %cn.addr.0.i = load ptr, ptr %cn.addr.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %cn.addr.0.i, null
  br i1 %tobool.not.i, label %if.end.i.land.lhs.true81_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

if.end.i.land.lhs.true81_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true81

land.lhs.true81:                                  ; preds = %if.end.i.land.lhs.true81_crit_edge, %if.end78.land.lhs.true81_crit_edge
  %45 = ptrtoint ptr %cn.090 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cn.090, align 4
  %tobool82.not = icmp eq ptr %46, null
  br i1 %tobool82.not, label %land.lhs.true81.free_cnode.thread_crit_edge, label %if.then83

land.lhs.true81.free_cnode.thread_crit_edge:      ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cnode.thread

if.then83:                                        ; preds = %land.lhs.true81
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !297
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %46, align 4
  %50 = and i32 %49, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool86.not = icmp eq i32 %50, 0
  %call110 = tail call fastcc i32 @can_dirty(ptr noundef nonnull %cn.090)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool86.not, label %if.else109, label %do.body88

do.body88:                                        ; preds = %if.then83
  br i1 %tobool111.not, label %do.body100, label %if.then144.critedge, !prof !300

do.body100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1444, 0\0A.popsection", ""() #13, !srcloc !349
  unreachable

if.else109:                                       ; preds = %if.then83
  br i1 %tobool111.not, label %land.lhs.true135, label %do.body113

do.body113:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1452, 0\0A.popsection", ""() #13, !srcloc !350
  unreachable

if.then123:                                       ; preds = %land.lhs.true6.i
  %j_commit_left124 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %43, i32 0, i32 4
  %call.i.i8 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left124, i32 noundef 4) #13
  %51 = ptrtoint ptr %j_commit_left124 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %j_commit_left124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool126.not = icmp eq i32 %52, 0
  br i1 %tobool126.not, label %if.then123.free_cnode.thread_crit_edge, label %if.then127

if.then123.free_cnode.thread_crit_edge:           ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cnode.thread

if.then127:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @flush_commit_list(ptr noundef %s, ptr noundef nonnull %43, i32 noundef 1)
  br label %free_cnode.thread

land.lhs.true135:                                 ; preds = %if.else109
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %46, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool137.not = icmp eq i32 %55, 0
  br i1 %tobool137.not, label %if.then138, label %land.lhs.true135.if.else171_crit_edge

land.lhs.true135.if.else171_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else171

if.then138:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 3
  %56 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.138, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.139, i64 noundef %57, i32 noundef 33, i32 noundef 33) #13
  br label %if.else171

if.then144.critedge:                              ; preds = %do.body88
  %call.i.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !297
  %state = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.090, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 4, ptr noundef %state) #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 366) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %46, i32 noundef 4) #13
  %59 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %46, align 4
  %and.i.i.i.i = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then144.critedge.if.then.i_crit_edge

if.then144.critedge.if.then.i_crit_edge:          ; preds = %if.then144.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.then144.critedge
  tail call void @llvm.prefetch.p0(ptr nonnull %46, i32 1, i32 3, i32 1) #13
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %46, ptr nonnull %46, i32 4, ptr nonnull elementtype(i32) %46) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  %62 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.not.i = icmp eq i32 %62, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.then144.critedge.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %46) #13
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %63 = ptrtoint ptr %blocknr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blocknr, align 4
  %conv = zext i32 %64 to i64
  %b_blocknr147 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 3
  %65 = ptrtoint ptr %b_blocknr147 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %b_blocknr147, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %66, i64 %conv)
  %cmp148.not = icmp eq i64 %66, %conv
  br i1 %cmp148.not, label %do.end165, label %do.body157, !prof !298

do.body157:                                       ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1495, 0\0A.popsection", ""() #13, !srcloc !351
  unreachable

do.end165:                                        ; preds = %lock_buffer.exit
  %67 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %46, align 4
  %69 = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool167.not = icmp eq i32 %69, 0
  br i1 %tobool167.not, label %if.else169, label %if.then168

if.then168:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @submit_logged_buffer(ptr noundef nonnull %46)
  br label %if.end170

if.else169:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @unlock_buffer(ptr noundef nonnull %46) #13
  br label %if.end170

if.end170:                                        ; preds = %if.else169, %if.then168
  %inc = add i32 %count.091, 1
  br label %if.then175

if.else171:                                       ; preds = %if.then138, %land.lhs.true135.if.else171_crit_edge
  %b_blocknr172 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 3
  %70 = ptrtoint ptr %b_blocknr172 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %b_blocknr172, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.141, i64 noundef %71, ptr noundef nonnull @__func__.flush_journal_list) #13
  br label %if.then175

free_cnode.thread:                                ; preds = %if.then127, %if.then123.free_cnode.thread_crit_edge, %land.lhs.true81.free_cnode.thread_crit_edge, %if.end73.free_cnode.thread_crit_edge, %while.body.free_cnode.thread_crit_edge
  %next74 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.090, i32 0, i32 5
  %72 = ptrtoint ptr %next74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %next74, align 4
  br label %if.end181

if.then175:                                       ; preds = %if.else171, %if.end170
  %count.1 = phi i32 [ %inc, %if.end170 ], [ %count.091, %if.else171 ]
  %next = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.090, i32 0, i32 5
  %74 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %next, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !295
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count.i, i32 noundef 4) #13
  %77 = ptrtoint ptr %b_count.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %b_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp177 = icmp slt i32 %78, 0
  br i1 %cmp177, label %if.then179, label %if.then175.if.end181_crit_edge

if.then175.if.end181_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end181

if.then179:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.142, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.143) #13
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %if.then175.if.end181_crit_edge, %free_cnode.thread
  %79 = phi ptr [ %73, %free_cnode.thread ], [ %75, %if.then175.if.end181_crit_edge ], [ %75, %if.then179 ]
  %count.176 = phi i32 [ %count.091, %free_cnode.thread ], [ %count.1, %if.then175.if.end181_crit_edge ], [ %count.1, %if.then179 ]
  %tobool70.not = icmp eq ptr %79, null
  br i1 %tobool70.not, label %while.end, label %if.end181.while.body_crit_edge

if.end181.while.body_crit_edge:                   ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.176)
  %cmp182 = icmp sgt i32 %count.176, 0
  br i1 %cmp182, label %while.cond186.preheader, label %while.end.flush_older_and_return_crit_edge

while.end.flush_older_and_return_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_older_and_return

while.cond186.preheader:                          ; preds = %while.end
  %80 = ptrtoint ptr %j_realblock to i32
  call void @__asan_load4_noabort(i32 %80)
  %cn.192 = load ptr, ptr %j_realblock, align 4
  %tobool187.not93 = icmp eq ptr %cn.192, null
  br i1 %tobool187.not93, label %while.cond186.preheader.flush_older_and_return_crit_edge, label %while.cond186.preheader.while.body188_crit_edge

while.cond186.preheader.while.body188_crit_edge:  ; preds = %while.cond186.preheader
  br label %while.body188

while.cond186.preheader.flush_older_and_return_crit_edge: ; preds = %while.cond186.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_older_and_return

while.body188:                                    ; preds = %if.end240.while.body188_crit_edge, %while.cond186.preheader.while.body188_crit_edge
  %cn.195 = phi ptr [ %cn.1, %if.end240.while.body188_crit_edge ], [ %cn.192, %while.cond186.preheader.while.body188_crit_edge ]
  %err.094 = phi i32 [ %err.2, %if.end240.while.body188_crit_edge ], [ 0, %while.cond186.preheader.while.body188_crit_edge ]
  %state189 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.195, i32 0, i32 3
  %81 = ptrtoint ptr %state189 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %state189, align 4
  %83 = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool191.not = icmp eq i32 %83, 0
  br i1 %tobool191.not, label %while.body188.if.end240_crit_edge, label %if.then192

while.body188.if.end240_crit_edge:                ; preds = %while.body188
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end240

if.then192:                                       ; preds = %while.body188
  %84 = ptrtoint ptr %cn.195 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cn.195, align 4
  %tobool194.not = icmp eq ptr %85, null
  br i1 %tobool194.not, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.145) #18
  unreachable

if.end196:                                        ; preds = %if.then192
  %call197 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  %86 = ptrtoint ptr %cn.195 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cn.195, align 4
  tail call void @__wait_on_buffer(ptr noundef %87) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call197) #13
  %88 = ptrtoint ptr %cn.195 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cn.195, align 4
  %tobool200.not = icmp eq ptr %89, null
  br i1 %tobool200.not, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.146, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.145) #18
  unreachable

if.end202:                                        ; preds = %if.end196
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  %and1.i.i14 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i14)
  %tobool205.not = icmp eq i32 %and1.i.i14, 0
  br i1 %tobool205.not, label %if.then214, label %if.end202.do.body216_crit_edge, !prof !300

if.end202.do.body216_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body216

if.then214:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.147, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.65) #13
  br label %do.body216

do.body216:                                       ; preds = %if.then214, %if.end202.do.body216_crit_edge
  %err.1 = phi i32 [ -5, %if.then214 ], [ %err.094, %if.end202.do.body216_crit_edge ]
  %92 = ptrtoint ptr %cn.195 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cn.195, align 4
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 17, ptr noundef %93) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool219.not = icmp eq i32 %call.i, 0
  br i1 %tobool219.not, label %do.body229, label %do.end237, !prof !300

do.body229:                                       ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1551, 0\0A.popsection", ""() #13, !srcloc !352
  unreachable

do.end237:                                        ; preds = %do.body216
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %cn.195 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cn.195, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %b_count.i24 = getelementptr inbounds %struct.buffer_head, ptr %95, i32 0, i32 11
  %call.i.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i24, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i24, i32 1, i32 3, i32 1) #13
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i24, ptr %b_count.i24, i32 1, ptr elementtype(i32) %b_count.i24) #13, !srcloc !295
  %97 = ptrtoint ptr %cn.195 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cn.195, align 4
  tail call fastcc void @release_buffer_page(ptr noundef %98)
  br label %if.end240

if.end240:                                        ; preds = %do.end237, %while.body188.if.end240_crit_edge
  %err.2 = phi i32 [ %err.1, %do.end237 ], [ %err.094, %while.body188.if.end240_crit_edge ]
  %next241 = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.195, i32 0, i32 5
  %99 = ptrtoint ptr %next241 to i32
  call void @__asan_load4_noabort(i32 %99)
  %cn.1 = load ptr, ptr %next241, align 4
  %tobool187.not = icmp eq ptr %cn.1, null
  br i1 %tobool187.not, label %if.end243, label %if.end240.while.body188_crit_edge

if.end240.while.body188_crit_edge:                ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body188

if.end243:                                        ; preds = %if.end240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool244.not = icmp eq i32 %err.2, 0
  br i1 %tobool244.not, label %if.end243.flush_older_and_return_crit_edge, label %if.then245

if.end243.flush_older_and_return_crit_edge:       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  br label %flush_older_and_return

if.then245:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @reiserfs_abort(ptr noundef %s, i32 noundef -5, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.flush_journal_list) #13
  br label %flush_older_and_return

flush_older_and_return:                           ; preds = %if.then245, %if.end243.flush_older_and_return_crit_edge, %while.cond186.preheader.flush_older_and_return_crit_edge, %while.end.flush_older_and_return_crit_edge, %if.end69.flush_older_and_return_crit_edge, %land.lhs.true59.flush_older_and_return_crit_edge, %land.lhs.true.flush_older_and_return_crit_edge
  br i1 %tobool14.not, label %flush_older_and_return.if.end264_crit_edge, label %if.then248

flush_older_and_return.if.end264_crit_edge:       ; preds = %flush_older_and_return
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end264

if.then248:                                       ; preds = %flush_older_and_return
  %100 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %s_journal.i, align 4
  %j_trans_id.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 7
  %104 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %j_trans_id.i, align 4
  %j_journal_list.i = getelementptr inbounds %struct.reiserfs_journal, ptr %103, i32 0, i32 45
  %106 = ptrtoint ptr %j_journal_list.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %j_journal_list.i, align 4
  %cmp.i2797 = icmp eq ptr %107, %j_journal_list.i
  br i1 %cmp.i2797, label %if.then248.if.end250_crit_edge, label %if.then248.if.end.i28_crit_edge

if.then248.if.end.i28_crit_edge:                  ; preds = %if.then248
  br label %if.end.i28

if.then248.if.end250_crit_edge:                   ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

if.end.i28:                                       ; preds = %do.end15.i.if.end.i28_crit_edge, %if.then248.if.end.i28_crit_edge
  %108 = phi ptr [ %114, %do.end15.i.if.end.i28_crit_edge ], [ %107, %if.then248.if.end.i28_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %108, i32 -144
  %j_trans_id3.i = getelementptr i8, ptr %108, i32 -28
  %109 = ptrtoint ptr %j_trans_id3.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %j_trans_id3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %105)
  %cmp4.i = icmp ult i32 %110, %105
  br i1 %cmp4.i, label %do.body.i, label %if.end.i28.if.end250_crit_edge

if.end.i28.if.end250_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

do.body.i:                                        ; preds = %if.end.i28
  %j_refcount.i = getelementptr i8, ptr %108, i32 32
  %111 = ptrtoint ptr %j_refcount.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %j_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp6.i = icmp slt i32 %112, 1
  br i1 %cmp6.i, label %do.body9.i, label %do.end15.i, !prof !300

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1316, 0\0A.popsection", ""() #13, !srcloc !353
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  tail call fastcc void @flush_journal_list(ptr noundef %s, ptr noundef %add.ptr.i, i32 noundef 0) #13
  %113 = ptrtoint ptr %j_journal_list.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %j_journal_list.i, align 4
  %cmp.i27 = icmp eq ptr %114, %j_journal_list.i
  br i1 %cmp.i27, label %do.end15.i.if.end250_crit_edge, label %do.end15.i.if.end.i28_crit_edge

do.end15.i.if.end.i28_crit_edge:                  ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i28

do.end15.i.if.end250_crit_edge:                   ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end250

if.end250:                                        ; preds = %do.end15.i.if.end250_crit_edge, %if.end.i28.if.end250_crit_edge, %if.then248.if.end250_crit_edge
  %j_errno = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 54
  %115 = ptrtoint ptr %j_errno to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %j_errno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool251.not.not = icmp eq i32 %116, 0
  br i1 %tobool251.not.not, label %if.then254, label %if.end250.if.end264_crit_edge

if.end250.if.end264_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end264

if.then254:                                       ; preds = %if.end250
  %117 = ptrtoint ptr %jl to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %jl, align 8
  %119 = ptrtoint ptr %j_len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %j_len, align 8
  %add = add i32 %118, 2
  %add256 = add i32 %add, %120
  %121 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i, align 16
  %s_rs = getelementptr inbounds %struct.reiserfs_sb_info, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %s_rs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %s_rs, align 4
  %jp_journal_size = getelementptr inbounds %struct.reiserfs_super_block_v1, ptr %124, i32 0, i32 3, i32 2
  %125 = ptrtoint ptr %jp_journal_size to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %jp_journal_size, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126)
  %rem = urem i32 %add256, %127
  %128 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %j_trans_id.i, align 4
  %call.i30 = tail call fastcc i32 @_update_journal_header_block(ptr noundef %s, i32 noundef %rem, i32 noundef %129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool261.not = icmp eq i32 %call.i30, 0
  br i1 %tobool261.not, label %if.then254.if.end264_crit_edge, label %if.then262

if.then254.if.end264_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end264

if.then262:                                       ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, ptr, ...) @reiserfs_abort(ptr noundef %s, i32 noundef -5, ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.flush_journal_list) #13
  br label %if.end264

if.end264:                                        ; preds = %if.then262, %if.then254.if.end264_crit_edge, %if.end250.if.end264_crit_edge, %flush_older_and_return.if.end264_crit_edge
  %j_realblock.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 11
  %130 = ptrtoint ptr %j_realblock.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %j_realblock.i, align 8
  %tobool.not1.i = icmp eq ptr %131, null
  br i1 %tobool.not1.i, label %if.end264.remove_all_from_journal_list.exit_crit_edge, label %while.body.lr.ph.i

if.end264.remove_all_from_journal_list.exit_crit_edge: ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_all_from_journal_list.exit

while.body.lr.ph.i:                               ; preds = %if.end264
  %132 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i31 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %s_journal.i31 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %s_journal.i31, align 4
  %j_list_hash_table.i = getelementptr inbounds %struct.reiserfs_journal, ptr %135, i32 0, i32 48
  br label %while.body.i32

while.body.i32:                                   ; preds = %free_cnode.exit.i.while.body.i32_crit_edge, %while.body.lr.ph.i
  %cn.02.i = phi ptr [ %131, %while.body.lr.ph.i ], [ %140, %free_cnode.exit.i.while.body.i32_crit_edge ]
  %blocknr.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.02.i, i32 0, i32 2
  %136 = ptrtoint ptr %blocknr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %blocknr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.not.i = icmp eq i32 %137, 0
  br i1 %cmp.not.i, label %while.body.i32.if.end7.i_crit_edge, label %if.end.i33

while.body.i32.if.end7.i_crit_edge:               ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.end.i33:                                       ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #15
  %state5.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.02.i, i32 0, i32 3
  %138 = ptrtoint ptr %state5.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %state5.i, align 4
  tail call fastcc void @remove_journal_hash(ptr noundef %s, ptr noundef %j_list_hash_table.i, ptr noundef %jl, i32 noundef %137, i32 noundef 1) #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i33, %while.body.i32.if.end7.i_crit_edge
  %next.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.02.i, i32 0, i32 5
  %139 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %next.i, align 4
  %141 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %s_journal.i.i, align 4
  tail call void @reiserfs_check_lock_depth(ptr noundef %s, ptr noundef nonnull @.str.114) #13
  %j_cnode_used.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %144, i32 0, i32 26
  %145 = ptrtoint ptr %j_cnode_used.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %j_cnode_used.i.i, align 8
  %dec.i.i = add i32 %146, -1
  store i32 %dec.i.i, ptr %j_cnode_used.i.i, align 8
  %j_cnode_free.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %144, i32 0, i32 27
  %147 = ptrtoint ptr %j_cnode_free.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %j_cnode_free.i.i, align 4
  %inc.i.i = add i32 %148, 1
  store i32 %inc.i.i, ptr %j_cnode_free.i.i, align 4
  %j_cnode_free_list.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %144, i32 0, i32 33
  %149 = ptrtoint ptr %j_cnode_free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %j_cnode_free_list.i.i, align 4
  %151 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %next.i, align 4
  %152 = load ptr, ptr %j_cnode_free_list.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i, label %if.end7.i.free_cnode.exit.i_crit_edge, label %if.then.i.i

if.end7.i.free_cnode.exit.i_crit_edge:            ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_cnode.exit.i

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %152, i32 0, i32 6
  %153 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %cn.02.i, ptr %prev.i.i, align 4
  br label %free_cnode.exit.i

free_cnode.exit.i:                                ; preds = %if.then.i.i, %if.end7.i.free_cnode.exit.i_crit_edge
  %prev3.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.02.i, i32 0, i32 6
  %154 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %prev3.i.i, align 4
  %155 = ptrtoint ptr %j_cnode_free_list.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %cn.02.i, ptr %j_cnode_free_list.i.i, align 4
  %tobool.not.i34 = icmp eq ptr %140, null
  br i1 %tobool.not.i34, label %free_cnode.exit.i.remove_all_from_journal_list.exit_crit_edge, label %free_cnode.exit.i.while.body.i32_crit_edge

free_cnode.exit.i.while.body.i32_crit_edge:       ; preds = %free_cnode.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i32

free_cnode.exit.i.remove_all_from_journal_list.exit_crit_edge: ; preds = %free_cnode.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %remove_all_from_journal_list.exit

remove_all_from_journal_list.exit:                ; preds = %free_cnode.exit.i.remove_all_from_journal_list.exit_crit_edge, %if.end264.remove_all_from_journal_list.exit_crit_edge
  %156 = ptrtoint ptr %j_realblock.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %j_realblock.i, align 8
  %j_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 13
  %call.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %j_list) #13
  br i1 %call.i.i35, label %if.end.i.i, label %remove_all_from_journal_list.exit.list_del_init.exit_crit_edge

remove_all_from_journal_list.exit.list_del_init.exit_crit_edge: ; preds = %remove_all_from_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %remove_all_from_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i36 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 13, i32 1
  %157 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev.i.i36, align 4
  %159 = ptrtoint ptr %j_list to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %j_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %158, ptr %prev1.i.i.i, align 4
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %160, ptr %158, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %remove_all_from_journal_list.exit.list_del_init.exit_crit_edge
  %163 = ptrtoint ptr %j_list to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %j_list, ptr %j_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 13, i32 1
  %164 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %j_list, ptr %prev.i3.i, align 4
  %j_num_lists = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 38
  %165 = ptrtoint ptr %j_num_lists to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %j_num_lists, align 8
  %dec = add i32 %166, -1
  store i32 %dec, ptr %j_num_lists, align 8
  %167 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i38 = getelementptr inbounds %struct.reiserfs_sb_info, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %s_journal.i38 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %s_journal.i38, align 4
  %j_working_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 14
  %171 = ptrtoint ptr %j_working_list.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile ptr, ptr %j_working_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %172, %j_working_list.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.del_from_work_list.exit_crit_edge, label %if.then.i40

list_del_init.exit.del_from_work_list.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %del_from_work_list.exit

if.then.i40:                                      ; preds = %list_del_init.exit
  %call.i.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %j_working_list.i) #13
  br i1 %call.i.i.i39, label %if.end.i.i.i, label %if.then.i40.list_del_init.exit.i_crit_edge

if.then.i40.list_del_init.exit.i_crit_edge:       ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 14, i32 1
  %173 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prev.i.i.i, align 4
  %175 = ptrtoint ptr %j_working_list.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %j_working_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %174, ptr %prev1.i.i.i.i, align 4
  %178 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %176, ptr %174, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i40.list_del_init.exit.i_crit_edge
  %179 = ptrtoint ptr %j_working_list.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %j_working_list.i, ptr %j_working_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 14, i32 1
  %180 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %j_working_list.i, ptr %prev.i3.i.i, align 4
  %j_num_work_lists.i = getelementptr inbounds %struct.reiserfs_journal, ptr %170, i32 0, i32 39
  %181 = ptrtoint ptr %j_num_work_lists.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %j_num_work_lists.i, align 4
  %dec.i = add i32 %182, -1
  store i32 %dec.i, ptr %j_num_work_lists.i, align 4
  br label %del_from_work_list.exit

del_from_work_list.exit:                          ; preds = %list_del_init.exit.i, %list_del_init.exit.del_from_work_list.exit_crit_edge
  %j_last_flush_id = getelementptr inbounds %struct.reiserfs_journal, ptr %5, i32 0, i32 40
  %183 = ptrtoint ptr %j_last_flush_id to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %j_last_flush_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp265.not = icmp eq i32 %184, 0
  br i1 %cmp265.not, label %del_from_work_list.exit.if.end275_crit_edge, label %land.lhs.true267

del_from_work_list.exit.if.end275_crit_edge:      ; preds = %del_from_work_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end275

land.lhs.true267:                                 ; preds = %del_from_work_list.exit
  %j_trans_id268 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 7
  %185 = ptrtoint ptr %j_trans_id268 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %j_trans_id268, align 4
  %sub = sub i32 %186, %184
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp270.not = icmp eq i32 %sub, 1
  br i1 %cmp270.not, label %land.lhs.true267.if.end275_crit_edge, label %if.then272

land.lhs.true267.if.end275_crit_edge:             ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end275

if.then272:                                       ; preds = %land.lhs.true267
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef %s, ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.flush_journal_list, ptr noundef nonnull @.str.151, i32 noundef %184, i32 noundef %186) #13
  br label %if.end275

if.end275:                                        ; preds = %if.then272, %land.lhs.true267.if.end275_crit_edge, %del_from_work_list.exit.if.end275_crit_edge
  %j_trans_id276 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 7
  %187 = ptrtoint ptr %j_trans_id276 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %j_trans_id276, align 4
  %189 = ptrtoint ptr %j_last_flush_id to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %j_last_flush_id, align 8
  %190 = ptrtoint ptr %j_len to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %j_len, align 8
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %j_nonzerolen, i32 noundef 4) #13
  %191 = ptrtoint ptr %j_nonzerolen to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile i32 0, ptr %j_nonzerolen, align 4
  %192 = ptrtoint ptr %jl to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %jl, align 8
  %193 = ptrtoint ptr %j_realblock.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %j_realblock.i, align 8
  %j_commit_bh = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 10
  %194 = ptrtoint ptr %j_commit_bh to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %j_commit_bh, align 4
  %195 = ptrtoint ptr %j_trans_id276 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %j_trans_id276, align 4
  %j_state283 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 1
  %196 = ptrtoint ptr %j_state283 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %j_state283, align 4
  %j_refcount.i42 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 17
  %197 = ptrtoint ptr %j_refcount.i42 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %j_refcount.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp.i43 = icmp slt i32 %198, 1
  br i1 %cmp.i43, label %if.then.i45, label %if.end.i47

if.then.i45:                                      ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.put_journal_list, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef %198) #18
  unreachable

if.end.i47:                                       ; preds = %if.end275
  %dec.i46 = add nsw i32 %198, -1
  %199 = ptrtoint ptr %j_refcount.i42 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %dec.i46, ptr %j_refcount.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i46)
  %cmp3.i = icmp eq i32 %dec.i46, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i47.put_journal_list.exit_crit_edge

if.end.i47.put_journal_list.exit_crit_edge:       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_journal_list.exit

if.then4.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %jl) #13
  br label %put_journal_list.exit

put_journal_list.exit:                            ; preds = %if.then4.i, %if.end.i47.put_journal_list.exit_crit_edge
  br i1 %tobool14.not, label %put_journal_list.exit.if.end287_crit_edge, label %if.then285

put_journal_list.exit.if.end287_crit_edge:        ; preds = %put_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end287

if.then285:                                       ; preds = %put_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %j_flush_mutex16) #13
  br label %if.end287

if.end287:                                        ; preds = %if.then285, %put_journal_list.exit.if.end287_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_used_journal_lists(ptr noundef %s, ptr noundef %jl) unnamed_addr #0 align 64 {
entry:
  %chunk.i = alloca %struct.buffer_chunk, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_journal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_journal, align 4
  %s_mount_opt = getelementptr inbounds %struct.reiserfs_sb_info, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 256, i32 1024
  %j_trans_id5 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 7
  %j_journal_list = getelementptr inbounds %struct.reiserfs_journal, ptr %3, i32 0, i32 45
  %j_commit_left48 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 4
  %call.i.i49 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left48, i32 noundef 4) #13
  %6 = ptrtoint ptr %j_commit_left48 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %j_commit_left48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not50 = icmp eq i32 %7, 0
  br i1 %tobool4.not50, label %entry.lor.lhs.false_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

for.body:                                         ; preds = %if.end16
  %add.ptr = getelementptr i8, ptr %19, i32 -144
  %j_commit_left = getelementptr i8, ptr %19, i32 -128
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left, i32 noundef 4) #13
  %8 = ptrtoint ptr %j_commit_left to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %j_commit_left, align 4
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %for.body.lor.lhs.false_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %tjl.02854 = phi ptr [ %add.ptr, %for.body.lor.lhs.false_crit_edge ], [ %jl, %entry.lor.lhs.false_crit_edge ]
  %i.02953 = phi i32 [ %inc, %for.body.lor.lhs.false_crit_edge ], [ 0, %entry.lor.lhs.false_crit_edge ]
  %flush_jl.03052 = phi ptr [ %tjl.02854, %for.body.lor.lhs.false_crit_edge ], [ %jl, %entry.lor.lhs.false_crit_edge ]
  %len.03151 = phi i32 [ %add, %for.body.lor.lhs.false_crit_edge ], [ 0, %entry.lor.lhs.false_crit_edge ]
  %j_trans_id = getelementptr inbounds %struct.reiserfs_journal_list, ptr %tjl.02854, i32 0, i32 7
  %10 = ptrtoint ptr %j_trans_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %j_trans_id, align 4
  %12 = ptrtoint ptr %j_trans_id5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %j_trans_id5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6 = icmp ult i32 %11, %13
  br i1 %cmp6, label %lor.lhs.false.for.end_crit_edge, label %if.end8

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end8:                                          ; preds = %lor.lhs.false
  %j_nonzerolen = getelementptr inbounds %struct.reiserfs_journal_list, ptr %tjl.02854, i32 0, i32 3
  %call.i.i1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_nonzerolen, i32 noundef 4) #13
  %14 = ptrtoint ptr %j_nonzerolen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %j_nonzerolen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.not = icmp eq i32 %15, 0
  br i1 %cmp10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %j_state = getelementptr inbounds %struct.reiserfs_journal_list, ptr %tjl.02854, i32 0, i32 1
  %16 = ptrtoint ptr %j_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %j_state, align 4
  %and12 = and i32 %17, -2
  store i32 %and12, ptr %j_state, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %add = add i32 %15, %len.03151
  %j_list = getelementptr inbounds %struct.reiserfs_journal_list, ptr %tjl.02854, i32 0, i32 13
  %18 = ptrtoint ptr %j_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %j_list, align 8
  %cmp14 = icmp eq ptr %19, %j_journal_list
  br i1 %cmp14, label %if.end13.for.end_crit_edge, label %if.end16

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end16:                                         ; preds = %if.end13
  %inc = add nuw nsw i32 %i.02953, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.02953)
  %cmp = icmp ult i32 %i.02953, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %spec.select)
  %cmp2 = icmp ult i32 %add, %spec.select
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %for.body, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %if.end13.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.02953, %lor.lhs.false.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ], [ %i.02953, %if.end13.for.end_crit_edge ], [ %inc, %if.end16.for.end_crit_edge ]
  %flush_jl.1 = phi ptr [ %jl, %entry.for.end_crit_edge ], [ %flush_jl.03052, %lor.lhs.false.for.end_crit_edge ], [ %tjl.02854, %for.body.for.end_crit_edge ], [ %tjl.02854, %if.end13.for.end_crit_edge ], [ %tjl.02854, %if.end16.for.end_crit_edge ]
  %len.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %len.03151, %lor.lhs.false.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ], [ %add, %if.end13.for.end_crit_edge ], [ %add, %if.end16.for.end_crit_edge ]
  %j_refcount.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl, i32 0, i32 17
  %20 = ptrtoint ptr %j_refcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %j_refcount.i, align 8
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %j_refcount.i, align 8
  %j_refcount.i3 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %flush_jl.1, i32 0, i32 17
  %22 = ptrtoint ptr %j_refcount.i3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %j_refcount.i3, align 8
  %inc.i4 = add i32 %23, 1
  store i32 %inc.i4, ptr %j_refcount.i3, align 8
  %cmp19.not = icmp eq ptr %flush_jl.1, %jl
  br i1 %cmp19.not, label %for.end.if.end22_crit_edge, label %if.then20

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %for.end
  %24 = ptrtoint ptr %j_trans_id5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %j_trans_id5, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %chunk.i) #13
  %26 = call ptr @memset(ptr %chunk.i, i32 255, i32 128)
  %27 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %s_journal.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_journal.i, align 4
  %nr.i = getelementptr inbounds %struct.buffer_chunk, ptr %chunk.i, i32 0, i32 1
  %31 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %nr.i, align 4
  %j_flush_mutex.i = getelementptr inbounds %struct.reiserfs_journal, ptr %30, i32 0, i32 19
  %call.i.i5 = tail call i32 @reiserfs_write_unlock_nested(ptr noundef %s) #13
  tail call void @mutex_lock_nested(ptr noundef %j_flush_mutex.i, i32 noundef 0) #13
  tail call void @reiserfs_write_lock_nested(ptr noundef %s, i32 noundef %call.i.i5) #13
  %32 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %s_journal.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_journal.i.i, align 4
  %j_journal_list.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %35, i32 0, i32 45
  %36 = ptrtoint ptr %j_journal_list.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %j_journal_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %37, %j_journal_list.i.i
  br i1 %cmp.i.not.i.i, label %if.then20.kupdate_transactions.exit_crit_edge, label %if.then.i.i

if.then20.kupdate_transactions.exit_crit_edge:    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %kupdate_transactions.exit

if.then.i.i:                                      ; preds = %if.then20
  %j_trans_id.i.i = getelementptr i8, ptr %37, i32 -28
  %38 = ptrtoint ptr %j_trans_id.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %j_trans_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %25)
  %cmp.not.i.i = icmp ugt i32 %39, %25
  br i1 %cmp.not.i.i, label %if.then.i.i.kupdate_transactions.exit_crit_edge, label %while.cond.preheader.i

if.then.i.i.kupdate_transactions.exit_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kupdate_transactions.exit

while.cond.preheader.i:                           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %tobool3.not.i = icmp eq i32 %i.0.lcssa, 0
  %j_journal_list.i = getelementptr inbounds %struct.reiserfs_journal, ptr %30, i32 0, i32 45
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end23.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %written.0.i = phi i32 [ %add.i, %if.end23.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  %transactions_flushed.0.i = phi i32 [ %inc.i6, %if.end23.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  %jl.addr.0.i = phi ptr [ %add.ptr.i, %if.end23.i.while.cond.i_crit_edge ], [ %jl, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %transactions_flushed.0.i, i32 %i.0.lcssa)
  %cmp.i = icmp slt i32 %transactions_flushed.0.i, %i.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %written.0.i, i32 %len.1)
  %cmp5.i = icmp slt i32 %written.0.i, %len.1
  %or.cond2.i = select i1 %tobool3.not.i, i1 %cmp5.i, i1 %cmp.i
  br i1 %or.cond2.i, label %while.body.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %j_len.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 2
  %40 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %j_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp6.i = icmp eq i32 %41, 0
  br i1 %cmp6.i, label %while.body.i.if.then15.i_crit_edge, label %lor.lhs.false.i

while.body.i.if.then15.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %j_state.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 1
  %42 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %j_state.i, align 4
  %and.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %lor.lhs.false.i.if.then15.i_crit_edge

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %j_commit_left.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_commit_left.i, i32 noundef 4) #13
  %44 = ptrtoint ptr %j_commit_left.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %j_commit_left.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool10.not.i = icmp eq i32 %45, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false8.i.if.then15.i_crit_edge

lor.lhs.false8.i.if.then15.i_crit_edge:           ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false8.i
  %46 = ptrtoint ptr %j_state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %j_state.i, align 4
  %and13.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %lor.lhs.false11.i.if.then15.i_crit_edge, label %if.end16.i

lor.lhs.false11.i.if.then15.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false11.i.if.then15.i_crit_edge, %lor.lhs.false8.i.if.then15.i_crit_edge, %lor.lhs.false.i.if.then15.i_crit_edge, %while.body.i.if.then15.i_crit_edge
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i4.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %s_journal.i4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_journal.i4.i, align 4
  %j_working_list.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 14
  %52 = ptrtoint ptr %j_working_list.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %j_working_list.i.i, align 4
  %cmp.i.not.i5.i = icmp eq ptr %53, %j_working_list.i.i
  br i1 %cmp.i.not.i5.i, label %if.then15.i.while.end.i_crit_edge, label %if.then.i6.i

if.then15.i.while.end.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.then.i6.i:                                     ; preds = %if.then15.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %j_working_list.i.i) #13
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i6.i.list_del_init.exit.i.i_crit_edge

if.then.i6.i.list_del_init.exit.i.i_crit_edge:    ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i6.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 14, i32 1
  %54 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i.i, align 4
  %56 = ptrtoint ptr %j_working_list.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %j_working_list.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i6.i.list_del_init.exit.i.i_crit_edge
  %60 = ptrtoint ptr %j_working_list.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %j_working_list.i.i, ptr %j_working_list.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 14, i32 1
  %61 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %j_working_list.i.i, ptr %prev.i3.i.i.i, align 4
  %j_num_work_lists.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %51, i32 0, i32 39
  %62 = ptrtoint ptr %j_num_work_lists.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %j_num_work_lists.i.i, align 4
  %dec.i.i = add i32 %63, -1
  store i32 %dec.i.i, ptr %j_num_work_lists.i.i, align 4
  br label %while.end.i

if.end16.i:                                       ; preds = %lor.lhs.false11.i
  %or.i.i = or i32 %47, 1
  %64 = ptrtoint ptr %j_state.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i.i, ptr %j_state.i, align 4
  %65 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_fs_info.i, align 16
  %s_journal.i.i.i = getelementptr inbounds %struct.reiserfs_sb_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %s_journal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_journal.i.i.i, align 4
  %j_working_list.i.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 14
  %69 = ptrtoint ptr %j_working_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %j_working_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %70, %j_working_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end16.i.del_from_work_list.exit.i.i_crit_edge, label %if.then.i.i.i

if.end16.i.del_from_work_list.exit.i.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %del_from_work_list.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end16.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %j_working_list.i.i.i) #13
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge

if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 14, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %j_working_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %j_working_list.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %77 = ptrtoint ptr %j_working_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %j_working_list.i.i.i, ptr %j_working_list.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 14, i32 1
  %78 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %j_working_list.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  %j_num_work_lists.i.i.i = getelementptr inbounds %struct.reiserfs_journal, ptr %68, i32 0, i32 39
  %79 = ptrtoint ptr %j_num_work_lists.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %j_num_work_lists.i.i.i, align 4
  %dec.i.i.i = add i32 %80, -1
  store i32 %dec.i.i.i, ptr %j_num_work_lists.i.i.i, align 4
  br label %del_from_work_list.exit.i.i

del_from_work_list.exit.i.i:                      ; preds = %list_del_init.exit.i.i.i, %if.end16.i.del_from_work_list.exit.i.i_crit_edge
  %81 = ptrtoint ptr %j_len.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %j_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i.i = icmp eq i32 %82, 0
  br i1 %cmp.i.i, label %del_from_work_list.exit.i.i.if.end20.i_crit_edge, label %lor.lhs.false.i.i

del_from_work_list.exit.i.i.if.end20.i_crit_edge: ; preds = %del_from_work_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

lor.lhs.false.i.i:                                ; preds = %del_from_work_list.exit.i.i
  %j_nonzerolen.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 3
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %j_nonzerolen.i.i, i32 noundef 4) #13
  %83 = ptrtoint ptr %j_nonzerolen.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %j_nonzerolen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp1.i.i = icmp eq i32 %84, 0
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.if.end20.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end20.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %j_realblock.i.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 11
  %85 = ptrtoint ptr %j_realblock.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %j_realblock.i.i, align 8
  %tobool.not75.i.i = icmp eq ptr %86, null
  br i1 %tobool.not75.i.i, label %if.end.i.i.if.end20.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

if.end.i.i.if.end20.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

while.body.i.i:                                   ; preds = %next.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %ret.077.i.i = phi i32 [ %ret.2.i.i, %next.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.i.while.body.i.i_crit_edge ]
  %cn.076.i.i = phi ptr [ %122, %next.i.i.while.body.i.i_crit_edge ], [ %86, %if.end.i.i.while.body.i.i_crit_edge ]
  %blocknr.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.076.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %blocknr.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blocknr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp2.i.i = icmp eq i32 %88, 0
  br i1 %cmp2.i.i, label %while.body.i.i.next.i.i_crit_edge, label %if.end4.i8.i

while.body.i.i.next.i.i_crit_edge:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next.i.i

if.end4.i8.i:                                     ; preds = %while.body.i.i
  %89 = ptrtoint ptr %cn.076.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cn.076.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %90, null
  br i1 %tobool5.not.i.i, label %if.end4.i8.i.next.i.i_crit_edge, label %land.lhs.true.i.i

if.end4.i8.i.next.i.i_crit_edge:                  ; preds = %if.end4.i8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next.i.i

land.lhs.true.i.i:                                ; preds = %if.end4.i8.i
  %call6.i.i = tail call fastcc i32 @can_dirty(ptr noundef nonnull %cn.076.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.next.i.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.next.i.i_crit_edge:             ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %91 = ptrtoint ptr %cn.076.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cn.076.i.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %95 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool11.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool11.not.i.i, label %land.lhs.true8.i.i.next.i.i_crit_edge, label %if.then12.i.i

land.lhs.true8.i.i.next.i.i_crit_edge:            ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %next.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true8.i.i
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %92, i32 0, i32 11
  %call.i.i.i65.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #13
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #13, !srcloc !297
  tail call void @__might_sleep(ptr noundef nonnull @.str.70, i32 noundef 366) #13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %92, i32 noundef 4) #13
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %92, align 4
  %and.i.i.i.i.i.i = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %trylock_buffer.exit.i.i.i, label %if.then12.i.i.if.then.i66.i.i_crit_edge

if.then12.i.i.if.then.i66.i.i_crit_edge:          ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i66.i.i

trylock_buffer.exit.i.i.i:                        ; preds = %if.then12.i.i
  tail call void @llvm.prefetch.p0(ptr %92, i32 1, i32 3, i32 1) #13
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 4, ptr elementtype(i32) %92) #13, !srcloc !325
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %99, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !326
  %100 = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.not.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.not.i.i.i, label %trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge, label %trylock_buffer.exit.i.i.i.if.then.i66.i.i_crit_edge

trylock_buffer.exit.i.i.i.if.then.i66.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i66.i.i

trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lock_buffer.exit.i.i

if.then.i66.i.i:                                  ; preds = %trylock_buffer.exit.i.i.i.if.then.i66.i.i_crit_edge, %if.then12.i.i.if.then.i66.i.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %92) #13
  br label %lock_buffer.exit.i.i

lock_buffer.exit.i.i:                             ; preds = %if.then.i66.i.i, %trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge
  %101 = ptrtoint ptr %cn.076.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cn.076.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %102, null
  br i1 %tobool15.not.i.i, label %lock_buffer.exit.i.i.if.else.i.i_crit_edge, label %land.lhs.true16.i.i

lock_buffer.exit.i.i.if.else.i.i_crit_edge:       ; preds = %lock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

land.lhs.true16.i.i:                              ; preds = %lock_buffer.exit.i.i
  %call17.i.i = tail call fastcc i32 @can_dirty(ptr noundef nonnull %cn.076.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %land.lhs.true16.i.i.if.else.i.i_crit_edge, label %land.lhs.true19.i.i

land.lhs.true16.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

land.lhs.true19.i.i:                              ; preds = %land.lhs.true16.i.i
  %103 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %92, align 4
  %105 = and i32 %104, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool21.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool21.not.i.i, label %land.lhs.true19.i.i.if.else.i.i_crit_edge, label %if.then22.i.i

land.lhs.true19.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

if.then22.i.i:                                    ; preds = %land.lhs.true19.i.i
  %106 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %92, align 4
  %108 = and i32 %107, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool24.not.i.i = icmp eq i32 %108, 0
  br i1 %tobool24.not.i.i, label %if.then22.i.i.do.body.i.i_crit_edge, label %lor.lhs.false25.i.i

if.then22.i.i.do.body.i.i_crit_edge:              ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

lor.lhs.false25.i.i:                              ; preds = %if.then22.i.i
  %109 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %92, align 4
  %111 = and i32 %110, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool27.not.i.i = icmp eq i32 %111, 0
  br i1 %tobool27.not.i.i, label %if.end32.i.i, label %lor.lhs.false25.i.i.do.body.i.i_crit_edge

lor.lhs.false25.i.i.do.body.i.i_crit_edge:        ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false25.i.i.do.body.i.i_crit_edge, %if.then22.i.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1663, 0\0A.popsection", ""() #13, !srcloc !354
  unreachable

if.end32.i.i:                                     ; preds = %lor.lhs.false25.i.i
  %112 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %113)
  %cmp.i.i.i = icmp sgt i32 %113, 31
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %do.end7.i.i.i, !prof !300

do.body2.i.i.i:                                   ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 694, 0\0A.popsection", ""() #13, !srcloc !344
  unreachable

do.end7.i.i.i:                                    ; preds = %if.end32.i.i
  %inc.i.i.i = add nsw i32 %113, 1
  %114 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %inc.i.i.i, ptr %nr.i, align 4
  %arrayidx.i.i.i = getelementptr [32 x ptr], ptr %chunk.i, i32 0, i32 %113
  %115 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %92, ptr %arrayidx.i.i.i, align 4
  %116 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %116)
  %cmp11.i.i.i = icmp sgt i32 %116, 31
  br i1 %cmp11.i.i.i, label %do.end7.i.i.i.for.body.i.i.i_crit_edge, label %do.end7.i.i.i.add_to_chunk.exit.i.i_crit_edge

do.end7.i.i.i.add_to_chunk.exit.i.i_crit_edge:    ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %add_to_chunk.exit.i.i

do.end7.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %do.end7.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %do.end7.i.i.i.for.body.i.i.i_crit_edge
  %i.07.i.i.i = phi i32 [ %inc.i71.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %do.end7.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i70.i.i = getelementptr [32 x ptr], ptr %chunk.i, i32 0, i32 %i.07.i.i.i
  %117 = ptrtoint ptr %arrayidx.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i70.i.i, align 4
  tail call fastcc void @submit_logged_buffer(ptr noundef %118) #13
  %inc.i71.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i71.i.i, %116
  br i1 %exitcond.not.i, label %write_chunk.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

write_chunk.exit.i.i:                             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %nr.i, align 4
  br label %add_to_chunk.exit.i.i

add_to_chunk.exit.i.i:                            ; preds = %write_chunk.exit.i.i, %do.end7.i.i.i.add_to_chunk.exit.i.i_crit_edge
  %inc.i.i = add i32 %ret.077.i.i, 1
  br label %if.end34.i.i

if.else.i.i:                                      ; preds = %land.lhs.true19.i.i.if.else.i.i_crit_edge, %land.lhs.true16.i.i.if.else.i.i_crit_edge, %lock_buffer.exit.i.i.if.else.i.i_crit_edge
  tail call void @unlock_buffer(ptr noundef %92) #13
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.else.i.i, %add_to_chunk.exit.i.i
  %ret.1.i.i = phi i32 [ %inc.i.i, %add_to_chunk.exit.i.i ], [ %ret.077.i.i, %if.else.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !296
  %call.i.i.i68.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #13
  %120 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #13, !srcloc !295
  br label %next.i.i

next.i.i:                                         ; preds = %if.end34.i.i, %land.lhs.true8.i.i.next.i.i_crit_edge, %land.lhs.true.i.i.next.i.i_crit_edge, %if.end4.i8.i.next.i.i_crit_edge, %while.body.i.i.next.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %ret.077.i.i, %while.body.i.i.next.i.i_crit_edge ], [ %ret.1.i.i, %if.end34.i.i ], [ %ret.077.i.i, %land.lhs.true8.i.i.next.i.i_crit_edge ], [ %ret.077.i.i, %land.lhs.true.i.i.next.i.i_crit_edge ], [ %ret.077.i.i, %if.end4.i8.i.next.i.i_crit_edge ]
  %next36.i.i = getelementptr inbounds %struct.reiserfs_journal_cnode, ptr %cn.076.i.i, i32 0, i32 5
  %121 = ptrtoint ptr %next36.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %next36.i.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.31, i32 noundef 1674, i32 noundef 0) #13
  %call.i.i9.i = tail call i32 @__cond_resched() #13
  %tobool.not.i.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i, label %write_one_transaction.exit.i, label %next.i.i.while.body.i.i_crit_edge

next.i.i.while.body.i.i_crit_edge:                ; preds = %next.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

write_one_transaction.exit.i:                     ; preds = %next.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %cmp18.i = icmp slt i32 %ret.2.i.i, 0
  br i1 %cmp18.i, label %write_one_transaction.exit.i.kupdate_transactions.exit_crit_edge, label %write_one_transaction.exit.i.if.end20.i_crit_edge

write_one_transaction.exit.i.if.end20.i_crit_edge: ; preds = %write_one_transaction.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.i

write_one_transaction.exit.i.kupdate_transactions.exit_crit_edge: ; preds = %write_one_transaction.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kupdate_transactions.exit

if.end20.i:                                       ; preds = %write_one_transaction.exit.i.if.end20.i_crit_edge, %if.end.i.i.if.end20.i_crit_edge, %lor.lhs.false.i.i.if.end20.i_crit_edge, %del_from_work_list.exit.i.i.if.end20.i_crit_edge
  %retval.0.i1017.i = phi i32 [ %ret.2.i.i, %write_one_transaction.exit.i.if.end20.i_crit_edge ], [ 0, %lor.lhs.false.i.i.if.end20.i_crit_edge ], [ 0, %del_from_work_list.exit.i.i.if.end20.i_crit_edge ], [ 0, %if.end.i.i.if.end20.i_crit_edge ]
  %j_list.i = getelementptr inbounds %struct.reiserfs_journal_list, ptr %jl.addr.0.i, i32 0, i32 13
  %123 = ptrtoint ptr %j_list.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %j_list.i, align 8
  %cmp21.i = icmp eq ptr %124, %j_journal_list.i
  br i1 %cmp21.i, label %if.end20.i.while.end.i_crit_edge, label %if.end23.i

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end23.i:                                       ; preds = %if.end20.i
  %add.i = add i32 %retval.0.i1017.i, %written.0.i
  %inc.i6 = add i32 %transactions_flushed.0.i, 1
  %add.ptr.i = getelementptr i8, ptr %124, i32 -144
  %j_trans_id24.i = getelementptr i8, ptr %124, i32 -28
  %125 = ptrtoint ptr %j_trans_id24.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %j_trans_id24.i, align 4
  %cmp25.not.i = icmp ugt i32 %126, %25
  br i1 %cmp25.not.i, label %if.end23.i.while.cond.i_crit_edge, label %if.end23.i.while.end.i_crit_edge

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end23.i.while.cond.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end23.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge, %list_del_init.exit.i.i, %if.then15.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %127 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp6.i.i = icmp sgt i32 %128, 0
  br i1 %cmp6.i.i, label %while.end.i.for.body.i.i_crit_edge, label %while.end.i.kupdate_transactions.exit_crit_edge

while.end.i.kupdate_transactions.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kupdate_transactions.exit

while.end.i.for.body.i.i_crit_edge:               ; preds = %while.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.end.i.for.body.i.i_crit_edge
  %i.07.i.i = phi i32 [ %inc.i11.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [32 x ptr], ptr %chunk.i, i32 0, i32 %i.07.i.i
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i, align 4
  tail call fastcc void @submit_logged_buffer(ptr noundef %130) #13
  %inc.i11.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond28.not.i = icmp eq i32 %inc.i11.i, %128
  br i1 %exitcond28.not.i, label %for.body.i.i.kupdate_transactions.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.body.i.i.kupdate_transactions.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kupdate_transactions.exit

kupdate_transactions.exit:                        ; preds = %for.body.i.i.kupdate_transactions.exit_crit_edge, %while.end.i.kupdate_transactions.exit_crit_edge, %write_one_transaction.exit.i.kupdate_transactions.exit_crit_edge, %if.then.i.i.kupdate_transactions.exit_crit_edge, %if.then20.kupdate_transactions.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %j_flush_mutex.i) #13
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %chunk.i) #13
  br label %if.end22

if.end22:                                         ; preds = %kupdate_transactions.exit, %for.end.if.end22_crit_edge
  tail call fastcc void @flush_journal_list(ptr noundef %s, ptr noundef %flush_jl.1, i32 noundef 1)
  %131 = ptrtoint ptr %j_refcount.i3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %j_refcount.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp.i8 = icmp slt i32 %132, 1
  br i1 %cmp.i8, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %j_trans_id.i9 = getelementptr inbounds %struct.reiserfs_journal_list, ptr %flush_jl.1, i32 0, i32 7
  %133 = ptrtoint ptr %j_trans_id.i9 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %j_trans_id.i9, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.put_journal_list, ptr noundef nonnull @.str.72, i32 noundef %134, i32 noundef %132) #18
  unreachable

if.end.i:                                         ; preds = %if.end22
  %dec.i = add nsw i32 %132, -1
  %135 = ptrtoint ptr %j_refcount.i3 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %dec.i, ptr %j_refcount.i3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp eq i32 %dec.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.end.i.put_journal_list.exit_crit_edge

if.end.i.put_journal_list.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_journal_list.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %flush_jl.1) #13
  br label %put_journal_list.exit

put_journal_list.exit:                            ; preds = %if.then4.i, %if.end.i.put_journal_list.exit_crit_edge
  %136 = ptrtoint ptr %j_refcount.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %j_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp.i11 = icmp slt i32 %137, 1
  br i1 %cmp.i11, label %if.then.i13, label %if.end.i16

if.then.i13:                                      ; preds = %put_journal_list.exit
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %j_trans_id5 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %j_trans_id5, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef %s, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.put_journal_list, ptr noundef nonnull @.str.72, i32 noundef %139, i32 noundef %137) #18
  unreachable

if.end.i16:                                       ; preds = %put_journal_list.exit
  %dec.i14 = add nsw i32 %137, -1
  %140 = ptrtoint ptr %j_refcount.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %dec.i14, ptr %j_refcount.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i14)
  %cmp3.i15 = icmp eq i32 %dec.i14, 0
  br i1 %cmp3.i15, label %if.then4.i17, label %if.end.i16.put_journal_list.exit18_crit_edge

if.end.i16.put_journal_list.exit18_crit_edge:     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #15
  br label %put_journal_list.exit18

if.then4.i17:                                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %jl) #13
  br label %put_journal_list.exit18

put_journal_list.exit18:                          ; preds = %if.then4.i17, %if.end.i16.put_journal_list.exit18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @submit_logged_buffer(ptr noundef %bh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #13, !srcloc !297
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 7
  %1 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @reiserfs_end_buffer_io_sync, ptr %b_end_io, align 4
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %bh) #13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #13
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 21, ptr noundef %bh) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #13, !srcloc !355
  unreachable

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not, label %do.body6, label %if.end10

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/journal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 652, 0\0A.popsection", ""() #13, !srcloc !356
  unreachable

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call11 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %bh) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @reiserfs_end_buffer_io_sync(ptr noundef %bh, i32 noundef %uptodate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %3 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %b_blocknr, align 8
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 6
  %5 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_bdev, align 8
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.reiserfs_end_buffer_io_sync, ptr noundef nonnull @.str.153, i64 noundef %4, ptr noundef %6) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uptodate)
  %tobool1.not = icmp eq i32 %uptodate, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %bh, align 4
  %and1.i.i10 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i10)
  %tobool.not.i = icmp eq i32 %and1.i.i10, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #13
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #13
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then.i, %if.then2.if.end3_crit_edge
  tail call void @unlock_buffer(ptr noundef %bh) #13
  tail call fastcc void @release_buffer_page(ptr noundef %bh)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !13, !15, !16, !18, !19, !21, !22, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !93, !94, !96, !97, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !115, !116, !118, !120, !121, !123, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !194, !195, !197, !198, !200, !202, !204, !206, !207, !208, !210, !212, !214, !216, !218, !220, !222, !223, !224, !226, !227, !229, !230, !232, !233, !235, !237, !239, !240, !242, !244, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !268, !270, !272, !274, !275, !277, !278, !279, !281, !282}
!llvm.named.register.sp = !{!283}
!llvm.module.flags = !{!284, !285, !286, !287, !288, !289, !290, !291}
!llvm.ident = !{!292}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/journal.c", i32 292, i32 4}
!2 = !{ptr @__func__.reiserfs_allocate_list_bitmaps, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/journal.c", i32 2723, i32 3}
!6 = !{ptr @__func__.journal_init, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/reiserfs/journal.c", i32 2754, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/reiserfs/journal.c", i32 2771, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/reiserfs/journal.c", i32 2779, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/reiserfs/journal.c", i32 2791, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/reiserfs/journal.c", i32 2801, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/reiserfs/journal.c", i32 2826, i32 20}
!24 = !{ptr @journal_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../fs/reiserfs/journal.c", i32 2845, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @journal_init.__key.15, !28, !"__key", i1 false, i1 false}
!28 = !{!"../fs/reiserfs/journal.c", i32 2856, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @journal_init.__key.17, !31, !"__key", i1 false, i1 false}
!31 = !{!"../fs/reiserfs/journal.c", i32 2857, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @journal_init.__key.19, !34, !"__key", i1 false, i1 false}
!34 = !{!"../fs/reiserfs/journal.c", i32 2858, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/reiserfs/journal.c", i32 2871, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/reiserfs/journal.c", i32 2891, i32 3}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/reiserfs/journal.c", i32 2898, i32 3}
!44 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @journal_init.__key.27, !46, !"__key", i1 false, i1 false}
!46 = !{!"../fs/reiserfs/journal.c", i32 2903, i32 2}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @journal_init.__key.29, !46, !"__key", i1 false, i1 false}
!49 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/reiserfs/journal.c", i32 2960, i32 2}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/reiserfs/journal.c", i32 3236, i32 5}
!54 = !{ptr @__func__.journal_begin, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/reiserfs/journal.c", i32 3246, i32 4}
!58 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/reiserfs/journal.c", i32 3291, i32 3}
!61 = !{ptr @__func__.journal_mark_dirty, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/reiserfs/journal.c", i32 3310, i32 3}
!65 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/reiserfs/journal.c", i32 3321, i32 3}
!68 = !{ptr @.str.41, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/reiserfs/journal.c", i32 3332, i32 3}
!71 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/reiserfs/journal.c", i32 3353, i32 4}
!74 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.46, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/reiserfs/journal.c", i32 3390, i32 3}
!77 = !{ptr @__func__.journal_end, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.47, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/reiserfs/journal.c", i32 3768, i32 4}
!81 = !{ptr @__func__.journal_mark_freed, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/reiserfs/journal.c", i32 3806, i32 8}
!85 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nr_reiserfs_jh, !87, !"nr_reiserfs_jh", i1 false, i1 false}
!87 = !{!"../fs/reiserfs/journal.c", i32 709, i32 17}
!88 = !{ptr @allocate_bitmap_node.id, !89, !"id", i1 false, i1 false}
!89 = !{!"../fs/reiserfs/journal.c", i32 139, i32 13}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/reiserfs/journal.c", i32 2623, i32 4}
!92 = !{ptr @__func__.journal_init_dev, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/reiserfs/journal.c", i32 2638, i32 3}
!96 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/reiserfs/journal.c", i32 2646, i32 9}
!99 = !{ptr @__func__.check_advise_trans_params, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/reiserfs/journal.c", i32 2678, i32 4}
!101 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/reiserfs/journal.c", i32 2685, i32 4}
!104 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/reiserfs/journal.c", i32 2698, i32 4}
!107 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @alloc_journal_list.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../fs/reiserfs/journal.c", i32 2576, i32 2}
!110 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/reiserfs/journal.c", i32 982, i32 31}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/reiserfs/journal.c", i32 1086, i32 4}
!115 = !{ptr @.str.65, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/reiserfs/journal.c", i32 1126, i32 3}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/reiserfs/journal.c", i32 1133, i32 3}
!120 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/reiserfs/journal.c", i32 1159, i32 29}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/reiserfs/journal.c", i32 552, i32 3}
!127 = !{ptr @__func__.put_journal_list, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.72, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/reiserfs/journal.c", i32 2386, i32 20}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/reiserfs/journal.c", i32 2411, i32 11}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/reiserfs/journal.c", i32 2463, i32 13}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/reiserfs/journal.c", i32 2473, i32 13}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/reiserfs/journal.c", i32 2482, i32 13}
!139 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/reiserfs/journal.c", i32 2497, i32 11}
!141 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/reiserfs/journal.c", i32 2522, i32 11}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/reiserfs/journal.c", i32 2543, i32 42}
!145 = !{ptr @.str.81, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/reiserfs/journal.c", i32 2548, i32 10}
!147 = !{ptr @.str.82, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/reiserfs/journal.c", i32 2019, i32 47}
!149 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/reiserfs/journal.c", i32 2023, i32 12}
!151 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/reiserfs/journal.c", i32 2033, i32 12}
!153 = !{ptr @.str.85, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/reiserfs/journal.c", i32 2041, i32 4}
!155 = !{ptr @__func__.journal_transaction_is_valid, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.87, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/reiserfs/journal.c", i32 2063, i32 12}
!159 = !{ptr @.str.88, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/reiserfs/journal.c", i32 2074, i32 13}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../fs/reiserfs/journal.c", i32 2083, i32 11}
!163 = !{ptr @.str.90, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/reiserfs/journal.c", i32 2132, i32 42}
!165 = !{ptr @.str.91, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/reiserfs/journal.c", i32 2137, i32 43}
!167 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/reiserfs/journal.c", i32 2145, i32 43}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/reiserfs/journal.c", i32 2162, i32 11}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/reiserfs/journal.c", i32 2174, i32 3}
!173 = !{ptr @__func__.journal_read_transaction, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.95, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/reiserfs/journal.c", i32 2197, i32 3}
!177 = !{ptr @.str.97, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/reiserfs/journal.c", i32 2220, i32 4}
!180 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.100, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../fs/reiserfs/journal.c", i32 2229, i32 4}
!183 = !{ptr @.str.101, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.102, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/reiserfs/journal.c", i32 2248, i32 4}
!186 = !{ptr @.str.103, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../fs/reiserfs/journal.c", i32 2273, i32 4}
!189 = !{ptr @.str.105, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.106, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/reiserfs/journal.c", i32 2291, i32 10}
!192 = !{ptr @.str.107, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/reiserfs/journal.c", i32 1253, i32 5}
!194 = !{ptr @__func__._update_journal_header_block, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../fs/reiserfs/journal.c", i32 1278, i32 4}
!197 = !{ptr @.str.109, !196, !"<string literal>", i1 false, i1 false}
!198 = distinct !{null, !199, !"__already_done", i1 false, i1 false}
!199 = !{!"../fs/reiserfs/journal.c", i32 2976, i32 2}
!200 = distinct !{null, !201, !"__already_done", i1 false, i1 false}
!201 = !{!"../fs/reiserfs/journal.c", i32 2982, i32 2}
!202 = !{ptr @.str.111, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/reiserfs/journal.c", i32 372, i32 32}
!204 = !{ptr @.str.112, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/reiserfs/journal.c", i32 3462, i32 4}
!206 = !{ptr @__func__.remove_from_transaction, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/reiserfs/journal.c", i32 399, i32 32}
!210 = !{ptr @.str.115, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!214 = !{ptr @.str.117, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!216 = !{ptr @.str.118, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../include/linux/mm.h", i32 717, i32 2}
!218 = !{ptr @.str.119, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../fs/reiserfs/journal.c", i32 4019, i32 32}
!220 = !{ptr @.str.120, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../fs/reiserfs/journal.c", i32 4132, i32 5}
!222 = !{ptr @__func__.do_journal_end, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.122, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../fs/reiserfs/journal.c", i32 4150, i32 5}
!226 = !{ptr @.str.123, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.124, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/reiserfs/journal.c", i32 4226, i32 4}
!229 = !{ptr @.str.125, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../fs/reiserfs/journal.c", i32 4361, i32 3}
!232 = !{ptr @.str.127, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.128, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/reiserfs/journal.c", i32 4376, i32 32}
!235 = !{ptr @__func__.check_journal_end, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/reiserfs/journal.c", i32 3629, i32 3}
!237 = !{ptr @.str.129, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/reiserfs/journal.c", i32 3716, i32 3}
!239 = !{ptr @.str.130, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.131, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!242 = !{ptr @.str.132, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../fs/reiserfs/journal.c", i32 1363, i32 3}
!244 = !{ptr @__func__.flush_journal_list, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.133, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.134, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/reiserfs/journal.c", i32 1376, i32 3}
!248 = !{ptr @.str.135, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.136, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/reiserfs/journal.c", i32 1408, i32 3}
!251 = !{ptr @.str.137, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.138, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/reiserfs/journal.c", i32 1480, i32 4}
!254 = !{ptr @.str.139, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.140, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../fs/reiserfs/journal.c", i32 1502, i32 4}
!257 = !{ptr @.str.141, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.142, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/reiserfs/journal.c", i32 1516, i32 5}
!260 = !{ptr @.str.143, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.144, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/reiserfs/journal.c", i32 1526, i32 6}
!263 = !{ptr @.str.145, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.146, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../fs/reiserfs/journal.c", i32 1535, i32 6}
!266 = !{ptr @.str.147, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../fs/reiserfs/journal.c", i32 1540, i32 6}
!268 = !{ptr @.str.148, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../fs/reiserfs/journal.c", i32 1564, i32 11}
!270 = !{ptr @.str.149, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../fs/reiserfs/journal.c", i32 1596, i32 12}
!272 = !{ptr @.str.150, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/reiserfs/journal.c", i32 1606, i32 3}
!274 = !{ptr @.str.151, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.152, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../fs/reiserfs/journal.c", i32 620, i32 3}
!277 = !{ptr @__func__.reiserfs_end_buffer_io_sync, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @.str.153, !276, !"<string literal>", i1 false, i1 false}
!279 = distinct !{null, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../fs/reiserfs/journal.c", i32 1211, i32 5}
!281 = distinct !{null, !280, !"<string literal>", i1 false, i1 false}
!282 = distinct !{null, !280, !"<string literal>", i1 false, i1 false}
!283 = !{!"sp"}
!284 = !{i32 1, !"wchar_size", i32 2}
!285 = !{i32 1, !"min_enum_size", i32 4}
!286 = !{i32 8, !"branch-target-enforcement", i32 0}
!287 = !{i32 8, !"sign-return-address", i32 0}
!288 = !{i32 8, !"sign-return-address-all", i32 0}
!289 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!290 = !{i32 7, !"uwtable", i32 1}
!291 = !{i32 7, !"frame-pointer", i32 2}
!292 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!293 = !{i64 2155090202, i64 2155090688, i64 2155090239, i64 2155090295, i64 2155090329, i64 2155090353, i64 2155090394, i64 2155090415, i64 2155090443, i64 2155090477}
!294 = !{i64 2155101525, i64 2155102011, i64 2155101562, i64 2155101618, i64 2155101652, i64 2155101676, i64 2155101717, i64 2155101738, i64 2155101766, i64 2155101800}
!295 = !{i64 2148324119, i64 2148324145, i64 2148324174, i64 2148324208, i64 2148324239, i64 2148324262}
!296 = !{i64 2154168719}
!297 = !{i64 2148321654, i64 2148321680, i64 2148321709, i64 2148321743, i64 2148321774, i64 2148321797}
!298 = !{!"branch_weights", i32 2000, i32 1}
!299 = !{i64 2155103282, i64 2155103768, i64 2155103319, i64 2155103375, i64 2155103409, i64 2155103433, i64 2155103474, i64 2155103495, i64 2155103523, i64 2155103557}
!300 = !{!"branch_weights", i32 1, i32 2000}
!301 = !{i64 2155154013, i64 2155154500, i64 2155154050, i64 2155154106, i64 2155154140, i64 2155154164, i64 2155154205, i64 2155154226, i64 2155154254, i64 2155154288}
!302 = !{i64 2155218177, i64 2155222725, i64 2155218214, i64 2155218270, i64 2155218304, i64 2155218328, i64 2155218369, i64 2155218390, i64 2155218418, i64 2155218452}
!303 = !{i8 0, i8 2}
!304 = !{i64 2155199276, i64 2155199763, i64 2155199313, i64 2155199369, i64 2155199403, i64 2155199427, i64 2155199468, i64 2155199489, i64 2155199517, i64 2155199551}
!305 = !{i64 2155200911, i64 2155201398, i64 2155200948, i64 2155201004, i64 2155201038, i64 2155201062, i64 2155201103, i64 2155201124, i64 2155201152, i64 2155201186}
!306 = !{i64 2154204563, i64 2154205051, i64 2154204600, i64 2154204656, i64 2154204690, i64 2154204714, i64 2154204755, i64 2154204776, i64 2154204804, i64 2154204838}
!307 = !{i64 2155216281, i64 2155216768, i64 2155216318, i64 2155216374, i64 2155216408, i64 2155216432, i64 2155216473, i64 2155216494, i64 2155216522, i64 2155216556}
!308 = !{i64 2155225570, i64 2155226057, i64 2155225607, i64 2155225663, i64 2155225697, i64 2155225721, i64 2155225762, i64 2155225783, i64 2155225811, i64 2155225845}
!309 = !{i64 2155227626, i64 2155228113, i64 2155227663, i64 2155227719, i64 2155227753, i64 2155227777, i64 2155227818, i64 2155227839, i64 2155227867, i64 2155227901}
!310 = !{i64 2155229265, i64 2155229752, i64 2155229302, i64 2155229358, i64 2155229392, i64 2155229416, i64 2155229457, i64 2155229478, i64 2155229506, i64 2155229540}
!311 = !{i64 2155234415, i64 2155234902, i64 2155234452, i64 2155234508, i64 2155234542, i64 2155234566, i64 2155234607, i64 2155234628, i64 2155234656, i64 2155234690}
!312 = !{i64 2155223911, i64 2155224398, i64 2155223948, i64 2155224004, i64 2155224038, i64 2155224062, i64 2155224103, i64 2155224124, i64 2155224152, i64 2155224186}
!313 = !{i64 2155214188, i64 2155214675, i64 2155214225, i64 2155214281, i64 2155214315, i64 2155214339, i64 2155214380, i64 2155214401, i64 2155214429, i64 2155214463}
!314 = !{i64 2155230903, i64 2155231390, i64 2155230940, i64 2155230996, i64 2155231030, i64 2155231054, i64 2155231095, i64 2155231116, i64 2155231144, i64 2155231178}
!315 = !{i64 2155250205, i64 2155250692, i64 2155250242, i64 2155250298, i64 2155250332, i64 2155250356, i64 2155250397, i64 2155250418, i64 2155250446, i64 2155250480}
!316 = !{i64 2155251800, i64 2155252287, i64 2155251837, i64 2155251893, i64 2155251927, i64 2155251951, i64 2155251992, i64 2155252013, i64 2155252041, i64 2155252075}
!317 = !{i64 2155253389, i64 2155253876, i64 2155253426, i64 2155253482, i64 2155253516, i64 2155253540, i64 2155253581, i64 2155253602, i64 2155253630, i64 2155253664}
!318 = !{i64 2155242352, i64 2155242839, i64 2155242389, i64 2155242445, i64 2155242479, i64 2155242503, i64 2155242544, i64 2155242565, i64 2155242593, i64 2155242627}
!319 = !{i64 2155244111, i64 2155244598, i64 2155244148, i64 2155244204, i64 2155244238, i64 2155244262, i64 2155244303, i64 2155244324, i64 2155244352, i64 2155244386}
!320 = !{i64 2155260331, i64 2155260818, i64 2155260368, i64 2155260424, i64 2155260458, i64 2155260482, i64 2155260523, i64 2155260544, i64 2155260572, i64 2155260606}
!321 = !{i64 2155263677}
!322 = !{i64 2155264059, i64 2155268607, i64 2155264096, i64 2155264152, i64 2155264186, i64 2155264210, i64 2155264251, i64 2155264272, i64 2155264300, i64 2155264334}
!323 = !{i64 2155236209, i64 2155236696, i64 2155236246, i64 2155236302, i64 2155236336, i64 2155236360, i64 2155236401, i64 2155236422, i64 2155236450, i64 2155236484}
!324 = !{i64 2155237810, i64 2155238297, i64 2155237847, i64 2155237903, i64 2155237937, i64 2155237961, i64 2155238002, i64 2155238023, i64 2155238051, i64 2155238085}
!325 = !{i64 2148330512, i64 2148330544, i64 2148330573, i64 2148330607, i64 2148330638, i64 2148330661}
!326 = !{i64 2148419593}
!327 = !{i64 2155247936, i64 2155248423, i64 2155247973, i64 2155248029, i64 2155248063, i64 2155248087, i64 2155248128, i64 2155248149, i64 2155248177, i64 2155248211}
!328 = !{i64 2150406659, i64 2150407150, i64 2150406696, i64 2150406752, i64 2150406786, i64 2150406810, i64 2150406851, i64 2150406872, i64 2150406900, i64 2150406934}
!329 = !{i64 2153878510, i64 2153878994, i64 2153878547, i64 2153878603, i64 2153878637, i64 2153878661, i64 2153878702, i64 2153878723, i64 2153878751, i64 2153878785}
!330 = !{i64 2148998480, i64 2148998485, i64 2148998498, i64 2148998542, i64 2148998576, i64 2148998597}
!331 = !{i64 2153858598, i64 2153859081, i64 2153858635, i64 2153858691, i64 2153858725, i64 2153858749, i64 2153858790, i64 2153858811, i64 2153858839, i64 2153858873}
!332 = !{i64 2148410106}
!333 = !{i64 2148324839, i64 2148324871, i64 2148324900, i64 2148324934, i64 2148324965, i64 2148324988}
!334 = !{i64 2148410335}
!335 = !{i64 2155113604, i64 2155114090, i64 2155113641, i64 2155113697, i64 2155113731, i64 2155113755, i64 2155113796, i64 2155113817, i64 2155113845, i64 2155113879}
!336 = !{i64 2155115228, i64 2155115714, i64 2155115265, i64 2155115321, i64 2155115355, i64 2155115379, i64 2155115420, i64 2155115441, i64 2155115469, i64 2155115503}
!337 = !{i64 2155116830, i64 2155117317, i64 2155116867, i64 2155116923, i64 2155116957, i64 2155116981, i64 2155117022, i64 2155117043, i64 2155117071, i64 2155117105}
!338 = !{i64 2155118449, i64 2155118936, i64 2155118486, i64 2155118542, i64 2155118576, i64 2155118600, i64 2155118641, i64 2155118662, i64 2155118690, i64 2155118724}
!339 = !{i64 2155122134, i64 2155122621, i64 2155122171, i64 2155122227, i64 2155122261, i64 2155122285, i64 2155122326, i64 2155122347, i64 2155122375, i64 2155122409}
!340 = !{i64 2155123864, i64 2155124351, i64 2155123901, i64 2155123957, i64 2155123991, i64 2155124015, i64 2155124056, i64 2155124077, i64 2155124105, i64 2155124139}
!341 = !{i64 2155148762, i64 2155149249, i64 2155148799, i64 2155148855, i64 2155148889, i64 2155148913, i64 2155148954, i64 2155148975, i64 2155149003, i64 2155149037}
!342 = !{!"auto-init"}
!343 = !{i64 2155098269, i64 2155098755, i64 2155098306, i64 2155098362, i64 2155098396, i64 2155098420, i64 2155098461, i64 2155098482, i64 2155098510, i64 2155098544}
!344 = !{i64 2155099867, i64 2155100353, i64 2155099904, i64 2155099960, i64 2155099994, i64 2155100018, i64 2155100059, i64 2155100080, i64 2155100108, i64 2155100142}
!345 = !{i64 2155209012}
!346 = !{i64 2155134224, i64 2155134711, i64 2155134261, i64 2155134317, i64 2155134351, i64 2155134375, i64 2155134416, i64 2155134437, i64 2155134465, i64 2155134499}
!347 = !{i64 2155135829, i64 2155136316, i64 2155135866, i64 2155135922, i64 2155135956, i64 2155135980, i64 2155136021, i64 2155136042, i64 2155136070, i64 2155136104}
!348 = !{i64 2155137569, i64 2155138056, i64 2155137606, i64 2155137662, i64 2155137696, i64 2155137720, i64 2155137761, i64 2155137782, i64 2155137810, i64 2155137844}
!349 = !{i64 2155139296, i64 2155139783, i64 2155139333, i64 2155139389, i64 2155139423, i64 2155139447, i64 2155139488, i64 2155139509, i64 2155139537, i64 2155139571}
!350 = !{i64 2155140783, i64 2155141270, i64 2155140820, i64 2155140876, i64 2155140910, i64 2155140934, i64 2155140975, i64 2155140996, i64 2155141024, i64 2155141058}
!351 = !{i64 2155142750, i64 2155143237, i64 2155142787, i64 2155142843, i64 2155142877, i64 2155142901, i64 2155142942, i64 2155142963, i64 2155142991, i64 2155143025}
!352 = !{i64 2155144982, i64 2155145469, i64 2155145019, i64 2155145075, i64 2155145109, i64 2155145133, i64 2155145174, i64 2155145195, i64 2155145223, i64 2155145257}
!353 = !{i64 2155128506, i64 2155128993, i64 2155128543, i64 2155128599, i64 2155128633, i64 2155128657, i64 2155128698, i64 2155128719, i64 2155128747, i64 2155128781}
!354 = !{i64 2155147051, i64 2155147538, i64 2155147088, i64 2155147144, i64 2155147178, i64 2155147202, i64 2155147243, i64 2155147264, i64 2155147292, i64 2155147326}
!355 = !{i64 2155095301, i64 2155095787, i64 2155095338, i64 2155095394, i64 2155095428, i64 2155095452, i64 2155095493, i64 2155095514, i64 2155095542, i64 2155095576}
!356 = !{i64 2155096785, i64 2155097271, i64 2155096822, i64 2155096878, i64 2155096912, i64 2155096936, i64 2155096977, i64 2155096998, i64 2155097026, i64 2155097060}
