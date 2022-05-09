; ModuleID = '/llk/IR_all_yes/fs/erofs/data.c_pt.bc'
source_filename = "../fs/erofs/data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%struct.atomic_t = type { i32 }
%union.anon.53 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.erofs_buf = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.43, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.43 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.74 = type { ptr }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.erofs_map_dev = type { ptr, ptr, i64, i64, i32 }
%struct.erofs_dev_context = type { %struct.idr, %struct.rw_semaphore, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.erofs_device_info = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.erofs_map_blocks = type { %struct.erofs_buf, i64, i64, i64, i64, i16, i8, i32 }
%struct.erofs_inode_chunk_index = type { i16, i16, i32 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }

@z_erofs_iomap_report_ops = external dso_local constant %struct.iomap_ops, align 4
@erofs_iomap_ops = internal constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @erofs_iomap_begin, ptr @erofs_iomap_end }, [24 x i8] zeroinitializer }, align 32
@erofs_raw_access_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @erofs_readpage, ptr null, ptr null, ptr null, ptr @erofs_readahead, ptr null, ptr null, ptr @erofs_bmap, ptr null, ptr null, ptr null, ptr @noop_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@erofs_file_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @erofs_file_read_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_readonly_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_erofs_map_blocks_enter = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/erofs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_erofs_map_blocks_enter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.erofs_map_blocks_flatmode = private unnamed_addr constant [26 x i8] c"erofs_map_blocks_flatmode\00", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"inline data cross block boundary @ nid %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"internal error @ nid: %llu (size %llu), m_la 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_erofs_map_blocks_exit = external dso_local global %struct.tracepoint, align 4
@trace_erofs_map_blocks_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"erofs_iomap_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 311, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"erofs_raw_access_aops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 390, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"erofs_file_fops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 430, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 55, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"../include/trace/events/erofs.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 172, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 108, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 90, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [19 x i8] c"../fs/erofs/data.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 98, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @erofs_iomap_ops, ptr @erofs_raw_access_aops, ptr @erofs_file_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_raw_access_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_unmap_metabuf(ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kmap_type = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %kmap_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kmap_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end6_crit_edge [
    i32 1, label %if.then
    i32 2, label %do.end
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 55) #7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr.i.i = lshr i32 %6, 30
  %7 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr.i.i, label %if.then.if.end6_crit_edge [
    i32 2, label %if.then.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %8 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2.i.not.i = icmp eq i32 %8, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.if.end6_crit_edge

is_highmem_idx.exit.i.if.end6_crit_edge:          ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %4) #7
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void @kunmap_local_indexed(ptr noundef %10) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !36
  %11 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i1.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %16, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !37
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.i, %is_highmem_idx.exit.i.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %base7 = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 1
  %21 = ptrtoint ptr %base7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %base7, align 4
  %22 = ptrtoint ptr %kmap_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %kmap_type, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_put_metabuf(ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void @erofs_unmap_metabuf(ptr noundef %buf)
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !38

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !39

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@erofs_put_metabuf, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !44

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %8) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %buf, align 4
  br label %return

return:                                           ; preds = %put_page.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @erofs_read_metabuf(ptr nocapture noundef %buf, ptr nocapture noundef readonly %sb, i32 noundef %blkaddr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev, align 4
  %bd_inode = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bd_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %index3 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %blkaddr)
  %cmp.not = icmp eq i32 %9, %blkaddr
  br i1 %cmp.not, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @erofs_put_metabuf(ptr noundef %buf)
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i = and i32 %11, -129
  %call5 = tail call ptr @read_cache_page_gfp(ptr noundef %5, i32 noundef %blkaddr, i32 noundef %and.i) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %buf, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %lor.lhs.false.if.end9_crit_edge
  %page.0 = phi ptr [ %call5, %if.end ], [ %7, %lor.lhs.false.if.end9_crit_edge ]
  %kmap_type = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 2
  %13 = ptrtoint ptr %kmap_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kmap_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.then12, label %if.else25

if.then12:                                        ; preds = %if.end9
  %15 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %type, label %if.then12.if.end23_crit_edge [
    i32 1, label %if.then15
    i32 2, label %if.then19
  ]

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then15:                                        ; preds = %if.then12
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 44) #7
  %16 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page.0, align 4
  %shr.i.i = lshr i32 %17, 30
  %18 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i.i, label %if.then15.if.then.i_crit_edge [
    i32 2, label %if.then15.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then15.if.else.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then15.if.then.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.then15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not.i = icmp eq i32 %19, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.then15.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page.0) #7
  br label %if.end23.sink.split

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then15.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page.0) #7
  br label %if.end23.sink.split

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %20, 512
  %21 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %25 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i1.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page.0, i32 noundef %or.i) #7
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.then19, %if.else.i, %if.then.i
  %call.i.i.sink = phi ptr [ %call.i.i, %if.then19 ], [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %base21 = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 1
  %31 = ptrtoint ptr %base21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i.sink, ptr %base21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.then12.if.end23_crit_edge
  %32 = ptrtoint ptr %kmap_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %type, ptr %kmap_type, align 4
  br label %if.end38

if.else25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %type)
  %cmp27.not = icmp eq i32 %14, %type
  br i1 %cmp27.not, label %if.else25.if.end38_crit_edge, label %do.body30

if.else25.if.end38_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.body30:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

if.end38:                                         ; preds = %if.else25.if.end38_crit_edge, %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp39 = icmp eq i32 %type, 0
  br i1 %cmp39, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %base43 = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 1
  %33 = ptrtoint ptr %base43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %34, %if.end42 ], [ %call5, %if.then.cleanup_crit_edge ], [ null, %if.end38.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_map_dev(ptr nocapture noundef readonly %sb, ptr nocapture noundef %map) local_unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %devs1 = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %devs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devs1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %6 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %map, align 8
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %dax_dev = getelementptr inbounds %struct.erofs_sb_info, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %dax_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dax_dev, align 4
  %m_daxdev = getelementptr inbounds %struct.erofs_map_dev, ptr %map, i32 0, i32 1
  %11 = ptrtoint ptr %m_daxdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %m_daxdev, align 4
  %12 = load ptr, ptr %s_fs_info, align 16
  %dax_part_off = getelementptr inbounds %struct.erofs_sb_info, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %dax_part_off to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dax_part_off, align 8
  %m_dax_part_off = getelementptr inbounds %struct.erofs_map_dev, ptr %map, i32 0, i32 2
  %15 = ptrtoint ptr %m_dax_part_off to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %m_dax_part_off, align 8
  %m_deviceid = getelementptr inbounds %struct.erofs_map_dev, ptr %map, i32 0, i32 4
  %16 = ptrtoint ptr %m_deviceid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_deviceid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %rwsem = getelementptr inbounds %struct.erofs_dev_context, ptr %3, i32 0, i32 1
  tail call void @down_read(ptr noundef %rwsem) #7
  %18 = ptrtoint ptr %m_deviceid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_deviceid, align 8
  %sub = add i32 %19, -1
  %call = tail call ptr @idr_find(ptr noundef %3, i32 noundef %sub) #7
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @up_read(ptr noundef %rwsem) #7
  br label %cleanup45

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bdev = getelementptr inbounds %struct.erofs_device_info, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 4
  %22 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %map, align 8
  %dax_dev9 = getelementptr inbounds %struct.erofs_device_info, ptr %call, i32 0, i32 2
  %23 = ptrtoint ptr %dax_dev9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dax_dev9, align 8
  %25 = ptrtoint ptr %m_daxdev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %m_daxdev, align 4
  %dax_part_off11 = getelementptr inbounds %struct.erofs_device_info, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %dax_part_off11 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dax_part_off11, align 8
  %28 = ptrtoint ptr %m_dax_part_off to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %m_dax_part_off, align 8
  tail call void @up_read(ptr noundef %rwsem) #7
  br label %cleanup45

if.else:                                          ; preds = %entry
  %extra_devices = getelementptr inbounds %struct.erofs_dev_context, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %extra_devices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %extra_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not = icmp eq i32 %30, 0
  br i1 %tobool14.not, label %if.else.cleanup45_crit_edge, label %if.then15

if.else.cleanup45_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.then15:                                        ; preds = %if.else
  %rwsem16 = getelementptr inbounds %struct.erofs_dev_context, ptr %3, i32 0, i32 1
  tail call void @down_read(ptr noundef %rwsem16) #7
  %31 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %id, align 4
  %call1887 = call ptr @idr_get_next(ptr noundef %3, ptr noundef nonnull %id) #7
  %cmp.not88 = icmp eq ptr %call1887, null
  br i1 %cmp.not88, label %if.then15.for.end_crit_edge, label %for.body.lr.ph

if.then15.for.end_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then15
  %m_pa = getelementptr inbounds %struct.erofs_map_dev, ptr %map, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call1889 = phi ptr [ %call1887, %for.body.lr.ph ], [ %call18, %for.inc.for.body_crit_edge ]
  %mapped_blkaddr = getelementptr inbounds %struct.erofs_device_info, ptr %call1889, i32 0, i32 5
  %32 = ptrtoint ptr %mapped_blkaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mapped_blkaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool19.not = icmp eq i32 %33, 0
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %if.end21

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %conv = zext i32 %33 to i64
  %mul = shl nuw nsw i64 %conv, 12
  %34 = ptrtoint ptr %m_pa to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %m_pa, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %mul)
  %cmp25.not = icmp ult i64 %35, %mul
  br i1 %cmp25.not, label %if.end21.for.inc_crit_edge, label %land.lhs.true

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end21
  %blocks = getelementptr inbounds %struct.erofs_device_info, ptr %call1889, i32 0, i32 4
  %36 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blocks, align 8
  %conv23 = zext i32 %37 to i64
  %38 = add nuw nsw i64 %conv23, %conv
  %add = shl nuw nsw i64 %38, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %add)
  %cmp28 = icmp ult i64 %35, %add
  br i1 %cmp28, label %cleanup, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub32 = sub i64 %35, %mul
  %39 = ptrtoint ptr %m_pa to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %sub32, ptr %m_pa, align 8
  %bdev33 = getelementptr inbounds %struct.erofs_device_info, ptr %call1889, i32 0, i32 1
  %40 = ptrtoint ptr %bdev33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev33, align 4
  %42 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %map, align 8
  %dax_dev35 = getelementptr inbounds %struct.erofs_device_info, ptr %call1889, i32 0, i32 2
  %43 = ptrtoint ptr %dax_dev35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dax_dev35, align 8
  %45 = ptrtoint ptr %m_daxdev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %m_daxdev, align 4
  %dax_part_off37 = getelementptr inbounds %struct.erofs_device_info, ptr %call1889, i32 0, i32 3
  %46 = ptrtoint ptr %dax_part_off37 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %dax_part_off37, align 8
  %48 = ptrtoint ptr %m_dax_part_off to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %m_dax_part_off, align 8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %49 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id, align 4
  %add41 = add i32 %50, 1
  store i32 %add41, ptr %id, align 4
  %call18 = call ptr @idr_get_next(ptr noundef %3, ptr noundef nonnull %id) #7
  %cmp.not = icmp eq ptr %call18, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.then15.for.end_crit_edge
  call void @up_read(ptr noundef %rwsem16) #7
  br label %cleanup45

cleanup45:                                        ; preds = %for.end, %if.else.cleanup45_crit_edge, %if.end, %if.then6
  %retval.0 = phi i32 [ -19, %if.then6 ], [ 0, %if.else.cleanup45_crit_edge ], [ 0, %for.end ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %datalayout = getelementptr i8, ptr %inode, i32 -44
  %0 = ptrtoint ptr %datalayout to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %datalayout, align 4
  %2 = and i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %3 = icmp eq i8 %2, 1
  %z_erofs_iomap_report_ops.erofs_iomap_ops = select i1 %3, ptr @z_erofs_iomap_report_ops, ptr @erofs_iomap_ops
  %call2 = tail call i32 @iomap_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len, ptr noundef nonnull %z_erofs_iomap_report_ops.erofs_iomap_ops) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iomap_readpage(ptr noundef %page, ptr noundef nonnull @erofs_iomap_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @erofs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iomap_readahead(ptr noundef %rac, ptr noundef nonnull @erofs_iomap_ops) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @erofs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @iomap_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @erofs_iomap_ops) #7
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_direct_IO(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_file_read_iter(ptr noundef %iocb, ptr noundef %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %2 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ki_flags, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end10, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i.i, align 8
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %8 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ki_pos.i, align 8
  %call2.i = tail call i32 @iov_iter_alignment(ptr noundef %to) #7
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.then.i.bdev_logical_block_size.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.bdev_logical_block_size.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bdev_logical_block_size.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 37, i32 9
  %16 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i.i.i = icmp eq i32 %17, 0
  %spec.select.i.i.i = select i1 %tobool2.not.i.i.i, i32 512, i32 %17
  br label %bdev_logical_block_size.exit.i

bdev_logical_block_size.exit.i:                   ; preds = %land.lhs.true.i.i.i, %if.then.i.bdev_logical_block_size.exit.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %if.then.i.bdev_logical_block_size.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %18 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i.i, i1 false) #7, !range !48
  %sub.i.i = sub nsw i32 31, %18
  br label %erofs_prepare_dio.exit

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 20
  %19 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i_blkbits.i, align 2
  %conv7.i = zext i8 %20 to i32
  br label %erofs_prepare_dio.exit

erofs_prepare_dio.exit:                           ; preds = %if.else.i, %bdev_logical_block_size.exit.i
  %call6.pn.i = phi i32 [ %sub.i.i, %bdev_logical_block_size.exit.i ], [ %conv7.i, %if.else.i ]
  %conv.i = zext i32 %1 to i64
  %or.i = or i64 %9, %conv.i
  %conv3.i = zext i32 %call2.i to i64
  %or4.i = or i64 %or.i, %conv3.i
  %blksize_mask.0.in.i = shl nsw i32 -1, %call6.pn.i
  %blksize_mask.0.i = xor i32 %blksize_mask.0.in.i, -1
  %conv10.i = zext i32 %blksize_mask.0.i to i64
  %and.i = and i64 %or4.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool11.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool11.not.i, label %cleanup.thread, label %erofs_prepare_dio.exit.return_crit_edge

erofs_prepare_dio.exit.return_crit_edge:          ; preds = %erofs_prepare_dio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

cleanup.thread:                                   ; preds = %erofs_prepare_dio.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @iomap_dio_rw(ptr noundef %iocb, ptr noundef %to, ptr noundef nonnull @erofs_iomap_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  br label %return

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @filemap_read(ptr noundef %iocb, ptr noundef %to, i32 noundef 0) #7
  br label %return

return:                                           ; preds = %if.end10, %cleanup.thread, %erofs_prepare_dio.exit.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %call11, %if.end10 ], [ 0, %entry.return_crit_edge ], [ %call6, %cleanup.thread ], [ -22, %erofs_prepare_dio.exit.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_readonly_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_iomap_begin(ptr noundef %inode, i64 noundef %offset, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %buf.i = alloca %struct.erofs_buf, align 4
  %map = alloca %struct.erofs_map_blocks, align 8
  %mdev = alloca %struct.erofs_map_dev, align 8
  %buf = alloca %struct.erofs_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %map) #7
  %0 = call ptr @memset(ptr %map, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mdev) #7
  %1 = getelementptr inbounds i8, ptr %mdev, i32 24
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8
  %m_la = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 2
  %3 = ptrtoint ptr %m_la to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %offset, ptr %m_la, align 8
  %m_llen = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 4
  %4 = ptrtoint ptr %m_llen to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %length, ptr %m_llen, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i) #7
  %7 = call ptr @memset(ptr %buf.i, i32 0, i32 12)
  call fastcc void @trace_erofs_map_blocks_enter(ptr noundef %inode, ptr noundef nonnull %map) #7
  %m_deviceid.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 5
  %8 = ptrtoint ptr %m_deviceid.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %m_deviceid.i, align 8
  %9 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_la, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %11 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %10)
  %cmp.not.i = icmp ugt i64 %12, %10
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %m_flags.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %13 = ptrtoint ptr %m_flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %m_flags.i, align 4
  %m_plen.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %14 = ptrtoint ptr %m_plen.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %m_plen.i, align 8
  br label %erofs_map_blocks.exit.thread

if.end.i:                                         ; preds = %entry
  %datalayout.i = getelementptr i8, ptr %inode, i32 -44
  %15 = ptrtoint ptr %datalayout.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %datalayout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %16)
  %cmp1.not.i = icmp eq i8 %16, 4
  br i1 %cmp1.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 2
  %sub.i.i = add i64 %12, 4095
  %div.i.i = sdiv i64 %sub.i.i, 4096
  %conv2.i.i = trunc i64 %div.i.i to i32
  %conv3.neg.i.i = sext i1 %cmp.i.i to i32
  %sub4.i.i = add i32 %conv3.neg.i.i, %conv2.i.i
  %m_flags.i.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %17 = ptrtoint ptr %m_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %m_flags.i.i, align 4
  %conv5.i.i = zext i32 %sub4.i.i to i64
  %mul.i.i = shl nuw nsw i64 %conv5.i.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i.i, i64 %10)
  %cmp6.i.i = icmp ugt i64 %mul.i.i, %10
  br i1 %cmp6.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = getelementptr i8, ptr %inode, i32 -32
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %conv8.i.i = zext i32 %20 to i64
  %mul9.i.i = shl nuw nsw i64 %conv8.i.i, 12
  %add11.i.i = add i64 %mul9.i.i, %10
  %m_pa.i.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %21 = ptrtoint ptr %m_pa.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add11.i.i, ptr %m_pa.i.i, align 8
  %sub14.i.i = sub i64 %mul.i.i, %10
  %m_plen.i.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %22 = ptrtoint ptr %m_plen.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %sub14.i.i, ptr %m_plen.i.i, align 8
  br label %erofs_map_blocks.exit.thread

if.else.i.i:                                      ; preds = %if.then3.i
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  br i1 %cmp.i.i, label %if.then16.i.i, label %if.else43.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 33
  %25 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_fs_info.i.i, align 16
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.i, align 8
  %meta_blkaddr.i.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %26, i32 0, i32 13
  %29 = ptrtoint ptr %meta_blkaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %meta_blkaddr.i.i.i, align 4
  %conv.i.i.i = zext i32 %30 to i64
  %mul.i.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  %islotbits.i.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %26, i32 0, i32 16
  %31 = ptrtoint ptr %islotbits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %islotbits.i.i.i, align 2
  %sh_prom.i.i.i = zext i8 %32 to i64
  %shl.i.i.i = shl i64 %28, %sh_prom.i.i.i
  %inode_isize.i.i = getelementptr i8, ptr %inode, i32 -43
  %33 = ptrtoint ptr %inode_isize.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %inode_isize.i.i, align 1
  %conv17.i.i = zext i8 %34 to i64
  %xattr_isize.i.i = getelementptr i8, ptr %inode, i32 -42
  %35 = ptrtoint ptr %xattr_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %xattr_isize.i.i, align 2
  %conv19.i.i = zext i16 %36 to i64
  %rem.i.i = and i64 %10, 4095
  %add.i.i.i = or i64 %mul.i.i.i, %rem.i.i
  %add18.i.i = add i64 %add.i.i.i, %shl.i.i.i
  %add20.i.i = add i64 %add18.i.i, %conv17.i.i
  %add22.i.i = add i64 %add20.i.i, %conv19.i.i
  %m_pa23.i.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %37 = ptrtoint ptr %m_pa23.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add22.i.i, ptr %m_pa23.i.i, align 8
  %sub25.i.i = sub i64 %12, %10
  %m_plen26.i.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %38 = ptrtoint ptr %m_plen26.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %sub25.i.i, ptr %m_plen26.i.i, align 8
  %rem28.i.i = and i64 %add22.i.i, 4095
  %add30.i.i = add i64 %rem28.i.i, %sub25.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add30.i.i)
  %cmp31.i.i = icmp ugt i64 %add30.i.i, 4096
  br i1 %cmp31.i.i, label %if.then33.i.i, label %if.end.i.i

if.then33.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %24, ptr noundef nonnull @__func__.erofs_map_blocks_flatmode, ptr noundef nonnull @.str.5, i64 noundef %28) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

if.end.i.i:                                       ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %m_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8208, ptr %m_flags.i.i, align 4
  br label %erofs_map_blocks.exit.thread

if.else43.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %24, ptr noundef nonnull @__func__.erofs_map_blocks_flatmode, ptr noundef nonnull @.str.6, i64 noundef %41, i64 noundef %12, i64 noundef %10) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

if.end4.i:                                        ; preds = %if.end.i
  %42 = getelementptr i8, ptr %inode, i32 -32
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %42, align 8
  %45 = and i16 %44, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i = icmp eq i16 %45, 0
  %chunkbits.i = getelementptr i8, ptr %inode, i32 -30
  %46 = ptrtoint ptr %chunkbits.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %chunkbits.i, align 2
  %sh_prom.i = zext i8 %47 to i64
  %shr.i = lshr i64 %10, %sh_prom.i
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr.i, align 8
  %meta_blkaddr.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %49, i32 0, i32 13
  %52 = ptrtoint ptr %meta_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %meta_blkaddr.i.i, align 4
  %conv.i.i = zext i32 %53 to i64
  %mul.i4.i = shl nuw nsw i64 %conv.i.i, 12
  %islotbits.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %49, i32 0, i32 16
  %54 = ptrtoint ptr %islotbits.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %islotbits.i.i, align 2
  %sh_prom.i.i = zext i8 %55 to i64
  %shl.i.i = shl i64 %51, %sh_prom.i.i
  %inode_isize.i = getelementptr i8, ptr %inode, i32 -43
  %56 = ptrtoint ptr %inode_isize.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %inode_isize.i, align 1
  %conv11.i = zext i8 %57 to i64
  %xattr_isize.i = getelementptr i8, ptr %inode, i32 -42
  %58 = ptrtoint ptr %xattr_isize.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %xattr_isize.i, align 2
  %conv12.i = zext i16 %59 to i64
  %conv14.neg.i = select i1 %tobool.not.i, i64 -4, i64 -8
  %conv14.i = select i1 %tobool.not.i, i64 4, i64 8
  %add.i.i = add nsw i64 %conv14.i, -1
  %add.i = add nuw nsw i64 %add.i.i, %mul.i4.i
  %add13.i = add i64 %add.i, %shl.i.i
  %sub.i = add i64 %add13.i, %conv11.i
  %add15.i = add i64 %sub.i, %conv12.i
  %and18.i = and i64 %add15.i, %conv14.neg.i
  %mul.i = mul i64 %shr.i, %conv14.i
  %add20.i = add i64 %and18.i, %mul.i
  %div1.i = lshr i64 %add20.i, 12
  %conv21.i = trunc i64 %div1.i to i32
  %call22.i = call ptr @erofs_read_metabuf(ptr noundef nonnull %buf.i, ptr noundef %6, i32 noundef %conv21.i, i32 noundef 1) #7
  %cmp.i5.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5.i, label %erofs_map_blocks.exit, label %if.end26.i

if.end26.i:                                       ; preds = %if.end4.i
  %60 = ptrtoint ptr %chunkbits.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chunkbits.i, align 2
  %sh_prom29.i = zext i8 %61 to i64
  %shl.i = shl i64 %shr.i, %sh_prom29.i
  %62 = ptrtoint ptr %m_la to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %shl.i, ptr %m_la, align 8
  %conv32.i = zext i8 %61 to i32
  %shl33.i = shl nuw i32 1, %conv32.i
  %conv34.i = zext i32 %shl33.i to i64
  %63 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_size.i, align 8
  %sub38.i = sub i64 4095, %shl.i
  %add41.i = add i64 %sub38.i, %64
  %div432.i = and i64 %add41.i, -4096
  %65 = call i64 @llvm.umin.i64(i64 %div432.i, i64 %conv34.i) #7
  %m_plen49.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %66 = ptrtoint ptr %m_plen49.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %m_plen49.i, align 8
  %67 = ptrtoint ptr %42 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %42, align 8
  %69 = and i16 %68, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool53.not.i = icmp eq i16 %69, 0
  %70 = trunc i64 %add20.i to i32
  %idx.ext.i = and i32 %70, 4092
  %add.ptr55.i = getelementptr i8, ptr %call22.i, i32 %idx.ext.i
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end65.i

if.then54.i:                                      ; preds = %if.end26.i
  %71 = ptrtoint ptr %add.ptr55.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp56.i = icmp eq i32 %72, -1
  br i1 %cmp56.i, label %if.then54.i.out_unlock.i_crit_edge, label %if.then54.i.out_unlock.sink.split.i_crit_edge

if.then54.i.out_unlock.sink.split.i_crit_edge:    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.sink.split.i

if.then54.i.out_unlock.i_crit_edge:               ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

if.end65.i:                                       ; preds = %if.end26.i
  %blkaddr69.i = getelementptr inbounds %struct.erofs_inode_chunk_index, ptr %add.ptr55.i, i32 0, i32 2
  %73 = ptrtoint ptr %blkaddr69.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blkaddr69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cond95.i = icmp eq i32 %74, -1
  br i1 %cond95.i, label %if.end65.i.out_unlock.i_crit_edge, label %sw.default.i

if.end65.i.out_unlock.i_crit_edge:                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock.i

sw.default.i:                                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  %device_id.i = getelementptr inbounds %struct.erofs_inode_chunk_index, ptr %add.ptr55.i, i32 0, i32 1
  %75 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %device_id.i, align 2
  %77 = call i16 @llvm.bswap.i16(i16 %76) #7
  %78 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i, align 16
  %device_id_mask.i = getelementptr inbounds %struct.erofs_sb_info, ptr %79, i32 0, i32 15
  %80 = ptrtoint ptr %device_id_mask.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %device_id_mask.i, align 4
  %and743.i = and i16 %81, %77
  %82 = ptrtoint ptr %m_deviceid.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %and743.i, ptr %m_deviceid.i, align 8
  %83 = ptrtoint ptr %blkaddr69.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %blkaddr69.i, align 4
  br label %out_unlock.sink.split.i

out_unlock.sink.split.i:                          ; preds = %sw.default.i, %if.then54.i.out_unlock.sink.split.i_crit_edge
  %.sink11.i = phi i32 [ %84, %sw.default.i ], [ %72, %if.then54.i.out_unlock.sink.split.i_crit_edge ]
  %85 = call i32 @llvm.bswap.i32(i32 %.sink11.i) #7
  %conv61.i = zext i32 %85 to i64
  %mul62.i = shl nuw nsw i64 %conv61.i, 12
  %m_pa.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %86 = ptrtoint ptr %m_pa.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %mul62.i, ptr %m_pa.i, align 8
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %out_unlock.sink.split.i, %if.end65.i.out_unlock.i_crit_edge, %if.then54.i.out_unlock.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then54.i.out_unlock.i_crit_edge ], [ 0, %if.end65.i.out_unlock.i_crit_edge ], [ 16, %out_unlock.sink.split.i ]
  %m_flags59.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %87 = ptrtoint ptr %m_flags59.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink.i, ptr %m_flags59.i, align 4
  call void @erofs_put_metabuf(ptr noundef nonnull %buf.i) #7
  br label %erofs_map_blocks.exit.thread

erofs_map_blocks.exit.thread:                     ; preds = %out_unlock.i, %if.end.i.i, %if.then.i.i, %if.then.i
  %m_plen84.i = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 3
  %88 = ptrtoint ptr %m_plen84.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %m_plen84.i, align 8
  %90 = ptrtoint ptr %m_llen to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %m_llen, align 8
  call fastcc void @trace_erofs_map_blocks_exit(ptr noundef %inode, ptr noundef nonnull %map) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #7
  br label %if.end

erofs_map_blocks.exit:                            ; preds = %if.end4.i
  %91 = ptrtoint ptr %call22.i to i32
  call fastcc void @trace_erofs_map_blocks_exit(ptr noundef %inode, ptr noundef nonnull %map) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i) #7
  %cmp = icmp slt ptr %call22.i, null
  br i1 %cmp, label %erofs_map_blocks.exit.cleanup52_crit_edge, label %erofs_map_blocks.exit.if.end_crit_edge

erofs_map_blocks.exit.if.end_crit_edge:           ; preds = %erofs_map_blocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

erofs_map_blocks.exit.cleanup52_crit_edge:        ; preds = %erofs_map_blocks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end:                                           ; preds = %erofs_map_blocks.exit.if.end_crit_edge, %erofs_map_blocks.exit.thread
  %m_pa1 = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 1
  %92 = ptrtoint ptr %m_pa1 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %m_pa1, align 8
  %94 = ptrtoint ptr %m_deviceid.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %m_deviceid.i, align 8
  %conv = zext i16 %95 to i32
  %.compoundliteral.sroa.4.0.mdev.sroa_idx = getelementptr inbounds i8, ptr %mdev, i32 16
  %96 = call ptr @memset(ptr %mdev, i32 0, i32 16)
  %97 = ptrtoint ptr %.compoundliteral.sroa.4.0.mdev.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %93, ptr %.compoundliteral.sroa.4.0.mdev.sroa_idx, align 8
  %.compoundliteral.sroa.5.0.mdev.sroa_idx = getelementptr inbounds i8, ptr %mdev, i32 24
  %98 = ptrtoint ptr %.compoundliteral.sroa.5.0.mdev.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv, ptr %.compoundliteral.sroa.5.0.mdev.sroa_idx, align 8
  %99 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb.i, align 4
  %call3 = call i32 @erofs_map_dev(ptr noundef %100, ptr noundef nonnull %mdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup52_crit_edge

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.end5:                                          ; preds = %if.end
  %101 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %m_la, align 8
  %offset7 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %103 = ptrtoint ptr %offset7 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %102, ptr %offset7, align 8
  %104 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mdev, align 8
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %106 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %bdev, align 4
  %107 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %m_llen, align 8
  %length14 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %109 = ptrtoint ptr %length14 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %108, ptr %length14, align 8
  %flags15 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %110 = ptrtoint ptr %flags15 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags15, align 2
  %private = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 8
  %111 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %private, align 8
  %m_flags = getelementptr inbounds %struct.erofs_map_blocks, ptr %map, i32 0, i32 7
  %112 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %m_flags, align 4
  %and16 = and i32 %113, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end5
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %114 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %type, align 8
  %115 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 -1, ptr %iomap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %tobool20.not = icmp eq i64 %108, 0
  br i1 %tobool20.not, label %if.then21, label %if.then18.cleanup52_crit_edge

if.then18.cleanup52_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup52

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %length14 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %length, ptr %length14, align 8
  br label %cleanup52

if.end24:                                         ; preds = %if.end5
  %and26 = and i32 %113, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else41, label %if.then28

if.then28:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #7
  %117 = call ptr @memset(ptr %buf, i32 0, i32 12)
  %type29 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %118 = ptrtoint ptr %type29 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 4, ptr %type29, align 8
  %119 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i_sb.i, align 4
  %121 = ptrtoint ptr %.compoundliteral.sroa.4.0.mdev.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %.compoundliteral.sroa.4.0.mdev.sroa_idx, align 8
  %div79 = lshr i64 %122, 12
  %conv32 = trunc i64 %div79 to i32
  %call33 = call ptr @erofs_read_metabuf(ptr noundef nonnull %buf, ptr noundef %120, i32 noundef %conv32, i32 noundef 1)
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %call33 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #7
  br label %cleanup52

cleanup:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %124 = trunc i64 %122 to i32
  %idx.ext = and i32 %124, 4095
  %add.ptr = getelementptr i8, ptr %call33, i32 %idx.ext
  %inline_data = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 7
  %125 = ptrtoint ptr %inline_data to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr, ptr %inline_data, align 4
  %base = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 1
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %128 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %private, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #7
  br label %cleanup52

if.else41:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %type42 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %129 = ptrtoint ptr %type42 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 2, ptr %type42, align 8
  %130 = ptrtoint ptr %.compoundliteral.sroa.4.0.mdev.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %.compoundliteral.sroa.4.0.mdev.sroa_idx, align 8
  %132 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %iomap, align 8
  br label %cleanup52

cleanup52:                                        ; preds = %if.else41, %cleanup, %cleanup.thread, %if.then21, %if.then18.cleanup52_crit_edge, %if.end.cleanup52_crit_edge, %erofs_map_blocks.exit.cleanup52_crit_edge
  %retval.1 = phi i32 [ %91, %erofs_map_blocks.exit.cleanup52_crit_edge ], [ %call3, %if.end.cleanup52_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then18.cleanup52_crit_edge ], [ %123, %cleanup.thread ], [ 0, %cleanup ], [ 0, %if.else41 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mdev) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %map) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_iomap_end(ptr nocapture noundef readnone %inode, i64 noundef %pos, i64 noundef %length, i32 noundef returned %written, i32 noundef %flags, ptr nocapture noundef readonly %iomap) #0 align 64 {
entry:
  %buf = alloca %struct.erofs_buf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 8
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf) #7
  %2 = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds %struct.erofs_buf, ptr %buf, i32 0, i32 2
  %call.i = tail call ptr @__kmap_to_page(ptr noundef nonnull %1) #7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %buf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %3, align 4
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp.not = icmp eq i16 %8, 4
  br i1 %cmp.not, label %do.end10, label %do.body5, !prof !38

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 303, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @erofs_put_metabuf(ptr noundef nonnull %buf)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf) #7
  br label %if.end32

do.body11:                                        ; preds = %entry
  %type12 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %9 = ptrtoint ptr %type12 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type12, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %10)
  %cmp14 = icmp eq i16 %10, 4
  br i1 %cmp14, label %do.body23, label %do.body11.if.end32_crit_edge, !prof !39

do.body11.if.end32_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/data.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

if.end32:                                         ; preds = %do.body11.if.end32_crit_edge, %do.end10
  ret i32 %written
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_erofs_map_blocks_enter(ptr noundef %inode, ptr noundef %map) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_map_blocks_enter, i32 0, i32 1), ptr blockaddress(@trace_erofs_map_blocks_enter, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !44

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %call42 = tail call i32 @__traceiter_erofs_map_blocks_enter(ptr noundef null, ptr noundef %inode, ptr noundef %map, i32 noundef 1) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !38

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_map_blocks_enter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_map_blocks_enter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_erofs_map_blocks_enter.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_erofs_map_blocks_enter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 177, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %31 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_erofs_map_blocks_exit(ptr noundef %inode, ptr noundef %map) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_map_blocks_exit, i32 0, i32 1), ptr blockaddress(@trace_erofs_map_blocks_exit, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !44

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !57
  %call42 = tail call i32 @__traceiter_erofs_map_blocks_exit(ptr noundef null, ptr noundef %inode, ptr noundef %map, i32 noundef 1, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %13 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !38

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_map_blocks_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_map_blocks_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_erofs_map_blocks_exit.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_erofs_map_blocks_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 229, ptr noundef nonnull @.str.3) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %31 = tail call i32 @llvm.read_register.i32(metadata !26) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_erofs_map_blocks_enter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_erofs_map_blocks_exit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_dio_rw(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !20, !21, !23, !25}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @erofs_raw_access_aops, !1, !"erofs_raw_access_aops", i1 false, i1 false}
!1 = !{!"../fs/erofs/data.c", i32 390, i32 39}
!2 = !{ptr @erofs_file_fops, !3, !"erofs_file_fops", i1 false, i1 false}
!3 = !{!"../fs/erofs/data.c", i32 430, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/mm.h", i32 717, i32 2}
!8 = !{ptr @erofs_iomap_ops, !9, !"erofs_iomap_ops", i1 false, i1 false}
!9 = !{!"../fs/erofs/data.c", i32 311, i32 31}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/trace/events/erofs.h", i32 172, i32 1}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.erofs_map_blocks_flatmode, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/erofs/data.c", i32 90, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/erofs/data.c", i32 98, i32 3}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/trace/events/erofs.h", i32 224, i32 1}
!25 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2152194615}
!37 = !{i64 2153703635}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2153138148, i64 2153138631, i64 2153138185, i64 2153138241, i64 2153138275, i64 2153138299, i64 2153138340, i64 2153138361, i64 2153138389, i64 2153138423}
!41 = !{i64 2148767588}
!42 = !{i64 2148682297, i64 2148682329, i64 2148682358, i64 2148682392, i64 2148682423, i64 2148682446}
!43 = !{i64 2148767817}
!44 = !{i64 2148503710, i64 2148503715, i64 2148503728, i64 2148503772, i64 2148503806, i64 2148503827}
!45 = !{i64 2153700864}
!46 = !{i64 2152194408}
!47 = !{i64 2154726517, i64 2154726996, i64 2154726554, i64 2154726610, i64 2154726644, i64 2154726668, i64 2154726709, i64 2154726730, i64 2154726758, i64 2154726792}
!48 = !{i32 0, i32 33}
!49 = !{i64 2154730110, i64 2154730589, i64 2154730147, i64 2154730203, i64 2154730237, i64 2154730261, i64 2154730302, i64 2154730323, i64 2154730351, i64 2154730385}
!50 = !{i64 2154731839, i64 2154732319, i64 2154731876, i64 2154731932, i64 2154731966, i64 2154731990, i64 2154732031, i64 2154732052, i64 2154732080, i64 2154732114}
!51 = !{i64 2154741462, i64 2154741942, i64 2154741499, i64 2154741555, i64 2154741589, i64 2154741613, i64 2154741654, i64 2154741675, i64 2154741703, i64 2154741737}
!52 = !{i64 2154743047, i64 2154743527, i64 2154743084, i64 2154743140, i64 2154743174, i64 2154743198, i64 2154743239, i64 2154743260, i64 2154743288, i64 2154743322}
!53 = !{i64 2154630598}
!54 = !{i64 2154630839}
!55 = !{i64 2149500117}
!56 = !{i64 2149501153}
!57 = !{i64 2154670806}
!58 = !{i64 2154671055}
