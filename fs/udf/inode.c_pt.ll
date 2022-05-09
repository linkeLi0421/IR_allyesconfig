; ModuleID = '/llk/IR_all_yes/fs/udf/inode.c_pt.bc'
source_filename = "../fs/udf/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32, i16 }
%struct.kernel_long_ad = type { i32, %struct.kernel_lb_addr, [6 x i8] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.unallocSpaceEntry = type { %struct.tag, %struct.icbtag, i32, [0 x i8] }
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.icbtag = type { i32, i16, i16, i16, i8, i8, %struct.lb_addr, i16 }
%struct.lb_addr = type <{ i32, i16 }>
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.fileEntry = type { %struct.tag, %struct.icbtag, i32, i32, i32, i16, i8, i8, i32, i64, i64, %struct.timestamp, %struct.timestamp, %struct.timestamp, i32, %struct.long_ad, %struct.regid, i64, i32, i32, [0 x i8] }
%struct.timestamp = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.long_ad = type { i32, %struct.lb_addr, [6 x i8] }
%struct.regid = type { i8, [23 x i8], [8 x i8] }
%struct.deviceSpec = type { i32, i8, [3 x i8], i32, i32, i32, i32, [0 x i8] }
%struct.extendedFileEntry = type { %struct.tag, %struct.icbtag, i32, i32, i32, i16, i8, i8, i32, i64, i64, i64, %struct.timestamp, %struct.timestamp, %struct.timestamp, %struct.timestamp, i32, i32, %struct.long_ad, %struct.long_ad, %struct.regid, i64, i32, i32, [0 x i8] }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.udf_fileident_bh = type { ptr, ptr, i32, i32 }
%struct.fileIdentDesc = type <{ %struct.tag, i16, i8, i8, %struct.long_ad, i16, [0 x i8] }>
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.udf_part_map = type { %union.anon.82, i32, i32, i16, i16, %union.anon.83, ptr, i16, i16 }
%union.anon.82 = type { ptr }
%union.anon.83 = type { %struct.udf_meta_data }
%struct.udf_meta_data = type { i32, i32, i32, i32, i16, i16, i32, ptr, ptr, ptr }
%struct.indirectEntry = type { %struct.tag, %struct.icbtag, %struct.long_ad }
%struct.allocExtDesc = type { %struct.tag, i32, i32 }
%struct.short_ad = type { i32, i32 }

@__func__.udf_evict_inode = private unnamed_addr constant [16 x i8] c"udf_evict_inode\00", align 1
@.str = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"Inode %lu (mode %o) has inode size %llu different from extent length %llu. Filesystem need not be standards compliant.\0A\00", [40 x i8] zeroinitializer }, align 32
@udf_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @udf_writepage, ptr @udf_readpage, ptr @udf_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @udf_readahead, ptr @udf_write_begin, ptr @generic_write_end, ptr @udf_bmap, ptr null, ptr null, ptr null, ptr @udf_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@udf_expand_file_adinicb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/udf/inode.c\00", [17 x i8] zeroinitializer }, align 32
@udf_adinicb_aops = external dso_local constant %struct.address_space_operations, align 4
@__func__.udf_next_aext = private unnamed_addr constant [14 x i8] c"udf_next_aext\00", align 1
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"too many indirect extents in inode %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@udf_next_aext.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @__func__.udf_next_aext, ptr @.str.1, ptr @.str.4, i8 2, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udf\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d:%s: reading block %u failed!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UDF-fs: %s:%d:%s: reading block %u failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@udf_current_aext.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.1, ptr @.str.7, i8 2, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udf_current_aext\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:%d:%s: alloc_type = %u unsupported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"UDF-fs: %s:%d:%s: alloc_type = %u unsupported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@udf_update_inode.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.1, ptr @.str.15, i8 1, i8 -88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udf_update_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:%d:%s: getblk failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"UDF-fs: %s:%d:%s: getblk failure\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"*Linux UDFFS\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IO error syncing udf inode [%08lx]\0A\00", [60 x i8] zeroinitializer }, align 32
@udf_read_inode.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.1, ptr @.str.20, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udf_read_inode\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s:%d:%s: partition reference: %u > logical volume partitions: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"UDF-fs: %s:%d:%s: partition reference: %u > logical volume partitions: %u\0A\00", [53 x i8] zeroinitializer }, align 32
@udf_read_inode.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.1, ptr @.str.22, i8 1, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:%s: block=%u, partition=%u out of range\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UDF-fs: %s:%d:%s: block=%u, partition=%u out of range\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(ino %lu) failed !bh\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(ino %lu) failed ident=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"too many ICBs in ICB hierarchy (max %d supported)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported strategy type: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@udf_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@udf_dir_operations = external dso_local constant %struct.file_operations, align 4
@udf_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@udf_file_operations = external dso_local constant %struct.file_operations, align 4
@udf_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@udf_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@udf_read_inode.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.1, ptr @.str.28, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s:%d:%s: METADATA FILE-----\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"UDF-fs: %s:%d:%s: METADATA FILE-----\0A\00", [58 x i8] zeroinitializer }, align 32
@udf_read_inode.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.1, ptr @.str.30, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:%s: METADATA MIRROR FILE-----\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UDF-fs: %s:%d:%s: METADATA MIRROR FILE-----\0A\00", [51 x i8] zeroinitializer }, align 32
@udf_read_inode.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.1, ptr @.str.32, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:%d:%s: METADATA BITMAP FILE-----\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"UDF-fs: %s:%d:%s: METADATA BITMAP FILE-----\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(ino %lu) failed unknown file type=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@switch.table.udf_update_inode = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09\07\04\04\04\06\04\05\04\0C\04\0A", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 16, i64 261, i64 263, i64 266]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 1024]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 16, i64 1281, i64 1793, i64 2561]
@__sancov_gen_cov_switch_values.40 = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 4, i64 5, i64 6, i64 7, i64 9, i64 10, i64 12, i64 248, i64 249, i64 250, i64 251, i64 252]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 150, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [9 x i8] c"udf_aops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 237, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 262, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2152, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2164, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 2219, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 260, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 788, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 717, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 366, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1697, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1762, i32 22 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1891, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1319, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1326, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1345, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1351, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1375, i32 6 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1387, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1587, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1590, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1593, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [18 x i8] c"../fs/udf/inode.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1596, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [30 x i8] c"switch.table.udf_update_inode\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @.str, ptr @udf_aops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @switch.table.udf_update_inode], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.udf_update_inode to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @is_bad_inode(ptr noundef %inode) #8
  br i1 %call1, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  %call3 = tail call i32 @udf_setsize(ptr noundef %inode, i64 noundef 0)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_flags, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.rhs, label %if.then2.lor.end_crit_edge

if.then2.lor.end_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %7 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_flags, align 4
  %and5 = and i32 %8, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then2.lor.end_crit_edge
  %9 = phi i32 [ 1, %if.then2.lor.end_crit_edge ], [ %and5, %lor.rhs ]
  %call7 = tail call fastcc i32 @udf_update_inode(ptr noundef %inode, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then.if.end_crit_edge
  %want_delete.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ 1, %lor.end ]
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %10 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp.not = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %13 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_lenExtents, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp8.not = icmp eq i64 %12, %14
  br i1 %cmp8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb10, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %inode, align 8
  %conv = zext i16 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %16, ptr noundef nonnull @__func__.udf_evict_inode, ptr noundef nonnull @.str, i32 noundef %18, i32 noundef %conv, i64 noundef %12, i64 noundef %14) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %want_delete.1 = phi i32 [ 0, %entry.if.end14_crit_edge ], [ %want_delete.0, %if.then9 ], [ %want_delete.0, %land.lhs.true.if.end14_crit_edge ], [ %want_delete.0, %if.end.if.end14_crit_edge ]
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #8
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #8
  tail call void @clear_inode(ptr noundef %inode) #8
  %i_data15 = getelementptr i8, ptr %inode, i32 -188
  %21 = ptrtoint ptr %i_data15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_data15, align 4
  tail call void @kfree(ptr noundef %22) #8
  %23 = ptrtoint ptr %i_data15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %i_data15, align 4
  %i_extent_cache_lock.i = getelementptr i8, ptr %inode, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %i_extent_cache_lock.i) #8
  %lstart.i.i = getelementptr i8, ptr %inode, i32 -56
  %24 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %lstart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp.not.i.i = icmp eq i64 %25, -1
  br i1 %cmp.not.i.i, label %if.end14.udf_clear_extent_cache.exit_crit_edge, label %if.then.i.i

if.end14.udf_clear_extent_cache.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_clear_extent_cache.exit

if.then.i.i:                                      ; preds = %if.end14
  %cached_extent.i.i = getelementptr i8, ptr %inode, i32 -72
  %26 = ptrtoint ptr %cached_extent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cached_extent.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.brelse.exit.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %27) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.brelse.exit.i.i_crit_edge
  %28 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %lstart.i.i, align 8
  br label %udf_clear_extent_cache.exit

udf_clear_extent_cache.exit:                      ; preds = %brelse.exit.i.i, %if.end14.udf_clear_extent_cache.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %want_delete.1)
  %tobool17.not = icmp eq i32 %want_delete.1, 0
  br i1 %tobool17.not, label %udf_clear_extent_cache.exit.if.end19_crit_edge, label %if.then18

udf_clear_extent_cache.exit.if.end19_crit_edge:   ; preds = %udf_clear_extent_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %udf_clear_extent_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @udf_free_inode(ptr noundef %inode) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %udf_clear_extent_cache.exit.if.end19_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_setsize(ptr noundef %inode, i64 noundef %newsize) local_unnamed_addr #0 align 64 {
entry:
  %epos.i = alloca %struct.extent_position, align 4
  %eloc.i = alloca %struct.kernel_lb_addr, align 8
  %elen.i = alloca i32, align 4
  %offset.i = alloca i64, align 8
  %extent.i = alloca %struct.kernel_long_ad, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 -32768, label %entry.if.end_crit_edge
    i16 16384, label %entry.if.end_crit_edge171
    i16 -24576, label %entry.if.end_crit_edge172
  ]

entry.if.end_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge171, %entry.if.end_crit_edge172
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_flags, align 4
  %8 = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %if.end19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %10 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %newsize)
  %cmp21 = icmp slt i64 %11, %newsize
  br i1 %cmp21, label %if.then23, label %if.else47

if.then23:                                        ; preds = %if.end19
  %i_data_sem = getelementptr i8, ptr %inode, i32 -168
  tail call void @down_write(ptr noundef %i_data_sem) #8
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %12 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp24 = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp24, label %if.then26, label %if.then23.if.end40_crit_edge

if.then23.if.end40_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then26:                                        ; preds = %if.then23
  %conv27 = zext i32 %shl.i to i64
  %13 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %i_alloc_type, align 8
  %14 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then26.udf_file_entry_alloc_offset.exit_crit_edge

if.then26.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.then26
  %15 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i = icmp eq i32 %15, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %inode, i32 -224
  %16 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %17, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i = add i32 %17, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.then26.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.then26.udf_file_entry_alloc_offset.exit_crit_edge ]
  %conv29 = zext i32 %retval.0.i to i64
  %add = add i64 %conv29, %newsize
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv27)
  %cmp30 = icmp sgt i64 %add, %conv27
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %udf_file_entry_alloc_offset.exit
  %call33 = tail call i32 @udf_expand_file_adinicb(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @down_write(ptr noundef %i_data_sem) #8
  br label %if.end40

if.else:                                          ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv38 = trunc i64 %newsize to i32
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %18 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv38, ptr %i_lenAlloc, align 4
  br label %set_size

if.end40:                                         ; preds = %if.end36, %if.then23.if.end40_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos.i) #8
  %19 = call ptr @memset(ptr %epos.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc.i) #8
  %20 = ptrtoint ptr %eloc.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %eloc.i, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen.i) #8
  %21 = ptrtoint ptr %elen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %elen.i, align 4, !annotation !81
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %25 to i64
  %shr.i = ashr i64 %newsize, %sh_prom.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset.i) #8
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %offset.i, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %extent.i) #8
  %27 = call ptr @memset(ptr %extent.i, i32 255, i32 20)
  %28 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i144 = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i144)
  %cmp.i = icmp ult i32 %bf.load.i144, 536870912
  br i1 %cmp.i, label %if.end40.if.end12.i_crit_edge, label %if.else.i145

if.end40.if.end12.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.else.i145:                                     ; preds = %if.end40
  %bf.lshr.mask.i = and i32 %bf.load.i144, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask.i)
  %cmp5.i = icmp eq i32 %bf.lshr.mask.i, 536870912
  br i1 %cmp5.i, label %if.else.i145.if.end12.i_crit_edge, label %do.body.i

if.else.i145.if.end12.i_crit_edge:                ; preds = %if.else.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

do.body.i:                                        ; preds = %if.else.i145
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 647, 0\0A.popsection", ""() #8, !srcloc !82
  unreachable

if.end12.i:                                       ; preds = %if.else.i145.if.end12.i_crit_edge, %if.end40.if.end12.i_crit_edge
  %adsize.0.neg.i = phi i32 [ -8, %if.end40.if.end12.i_crit_edge ], [ -16, %if.else.i145.if.end12.i_crit_edge ]
  %call13.i = call signext i8 @inode_bmap(ptr noundef %inode, i64 noundef %shr.i, ptr noundef nonnull %epos.i, ptr noundef nonnull %eloc.i, ptr noundef nonnull %elen.i, ptr noundef nonnull %offset.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call13.i)
  %cmp15.not.i = icmp eq i8 %call13.i, -1
  %29 = ptrtoint ptr %epos.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %epos.i, align 4
  %tobool.not.i146 = icmp eq ptr %30, null
  %offset17.i = getelementptr inbounds %struct.extent_position, ptr %epos.i, i32 0, i32 1
  %31 = ptrtoint ptr %offset17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset17.i, align 4
  br i1 %tobool.not.i146, label %land.lhs.true.i, label %land.lhs.true23.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %33 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i.i = load i32, ptr %i_alloc_type, align 8
  %34 = and i32 %bf.load.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %land.lhs.true.i.udf_file_entry_alloc_offset.exit.i_crit_edge

land.lhs.true.i.udf_file_entry_alloc_offset.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i
  %35 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool4.not.i.i = icmp eq i32 %35, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %inode, i32 -224
  %36 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_lenEAttr7.i.i, align 8
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %37, 216
  br label %udf_file_entry_alloc_offset.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i = add i32 %37, 176
  br label %udf_file_entry_alloc_offset.exit.i

udf_file_entry_alloc_offset.exit.i:               ; preds = %if.else6.i.i, %if.then5.i.i, %land.lhs.true.i.udf_file_entry_alloc_offset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ %add8.i.i, %if.else6.i.i ], [ 40, %land.lhs.true.i.udf_file_entry_alloc_offset.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %retval.0.i.i)
  %cmp19.i = icmp eq i32 %32, %retval.0.i.i
  br i1 %cmp19.i, label %udf_file_entry_alloc_offset.exit.i.if.then27.i_crit_edge, label %udf_file_entry_alloc_offset.exit.i.if.else29.i_crit_edge

udf_file_entry_alloc_offset.exit.i.if.else29.i_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29.i

udf_file_entry_alloc_offset.exit.i.if.then27.i_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

land.lhs.true23.i:                                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %32)
  %cmp25.i = icmp eq i32 %32, 24
  br i1 %cmp25.i, label %land.lhs.true23.i.if.then27.i_crit_edge, label %land.lhs.true23.i.if.else29.i_crit_edge

land.lhs.true23.i.if.else29.i_crit_edge:          ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else29.i

land.lhs.true23.i.if.then27.i_crit_edge:          ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.then27.i:                                      ; preds = %land.lhs.true23.i.if.then27.i_crit_edge, %udf_file_entry_alloc_offset.exit.i.if.then27.i_crit_edge
  %extLocation.i = getelementptr inbounds %struct.kernel_long_ad, ptr %extent.i, i32 0, i32 1
  %38 = ptrtoint ptr %extLocation.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %extLocation.i, align 4
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_long_ad, ptr %extent.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %partitionReferenceNum.i, align 4
  br label %if.end36.i

if.else29.i:                                      ; preds = %land.lhs.true23.i.if.else29.i_crit_edge, %udf_file_entry_alloc_offset.exit.i.if.else29.i_crit_edge
  %sub.i = add i32 %32, %adsize.0.neg.i
  %40 = ptrtoint ptr %offset17.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i, ptr %offset17.i, align 4
  %extLocation31.i = getelementptr inbounds %struct.kernel_long_ad, ptr %extent.i, i32 0, i32 1
  %call33.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos.i, ptr noundef %extLocation31.i, ptr noundef nonnull %extent.i, i32 noundef 0) #8
  %conv3471.i = zext i8 %call33.i to i32
  %shl.i147 = shl i32 %conv3471.i, 30
  %41 = ptrtoint ptr %extent.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %extent.i, align 4
  %or.i = or i32 %shl.i147, %42
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else29.i, %if.then27.i
  %storemerge.i = phi i32 [ %or.i, %if.else29.i ], [ -2147483648, %if.then27.i ]
  %43 = ptrtoint ptr %extent.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge.i, ptr %extent.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 3
  %44 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_blocksize.i, align 16
  %sub37.i = add i32 %45, -1
  %46 = trunc i64 %newsize to i32
  %conv39.i = and i32 %sub37.i, %46
  br i1 %cmp15.not.i, label %if.end50.i, label %if.end50.thread.i

if.end50.thread.i:                                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %50, -1
  %and.i.i = and i32 %sub.i.i, %storemerge.i
  %sub1.i.i = sub i32 %conv39.i, %and.i.i
  %add.i72.i = add i32 %sub1.i.i, %storemerge.i
  %51 = ptrtoint ptr %extent.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add.i72.i, ptr %extent.i, align 4
  %conv.i.i = zext i32 %sub1.i.i to i64
  %i_lenExtents.i.i = getelementptr i8, ptr %inode, i32 -216
  %52 = ptrtoint ptr %i_lenExtents.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %i_lenExtents.i.i, align 8
  %add3.i.i = add i64 %53, %conv.i.i
  store i64 %add3.i.i, ptr %i_lenExtents.i.i, align 8
  %extLocation.i.i = getelementptr inbounds %struct.kernel_long_ad, ptr %extent.i, i32 0, i32 1
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %epos.i, ptr noundef %extLocation.i.i, i32 noundef %add.i72.i, i32 noundef 1) #8
  br label %if.end54.i

if.end50.i:                                       ; preds = %if.end36.i
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %offset.i, align 8
  %56 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom45.i = zext i8 %57 to i64
  %shl46.i = shl i64 %55, %sh_prom45.i
  %conv47.i = zext i32 %conv39.i to i64
  %or48.i = or i64 %shl46.i, %conv47.i
  %call49.i = call fastcc i32 @udf_do_extend_file(ptr noundef %inode, ptr noundef nonnull %epos.i, ptr noundef nonnull %extent.i, i64 noundef %or48.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp51.i = icmp slt i32 %call49.i, 0
  br i1 %cmp51.i, label %if.end50.i.out.i_crit_edge, label %if.end50.i.if.end54.i_crit_edge

if.end50.i.if.end54.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.end50.i.out.i_crit_edge:                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end54.i:                                       ; preds = %if.end50.i.if.end54.i_crit_edge, %if.end50.thread.i
  %i_lenExtents.i = getelementptr i8, ptr %inode, i32 -216
  %58 = ptrtoint ptr %i_lenExtents.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %newsize, ptr %i_lenExtents.i, align 8
  br label %out.i

out.i:                                            ; preds = %if.end54.i, %if.end50.i.out.i_crit_edge
  %err.1.i = phi i32 [ %call49.i, %if.end50.i.out.i_crit_edge ], [ 0, %if.end54.i ]
  %59 = ptrtoint ptr %epos.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %epos.i, align 4
  %tobool.not.i73.i = icmp eq ptr %60, null
  br i1 %tobool.not.i73.i, label %out.i.udf_extend_file.exit_crit_edge, label %if.then.i.i

out.i.udf_extend_file.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_extend_file.exit

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %60) #8
  br label %udf_extend_file.exit

udf_extend_file.exit:                             ; preds = %if.then.i.i, %out.i.udf_extend_file.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %extent.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool42.not = icmp eq i32 %err.1.i, 0
  br i1 %tobool42.not, label %udf_extend_file.exit.set_size_crit_edge, label %if.then43

udf_extend_file.exit.set_size_crit_edge:          ; preds = %udf_extend_file.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_size

if.then43:                                        ; preds = %udf_extend_file.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %i_data_sem) #8
  br label %cleanup

set_size:                                         ; preds = %udf_extend_file.exit.set_size_crit_edge, %if.else
  call void @up_write(ptr noundef %i_data_sem) #8
  call void @truncate_setsize(ptr noundef %inode, i64 noundef %newsize) #8
  br label %update_time

if.else47:                                        ; preds = %if.end19
  %i_alloc_type48 = getelementptr i8, ptr %inode, i32 -192
  %61 = ptrtoint ptr %i_alloc_type48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load49 = load i32, ptr %i_alloc_type48, align 8
  %bf.lshr50.mask = and i32 %bf.load49, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr50.mask)
  %cmp51 = icmp eq i32 %bf.lshr50.mask, 1610612736
  br i1 %cmp51, label %if.then53, label %if.end64

if.then53:                                        ; preds = %if.else47
  %i_data_sem54 = getelementptr i8, ptr %inode, i32 -168
  tail call void @down_write(ptr noundef %i_data_sem54) #8
  %i_extent_cache_lock.i = getelementptr i8, ptr %inode, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %i_extent_cache_lock.i) #8
  %lstart.i.i = getelementptr i8, ptr %inode, i32 -56
  %62 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %lstart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %63)
  %cmp.not.i.i = icmp eq i64 %63, -1
  br i1 %cmp.not.i.i, label %if.then53.udf_clear_extent_cache.exit_crit_edge, label %if.then.i.i148

if.then53.udf_clear_extent_cache.exit_crit_edge:  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_clear_extent_cache.exit

if.then.i.i148:                                   ; preds = %if.then53
  %cached_extent.i.i = getelementptr i8, ptr %inode, i32 -72
  %64 = ptrtoint ptr %cached_extent.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cached_extent.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i148.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i148.brelse.exit.i.i_crit_edge:         ; preds = %if.then.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %65) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i148.brelse.exit.i.i_crit_edge
  %66 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 -1, ptr %lstart.i.i, align 8
  br label %udf_clear_extent_cache.exit

udf_clear_extent_cache.exit:                      ; preds = %brelse.exit.i.i, %if.then53.udf_clear_extent_cache.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i) #8
  %i_data = getelementptr i8, ptr %inode, i32 -188
  %67 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_data, align 4
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %69 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr = getelementptr i8, ptr %68, i32 %70
  %idx.ext = trunc i64 %newsize to i32
  %add.ptr55 = getelementptr i8, ptr %add.ptr, i32 %idx.ext
  %71 = ptrtoint ptr %i_alloc_type48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load.i150 = load i32, ptr %i_alloc_type48, align 8
  %72 = and i32 %bf.load.i150, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i151 = icmp eq i32 %72, 0
  br i1 %tobool.not.i151, label %if.else.i154, label %udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit160_crit_edge

udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit160_crit_edge: ; preds = %udf_clear_extent_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit160

if.else.i154:                                     ; preds = %udf_clear_extent_cache.exit
  %73 = and i32 %bf.load.i150, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool4.not.i152 = icmp eq i32 %73, 0
  %74 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %i_lenEAttr, align 8
  br i1 %tobool4.not.i152, label %if.else6.i158, label %if.then5.i156

if.then5.i156:                                    ; preds = %if.else.i154
  call void @__sanitizer_cov_trace_pc() #10
  %add.i155.neg = sub i32 -216, %75
  br label %udf_file_entry_alloc_offset.exit160

if.else6.i158:                                    ; preds = %if.else.i154
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i157.neg = sub i32 -176, %75
  br label %udf_file_entry_alloc_offset.exit160

udf_file_entry_alloc_offset.exit160:              ; preds = %if.else6.i158, %if.then5.i156, %udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit160_crit_edge
  %retval.0.i159.neg170 = phi i32 [ %add.i155.neg, %if.then5.i156 ], [ %add8.i157.neg, %if.else6.i158 ], [ -40, %udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit160_crit_edge ]
  %.neg = sub i32 %shl.i, %idx.ext
  %conv60 = add i32 %.neg, %retval.0.i159.neg170
  %76 = call ptr @memset(ptr %add.ptr55, i32 0, i32 %conv60)
  %i_lenAlloc62 = getelementptr i8, ptr %inode, i32 -220
  %77 = ptrtoint ptr %i_lenAlloc62 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %idx.ext, ptr %i_lenAlloc62, align 4
  tail call void @truncate_setsize(ptr noundef %inode, i64 noundef %newsize) #8
  tail call void @up_write(ptr noundef %i_data_sem54) #8
  br label %update_time

if.end64:                                         ; preds = %if.else47
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %78 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_mapping, align 8
  %call65 = tail call i32 @block_truncate_page(ptr noundef %79, i64 noundef %newsize, ptr noundef nonnull @udf_get_block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  tail call void @truncate_setsize(ptr noundef %inode, i64 noundef %newsize) #8
  %i_data_sem69 = getelementptr i8, ptr %inode, i32 -168
  tail call void @down_write(ptr noundef %i_data_sem69) #8
  %i_extent_cache_lock.i161 = getelementptr i8, ptr %inode, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %i_extent_cache_lock.i161) #8
  %lstart.i.i162 = getelementptr i8, ptr %inode, i32 -56
  %80 = ptrtoint ptr %lstart.i.i162 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %lstart.i.i162, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %81)
  %cmp.not.i.i163 = icmp eq i64 %81, -1
  br i1 %cmp.not.i.i163, label %if.end68.udf_clear_extent_cache.exit169_crit_edge, label %if.then.i.i166

if.end68.udf_clear_extent_cache.exit169_crit_edge: ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_clear_extent_cache.exit169

if.then.i.i166:                                   ; preds = %if.end68
  %cached_extent.i.i164 = getelementptr i8, ptr %inode, i32 -72
  %82 = ptrtoint ptr %cached_extent.i.i164 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cached_extent.i.i164, align 8
  %tobool.not.i.i.i165 = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i165, label %if.then.i.i166.brelse.exit.i.i168_crit_edge, label %if.then.i.i.i167

if.then.i.i166.brelse.exit.i.i168_crit_edge:      ; preds = %if.then.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i168

if.then.i.i.i167:                                 ; preds = %if.then.i.i166
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %83) #8
  br label %brelse.exit.i.i168

brelse.exit.i.i168:                               ; preds = %if.then.i.i.i167, %if.then.i.i166.brelse.exit.i.i168_crit_edge
  %84 = ptrtoint ptr %lstart.i.i162 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 -1, ptr %lstart.i.i162, align 8
  br label %udf_clear_extent_cache.exit169

udf_clear_extent_cache.exit169:                   ; preds = %brelse.exit.i.i168, %if.end68.udf_clear_extent_cache.exit169_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i161) #8
  %call70 = tail call i32 @udf_truncate_extents(ptr noundef %inode) #8
  tail call void @up_write(ptr noundef %i_data_sem69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %udf_clear_extent_cache.exit169.update_time_crit_edge, label %udf_clear_extent_cache.exit169.cleanup_crit_edge

udf_clear_extent_cache.exit169.cleanup_crit_edge: ; preds = %udf_clear_extent_cache.exit169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

udf_clear_extent_cache.exit169.update_time_crit_edge: ; preds = %udf_clear_extent_cache.exit169
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_time

update_time:                                      ; preds = %udf_clear_extent_cache.exit169.update_time_crit_edge, %udf_file_entry_alloc_offset.exit160, %set_size
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #8
  %85 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %86 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %87 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 10
  %89 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_flags, align 4
  %and76 = and i32 %90, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %update_time.if.then82_crit_edge

update_time.if.then82_crit_edge:                  ; preds = %update_time
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

lor.lhs.false78:                                  ; preds = %update_time
  %91 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_flags, align 4
  %and80 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else84, label %lor.lhs.false78.if.then82_crit_edge

lor.lhs.false78.if.then82_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

if.then82:                                        ; preds = %lor.lhs.false78.if.then82_crit_edge, %update_time.if.then82_crit_edge
  %call.i = call fastcc i32 @udf_update_inode(ptr noundef %inode, i32 noundef 1) #8
  br label %cleanup

if.else84:                                        ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else84, %if.then82, %udf_clear_extent_cache.exit169.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.then43, %if.then32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i, %if.then43 ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ], [ %call65, %if.end64.cleanup_crit_edge ], [ %call70, %udf_clear_extent_cache.exit169.cleanup_crit_edge ], [ 0, %if.else84 ], [ 0, %if.then82 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_update_inode(ptr noundef %inode, i32 noundef %do_sync) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -256
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %6 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_location, align 4
  %partitionReferenceNum.i = getelementptr i8, ptr %inode, i32 -236
  %8 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = tail call i32 @udf_get_pblock(ptr noundef %1, i32 noundef %7, i16 noundef zeroext %9, i32 noundef 0) #8
  %call6 = tail call ptr @udf_tgetblk(ptr noundef %1, i32 noundef %call.i) #8
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_update_inode.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_update_inode, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !83

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_update_inode.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1697, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call6, i32 noundef 4) #8
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call6, align 4
  %and.i.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end12.if.then.i541_crit_edge

if.end12.if.then.i541_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i541

trylock_buffer.exit.i:                            ; preds = %if.end12
  tail call void @llvm.prefetch.p0(ptr nonnull %call6, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call6, ptr nonnull %call6, i32 4, ptr nonnull elementtype(i32) %call6) #8, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i541_crit_edge

trylock_buffer.exit.i.if.then.i541_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i541

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i541:                                     ; preds = %trylock_buffer.exit.i.if.then.i541_crit_edge, %if.end12.if.then.i541_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call6) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i541, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call6, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize, align 16
  %20 = call ptr @memset(ptr %15, i32 0, i32 %19)
  %21 = load ptr, ptr %b_data, align 4
  %i_use = getelementptr i8, ptr %inode, i32 -192
  %22 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load = load i32, ptr %i_use, align 8
  %23 = and i32 %bf.load, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not = icmp eq i32 %23, 0
  br i1 %tobool16.not, label %if.end22, label %if.then17

if.then17:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %24 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_lenAlloc, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %lengthAllocDescs = getelementptr inbounds %struct.unallocSpaceEntry, ptr %21, i32 0, i32 2
  %27 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %lengthAllocDescs, align 1
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 40
  %i_data = getelementptr i8, ptr %inode, i32 -188
  %30 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_data, align 4
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %s_blocksize21 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %s_blocksize21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocksize21, align 16
  %sub = add i32 %35, -40
  %36 = call ptr @memcpy(ptr %add.ptr, ptr %31, i32 %sub)
  br label %finish

if.end22:                                         ; preds = %lock_buffer.exit
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 33
  %39 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %s_flags.i, align 4
  %43 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool25.not = icmp eq i32 %43, 0
  br i1 %tobool25.not, label %if.else, label %if.end22.if.end29_crit_edge

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 53
  %44 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_user_ns.i.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %46 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %47 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call1.i = tail call i32 @from_kuid(ptr noundef %45, [1 x i32] %47) #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %call1.i)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end22.if.end29_crit_edge
  %.sink = phi i32 [ %48, %if.else ], [ -1, %if.end22.if.end29_crit_edge ]
  %49 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %.sink, ptr %49, align 1
  %51 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i544 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i.i544 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i.i544, align 16
  %s_flags.i545 = getelementptr inbounds %struct.udf_sb_info, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %s_flags.i545 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %s_flags.i545, align 4
  %57 = and i32 %56, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool32.not = icmp eq i32 %57, 0
  br i1 %tobool32.not, label %if.else34, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %s_user_ns.i.i549 = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 53
  %58 = ptrtoint ptr %s_user_ns.i.i549 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_user_ns.i.i549, align 8
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %60 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.unpack.i550 = load i32, ptr %i_gid.i, align 8
  %61 = insertvalue [1 x i32] undef, i32 %.unpack.i550, 0
  %call1.i551 = tail call i32 @from_kgid(ptr noundef %59, [1 x i32] %61) #8
  %62 = tail call i32 @llvm.bswap.i32(i32 %call1.i551)
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.end29.if.end37_crit_edge
  %.sink579 = phi i32 [ %62, %if.else34 ], [ -1, %if.end29.if.end37_crit_edge ]
  %63 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 3
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %.sink579, ptr %63, align 1
  %65 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %inode, align 8
  %conv = zext i16 %66 to i32
  %and = and i32 %conv, 7
  %and40 = shl nuw nsw i32 %conv, 2
  %shl = and i32 %and40, 224
  %and43 = shl nuw nsw i32 %conv, 4
  %shl44 = and i32 %and43, 7168
  %i_extraPerms = getelementptr i8, ptr %inode, i32 -196
  %67 = ptrtoint ptr %i_extraPerms to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_extraPerms, align 4
  %or = or i32 %and, %68
  %or45 = or i32 %or, %shl
  %or46 = or i32 %or45, %shl44
  %69 = tail call i32 @llvm.bswap.i32(i32 %or46)
  %permissions = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 4
  %70 = ptrtoint ptr %permissions to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %69, ptr %permissions, align 1
  %71 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %inode, align 8
  %73 = and i16 %72, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %73)
  %cmp = icmp eq i16 %73, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end37.if.else56_crit_edge

if.end37.if.else56_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else56

land.lhs.true:                                    ; preds = %if.end37
  %74 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp51.not = icmp eq i32 %76, 0
  br i1 %cmp51.not, label %land.lhs.true.if.else56_crit_edge, label %if.then53

land.lhs.true.if.else56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else56

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %77 = trunc i32 %76 to i16
  %conv55 = add i16 %77, -1
  br label %if.end59

if.else56:                                        ; preds = %land.lhs.true.if.else56_crit_edge, %if.end37.if.else56_crit_edge
  %78 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %conv57 = trunc i32 %80 to i16
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then53
  %conv57.sink = phi i16 [ %conv57, %if.else56 ], [ %conv55, %if.then53 ]
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv57.sink)
  %fileLinkCount58 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 5
  %82 = ptrtoint ptr %fileLinkCount58 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %fileLinkCount58, align 1
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %83 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %i_size, align 8
  %85 = tail call i64 @llvm.bswap.i64(i64 %84)
  %informationLength = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 9
  %86 = ptrtoint ptr %informationLength to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 %85, ptr %informationLength, align 1
  %87 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %inode, align 8
  %89 = and i16 %88, -4096
  %90 = zext i16 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %89, label %if.end59.if.end82_crit_edge [
    i16 8192, label %if.end59.if.then70_crit_edge
    i16 24576, label %if.end59.if.then70_crit_edge586
  ]

if.end59.if.then70_crit_edge586:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

if.end59.if.then70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then70

if.end59.if.end82_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then70:                                        ; preds = %if.end59.if.then70_crit_edge, %if.end59.if.then70_crit_edge586
  %call71 = tail call ptr @udf_get_extendedattr(ptr noundef %inode, i32 noundef 12, i8 noundef zeroext 1) #8
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %if.then73, label %if.then70.if.end75_crit_edge

if.then70.if.end75_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = tail call ptr @udf_add_extendedattr(ptr noundef %inode, i32 noundef 56, i32 noundef 12, i8 noundef zeroext 3) #8
  %91 = ptrtoint ptr %call74 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 201326592, ptr %call74, align 1
  %attrSubtype = getelementptr inbounds %struct.deviceSpec, ptr %call74, i32 0, i32 1
  %92 = ptrtoint ptr %attrSubtype to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %attrSubtype, align 1
  %attrLength = getelementptr inbounds %struct.deviceSpec, ptr %call74, i32 0, i32 3
  %93 = ptrtoint ptr %attrLength to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 939524096, ptr %attrLength, align 1
  %impUseLength = getelementptr inbounds %struct.deviceSpec, ptr %call74, i32 0, i32 4
  %94 = ptrtoint ptr %impUseLength to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 536870912, ptr %impUseLength, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.then70.if.end75_crit_edge
  %dsea.0 = phi ptr [ %call71, %if.then70.if.end75_crit_edge ], [ %call74, %if.then73 ]
  %impUse = getelementptr inbounds %struct.deviceSpec, ptr %dsea.0, i32 0, i32 7
  %95 = call ptr @memset(ptr %impUse, i32 0, i32 32)
  %ident = getelementptr inbounds %struct.regid, ptr %impUse, i32 0, i32 1
  %96 = call ptr @memcpy(ptr %ident, ptr @.str.17, i32 13)
  %identSuffix = getelementptr inbounds %struct.deviceSpec, ptr %dsea.0, i32 2
  %97 = ptrtoint ptr %identSuffix to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %identSuffix, align 1
  %arrayidx79 = getelementptr [8 x i8], ptr %identSuffix, i32 0, i32 1
  %98 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %arrayidx79, align 1
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %99 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %100, 20
  %101 = tail call i32 @llvm.bswap.i32(i32 %shr.i)
  %majorDeviceIdent = getelementptr inbounds %struct.deviceSpec, ptr %dsea.0, i32 0, i32 5
  %102 = ptrtoint ptr %majorDeviceIdent to i32
  call void @__asan_storeN_noabort(i32 %102, i32 4)
  store i32 %101, ptr %majorDeviceIdent, align 1
  %103 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %104, 1048575
  %105 = tail call i32 @llvm.bswap.i32(i32 %and.i)
  %minorDeviceIdent = getelementptr inbounds %struct.deviceSpec, ptr %dsea.0, i32 0, i32 6
  %106 = ptrtoint ptr %minorDeviceIdent to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %minorDeviceIdent, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.end75, %if.end59.if.end82_crit_edge
  %107 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load83 = load i32, ptr %i_use, align 8
  %bf.lshr84.mask = and i32 %bf.load83, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr84.mask)
  %cmp85 = icmp eq i32 %bf.lshr84.mask, 1610612736
  br i1 %cmp85, label %if.end82.if.end96_crit_edge, label %if.else88

if.end82.if.end96_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96

if.else88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %108 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %i_blocks, align 8
  %conv89 = zext i8 %5 to i32
  %sub90 = add nsw i32 %conv89, -9
  %shl91 = shl nuw i32 1, %sub90
  %conv92 = sext i32 %shl91 to i64
  %add = add nsw i64 %conv92, -1
  %sub93 = add i64 %add, %109
  %sh_prom = zext i32 %sub90 to i64
  %shr = lshr i64 %sub93, %sh_prom
  br label %if.end96

if.end96:                                         ; preds = %if.else88, %if.end82.if.end96_crit_edge
  %lb_recorded.0 = phi i64 [ %shr, %if.else88 ], [ 0, %if.end82.if.end96_crit_edge ]
  %110 = and i32 %bf.load83, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp100 = icmp eq i32 %110, 0
  %111 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %b_data, align 4
  br i1 %cmp100, label %if.then102, label %if.else123

if.then102:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr104 = getelementptr i8, ptr %112, i32 176
  %i_data105 = getelementptr i8, ptr %inode, i32 -188
  %113 = ptrtoint ptr %i_data105 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_data105, align 4
  %115 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i_sb, align 4
  %s_blocksize107 = getelementptr inbounds %struct.super_block, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %s_blocksize107 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_blocksize107, align 16
  %sub108 = add i32 %118, -176
  %119 = call ptr @memcpy(ptr %add.ptr104, ptr %114, i32 %sub108)
  %120 = tail call i64 @llvm.bswap.i64(i64 %lb_recorded.0)
  %logicalBlocksRecorded = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 10
  %121 = ptrtoint ptr %logicalBlocksRecorded to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %120, ptr %logicalBlocksRecorded, align 1
  %accessTime = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 11
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %122 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %122)
  %.unpack531 = load i64, ptr %i_atime, align 8
  %123 = insertvalue [2 x i64] undef, i64 %.unpack531, 0
  %.elt532 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %124 = ptrtoint ptr %.elt532 to i32
  call void @__asan_load8_noabort(i32 %124)
  %.unpack533 = load i64, ptr %.elt532, align 8
  %125 = insertvalue [2 x i64] %123, i64 %.unpack533, 1
  tail call void @udf_time_to_disk_stamp(ptr noundef %accessTime, [2 x i64] %125) #8
  %modificationTime = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 12
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %126 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %126)
  %.unpack534 = load i64, ptr %i_mtime, align 8
  %127 = insertvalue [2 x i64] undef, i64 %.unpack534, 0
  %.elt535 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %128 = ptrtoint ptr %.elt535 to i32
  call void @__asan_load8_noabort(i32 %128)
  %.unpack536 = load i64, ptr %.elt535, align 8
  %129 = insertvalue [2 x i64] %127, i64 %.unpack536, 1
  tail call void @udf_time_to_disk_stamp(ptr noundef %modificationTime, [2 x i64] %129) #8
  %attrTime = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 13
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %130 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %130)
  %.unpack537 = load i64, ptr %i_ctime, align 8
  %131 = insertvalue [2 x i64] undef, i64 %.unpack537, 0
  %.elt538 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %132 = ptrtoint ptr %.elt538 to i32
  call void @__asan_load8_noabort(i32 %132)
  %.unpack539 = load i64, ptr %.elt538, align 8
  %133 = insertvalue [2 x i64] %131, i64 %.unpack539, 1
  tail call void @udf_time_to_disk_stamp(ptr noundef %attrTime, [2 x i64] %133) #8
  %impIdent = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 16
  %134 = call ptr @memset(ptr %impIdent, i32 0, i32 32)
  %ident110 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 16, i32 1
  %135 = call ptr @memcpy(ptr %ident110, ptr @.str.17, i32 13)
  %identSuffix114 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 16, i32 2
  %136 = ptrtoint ptr %identSuffix114 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 4, ptr %identSuffix114, align 1
  %arrayidx118 = getelementptr %struct.fileEntry, ptr %21, i32 0, i32 16, i32 2, i32 1
  %137 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 5, ptr %arrayidx118, align 1
  %i_unique = getelementptr i8, ptr %inode, i32 -232
  %138 = ptrtoint ptr %i_unique to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %i_unique, align 8
  %140 = tail call i64 @llvm.bswap.i64(i64 %139)
  %uniqueID = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 17
  %141 = ptrtoint ptr %uniqueID to i32
  call void @__asan_storeN_noabort(i32 %141, i32 8)
  store i64 %140, ptr %uniqueID, align 1
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %142 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %i_lenEAttr, align 8
  %144 = tail call i32 @llvm.bswap.i32(i32 %143)
  %lengthExtendedAttr = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 18
  %145 = ptrtoint ptr %lengthExtendedAttr to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %lengthExtendedAttr, align 1
  %i_lenAlloc119 = getelementptr i8, ptr %inode, i32 -220
  %146 = ptrtoint ptr %i_lenAlloc119 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %i_lenAlloc119, align 4
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %lengthAllocDescs120 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 19
  %149 = ptrtoint ptr %lengthAllocDescs120 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %148, ptr %lengthAllocDescs120, align 1
  %i_checkpoint = getelementptr i8, ptr %inode, i32 -200
  %150 = ptrtoint ptr %i_checkpoint to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %i_checkpoint, align 8
  %152 = tail call i32 @llvm.bswap.i32(i32 %151)
  %checkpoint = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 14
  %153 = ptrtoint ptr %checkpoint to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %152, ptr %checkpoint, align 1
  br label %finish

if.else123:                                       ; preds = %if.end96
  %add.ptr125 = getelementptr i8, ptr %112, i32 216
  %i_data126 = getelementptr i8, ptr %inode, i32 -188
  %154 = ptrtoint ptr %i_data126 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i_data126, align 4
  %156 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i_sb, align 4
  %s_blocksize128 = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %s_blocksize128 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %s_blocksize128, align 16
  %sub129 = add i32 %159, -216
  %160 = call ptr @memcpy(ptr %add.ptr125, ptr %155, i32 %sub129)
  %161 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %i_size, align 8
  %i_lenStreams = getelementptr i8, ptr %inode, i32 -176
  %163 = ptrtoint ptr %i_lenStreams to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %i_lenStreams, align 8
  %add131 = add i64 %164, %162
  %165 = tail call i64 @llvm.bswap.i64(i64 %add131)
  %objectSize = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 10
  %166 = ptrtoint ptr %objectSize to i32
  call void @__asan_storeN_noabort(i32 %166, i32 8)
  store i64 %165, ptr %objectSize, align 1
  %167 = tail call i64 @llvm.bswap.i64(i64 %lb_recorded.0)
  %logicalBlocksRecorded132 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 11
  %168 = ptrtoint ptr %logicalBlocksRecorded132 to i32
  call void @__asan_storeN_noabort(i32 %168, i32 8)
  store i64 %167, ptr %logicalBlocksRecorded132, align 1
  %169 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %169)
  %bf.load133 = load i32, ptr %i_use, align 8
  %170 = and i32 %bf.load133, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool136.not = icmp eq i32 %170, 0
  br i1 %tobool136.not, label %if.else123.if.end141_crit_edge, label %if.then137

if.else123.if.end141_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then137:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #10
  %streamDirectoryICB = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 19
  %extLocation = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 19, i32 1
  %i_locStreamdir = getelementptr i8, ptr %inode, i32 -184
  %171 = ptrtoint ptr %i_locStreamdir to i32
  call void @__asan_load4_noabort(i32 %171)
  %.unpack528 = load i32, ptr %i_locStreamdir, align 8
  %.elt529 = getelementptr i8, ptr %inode, i32 -180
  %172 = ptrtoint ptr %.elt529 to i32
  call void @__asan_load4_noabort(i32 %172)
  %.unpack530 = load i32, ptr %.elt529, align 4
  %in.sroa.2.4.extract.shift.i = lshr i32 %.unpack530, 16
  %in.sroa.2.4.extract.trunc.i = trunc i32 %in.sroa.2.4.extract.shift.i to i16
  %173 = tail call i32 @llvm.bswap.i32(i32 %.unpack528) #8
  %174 = tail call i16 @llvm.bswap.i16(i16 %in.sroa.2.4.extract.trunc.i) #8
  %175 = ptrtoint ptr %extLocation to i32
  call void @__asan_storeN_noabort(i32 %175, i32 4)
  store i32 %173, ptr %extLocation, align 1
  %tmp138.sroa.4.0.extLocation.sroa_idx = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 19, i32 1, i32 1
  %176 = ptrtoint ptr %tmp138.sroa.4.0.extLocation.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %176, i32 2)
  store i16 %174, ptr %tmp138.sroa.4.0.extLocation.sroa_idx, align 1
  %177 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i_sb, align 4
  %s_blocksize140 = getelementptr inbounds %struct.super_block, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %s_blocksize140 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %s_blocksize140, align 16
  %181 = tail call i32 @llvm.bswap.i32(i32 %180)
  %182 = ptrtoint ptr %streamDirectoryICB to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 %181, ptr %streamDirectoryICB, align 1
  br label %if.end141

if.end141:                                        ; preds = %if.then137, %if.else123.if.end141_crit_edge
  %i_atime142 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %183 = ptrtoint ptr %i_atime142 to i32
  call void @__asan_load8_noabort(i32 %183)
  %.unpack = load i64, ptr %i_atime142, align 8
  %184 = insertvalue [2 x i64] undef, i64 %.unpack, 0
  %.elt508 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %185 = ptrtoint ptr %.elt508 to i32
  call void @__asan_load8_noabort(i32 %185)
  %.unpack509 = load i64, ptr %.elt508, align 8
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %187, i64 %.unpack)
  %cmp.i = icmp sgt i64 %187, %.unpack
  br i1 %cmp.i, label %if.end141.if.then.i553_crit_edge, label %lor.lhs.false.i

if.end141.if.then.i553_crit_edge:                 ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i553

lor.lhs.false.i:                                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_cmp8(i64 %187, i64 %.unpack)
  %cmp5.i = icmp eq i64 %187, %.unpack
  br i1 %cmp5.i, label %land.lhs.true.i, label %lor.lhs.false.i.udf_adjust_time.exit_crit_edge

lor.lhs.false.i.udf_adjust_time.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_adjust_time.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %tv_nsec.i = getelementptr i8, ptr %inode, i32 -248
  %188 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %tv_nsec.i, align 8
  %time.sroa.4.8.extract.shift.i = lshr i64 %.unpack509, 32
  %time.sroa.4.8.extract.trunc.i = trunc i64 %time.sroa.4.8.extract.shift.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %time.sroa.4.8.extract.trunc.i)
  %cmp8.i = icmp sgt i32 %189, %time.sroa.4.8.extract.trunc.i
  br i1 %cmp8.i, label %land.lhs.true.i.if.then.i553_crit_edge, label %land.lhs.true.i.udf_adjust_time.exit_crit_edge

land.lhs.true.i.udf_adjust_time.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_adjust_time.exit

land.lhs.true.i.if.then.i553_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i553

if.then.i553:                                     ; preds = %land.lhs.true.i.if.then.i553_crit_edge, %if.end141.if.then.i553_crit_edge
  %190 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %.unpack, ptr %add.ptr.i, align 8
  %time.sroa.4.0.i_crtime9.sroa_idx.i = getelementptr i8, ptr %inode, i32 -248
  %191 = ptrtoint ptr %time.sroa.4.0.i_crtime9.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %.unpack509, ptr %time.sroa.4.0.i_crtime9.sroa_idx.i, align 8
  br label %udf_adjust_time.exit

udf_adjust_time.exit:                             ; preds = %if.then.i553, %land.lhs.true.i.udf_adjust_time.exit_crit_edge, %lor.lhs.false.i.udf_adjust_time.exit_crit_edge
  %i_mtime143 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %192 = ptrtoint ptr %i_mtime143 to i32
  call void @__asan_load8_noabort(i32 %192)
  %.unpack510 = load i64, ptr %i_mtime143, align 8
  %.elt511 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %193 = ptrtoint ptr %.elt511 to i32
  call void @__asan_load8_noabort(i32 %193)
  %.unpack512 = load i64, ptr %.elt511, align 8
  %194 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %195, i64 %.unpack510)
  %cmp.i554 = icmp sgt i64 %195, %.unpack510
  br i1 %cmp.i554, label %udf_adjust_time.exit.if.then.i563_crit_edge, label %lor.lhs.false.i556

udf_adjust_time.exit.if.then.i563_crit_edge:      ; preds = %udf_adjust_time.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i563

lor.lhs.false.i556:                               ; preds = %udf_adjust_time.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %195, i64 %.unpack510)
  %cmp5.i555 = icmp eq i64 %195, %.unpack510
  br i1 %cmp5.i555, label %land.lhs.true.i561, label %lor.lhs.false.i556.udf_adjust_time.exit564_crit_edge

lor.lhs.false.i556.udf_adjust_time.exit564_crit_edge: ; preds = %lor.lhs.false.i556
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_adjust_time.exit564

land.lhs.true.i561:                               ; preds = %lor.lhs.false.i556
  %tv_nsec.i557 = getelementptr i8, ptr %inode, i32 -248
  %196 = ptrtoint ptr %tv_nsec.i557 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %tv_nsec.i557, align 8
  %time.sroa.4.8.extract.shift.i558 = lshr i64 %.unpack512, 32
  %time.sroa.4.8.extract.trunc.i559 = trunc i64 %time.sroa.4.8.extract.shift.i558 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %time.sroa.4.8.extract.trunc.i559)
  %cmp8.i560 = icmp sgt i32 %197, %time.sroa.4.8.extract.trunc.i559
  br i1 %cmp8.i560, label %land.lhs.true.i561.if.then.i563_crit_edge, label %land.lhs.true.i561.udf_adjust_time.exit564_crit_edge

land.lhs.true.i561.udf_adjust_time.exit564_crit_edge: ; preds = %land.lhs.true.i561
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_adjust_time.exit564

land.lhs.true.i561.if.then.i563_crit_edge:        ; preds = %land.lhs.true.i561
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i563

if.then.i563:                                     ; preds = %land.lhs.true.i561.if.then.i563_crit_edge, %udf_adjust_time.exit.if.then.i563_crit_edge
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %198)
  store i64 %.unpack510, ptr %add.ptr.i, align 8
  %time.sroa.4.0.i_crtime9.sroa_idx.i562 = getelementptr i8, ptr %inode, i32 -248
  %199 = ptrtoint ptr %time.sroa.4.0.i_crtime9.sroa_idx.i562 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %.unpack512, ptr %time.sroa.4.0.i_crtime9.sroa_idx.i562, align 8
  br label %udf_adjust_time.exit564

udf_adjust_time.exit564:                          ; preds = %if.then.i563, %land.lhs.true.i561.udf_adjust_time.exit564_crit_edge, %lor.lhs.false.i556.udf_adjust_time.exit564_crit_edge
  %i_ctime144 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %200 = ptrtoint ptr %i_ctime144 to i32
  call void @__asan_load8_noabort(i32 %200)
  %.unpack513 = load i64, ptr %i_ctime144, align 8
  %.elt514 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %201 = ptrtoint ptr %.elt514 to i32
  call void @__asan_load8_noabort(i32 %201)
  %.unpack515 = load i64, ptr %.elt514, align 8
  %202 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %203, i64 %.unpack513)
  %cmp.i565 = icmp sgt i64 %203, %.unpack513
  br i1 %cmp.i565, label %udf_adjust_time.exit564.if.then.i574_crit_edge, label %lor.lhs.false.i567

udf_adjust_time.exit564.if.then.i574_crit_edge:   ; preds = %udf_adjust_time.exit564
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i574

lor.lhs.false.i567:                               ; preds = %udf_adjust_time.exit564
  call void @__sanitizer_cov_trace_cmp8(i64 %203, i64 %.unpack513)
  %cmp5.i566 = icmp eq i64 %203, %.unpack513
  br i1 %cmp5.i566, label %land.lhs.true.i572, label %lor.lhs.false.i567.udf_adjust_time.exit575_crit_edge

lor.lhs.false.i567.udf_adjust_time.exit575_crit_edge: ; preds = %lor.lhs.false.i567
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_adjust_time.exit575

land.lhs.true.i572:                               ; preds = %lor.lhs.false.i567
  %tv_nsec.i568 = getelementptr i8, ptr %inode, i32 -248
  %204 = ptrtoint ptr %tv_nsec.i568 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %tv_nsec.i568, align 8
  %time.sroa.4.8.extract.shift.i569 = lshr i64 %.unpack515, 32
  %time.sroa.4.8.extract.trunc.i570 = trunc i64 %time.sroa.4.8.extract.shift.i569 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %time.sroa.4.8.extract.trunc.i570)
  %cmp8.i571 = icmp sgt i32 %205, %time.sroa.4.8.extract.trunc.i570
  br i1 %cmp8.i571, label %land.lhs.true.i572.if.then.i574_crit_edge, label %land.lhs.true.i572.udf_adjust_time.exit575_crit_edge

land.lhs.true.i572.udf_adjust_time.exit575_crit_edge: ; preds = %land.lhs.true.i572
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_adjust_time.exit575

land.lhs.true.i572.if.then.i574_crit_edge:        ; preds = %land.lhs.true.i572
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i574

if.then.i574:                                     ; preds = %land.lhs.true.i572.if.then.i574_crit_edge, %udf_adjust_time.exit564.if.then.i574_crit_edge
  %206 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %.unpack513, ptr %add.ptr.i, align 8
  %time.sroa.4.0.i_crtime9.sroa_idx.i573 = getelementptr i8, ptr %inode, i32 -248
  %207 = ptrtoint ptr %time.sroa.4.0.i_crtime9.sroa_idx.i573 to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %.unpack515, ptr %time.sroa.4.0.i_crtime9.sroa_idx.i573, align 8
  br label %udf_adjust_time.exit575

udf_adjust_time.exit575:                          ; preds = %if.then.i574, %land.lhs.true.i572.udf_adjust_time.exit575_crit_edge, %lor.lhs.false.i567.udf_adjust_time.exit575_crit_edge
  %accessTime145 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 12
  %208 = insertvalue [2 x i64] %184, i64 %.unpack509, 1
  tail call void @udf_time_to_disk_stamp(ptr noundef %accessTime145, [2 x i64] %208) #8
  %modificationTime147 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 13
  %209 = ptrtoint ptr %i_mtime143 to i32
  call void @__asan_load8_noabort(i32 %209)
  %.unpack519 = load i64, ptr %i_mtime143, align 8
  %210 = insertvalue [2 x i64] undef, i64 %.unpack519, 0
  %211 = ptrtoint ptr %.elt511 to i32
  call void @__asan_load8_noabort(i32 %211)
  %.unpack521 = load i64, ptr %.elt511, align 8
  %212 = insertvalue [2 x i64] %210, i64 %.unpack521, 1
  tail call void @udf_time_to_disk_stamp(ptr noundef %modificationTime147, [2 x i64] %212) #8
  %createTime = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 14
  %213 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %.unpack522 = load i64, ptr %add.ptr.i, align 8
  %214 = insertvalue [2 x i64] undef, i64 %.unpack522, 0
  %.elt523 = getelementptr i8, ptr %inode, i32 -248
  %215 = ptrtoint ptr %.elt523 to i32
  call void @__asan_load8_noabort(i32 %215)
  %.unpack524 = load i64, ptr %.elt523, align 8
  %216 = insertvalue [2 x i64] %214, i64 %.unpack524, 1
  tail call void @udf_time_to_disk_stamp(ptr noundef %createTime, [2 x i64] %216) #8
  %attrTime149 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 15
  %217 = ptrtoint ptr %i_ctime144 to i32
  call void @__asan_load8_noabort(i32 %217)
  %.unpack525 = load i64, ptr %i_ctime144, align 8
  %218 = insertvalue [2 x i64] undef, i64 %.unpack525, 0
  %219 = ptrtoint ptr %.elt514 to i32
  call void @__asan_load8_noabort(i32 %219)
  %.unpack527 = load i64, ptr %.elt514, align 8
  %220 = insertvalue [2 x i64] %218, i64 %.unpack527, 1
  tail call void @udf_time_to_disk_stamp(ptr noundef %attrTime149, [2 x i64] %220) #8
  %impIdent151 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 20
  %221 = call ptr @memset(ptr %impIdent151, i32 0, i32 32)
  %ident153 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 20, i32 1
  %222 = call ptr @memcpy(ptr %ident153, ptr @.str.17, i32 13)
  %identSuffix157 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 20, i32 2
  %223 = ptrtoint ptr %identSuffix157 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 4, ptr %identSuffix157, align 1
  %arrayidx161 = getelementptr %struct.extendedFileEntry, ptr %21, i32 0, i32 20, i32 2, i32 1
  %224 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 5, ptr %arrayidx161, align 1
  %i_unique162 = getelementptr i8, ptr %inode, i32 -232
  %225 = ptrtoint ptr %i_unique162 to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %i_unique162, align 8
  %227 = tail call i64 @llvm.bswap.i64(i64 %226)
  %uniqueID163 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 21
  %228 = ptrtoint ptr %uniqueID163 to i32
  call void @__asan_storeN_noabort(i32 %228, i32 8)
  store i64 %227, ptr %uniqueID163, align 1
  %i_lenEAttr164 = getelementptr i8, ptr %inode, i32 -224
  %229 = ptrtoint ptr %i_lenEAttr164 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %i_lenEAttr164, align 8
  %231 = tail call i32 @llvm.bswap.i32(i32 %230)
  %lengthExtendedAttr165 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 22
  %232 = ptrtoint ptr %lengthExtendedAttr165 to i32
  call void @__asan_storeN_noabort(i32 %232, i32 4)
  store i32 %231, ptr %lengthExtendedAttr165, align 1
  %i_lenAlloc166 = getelementptr i8, ptr %inode, i32 -220
  %233 = ptrtoint ptr %i_lenAlloc166 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %i_lenAlloc166, align 4
  %235 = tail call i32 @llvm.bswap.i32(i32 %234)
  %lengthAllocDescs167 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 23
  %236 = ptrtoint ptr %lengthAllocDescs167 to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %235, ptr %lengthAllocDescs167, align 1
  %i_checkpoint168 = getelementptr i8, ptr %inode, i32 -200
  %237 = ptrtoint ptr %i_checkpoint168 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %i_checkpoint168, align 8
  %239 = tail call i32 @llvm.bswap.i32(i32 %238)
  %checkpoint169 = getelementptr inbounds %struct.extendedFileEntry, ptr %21, i32 0, i32 16
  %240 = ptrtoint ptr %checkpoint169 to i32
  call void @__asan_storeN_noabort(i32 %240, i32 4)
  store i32 %239, ptr %checkpoint169, align 1
  br label %finish

finish:                                           ; preds = %udf_adjust_time.exit575, %if.then102, %if.then17
  %.sink584 = phi i16 [ 1793, %if.then17 ], [ 1281, %if.then102 ], [ 2561, %udf_adjust_time.exit575 ]
  %crclen.0 = phi i32 [ 65560, %if.then17 ], [ 65696, %if.then102 ], [ 65736, %udf_adjust_time.exit575 ]
  %241 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %241, i32 2)
  store i16 %.sink584, ptr %21, align 1
  %242 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %242)
  %bf.load173 = load i32, ptr %i_use, align 8
  %243 = and i32 %bf.load173, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool176.not = icmp eq i32 %243, 0
  br i1 %tobool176.not, label %finish.if.end185_crit_edge, label %if.then177

finish.if.end185_crit_edge:                       ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then177:                                       ; preds = %finish
  call void @__sanitizer_cov_trace_pc() #10
  %strategyParameter = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 1, i32 2
  %244 = ptrtoint ptr %strategyParameter to i32
  call void @__asan_storeN_noabort(i32 %244, i32 2)
  store i16 256, ptr %strategyParameter, align 1
  br label %if.end185

if.end185:                                        ; preds = %if.then177, %finish.if.end185_crit_edge
  %.sink581 = phi i16 [ 16, %if.then177 ], [ 1024, %finish.if.end185_crit_edge ]
  %.sink580 = phi i16 [ 512, %if.then177 ], [ 256, %finish.if.end185_crit_edge ]
  %245 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 1, i32 1
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_storeN_noabort(i32 %246, i32 2)
  store i16 %.sink581, ptr %245, align 1
  %247 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 1, i32 3
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_storeN_noabort(i32 %248, i32 2)
  store i16 %.sink580, ptr %247, align 1
  %249 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %249)
  %bf.load187 = load i32, ptr %i_use, align 8
  %250 = and i32 %bf.load187, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool190.not = icmp eq i32 %250, 0
  br i1 %tobool190.not, label %if.else193, label %if.end185.if.end263.sink.split_crit_edge

if.end185.if.end263.sink.split_crit_edge:         ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263.sink.split

if.else193:                                       ; preds = %if.end185
  %251 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %inode, align 8
  %253 = lshr i16 %252, 12
  %254 = trunc i16 %253 to i4
  %switch.tableidx = add i4 %254, -1
  %255 = sext i4 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %255)
  %256 = icmp ult i4 %switch.tableidx, -4
  br i1 %256, label %switch.hole_check, label %if.else193.if.end263_crit_edge

if.else193.if.end263_crit_edge:                   ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

switch.hole_check:                                ; preds = %if.else193
  %switch.maskindex = zext i4 %switch.tableidx to i16
  %switch.shifted = lshr i16 2731, %switch.maskindex
  %257 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %257)
  %switch.lobit.not = icmp eq i16 %257, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end263_crit_edge, label %switch.lookup

switch.hole_check.if.end263_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end263

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %258 = zext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i8], ptr @switch.table.udf_update_inode, i32 0, i32 %258
  %259 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %259)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end263.sink.split

if.end263.sink.split:                             ; preds = %switch.lookup, %if.end185.if.end263.sink.split_crit_edge
  %.sink585 = phi i8 [ 1, %if.end185.if.end263.sink.split_crit_edge ], [ %switch.load, %switch.lookup ]
  %fileType201 = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 1, i32 5
  %260 = ptrtoint ptr %fileType201 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %.sink585, ptr %fileType201, align 1
  br label %if.end263

if.end263:                                        ; preds = %if.end263.sink.split, %switch.hole_check.if.end263_crit_edge, %if.else193.if.end263_crit_edge
  %261 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %261)
  %bf.load265 = load i32, ptr %i_use, align 8
  %bf.lshr266 = lshr i32 %bf.load265, 29
  %262 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %inode, align 8
  %conv268 = zext i16 %263 to i32
  %and269 = lshr i32 %conv268, 5
  %264 = and i32 %and269, 64
  %or271 = or i32 %264, %bf.lshr266
  %and274 = lshr i32 %conv268, 3
  %265 = and i32 %and274, 128
  %or277 = or i32 %or271, %265
  %and280 = lshr i32 %conv268, 1
  %266 = and i32 %and280, 256
  %or283 = or i32 %or277, %266
  %flags = getelementptr inbounds %struct.fileEntry, ptr %21, i32 0, i32 1, i32 7
  %267 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %267, i32 2)
  %268 = load i16, ptr %flags, align 1
  %269 = and i16 %268, 14590
  %270 = tail call i16 @llvm.bswap.i16(i16 %269)
  %271 = trunc i32 %or283 to i16
  %conv288 = or i16 %270, %271
  %272 = tail call i16 @llvm.bswap.i16(i16 %conv288)
  %273 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %273, i32 2)
  store i16 %272, ptr %flags, align 1
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 16
  %274 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %275)
  %cmp292.inv = icmp ult i16 %275, 512
  %.sink582 = select i1 %cmp292.inv, i16 512, i16 768
  %276 = getelementptr inbounds %struct.tag, ptr %21, i32 0, i32 1
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_storeN_noabort(i32 %277, i32 2)
  store i16 %.sink582, ptr %276, align 1
  %s_serial_number = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 15
  %278 = ptrtoint ptr %s_serial_number to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %s_serial_number, align 8
  %280 = tail call i16 @llvm.bswap.i16(i16 %279)
  %tagSerialNum = getelementptr inbounds %struct.tag, ptr %21, i32 0, i32 4
  %281 = ptrtoint ptr %tagSerialNum to i32
  call void @__asan_storeN_noabort(i32 %281, i32 2)
  store i16 %280, ptr %tagSerialNum, align 1
  %282 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %i_location, align 8
  %284 = tail call i32 @llvm.bswap.i32(i32 %283)
  %tagLocation = getelementptr inbounds %struct.tag, ptr %21, i32 0, i32 7
  %285 = ptrtoint ptr %tagLocation to i32
  call void @__asan_storeN_noabort(i32 %285, i32 4)
  store i32 %284, ptr %tagLocation, align 1
  %i_lenEAttr303 = getelementptr i8, ptr %inode, i32 -224
  %286 = ptrtoint ptr %i_lenEAttr303 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %i_lenEAttr303, align 8
  %i_lenAlloc304 = getelementptr i8, ptr %inode, i32 -220
  %288 = ptrtoint ptr %i_lenAlloc304 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %i_lenAlloc304, align 4
  %sub306 = add i32 %crclen.0, %287
  %add308 = add i32 %sub306, %289
  %conv309 = trunc i32 %add308 to i16
  %290 = tail call i16 @llvm.bswap.i16(i16 %conv309)
  %descCRCLength = getelementptr inbounds %struct.tag, ptr %21, i32 0, i32 6
  %291 = ptrtoint ptr %descCRCLength to i32
  call void @__asan_storeN_noabort(i32 %291, i32 2)
  store i16 %290, ptr %descCRCLength, align 1
  %add.ptr311 = getelementptr i8, ptr %21, i32 16
  %conv312 = and i32 %add308, 65535
  %call313 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %add.ptr311, i32 noundef %conv312) #8
  %292 = tail call i16 @llvm.bswap.i16(i16 %call313)
  %descCRC = getelementptr inbounds %struct.tag, ptr %21, i32 0, i32 5
  %293 = ptrtoint ptr %descCRC to i32
  call void @__asan_storeN_noabort(i32 %293, i32 2)
  store i16 %292, ptr %descCRC, align 1
  %call316 = tail call zeroext i8 @udf_tag_checksum(ptr noundef %21) #8
  %tagChecksum = getelementptr inbounds %struct.tag, ptr %21, i32 0, i32 2
  %294 = ptrtoint ptr %tagChecksum to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %call316, ptr %tagChecksum, align 1
  %295 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %call6, align 4
  %and1.i.i = and i32 %296, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end263.set_buffer_uptodate.exit_crit_edge

if.end263.set_buffer_uptodate.exit_crit_edge:     ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call6) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end263.set_buffer_uptodate.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call6) #8
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_sync)
  %tobool318.not = icmp eq i32 %do_sync, 0
  br i1 %tobool318.not, label %set_buffer_uptodate.exit.brelse.exit_crit_edge, label %if.then319

set_buffer_uptodate.exit.brelse.exit_crit_edge:   ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then319:                                       ; preds = %set_buffer_uptodate.exit
  %call320 = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call6) #8
  %297 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load volatile i32, ptr %call6, align 4
  %299 = and i32 %298, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool322.not = icmp eq i32 %299, 0
  br i1 %tobool322.not, label %if.then319.brelse.exit_crit_edge, label %if.then323

if.then319.brelse.exit_crit_edge:                 ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then323:                                       ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #10
  %300 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %302 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %301, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.18, i32 noundef %303) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then323, %if.then319.brelse.exit_crit_edge, %set_buffer_uptodate.exit.brelse.exit_crit_edge
  %err.0 = phi i32 [ -5, %if.then323 ], [ 0, %if.then319.brelse.exit_crit_edge ], [ 0, %set_buffer_uptodate.exit.brelse.exit_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then11, %do.body
  %retval.0 = phi i32 [ %err.0, %brelse.exit ], [ -5, %if.then11 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_warn(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_free_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @udf_get_block, ptr noundef %wbc) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @udf_get_block) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @udf_get_block) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udf_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @udf_get_block) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @udf_get_block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !86

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  tail call fastcc void @udf_write_failed(ptr noundef %mapping, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @udf_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @udf_get_block) #8
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %11, ptr noundef %iter, ptr noundef nonnull @udf_get_block, ptr noundef null, ptr noundef null, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %12 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_source.i, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp3 = icmp eq i8 %13, 1
  br i1 %cmp3, label %if.then, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %14 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ki_pos, align 8
  %conv6 = zext i32 %7 to i64
  %add = add i64 %15, %conv6
  tail call fastcc void @udf_write_failed(ptr noundef %3, i64 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_expand_file_adinicb(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 25
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_rwsem.i, i32 noundef 4) #8
  %0 = ptrtoint ptr %i_rwsem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.i.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b175 = load i1, ptr @udf_expand_file_adinicb.__already_done, align 1
  br i1 %.b175, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !86

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @udf_expand_file_adinicb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 262, i32 noundef 9, ptr noundef null) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %2 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_lenAlloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool38.not = icmp eq i32 %3, 0
  br i1 %tobool38.not, label %if.then39, label %if.end48

if.then39:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %s_flags.i, align 4
  %i_alloc_type43 = getelementptr i8, ptr %inode, i32 -192
  %10 = ptrtoint ptr %i_alloc_type43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load44 = load i32, ptr %i_alloc_type43, align 8
  %bf.clear45 = and i32 %bf.load44, 536870911
  %11 = shl i32 %9, 27
  %12 = and i32 %11, 536870912
  %13 = or i32 %12, %bf.clear45
  %14 = xor i32 %13, 536870912
  store i32 %14, ptr %i_alloc_type43, align 8
  %a_ops = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %15 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @udf_aops, ptr %a_ops, align 8
  %i_data_sem = getelementptr i8, ptr %inode, i32 -168
  tail call void @up_write(ptr noundef %i_data_sem) #8
  br label %cleanup.sink.split

if.end48:                                         ; preds = %if.end30
  %i_data_sem49 = getelementptr i8, ptr %inode, i32 -168
  tail call void @up_write(ptr noundef %i_data_sem49) #8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %17, i32 noundef 0, i32 noundef 7, i32 noundef 3136) #8
  %tobool51.not = icmp eq ptr %call.i, null
  br i1 %tobool51.not, label %if.end48.cleanup_crit_edge, label %if.end53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %18 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i176 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i176)
  %tobool.not.i.i.i177 = icmp eq i32 %and.i.i.i.i176, 0
  br i1 %tobool.not.i.i.i177, label %folio_flags.exit.i.i, label %if.then.i.i.i178, !prof !86

if.then.i.i.i178:                                 ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !89
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %if.then56, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  br label %if.end69

if.then56:                                        ; preds = %folio_flags.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %29 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %29, 512
  %30 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %33, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %34 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i1.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i, i32 noundef %or.i) #8
  %40 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_lenAlloc, align 4
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %41
  %sub = sub i32 4096, %41
  %42 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %i_data60 = getelementptr i8, ptr %inode, i32 -188
  %43 = ptrtoint ptr %i_data60 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_data60, align 4
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %45 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr61 = getelementptr i8, ptr %44, i32 %46
  %47 = load i32, ptr %i_lenAlloc, align 4
  %48 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr61, i32 %47)
  tail call void @flush_dcache_page(ptr noundef nonnull %call.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !93
  %49 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %18, align 4
  %and.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !89
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i) #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %51 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i1.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %56, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %57 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i179 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i179 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i180 = add i32 %60, -1
  store volatile i32 %sub.i.i180, ptr %preempt_count.i.i.i, align 4
  br label %if.end69

if.end69:                                         ; preds = %SetPageUptodate.exit, %PageUptodate.exit
  tail call void @down_write(ptr noundef %i_data_sem49) #8
  %i_data71 = getelementptr i8, ptr %inode, i32 -188
  %61 = ptrtoint ptr %i_data71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_data71, align 4
  %i_lenEAttr72 = getelementptr i8, ptr %inode, i32 -224
  %63 = ptrtoint ptr %i_lenEAttr72 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_lenEAttr72, align 8
  %add.ptr73 = getelementptr i8, ptr %62, i32 %64
  %65 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_lenAlloc, align 4
  %67 = call ptr @memset(ptr %add.ptr73, i32 0, i32 %66)
  store i32 0, ptr %i_lenAlloc, align 4
  %i_sb76 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %68 = ptrtoint ptr %i_sb76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb76, align 4
  %s_fs_info.i.i181 = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %s_fs_info.i.i181 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i.i181, align 16
  %s_flags.i182 = getelementptr inbounds %struct.udf_sb_info, ptr %71, i32 0, i32 17
  %72 = ptrtoint ptr %s_flags.i182 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %s_flags.i182, align 4
  %i_alloc_type85 = getelementptr i8, ptr %inode, i32 -192
  %74 = ptrtoint ptr %i_alloc_type85 to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load86 = load i32, ptr %i_alloc_type85, align 8
  %bf.clear87 = and i32 %bf.load86, 536870911
  %75 = shl i32 %73, 27
  %76 = and i32 %75, 536870912
  %77 = or i32 %76, %bf.clear87
  %78 = xor i32 %77, 536870912
  store i32 %78, ptr %i_alloc_type85, align 8
  %a_ops91 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %79 = ptrtoint ptr %a_ops91 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @udf_aops, ptr %a_ops91, align 8
  %call92 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %call.i) #8
  tail call void @unlock_page(ptr noundef nonnull %call.i) #8
  tail call void @up_write(ptr noundef %i_data_sem49) #8
  %80 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i_mapping, align 8
  %call95 = tail call i32 @filemap_fdatawrite(ptr noundef %81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end69.if.end119_crit_edge, label %if.then97

if.end69.if.end119_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then97:                                        ; preds = %if.end69
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 788) #8
  %82 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %18, align 4
  %and.i.i185 = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i185)
  %tobool.not.i.i186 = icmp eq i32 %and.i.i185, 0
  br i1 %tobool.not.i.i186, label %if.end.i.i189, label %if.then.i.i188, !prof !86

if.then.i.i188:                                   ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i187 = add i32 %83, -1
  br label %_compound_head.exit.i193

if.end.i.i189:                                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i193

_compound_head.exit.i193:                         ; preds = %if.end.i.i189, %if.then.i.i188
  %retval.0.i.i190 = phi i32 [ %sub.i.i187, %if.then.i.i188 ], [ %84, %if.end.i.i189 ]
  %85 = inttoptr i32 %retval.0.i.i190 to ptr
  %86 = getelementptr inbounds %struct.page, ptr %85, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %and.i.i.i.i191 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i191)
  %tobool.not.i.i.i192 = icmp eq i32 %and.i.i.i.i191, 0
  br i1 %tobool.not.i.i.i192, label %folio_flags.exit.i.i196, label %if.then.i.i.i194, !prof !86

if.then.i.i.i194:                                 ; preds = %_compound_head.exit.i193
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %85, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !89
  unreachable

folio_flags.exit.i.i196:                          ; preds = %_compound_head.exit.i193
  %call.i.i.i.i195 = tail call zeroext i1 @__kasan_check_write(ptr noundef %85, i32 noundef 4) #8
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %85, align 4
  %and.i.i4.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i196.if.then.i_crit_edge

folio_flags.exit.i.i196.if.then.i_crit_edge:      ; preds = %folio_flags.exit.i.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i196
  tail call void @llvm.prefetch.p0(ptr %85, i32 1, i32 3, i32 1) #8
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %85, ptr %85, i32 1, ptr elementtype(i32) %85) #8, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %92 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %phi.cmp.i.i.i = icmp eq i32 %92, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i196.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %85) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  tail call void @down_write(ptr noundef %i_data_sem49) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %93 = load i32, ptr @pgprot_kernel, align 4
  %or.i197 = or i32 %93, 512
  %94 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i198 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i198 to ptr
  %preempt_count.i.i.i.i199 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i199, align 4
  %add.i.i.i200 = add i32 %97, 1
  store volatile i32 %add.i.i.i200, ptr %preempt_count.i.i.i.i199, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %98 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i1.i.i201 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i1.i.i201 to ptr
  %task.i.i.i.i202 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %task.i.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %task.i.i.i.i202, align 8
  %pagefault_disabled.i.i.i.i203 = getelementptr inbounds %struct.task_struct, ptr %101, i32 0, i32 213
  %102 = ptrtoint ptr %pagefault_disabled.i.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pagefault_disabled.i.i.i.i203, align 8
  %inc.i.i.i.i204 = add i32 %103, 1
  store i32 %inc.i.i.i.i204, ptr %pagefault_disabled.i.i.i.i203, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  %call.i.i205 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i, i32 noundef %or.i197) #8
  %104 = ptrtoint ptr %i_data71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_data71, align 4
  %106 = ptrtoint ptr %i_lenEAttr72 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_lenEAttr72, align 8
  %add.ptr102 = getelementptr i8, ptr %105, i32 %107
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %108 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %109 to i32
  %110 = call ptr @memcpy(ptr %add.ptr102, ptr %call.i.i205, i32 %conv)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i205) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %111 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i1.i206 = and i32 %111, -16384
  %112 = inttoptr i32 %and.i.i.i1.i206 to ptr
  %task.i.i.i207 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task.i.i.i207 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task.i.i.i207, align 8
  %pagefault_disabled.i.i.i208 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 213
  %115 = ptrtoint ptr %pagefault_disabled.i.i.i208 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pagefault_disabled.i.i.i208, align 8
  %dec.i.i.i209 = add i32 %116, -1
  store i32 %dec.i.i.i209, ptr %pagefault_disabled.i.i.i208, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %117 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i210 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i.i210 to ptr
  %preempt_count.i.i.i211 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %preempt_count.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %preempt_count.i.i.i211, align 4
  %sub.i.i212 = add i32 %120, -1
  store volatile i32 %sub.i.i212, ptr %preempt_count.i.i.i211, align 4
  tail call void @unlock_page(ptr noundef nonnull %call.i) #8
  %i_alloc_type109 = getelementptr i8, ptr %inode, i32 -192
  %121 = ptrtoint ptr %i_alloc_type109 to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load110 = load i32, ptr %i_alloc_type109, align 8
  %bf.clear111 = and i32 %bf.load110, 536870911
  %bf.set112 = or i32 %bf.clear111, 1610612736
  store i32 %bf.set112, ptr %i_alloc_type109, align 8
  %122 = ptrtoint ptr %a_ops91 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @udf_adinicb_aops, ptr %a_ops91, align 8
  %123 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %i_size, align 8
  %conv116 = trunc i64 %124 to i32
  %125 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv116, ptr %i_lenAlloc, align 4
  tail call void @up_write(ptr noundef %i_data_sem49) #8
  br label %if.end119

if.end119:                                        ; preds = %lock_page.exit, %if.end69.if.end119_crit_edge
  %126 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %18, align 4
  %and.i.i213 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i213)
  %tobool.not.i.i214 = icmp eq i32 %and.i.i213, 0
  br i1 %tobool.not.i.i214, label %if.end.i.i217, label %if.then.i.i216, !prof !86

if.then.i.i216:                                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i215 = add i32 %127, -1
  br label %_compound_head.exit.i219

if.end.i.i217:                                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i219

_compound_head.exit.i219:                         ; preds = %if.end.i.i217, %if.then.i.i216
  %retval.0.i.i218 = phi i32 [ %sub.i.i215, %if.then.i.i216 ], [ %128, %if.end.i.i217 ]
  %129 = inttoptr i32 %retval.0.i.i218 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %130 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp.i.i.i.i = icmp eq i32 %131, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !88

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i219
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %129, ptr noundef nonnull @.str.12) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !96
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i219
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %132 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !98
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %132, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@udf_expand_file_adinicb, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !83

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %129, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge

folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %129) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge, %if.then39
  %retval.0.ph = phi i32 [ 0, %if.then39 ], [ %call95, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %call95, %if.then.i4.i ]
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end48.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_expand_dir_adinicb(ptr noundef %inode, ptr nocapture noundef %block, ptr noundef %err) local_unnamed_addr #0 align 64 {
entry:
  %err.i = alloca i32, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %epos = alloca %struct.extent_position, align 4
  %sfibh = alloca %struct.udf_fileident_bh, align 4
  %dfibh = alloca %struct.udf_fileident_bh, align 4
  %f_pos = alloca i64, align 8
  %cfi = alloca %struct.fileIdentDesc, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #8
  %0 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %eloc, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #8
  %1 = call ptr @memset(ptr %epos, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sfibh) #8
  %2 = getelementptr inbounds %struct.udf_fileident_bh, ptr %sfibh, i32 0, i32 1
  %3 = getelementptr inbounds %struct.udf_fileident_bh, ptr %sfibh, i32 0, i32 2
  %4 = getelementptr inbounds %struct.udf_fileident_bh, ptr %sfibh, i32 0, i32 3
  %5 = call ptr @memset(ptr %sfibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dfibh) #8
  %6 = getelementptr inbounds %struct.udf_fileident_bh, ptr %dfibh, i32 0, i32 1
  %7 = getelementptr inbounds %struct.udf_fileident_bh, ptr %dfibh, i32 0, i32 2
  %8 = getelementptr inbounds %struct.udf_fileident_bh, ptr %dfibh, i32 0, i32 3
  %9 = call ptr @memset(ptr %dfibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f_pos) #8
  %i_alloc_type.i = getelementptr i8, ptr %inode, i32 -192
  %10 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp.i = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp.i, label %if.then.i154, label %udf_ext0_offset.exit

if.then.i154:                                     ; preds = %entry
  %11 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i161

if.else.i.i:                                      ; preds = %if.then.i154
  %12 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i.i = icmp eq i32 %12, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %inode, i32 -224
  %13 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_lenEAttr7.i.i, align 8
  %. = select i1 %tobool4.not.i.i, i32 176, i32 216
  %add.i.i = add i32 %14, %.
  %conv192195 = zext i32 %add.i.i to i64
  %15 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv192195, ptr %f_pos, align 8
  %16 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i.i162 = icmp eq i32 %16, 0
  %i_lenEAttr7.i.i163 = getelementptr i8, ptr %inode, i32 -224
  %17 = ptrtoint ptr %i_lenEAttr7.i.i163 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_lenEAttr7.i.i163, align 8
  br i1 %tobool4.not.i.i162, label %if.else6.i.i168, label %if.then5.i.i166

udf_ext0_offset.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %f_pos, align 8
  br label %udf_ext0_offset.exit170

if.then.i161:                                     ; preds = %if.then.i154
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 40, ptr %f_pos, align 8
  br label %udf_ext0_offset.exit170

if.then5.i.i166:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i165 = add i32 %18, 216
  br label %udf_ext0_offset.exit170

if.else6.i.i168:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i167 = add i32 %18, 176
  br label %udf_ext0_offset.exit170

udf_ext0_offset.exit170:                          ; preds = %if.else6.i.i168, %if.then5.i.i166, %if.then.i161, %udf_ext0_offset.exit
  %retval.0.i169 = phi i32 [ 0, %udf_ext0_offset.exit ], [ %add.i.i165, %if.then5.i.i166 ], [ %add8.i.i167, %if.else6.i.i168 ], [ 40, %if.then.i161 ]
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %21 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_size, align 8
  %23 = trunc i64 %22 to i32
  %conv3 = add i32 %retval.0.i169, %23
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %24 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %28, i32 0, i32 17
  %29 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %s_flags.i, align 4
  %31 = shl i32 %30, 27
  %32 = and i32 %31, 536870912
  %33 = xor i32 %32, 536870912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool7.not = icmp eq i64 %22, 0
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %udf_ext0_offset.exit170
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load i32, ptr %i_alloc_type.i, align 8
  %bf.clear = and i32 %bf.load, 536870911
  %bf.set = or i32 %bf.clear, %33
  store i32 %bf.set, ptr %i_alloc_type.i, align 8
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %cleanup

if.end10:                                         ; preds = %udf_ext0_offset.exit170
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %partitionReferenceNum = getelementptr i8, ptr %inode, i32 -236
  %35 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %partitionReferenceNum, align 4
  %37 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_location, align 8
  %call13 = tail call i32 @udf_new_block(ptr noundef %26, ptr noundef %inode, i16 noundef zeroext %36, i32 noundef %38, ptr noundef %err) #8
  %39 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call13, ptr %block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  %42 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %partitionReferenceNum, align 4
  %call20 = tail call i32 @udf_get_pblock(ptr noundef %41, i32 noundef %call13, i16 noundef zeroext %43, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %call25 = tail call ptr @udf_tgetblk(ptr noundef %45, i32 noundef %call20) #8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call25, i32 noundef 4) #8
  %46 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %call25, align 4
  %and.i.i.i.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end28.if.then.i172_crit_edge

if.end28.if.then.i172_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i172

trylock_buffer.exit.i:                            ; preds = %if.end28
  tail call void @llvm.prefetch.p0(ptr nonnull %call25, i32 1, i32 3, i32 1) #8
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call25, ptr nonnull %call25, i32 4, ptr nonnull elementtype(i32) %call25) #8, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %49 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i172_crit_edge

trylock_buffer.exit.i.if.then.i172_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i172

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i172:                                     ; preds = %trylock_buffer.exit.i.if.then.i172_crit_edge, %if.end28.if.then.i172_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call25) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i172, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call25, i32 0, i32 5
  %50 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data, align 4
  %52 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize, align 16
  %56 = call ptr @memset(ptr %51, i32 0, i32 %55)
  %57 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %call25, align 4
  %and1.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call25) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call25) #8
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call25, ptr noundef %inode) #8
  %59 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %f_pos, align 8
  %61 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb, align 4
  %s_blocksize31 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %s_blocksize31 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_blocksize31, align 16
  %sub = add i32 %64, -1
  %65 = trunc i64 %60 to i32
  %conv33 = and i32 %sub, %65
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv33, ptr %4, align 4
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv33, ptr %3, align 4
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %2, align 4
  %69 = ptrtoint ptr %sfibh to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %sfibh, align 4
  %70 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %8, align 4
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %7, align 4
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call25, ptr %6, align 4
  %73 = ptrtoint ptr %dfibh to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call25, ptr %dfibh, align 4
  %conv38 = sext i32 %conv3 to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end47.while.cond_crit_edge, %set_buffer_uptodate.exit
  %74 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %conv38)
  %cmp = icmp slt i64 %75, %conv38
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %76 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load41 = load i32, ptr %i_alloc_type.i, align 8
  %bf.clear42 = and i32 %bf.load41, 536870911
  %bf.set43 = or i32 %bf.clear42, 1610612736
  store i32 %bf.set43, ptr %i_alloc_type.i, align 8
  %call44 = call ptr @udf_fileident_read(ptr noundef %inode, ptr noundef nonnull %f_pos, ptr noundef nonnull %sfibh, ptr noundef nonnull %cfi, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %brelse.exit, label %if.end47

brelse.exit:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %call25) #8
  br label %cleanup

if.end47:                                         ; preds = %while.body
  %77 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load50 = load i32, ptr %i_alloc_type.i, align 8
  %bf.clear53 = and i32 %bf.load50, 536870911
  %bf.set54 = or i32 %bf.clear53, %33
  store i32 %bf.set54, ptr %i_alloc_type.i, align 8
  %78 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %block, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  %tagLocation = getelementptr inbounds %struct.tag, ptr %call44, i32 0, i32 7
  %81 = ptrtoint ptr %tagLocation to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 %80, ptr %tagLocation, align 1
  %82 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %8, align 4
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %7, align 4
  %85 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %4, align 4
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %3, align 4
  %sub59 = add i32 %86, %83
  %add61 = sub i32 %sub59, %88
  store i32 %add61, ptr %8, align 4
  %89 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %90, i32 %83
  %impUse = getelementptr %struct.fileIdentDesc, ptr %call44, i32 0, i32 6
  %lengthOfImpUse.i = getelementptr inbounds %struct.fileIdentDesc, ptr %call44, i32 0, i32 5
  %91 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %lengthOfImpUse.i, align 1
  %93 = call i16 @llvm.bswap.i16(i16 %92) #8
  %conv.i = zext i16 %93 to i32
  %add.ptr1.i = getelementptr i8, ptr %impUse, i32 %conv.i
  %call65 = call i32 @udf_write_fi(ptr noundef %inode, ptr noundef nonnull %call44, ptr noundef %add.ptr, ptr noundef nonnull %dfibh, ptr noundef %impUse, ptr noundef %add.ptr1.i) #8
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end47.while.cond_crit_edge, label %brelse.exit178

if.end47.while.cond_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

brelse.exit178:                                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load69 = load i32, ptr %i_alloc_type.i, align 8
  %bf.clear70 = and i32 %bf.load69, 536870911
  %bf.set71 = or i32 %bf.clear70, 1610612736
  store i32 %bf.set71, ptr %i_alloc_type.i, align 8
  call void @__brelse(ptr noundef nonnull %call25) #8
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @mark_buffer_dirty_inode(ptr noundef nonnull %call25, ptr noundef %inode) #8
  %i_data = getelementptr i8, ptr %inode, i32 -188
  %95 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_data, align 4
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %97 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr73 = getelementptr i8, ptr %96, i32 %98
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %99 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_lenAlloc, align 4
  %101 = call ptr @memset(ptr %add.ptr73, i32 0, i32 %100)
  store i32 0, ptr %i_lenAlloc, align 4
  %102 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %block, align 4
  %104 = ptrtoint ptr %eloc to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %eloc, align 8
  %105 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %partitionReferenceNum, align 4
  %partitionReferenceNum78 = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %107 = ptrtoint ptr %partitionReferenceNum78 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %partitionReferenceNum78, align 4
  %108 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %i_size, align 8
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %110 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %i_lenExtents, align 8
  %111 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %epos, align 4
  %block80 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %112 = ptrtoint ptr %i_location to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %i_location, align 8
  %114 = ptrtoint ptr %block80 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 8)
  store i64 %113, ptr %block80, align 4
  %115 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %bf.load.i179 = load i32, ptr %i_alloc_type.i, align 8
  %116 = and i32 %bf.load.i179, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i180 = icmp eq i32 %116, 0
  br i1 %tobool.not.i180, label %if.else.i, label %while.end.udf_file_entry_alloc_offset.exit_crit_edge

while.end.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %while.end
  %117 = and i32 %bf.load.i179, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool4.not.i = icmp eq i32 %117, 0
  %118 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_lenEAttr, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %119, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i = add i32 %119, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %while.end.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i181 = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %while.end.udf_file_entry_alloc_offset.exit_crit_edge ]
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %120 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %retval.0.i181, ptr %offset, align 4
  %conv84 = trunc i64 %109 to i32
  %121 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_sb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i179)
  %cmp.i184 = icmp ult i32 %bf.load.i179, 536870912
  br i1 %cmp.i184, label %udf_file_entry_alloc_offset.exit.if.end8.i_crit_edge, label %if.else.i185

udf_file_entry_alloc_offset.exit.if.end8.i_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.else.i185:                                     ; preds = %udf_file_entry_alloc_offset.exit
  %bf.lshr4.mask.i = and i32 %bf.load.i179, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask.i)
  %cmp5.i = icmp eq i32 %bf.lshr4.mask.i, 536870912
  br i1 %cmp5.i, label %if.else.i185.if.end8.i_crit_edge, label %if.else.i185.udf_add_aext.exit_crit_edge

if.else.i185.udf_add_aext.exit_crit_edge:         ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit

if.else.i185.if.end8.i_crit_edge:                 ; preds = %if.else.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i185.if.end8.i_crit_edge, %udf_file_entry_alloc_offset.exit.if.end8.i_crit_edge
  %adsize.0.i = phi i32 [ 16, %udf_file_entry_alloc_offset.exit.if.end8.i_crit_edge ], [ 32, %if.else.i185.if.end8.i_crit_edge ]
  %add.i186 = add i32 %adsize.0.i, %retval.0.i181
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i186, i32 %124)
  %cmp9.i = icmp ugt i32 %add.i186, %124
  br i1 %cmp9.i, label %if.then10.i, label %if.end8.i.if.end20.i_crit_edge

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %125 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %err.i, align 4, !annotation !81
  %partitionReferenceNum.i = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2, i32 1
  %126 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %partitionReferenceNum.i, align 4
  %128 = ptrtoint ptr %block80 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %block80, align 4
  %call12.i = call i32 @udf_new_block(ptr noundef %122, ptr noundef null, i16 noundef zeroext %127, i32 noundef %129, ptr noundef nonnull %err.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i187 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i187, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br label %udf_add_aext.exit

cleanup.i:                                        ; preds = %if.then10.i
  %call15.i = call i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %call12.i, ptr noundef nonnull %epos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br i1 %tobool16.not.i, label %cleanup.i.if.end20.i_crit_edge, label %cleanup.i.udf_add_aext.exit_crit_edge

cleanup.i.udf_add_aext.exit_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit

cleanup.i.if.end20.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %cleanup.i.if.end20.i_crit_edge, %if.end8.i.if.end20.i_crit_edge
  %call21.i = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i32 noundef %conv84, i32 noundef 0) #8
  br label %udf_add_aext.exit

udf_add_aext.exit:                                ; preds = %if.end20.i, %cleanup.i.udf_add_aext.exit_crit_edge, %cleanup.thread.i, %if.else.i185.udf_add_aext.exit_crit_edge
  %130 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %epos, align 4
  %tobool.not.i188 = icmp eq ptr %131, null
  br i1 %tobool.not.i188, label %udf_add_aext.exit.brelse.exit190_crit_edge, label %if.then.i189

udf_add_aext.exit.brelse.exit190_crit_edge:       ; preds = %udf_add_aext.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit190

if.then.i189:                                     ; preds = %udf_add_aext.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %131) #8
  br label %brelse.exit190

brelse.exit190:                                   ; preds = %if.then.i189, %udf_add_aext.exit.brelse.exit190_crit_edge
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit190, %brelse.exit178, %brelse.exit, %if.end23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8
  %retval.0 = phi ptr [ null, %brelse.exit178 ], [ null, %brelse.exit ], [ %call25, %brelse.exit190 ], [ null, %if.then8 ], [ null, %if.end10.cleanup_crit_edge ], [ null, %if.end16.cleanup_crit_edge ], [ null, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_pos) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dfibh) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sfibh) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_new_block(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tgetblk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_fileident_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_write_fi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_add_aext(ptr noundef %inode, ptr noundef %epos, ptr nocapture noundef readonly %eloc, i32 noundef %elen, i32 noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %2 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 536870912
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  %bf.lshr4.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask)
  %cmp5 = icmp eq i32 %bf.lshr4.mask, 536870912
  br i1 %cmp5, label %if.else.if.end8_crit_edge, label %if.else.cleanup22_crit_edge

if.else.cleanup22_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %adsize.0 = phi i32 [ 16, %entry.if.end8_crit_edge ], [ 32, %if.else.if.end8_crit_edge ]
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, %adsize.0
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp9 = icmp ugt i32 %add, %6
  br i1 %cmp9, label %if.then10, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then10:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %err, align 4, !annotation !81
  %block = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %partitionReferenceNum = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %partitionReferenceNum, align 4
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block, align 4
  %call12 = call i32 @udf_new_block(ptr noundef %1, ptr noundef null, i16 noundef zeroext %9, i32 noundef %11, ptr noundef nonnull %err) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  br label %cleanup22

cleanup:                                          ; preds = %if.then10
  %call15 = call i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %call12, ptr noundef %epos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  br i1 %tobool16.not, label %cleanup.if.end20_crit_edge, label %cleanup.cleanup22_crit_edge

cleanup.cleanup22_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

cleanup.if.end20_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %cleanup.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %call21 = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef %epos, ptr noundef %eloc, i32 noundef %elen, i32 noundef %inc)
  br label %cleanup22

cleanup22:                                        ; preds = %if.end20, %cleanup.cleanup22_crit_edge, %cleanup.thread, %if.else.cleanup22_crit_edge
  %retval.1 = phi i32 [ %call21, %if.end20 ], [ %call15, %cleanup.cleanup22_crit_edge ], [ -5, %if.else.cleanup22_crit_edge ], [ -28, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_bread(ptr noundef %inode, i32 noundef %block, i32 noundef %create, ptr nocapture noundef writeonly %err) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca %struct.buffer_head, align 8
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %dummy.i) #8
  %0 = call ptr @memset(ptr %dummy.i, i32 255, i32 104)
  %1 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dummy.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %dummy.i, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1000, ptr %b_blocknr.i, align 8
  %conv.i = zext i32 %block to i64
  %call.i = call i32 @udf_get_block(ptr noundef %inode, i64 noundef %conv.i, ptr noundef nonnull %dummy.i, i32 noundef %create) #8
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.udf_getblk.exit.thread_crit_edge

entry.udf_getblk.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_getblk.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dummy.i, align 8
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.udf_getblk.exit.thread_crit_edge, label %if.then.i

land.lhs.true.i.udf_getblk.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_getblk.exit.thread

if.then.i:                                        ; preds = %land.lhs.true.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %9 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %b_blocknr.i, align 8
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %12, i64 noundef %10, i32 noundef %14, i32 noundef 8) #8
  %15 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dummy.i, align 8
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.i = icmp eq i32 %17, 0
  br i1 %tobool6.not.i, label %if.then.i.udf_getblk.exit_crit_edge, label %if.then7.i

if.then.i.udf_getblk.exit_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_getblk.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 366) #8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call.i.i, i32 noundef 4) #8
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %call.i.i, align 4
  %and.i.i.i.i.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.then7.i.if.then.i23.i_crit_edge

if.then7.i.if.then.i23.i_crit_edge:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i23.i

trylock_buffer.exit.i.i:                          ; preds = %if.then7.i
  call void @llvm.prefetch.p0(ptr %call.i.i, i32 1, i32 3, i32 1) #8
  %20 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call.i.i, ptr %call.i.i, i32 4, ptr elementtype(i32) %call.i.i) #8, !srcloc !84
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %21 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i23.i_crit_edge

trylock_buffer.exit.i.i.if.then.i23.i_crit_edge:  ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i23.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit.i

if.then.i23.i:                                    ; preds = %trylock_buffer.exit.i.i.if.then.i23.i_crit_edge, %if.then7.i.if.then.i23.i_crit_edge
  call void @__lock_buffer(ptr noundef %call.i.i) #8
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i23.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i, align 4
  %24 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocksize.i, align 16
  %28 = call ptr @memset(ptr %23, i32 0, i32 %27)
  %29 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i22.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i22.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i22.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge

lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge: ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit.i

if.then.i.i:                                      ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %call.i.i) #8
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i.i, %lock_buffer.exit.i.set_buffer_uptodate.exit.i_crit_edge
  call void @unlock_buffer(ptr noundef %call.i.i) #8
  call void @mark_buffer_dirty_inode(ptr noundef %call.i.i, ptr noundef %inode) #8
  br label %udf_getblk.exit

udf_getblk.exit.thread:                           ; preds = %land.lhs.true.i.udf_getblk.exit.thread_crit_edge, %entry.udf_getblk.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %dummy.i) #8
  br label %cleanup

udf_getblk.exit:                                  ; preds = %set_buffer_uptodate.exit.i, %if.then.i.udf_getblk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %dummy.i) #8
  %31 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %bh, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %udf_getblk.exit.cleanup_crit_edge, label %if.end

udf_getblk.exit.cleanup_crit_edge:                ; preds = %udf_getblk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %udf_getblk.exit
  %32 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bh) #8
  %34 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 354) #8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i11 = icmp eq i32 %38, 0
  br i1 %tobool.not.i11, label %if.end4.wait_on_buffer.exit_crit_edge, label %if.then.i12

if.end4.wait_on_buffer.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit

if.then.i12:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %35) #8
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i12, %if.end4.wait_on_buffer.exit_crit_edge
  %39 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bh, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and1.i.i10 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i10)
  %tobool6.not = icmp eq i32 %and1.i.i10, 0
  br i1 %tobool6.not, label %if.end8, label %wait_on_buffer.exit.cleanup_crit_edge

wait_on_buffer.exit.cleanup_crit_edge:            ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %wait_on_buffer.exit
  %tobool.not.i13 = icmp eq ptr %40, null
  br i1 %tobool.not.i13, label %if.end8.brelse.exit_crit_edge, label %if.then.i14

if.end8.brelse.exit_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i14:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %40) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i14, %if.end8.brelse.exit_crit_edge
  %43 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -5, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %wait_on_buffer.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %udf_getblk.exit.cleanup_crit_edge, %udf_getblk.exit.thread
  %retval.0 = phi ptr [ null, %brelse.exit ], [ null, %udf_getblk.exit.cleanup_crit_edge ], [ null, %udf_getblk.exit.thread ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %40, %wait_on_buffer.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_get_block(ptr noundef %inode, i64 noundef %block, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %err.i.i.i.i = alloca i32, align 4
  %epos.i.i.i = alloca %struct.extent_position, align 4
  %neloc.i.i.i = alloca %struct.kernel_lb_addr, align 8
  %oeloc.i.i.i = alloca %struct.kernel_lb_addr, align 8
  %oelen.i.i.i = alloca i32, align 4
  %tmploc.i.i = alloca %struct.kernel_lb_addr, align 8
  %tmplen.i.i = alloca i32, align 4
  %laarr.i = alloca [5 x %struct.kernel_long_ad], align 4
  %prev_epos.i = alloca %struct.extent_position, align 4
  %cur_epos.i = alloca %struct.extent_position, align 4
  %next_epos.i = alloca %struct.extent_position, align 4
  %elen.i = alloca i32, align 4
  %tmpelen.i = alloca i32, align 4
  %eloc.i = alloca %struct.kernel_lb_addr, align 8
  %tmpeloc.i = alloca %struct.kernel_lb_addr, align 8
  %tmp.i = alloca %struct.timespec64, align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @udf_block_map(ptr noundef %inode, i64 noundef %block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %conv = zext i32 %call to i64
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %2 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh_result, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then2.map_bh.exit_crit_edge

if.then2.map_bh.exit_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #8
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then2.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %7 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %8 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %11 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %b_size.i, align 8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %i_data_sem = getelementptr i8, ptr %inode, i32 -168
  tail call void @down_write(ptr noundef %i_data_sem) #8
  %i_next_alloc_block = getelementptr i8, ptr %inode, i32 -208
  %12 = ptrtoint ptr %i_next_alloc_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_next_alloc_block, align 8
  %add = add i32 %13, 1
  %conv5 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv5, i64 %block)
  %cmp = icmp eq i64 %conv5, %block
  br i1 %cmp, label %if.then7, label %if.end3.if.end10_crit_edge

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %i_next_alloc_block to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %i_next_alloc_block, align 8
  %i_next_alloc_goal = getelementptr i8, ptr %inode, i32 -204
  %15 = ptrtoint ptr %i_next_alloc_goal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_next_alloc_goal, align 4
  %inc9 = add i32 %16, 1
  store i32 %inc9, ptr %i_next_alloc_goal, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end3.if.end10_crit_edge
  %i_extent_cache_lock.i = getelementptr i8, ptr %inode, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %i_extent_cache_lock.i) #8
  %lstart.i.i = getelementptr i8, ptr %inode, i32 -56
  %17 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %lstart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp.not.i.i = icmp eq i64 %18, -1
  br i1 %cmp.not.i.i, label %if.end10.udf_clear_extent_cache.exit_crit_edge, label %if.then.i.i39

if.end10.udf_clear_extent_cache.exit_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_clear_extent_cache.exit

if.then.i.i39:                                    ; preds = %if.end10
  %cached_extent.i.i = getelementptr i8, ptr %inode, i32 -72
  %19 = ptrtoint ptr %cached_extent.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cached_extent.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i39.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i39.brelse.exit.i.i_crit_edge:          ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %20) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i39.brelse.exit.i.i_crit_edge
  %21 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %lstart.i.i, align 8
  br label %udf_clear_extent_cache.exit

udf_clear_extent_cache.exit:                      ; preds = %brelse.exit.i.i, %if.end10.udf_clear_extent_cache.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i) #8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %laarr.i) #8
  %22 = call ptr @memset(ptr %laarr.i, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prev_epos.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cur_epos.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %next_epos.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen.i) #8
  %23 = ptrtoint ptr %elen.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %elen.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpelen.i) #8
  %24 = ptrtoint ptr %tmpelen.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %tmpelen.i, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc.i) #8
  %25 = ptrtoint ptr %eloc.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 -1, ptr %eloc.i, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpeloc.i) #8
  %26 = ptrtoint ptr %tmpeloc.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 -1, ptr %tmpeloc.i, align 8, !annotation !81
  %i_location.i = getelementptr i8, ptr %inode, i32 -240
  %27 = ptrtoint ptr %i_location.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_location.i, align 8
  %29 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %err, align 4
  %i_use.i.i = getelementptr i8, ptr %inode, i32 -192
  %30 = ptrtoint ptr %i_use.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i.i = load i32, ptr %i_use.i.i, align 8
  %31 = and i32 %bf.load.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i40 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i40, label %if.else.i.i, label %udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit.i_crit_edge

udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit.i_crit_edge: ; preds = %udf_clear_extent_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit.i

if.else.i.i:                                      ; preds = %udf_clear_extent_cache.exit
  %32 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool4.not.i.i = icmp eq i32 %32, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %inode, i32 -224
  %33 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_lenEAttr7.i.i, align 8
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %34, 216
  br label %udf_file_entry_alloc_offset.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i = add i32 %34, 176
  br label %udf_file_entry_alloc_offset.exit.i

udf_file_entry_alloc_offset.exit.i:               ; preds = %if.else6.i.i, %if.then5.i.i, %udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then5.i.i ], [ %add8.i.i, %if.else6.i.i ], [ 40, %udf_clear_extent_cache.exit.udf_file_entry_alloc_offset.exit.i_crit_edge ]
  %offset2.i = getelementptr inbounds %struct.extent_position, ptr %prev_epos.i, i32 0, i32 1
  %35 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %offset2.i, align 4
  %block3.i = getelementptr inbounds %struct.extent_position, ptr %prev_epos.i, i32 0, i32 2
  %36 = ptrtoint ptr %i_location.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_location.i, align 8
  %38 = ptrtoint ptr %block3.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %block3.i, align 4
  %39 = ptrtoint ptr %prev_epos.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %prev_epos.i, align 4
  %40 = call ptr @memcpy(ptr %next_epos.i, ptr %prev_epos.i, i32 16)
  %41 = call ptr @memcpy(ptr %cur_epos.i, ptr %prev_epos.i, i32 16)
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %45 to i64
  %shl.i = shl i64 %block, %sh_prom.i
  %block24.i = getelementptr inbounds %struct.extent_position, ptr %cur_epos.i, i32 0, i32 2
  %block26.i = getelementptr inbounds %struct.extent_position, ptr %next_epos.i, i32 0, i32 2
  %offset27.i = getelementptr inbounds %struct.extent_position, ptr %cur_epos.i, i32 0, i32 1
  %offset29.i = getelementptr inbounds %struct.extent_position, ptr %next_epos.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end51.i.do.body.i_crit_edge, %udf_file_entry_alloc_offset.exit.i
  %c.0.i = phi i32 [ 1, %udf_file_entry_alloc_offset.exit.i ], [ %77, %if.end51.i.do.body.i_crit_edge ]
  %count.0.i = phi i32 [ 0, %udf_file_entry_alloc_offset.exit.i ], [ %inc.i, %if.end51.i.do.body.i_crit_edge ]
  %lbcount.0.i = phi i64 [ 0, %udf_file_entry_alloc_offset.exit.i ], [ %add.i, %if.end51.i.do.body.i_crit_edge ]
  %pgoal.0.i = phi i32 [ %28, %udf_file_entry_alloc_offset.exit.i ], [ %pgoal.1.i, %if.end51.i.do.body.i_crit_edge ]
  %46 = ptrtoint ptr %prev_epos.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev_epos.i, align 4
  %48 = ptrtoint ptr %cur_epos.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur_epos.i, align 4
  %cmp.not.i = icmp eq ptr %47, %49
  br i1 %cmp.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then.i41

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i41:                                      ; preds = %do.body.i
  %tobool.not.i353.i = icmp eq ptr %47, null
  br i1 %tobool.not.i353.i, label %if.then.i41.brelse.exit.i_crit_edge, label %if.then.i.i42

if.then.i41.brelse.exit.i_crit_edge:              ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i

if.then.i.i42:                                    ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %47) #8
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i42, %if.then.i41.brelse.exit.i_crit_edge
  %50 = ptrtoint ptr %cur_epos.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur_epos.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #8
  %52 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #8, !srcloc !100
  %53 = ptrtoint ptr %cur_epos.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_epos.i, align 4
  %55 = ptrtoint ptr %prev_epos.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %prev_epos.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %brelse.exit.i, %do.body.i.if.end.i_crit_edge
  %56 = phi ptr [ %54, %brelse.exit.i ], [ %47, %do.body.i.if.end.i_crit_edge ]
  %57 = ptrtoint ptr %next_epos.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next_epos.i, align 4
  %cmp14.not.i = icmp eq ptr %56, %58
  br i1 %cmp14.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then16.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.end.i
  %tobool.not.i354.i = icmp eq ptr %56, null
  br i1 %tobool.not.i354.i, label %if.then16.i.brelse.exit356.i_crit_edge, label %if.then.i355.i

if.then16.i.brelse.exit356.i_crit_edge:           ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit356.i

if.then.i355.i:                                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %56) #8
  br label %brelse.exit356.i

brelse.exit356.i:                                 ; preds = %if.then.i355.i, %if.then16.i.brelse.exit356.i_crit_edge
  %59 = ptrtoint ptr %next_epos.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %next_epos.i, align 4
  %b_count.i357.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 11
  %call.i.i.i358.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i357.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i357.i, i32 1, i32 3, i32 1) #8
  %61 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i357.i, ptr %b_count.i357.i, i32 1, ptr elementtype(i32) %b_count.i357.i) #8, !srcloc !100
  %62 = ptrtoint ptr %next_epos.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %next_epos.i, align 4
  %64 = ptrtoint ptr %cur_epos.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %cur_epos.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %brelse.exit356.i, %if.end.i.if.end21.i_crit_edge
  %65 = ptrtoint ptr %elen.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %elen.i, align 4
  %conv22.i = zext i32 %66 to i64
  %add.i = add i64 %lbcount.0.i, %conv22.i
  %67 = ptrtoint ptr %block24.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %68 = load i64, ptr %block24.i, align 4
  %69 = ptrtoint ptr %block3.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 %68, ptr %block3.i, align 4
  %70 = ptrtoint ptr %block26.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %block26.i, align 4
  store i64 %71, ptr %block24.i, align 4
  %72 = ptrtoint ptr %offset27.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %offset27.i, align 4
  %74 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %offset2.i, align 4
  %75 = ptrtoint ptr %offset29.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset29.i, align 4
  store i32 %76, ptr %offset27.i, align 4
  %call31.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %next_epos.i, ptr noundef nonnull %eloc.i, ptr noundef nonnull %elen.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call31.i)
  %cmp33.i = icmp eq i8 %call31.i, -1
  br i1 %cmp33.i, label %if.end21.i.do.end.i_crit_edge, label %if.end36.i

if.end21.i.do.end.i_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end36.i:                                       ; preds = %if.end21.i
  %conv32351.i = zext i8 %call31.i to i32
  %77 = xor i32 %c.0.i, 1
  %shl38.i = shl i32 %conv32351.i, 30
  %78 = ptrtoint ptr %elen.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %elen.i, align 4
  %or.i = or i32 %79, %shl38.i
  %arrayidx.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %77
  %80 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i, ptr %arrayidx.i, align 4
  %extLocation.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %77, i32 1
  %81 = ptrtoint ptr %eloc.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %eloc.i, align 8
  %83 = ptrtoint ptr %extLocation.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %82, ptr %extLocation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call31.i)
  %cmp41.not.i = icmp eq i8 %call31.i, 2
  br i1 %cmp41.not.i, label %if.end36.i.if.end51.i_crit_edge, label %if.then43.i

if.end36.i.if.end51.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then43.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %eloc.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %eloc.i, align 8
  %86 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i43 = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %s_blocksize.i43 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_blocksize.i43, align 16
  %add46.i = add i32 %79, -1
  %sub.i = add i32 %add46.i, %89
  %s_blocksize_bits48.i = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 2
  %90 = ptrtoint ptr %s_blocksize_bits48.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %s_blocksize_bits48.i, align 4
  %conv49.i = zext i8 %91 to i32
  %shr.i = lshr i32 %sub.i, %conv49.i
  %add50.i = add i32 %shr.i, %85
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then43.i, %if.end36.i.if.end51.i_crit_edge
  %pgoal.1.i = phi i32 [ %add50.i, %if.then43.i ], [ %pgoal.0.i, %if.end36.i.if.end51.i_crit_edge ]
  %inc.i = add i32 %count.0.i, 1
  %conv52.i = zext i32 %79 to i64
  %add53.i = add i64 %add.i, %conv52.i
  %cmp54.not.i = icmp sgt i64 %add53.i, %shl.i
  br i1 %cmp54.not.i, label %if.end51.i.do.end.i_crit_edge, label %if.end51.i.do.body.i_crit_edge

if.end51.i.do.body.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.end51.i.do.end.i_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end51.i.do.end.i_crit_edge, %if.end21.i.do.end.i_crit_edge
  %c.1.i = phi i32 [ %77, %if.end51.i.do.end.i_crit_edge ], [ %c.0.i, %if.end21.i.do.end.i_crit_edge ]
  %count.1.i = phi i32 [ %inc.i, %if.end51.i.do.end.i_crit_edge ], [ %count.0.i, %if.end21.i.do.end.i_crit_edge ]
  %pgoal.2.i = phi i32 [ %pgoal.1.i, %if.end51.i.do.end.i_crit_edge ], [ %pgoal.0.i, %if.end21.i.do.end.i_crit_edge ]
  %sub56.i = sub i64 %shl.i, %add.i
  %92 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits58.i = getelementptr inbounds %struct.super_block, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %s_blocksize_bits58.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %s_blocksize_bits58.i, align 4
  %sh_prom60.i = zext i8 %95 to i64
  %shr61.i = ashr i64 %sub56.i, %sh_prom60.i
  %call62.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %prev_epos.i, ptr noundef nonnull %tmpeloc.i, ptr noundef nonnull %tmpelen.i, i32 noundef 0) #8
  %call63.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %cur_epos.i, ptr noundef nonnull %tmpeloc.i, ptr noundef nonnull %tmpelen.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call31.i)
  %cmp65.i = icmp eq i8 %call31.i, 0
  br i1 %cmp65.i, label %if.then67.i, label %if.end86.i

if.then67.i:                                      ; preds = %do.end.i
  %96 = ptrtoint ptr %elen.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %elen.i, align 4
  %98 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize69.i = getelementptr inbounds %struct.super_block, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %s_blocksize69.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %s_blocksize69.i, align 16
  %sub70.i = add i32 %101, -1
  %and.i = and i32 %sub70.i, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool71.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool71.not.i, label %if.then67.i.if.end82.i_crit_edge, label %if.then72.i

if.then67.i.if.end82.i_crit_edge:                 ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

if.then72.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub76.i = add i32 %sub70.i, %97
  %neg.i = sub i32 0, %101
  %and80.i = and i32 %sub76.i, %neg.i
  %102 = ptrtoint ptr %elen.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and80.i, ptr %elen.i, align 4
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %cur_epos.i, ptr noundef nonnull %eloc.i, i32 noundef %and80.i, i32 noundef 1) #8
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then72.i, %if.then67.i.if.end82.i_crit_edge
  %103 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb.i, align 4
  %conv84.i = trunc i64 %shr61.i to i32
  %105 = ptrtoint ptr %eloc.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %eloc.i, align 8
  %partitionReferenceNum.i.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc.i, i32 0, i32 1
  %107 = ptrtoint ptr %partitionReferenceNum.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %partitionReferenceNum.i.i, align 4
  %call.i.i = call i32 @udf_get_pblock(ptr noundef %104, i32 noundef %106, i16 noundef zeroext %108, i32 noundef %conv84.i) #8
  br label %out_free.i

if.end86.i:                                       ; preds = %do.end.i
  br i1 %cmp33.i, label %if.then90.i, label %if.else137.i

if.then90.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %tobool91.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool91.not.i, label %if.else.i, label %if.then92.i

if.then92.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.1.i)
  %tobool93.not.i = icmp eq i32 %c.1.i, 0
  br i1 %tobool93.not.i, label %if.then92.i.if.end104.i_crit_edge, label %if.then94.i

if.then92.i.if.end104.i_crit_edge:                ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

if.then94.i:                                      ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx96.i = getelementptr inbounds [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 1
  %109 = call ptr @memcpy(ptr %laarr.i, ptr %arrayidx96.i, i32 20)
  br label %if.end104.i

if.else.i:                                        ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  %extLocation99.i = getelementptr inbounds %struct.kernel_long_ad, ptr %laarr.i, i32 0, i32 1
  %110 = ptrtoint ptr %extLocation99.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 0, ptr %extLocation99.i, align 4
  %111 = ptrtoint ptr %laarr.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -2147483648, ptr %laarr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr61.i)
  %cmp102.i = icmp ne i64 %shr61.i, 0
  %conv103.i = zext i1 %cmp102.i to i32
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else.i, %if.then94.i, %if.then92.i.if.end104.i_crit_edge
  %startnum.0.i = phi i32 [ %conv103.i, %if.else.i ], [ 1, %if.then94.i ], [ 1, %if.then92.i.if.end104.i_crit_edge ]
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %112 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom106.i = zext i8 %113 to i64
  %shl107.i = shl i64 %shr61.i, %sh_prom106.i
  %call108.i = call fastcc i32 @udf_do_extend_file(ptr noundef %inode, ptr noundef nonnull %prev_epos.i, ptr noundef nonnull %laarr.i, i64 noundef %shl107.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108.i)
  %cmp109.i = icmp slt i32 %call108.i, 0
  br i1 %cmp109.i, label %cleanup.i, label %if.end112.i

if.end112.i:                                      ; preds = %if.end104.i
  %114 = ptrtoint ptr %laarr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %laarr.i, align 4
  %and116.i = and i32 %115, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and116.i)
  %cmp117.not.i = icmp eq i32 %and116.i, 1073741824
  br i1 %cmp117.not.i, label %if.end112.i.cleanup.thread.i_crit_edge, label %if.then119.i

if.end112.i.cleanup.thread.i_crit_edge:           ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then119.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #10
  %add113.i = sub nsw i32 0, %call108.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1.i, i32 %add113.i)
  %tobool120.not.i = icmp ne i32 %count.1.i, %add113.i
  %spec.select463.i = zext i1 %tobool120.not.i to i32
  %116 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize127.i = getelementptr inbounds %struct.super_block, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %s_blocksize127.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_blocksize127.i, align 16
  %or128.i = or i32 %119, -2147483648
  %arrayidx129.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %spec.select463.i
  %120 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or128.i, ptr %arrayidx129.i, align 4
  %extLocation132.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %spec.select463.i, i32 1
  %121 = ptrtoint ptr %extLocation132.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 0, ptr %extLocation132.i, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then119.i, %if.end112.i.cleanup.thread.i_crit_edge
  %c.3.i = phi i32 [ 0, %if.end112.i.cleanup.thread.i_crit_edge ], [ %spec.select463.i, %if.then119.i ]
  %add135.i = add nuw nsw i32 %c.3.i, 1
  br label %if.end170.i

cleanup.i:                                        ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call108.i, ptr %err, align 4
  br label %out_free.i

if.else137.i:                                     ; preds = %if.end86.i
  %123 = call i32 @llvm.smin.i32(i32 %count.1.i, i32 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.1.i)
  %tobool140.not.i = icmp ne i32 %c.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.1.i)
  %cmp141.not.i = icmp eq i32 %count.1.i, 1
  %or.cond.i = select i1 %tobool140.not.i, i1 true, i1 %cmp141.not.i
  br i1 %or.cond.i, label %if.else137.i.if.end150.i_crit_edge, label %if.then143.i

if.else137.i.if.end150.i_crit_edge:               ; preds = %if.else137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i

if.then143.i:                                     ; preds = %if.else137.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx144.i = getelementptr inbounds [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 2
  %124 = call ptr @memcpy(ptr %arrayidx144.i, ptr %laarr.i, i32 20)
  %arrayidx147.i = getelementptr inbounds [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 1
  %125 = call ptr @memcpy(ptr %laarr.i, ptr %arrayidx147.i, i32 20)
  %126 = call ptr @memcpy(ptr %arrayidx147.i, ptr %arrayidx144.i, i32 20)
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.then143.i, %if.else137.i.if.end150.i_crit_edge
  %c.5.i = phi i32 [ %c.1.i, %if.else137.i.if.end150.i_crit_edge ], [ 1, %if.then143.i ]
  %call151.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %next_epos.i, ptr noundef nonnull %eloc.i, ptr noundef nonnull %elen.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call151.i)
  %cmp153.not.i = icmp eq i8 %call151.i, -1
  br i1 %cmp153.not.i, label %if.else168.i, label %if.then155.i

if.then155.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv152350.i = zext i8 %call151.i to i32
  %shl157.i = shl i32 %conv152350.i, 30
  %127 = ptrtoint ptr %elen.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %elen.i, align 4
  %or158.i = or i32 %128, %shl157.i
  %add159.i = add nuw nsw i32 %c.5.i, 1
  %arrayidx160.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %add159.i
  %129 = ptrtoint ptr %arrayidx160.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or158.i, ptr %arrayidx160.i, align 4
  %extLocation164.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %add159.i, i32 1
  %130 = ptrtoint ptr %eloc.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %eloc.i, align 8
  %132 = ptrtoint ptr %extLocation164.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 8)
  store i64 %131, ptr %extLocation164.i, align 4
  %inc166.i = add nsw i32 %123, 1
  %extract.t348.i = trunc i64 %shr61.i to i32
  br label %if.end170.i

if.else168.i:                                     ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t349.i = trunc i64 %shr61.i to i32
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.else168.i, %if.then155.i, %cleanup.thread.i
  %endnum.1.i = phi i32 [ %123, %if.else168.i ], [ %inc166.i, %if.then155.i ], [ %add135.i, %cleanup.thread.i ]
  %c.6.i = phi i32 [ %c.5.i, %if.else168.i ], [ %c.5.i, %if.then155.i ], [ %c.3.i, %cleanup.thread.i ]
  %startnum.1.i = phi i32 [ %123, %if.else168.i ], [ %inc166.i, %if.then155.i ], [ %startnum.0.i, %cleanup.thread.i ]
  %offset.1.off0.i = phi i32 [ %extract.t349.i, %if.else168.i ], [ %extract.t348.i, %if.then155.i ], [ 0, %cleanup.thread.i ]
  %tobool.not.i365.i = phi i1 [ false, %if.else168.i ], [ true, %if.then155.i ], [ false, %cleanup.thread.i ]
  %arrayidx171.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %c.6.i
  %133 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx171.i, align 4
  %shr173.mask.i = and i32 %134, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr173.mask.i)
  %cmp174.i = icmp eq i32 %shr173.mask.i, 1073741824
  br i1 %cmp174.i, label %if.then176.i, label %if.else183.i

if.then176.i:                                     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #10
  %extLocation178.i = getelementptr [5 x %struct.kernel_long_ad], ptr %laarr.i, i32 0, i32 %c.6.i, i32 1
  %135 = ptrtoint ptr %extLocation178.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %extLocation178.i, align 4
  %conv182.i = add i32 %136, %offset.1.off0.i
  br label %if.end211.i

if.else183.i:                                     ; preds = %if.end170.i
  %137 = ptrtoint ptr %i_next_alloc_block to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %i_next_alloc_block, align 8
  %conv184.i = zext i32 %138 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv184.i, i64 %block)
  %cmp185.i = icmp eq i64 %conv184.i, %block
  br i1 %cmp185.i, label %if.end188.i, label %if.else183.i.if.then190.i_crit_edge

if.else183.i.if.then190.i_crit_edge:              ; preds = %if.else183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then190.i

if.end188.i:                                      ; preds = %if.else183.i
  %i_next_alloc_goal.i = getelementptr i8, ptr %inode, i32 -204
  %139 = ptrtoint ptr %i_next_alloc_goal.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %i_next_alloc_goal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool189.not.i = icmp eq i32 %140, 0
  br i1 %tobool189.not.i, label %if.end188.i.if.then190.i_crit_edge, label %if.end188.i.if.end197.i_crit_edge

if.end188.i.if.end197.i_crit_edge:                ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

if.end188.i.if.then190.i_crit_edge:               ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then190.i

if.then190.i:                                     ; preds = %if.end188.i.if.then190.i_crit_edge, %if.else183.i.if.then190.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgoal.2.i)
  %tobool191.not.i = icmp eq i32 %pgoal.2.i, 0
  br i1 %tobool191.not.i, label %if.then192.i, label %if.then190.i.if.end197.i_crit_edge

if.then190.i.if.end197.i_crit_edge:               ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197.i

if.then192.i:                                     ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %i_location.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %i_location.i, align 8
  %add195.i = add i32 %142, 1
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.then192.i, %if.then190.i.if.end197.i_crit_edge, %if.end188.i.if.end197.i_crit_edge
  %goal.1.i = phi i32 [ %140, %if.end188.i.if.end197.i_crit_edge ], [ %pgoal.2.i, %if.then190.i.if.end197.i_crit_edge ], [ %add195.i, %if.then192.i ]
  %143 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_sb.i, align 4
  %partitionReferenceNum.i = getelementptr i8, ptr %inode, i32 -236
  %145 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %partitionReferenceNum.i, align 4
  %call200.i = call i32 @udf_new_block(ptr noundef %144, ptr noundef %inode, i16 noundef zeroext %146, i32 noundef %goal.1.i, ptr noundef nonnull %err) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200.i)
  %tobool201.not.i = icmp eq i32 %call200.i, 0
  br i1 %tobool201.not.i, label %if.then202.i, label %if.end203.i

if.then202.i:                                     ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -28, ptr %err, align 4
  br label %out_free.i

if.end203.i:                                      ; preds = %if.end197.i
  br i1 %cmp33.i, label %if.then205.i, label %if.end203.i.if.end211.i_crit_edge

if.end203.i.if.end211.i_crit_edge:                ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end211.i

if.then205.i:                                     ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize207.i = getelementptr inbounds %struct.super_block, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %s_blocksize207.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %s_blocksize207.i, align 16
  %conv208.i = zext i32 %151 to i64
  %i_lenExtents.i = getelementptr i8, ptr %inode, i32 -216
  %152 = ptrtoint ptr %i_lenExtents.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %i_lenExtents.i, align 8
  %add209.i = add i64 %153, %conv208.i
  store i64 %add209.i, ptr %i_lenExtents.i, align 8
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then205.i, %if.end203.i.if.end211.i_crit_edge, %if.then176.i
  %newblocknum.0.i = phi i32 [ %conv182.i, %if.then176.i ], [ %call200.i, %if.then205.i ], [ %call200.i, %if.end203.i.if.end211.i_crit_edge ]
  %154 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_blocksize.i.i, align 16
  %158 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx171.i, align 4
  %shr.i.i = lshr i32 %159, 30
  %shr.off.i.i = add nsw i32 %shr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.off.i.i)
  %switch.i.i = icmp ult i32 %shr.off.i.i, 2
  br i1 %switch.i.i, label %if.then.i360.i, label %if.end211.i.udf_split_extents.exit.i_crit_edge

if.end211.i.udf_split_extents.exit.i_crit_edge:   ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_split_extents.exit.i

if.then.i360.i:                                   ; preds = %if.end211.i
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %155, i32 0, i32 2
  %160 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %and.i.i = and i32 %159, 1073741823
  %add.i359.i = add i32 %157, -1
  %sub.i.i = add i32 %add.i359.i, %and.i.i
  %conv.i.i = zext i8 %161 to i32
  %shr8.i.i = lshr i32 %sub.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr8.i.i)
  %cmp13.i.i = icmp eq i32 %shr8.i.i, 1
  br i1 %cmp13.i.i, label %if.then.i360.i.if.end38.i.i_crit_edge, label %if.else.i362.i

if.then.i360.i.if.end38.i.i_crit_edge:            ; preds = %if.then.i360.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

if.else.i362.i:                                   ; preds = %if.then.i360.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.1.off0.i)
  %tobool.not.i361.i = icmp eq i32 %offset.1.off0.i, 0
  %add17.i.i = add i32 %offset.1.off0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8.i.i, i32 %add17.i.i)
  %cmp18.i.i = icmp eq i32 %shr8.i.i, %add17.i.i
  %or.cond.i.i = select i1 %tobool.not.i361.i, i1 true, i1 %cmp18.i.i
  br i1 %or.cond.i.i, label %if.then20.i.i, label %if.end38.thread.i.i

if.then20.i.i:                                    ; preds = %if.else.i362.i
  call void @__sanitizer_cov_trace_pc() #10
  %add21.i.i = add nuw nsw i32 %c.6.i, 2
  %arrayidx22.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add21.i.i
  %add23.i.i = add nuw nsw i32 %c.6.i, 1
  %arrayidx24.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add23.i.i
  %162 = call ptr @memcpy(ptr %arrayidx22.i.i, ptr %arrayidx24.i.i, i32 20)
  %163 = call ptr @memcpy(ptr %arrayidx24.i.i, ptr %arrayidx171.i, i32 20)
  br label %if.end38.i.i

if.end38.thread.i.i:                              ; preds = %if.else.i362.i
  call void @__sanitizer_cov_trace_pc() #10
  %add29.i.i = add nuw nsw i32 %c.6.i, 3
  %arrayidx30.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add29.i.i
  %add31.i.i = add nuw nsw i32 %c.6.i, 1
  %arrayidx32.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add31.i.i
  %164 = call ptr @memcpy(ptr %arrayidx30.i.i, ptr %arrayidx32.i.i, i32 20)
  %add33.i.i = add nuw nsw i32 %c.6.i, 2
  %arrayidx34.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add33.i.i
  %165 = call ptr @memcpy(ptr %arrayidx32.i.i, ptr %arrayidx171.i, i32 20)
  %166 = call ptr @memcpy(ptr %arrayidx34.i.i, ptr %arrayidx171.i, i32 20)
  br label %if.then40.i.i

if.end38.i.i:                                     ; preds = %if.then20.i.i, %if.then.i360.i.if.end38.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.1.off0.i)
  %tobool39.not.i.i = icmp eq i32 %offset.1.off0.i, 0
  br i1 %tobool39.not.i.i, label %if.end38.i.i.if.end65.i.i_crit_edge, label %if.end38.i.i.if.then40.i.i_crit_edge

if.end38.i.i.if.then40.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i.i

if.end38.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i.i

if.then40.i.i:                                    ; preds = %if.end38.i.i.if.then40.i.i_crit_edge, %if.end38.thread.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i.i)
  %cmp42.i.i = icmp eq i32 %shr.i.i, 1
  br i1 %cmp42.i.i, label %if.then44.i.i, label %if.else54.i.i

if.then44.i.i:                                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %extLocation.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %c.6.i, i32 1
  call void @udf_free_blocks(ptr noundef %155, ptr noundef %inode, ptr noundef %extLocation.i.i, i32 noundef 0, i32 noundef %offset.1.off0.i) #8
  %shl.i.i = shl i32 %offset.1.off0.i, %conv.i.i
  %or.i.i = or i32 %shl.i.i, -2147483648
  %167 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %or.i.i, ptr %arrayidx171.i, align 4
  %168 = ptrtoint ptr %extLocation.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %extLocation.i.i, align 4
  %partitionReferenceNum.i363.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %c.6.i, i32 1, i32 1
  %169 = ptrtoint ptr %partitionReferenceNum.i363.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %partitionReferenceNum.i363.i, align 4
  br label %if.end62.i.i

if.else54.i.i:                                    ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl56.i.i = and i32 %159, -1073741824
  %shl58.i.i = shl i32 %offset.1.off0.i, %conv.i.i
  %or59.i.i = or i32 %shl58.i.i, %shl56.i.i
  %170 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or59.i.i, ptr %arrayidx171.i, align 4
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.else54.i.i, %if.then44.i.i
  %inc.i.i = add nuw nsw i32 %c.6.i, 1
  %inc64.i.i = add nsw i32 %endnum.1.i, 1
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.end62.i.i, %if.end38.i.i.if.end65.i.i_crit_edge
  %endnum.2.i = phi i32 [ %endnum.1.i, %if.end38.i.i.if.end65.i.i_crit_edge ], [ %inc64.i.i, %if.end62.i.i ]
  %c.7.i = phi i32 [ %c.6.i, %if.end38.i.i.if.end65.i.i_crit_edge ], [ %inc.i.i, %if.end62.i.i ]
  %arrayidx66.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %c.7.i
  %extLocation67.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %c.7.i, i32 1
  %171 = ptrtoint ptr %extLocation67.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %newblocknum.0.i, ptr %extLocation67.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i)
  %cmp70.i.i = icmp eq i32 %shr.i.i, 2
  br i1 %cmp70.i.i, label %if.end77.thread.i.i, label %if.end77.i.i

if.end77.i.i:                                     ; preds = %if.end65.i.i
  %172 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %157, ptr %arrayidx66.i.i, align 4
  %add82.i.i = add i32 %offset.1.off0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8.i.i, i32 %add82.i.i)
  %cmp83.not.i.i = icmp eq i32 %shr8.i.i, %add82.i.i
  br i1 %cmp83.not.i.i, label %if.end77.i.i.udf_split_extents.exit.i_crit_edge, label %if.then89.i.i

if.end77.i.i.udf_split_extents.exit.i_crit_edge:  ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_split_extents.exit.i

if.end77.thread.i.i:                              ; preds = %if.end65.i.i
  %partitionReferenceNum73.i.i = getelementptr i8, ptr %inode, i32 -236
  %173 = ptrtoint ptr %partitionReferenceNum73.i.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %partitionReferenceNum73.i.i, align 4
  %partitionReferenceNum76.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %c.7.i, i32 1, i32 1
  %175 = ptrtoint ptr %partitionReferenceNum76.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %partitionReferenceNum76.i.i, align 4
  %176 = ptrtoint ptr %arrayidx66.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %157, ptr %arrayidx66.i.i, align 4
  %inc81182.i.i = add nuw nsw i32 %c.7.i, 1
  %add82183.i.i = add i32 %offset.1.off0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr8.i.i, i32 %add82183.i.i)
  %cmp83.not184.i.i = icmp eq i32 %shr8.i.i, %add82183.i.i
  br i1 %cmp83.not184.i.i, label %if.end77.thread.i.i.udf_split_extents.exit.i_crit_edge, label %if.end77.thread.i.i.if.end95.i.i_crit_edge

if.end77.thread.i.i.if.end95.i.i_crit_edge:       ; preds = %if.end77.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.i.i

if.end77.thread.i.i.udf_split_extents.exit.i_crit_edge: ; preds = %if.end77.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_split_extents.exit.i

if.then89.i.i:                                    ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc81.i.i = add nuw nsw i32 %c.7.i, 1
  %extLocation92.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %inc81.i.i, i32 1
  %177 = ptrtoint ptr %extLocation92.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %extLocation92.i.i, align 4
  %add94.i.i = add i32 %178, %add82.i.i
  store i32 %add94.i.i, ptr %extLocation92.i.i, align 4
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %if.then89.i.i, %if.end77.thread.i.i.if.end95.i.i_crit_edge
  %inc81185191.i.i = phi i32 [ %inc81.i.i, %if.then89.i.i ], [ %inc81182.i.i, %if.end77.thread.i.i.if.end95.i.i_crit_edge ]
  %add82186190.i.i = phi i32 [ %add82.i.i, %if.then89.i.i ], [ %add82183.i.i, %if.end77.thread.i.i.if.end95.i.i_crit_edge ]
  %shl97.i.i = and i32 %159, -1073741824
  %sub99.i.i = sub i32 %shr8.i.i, %add82186190.i.i
  %shl101.i.i = shl i32 %sub99.i.i, %conv.i.i
  %or102.i.i = or i32 %shl101.i.i, %shl97.i.i
  %arrayidx103.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %inc81185191.i.i
  %179 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or102.i.i, ptr %arrayidx103.i.i, align 4
  %inc106.i.i = add nsw i32 %endnum.2.i, 1
  br label %udf_split_extents.exit.i

udf_split_extents.exit.i:                         ; preds = %if.end95.i.i, %if.end77.thread.i.i.udf_split_extents.exit.i_crit_edge, %if.end77.i.i.udf_split_extents.exit.i_crit_edge, %if.end211.i.udf_split_extents.exit.i_crit_edge
  %endnum.3.i = phi i32 [ %endnum.2.i, %if.end77.thread.i.i.udf_split_extents.exit.i_crit_edge ], [ %inc106.i.i, %if.end95.i.i ], [ %endnum.2.i, %if.end77.i.i.udf_split_extents.exit.i_crit_edge ], [ %endnum.1.i, %if.end211.i.udf_split_extents.exit.i_crit_edge ]
  %c.8.i = phi i32 [ %c.7.i, %if.end77.thread.i.i.udf_split_extents.exit.i_crit_edge ], [ %c.7.i, %if.end95.i.i ], [ %c.7.i, %if.end77.i.i.udf_split_extents.exit.i_crit_edge ], [ %c.6.i, %if.end211.i.udf_split_extents.exit.i_crit_edge ]
  %180 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %inode, align 8
  %182 = and i16 %181, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %182)
  %cmp216.i = icmp eq i16 %182, -32768
  br i1 %cmp216.i, label %if.then218.i, label %udf_split_extents.exit.i.if.end220.i_crit_edge

udf_split_extents.exit.i.if.end220.i_crit_edge:   ; preds = %udf_split_extents.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220.i

if.then218.i:                                     ; preds = %udf_split_extents.exit.i
  %add.i364.i = add nuw nsw i32 %c.8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %endnum.3.i, i32 %c.8.i)
  %cmp.not.i.not.i = icmp sgt i32 %endnum.3.i, %c.8.i
  br i1 %cmp.not.i.not.i, label %if.then.i366.i, label %if.else2.i.i

if.then.i366.i:                                   ; preds = %if.then218.i
  br i1 %tobool.not.i365.i, label %if.then.i366.i.if.end220.i_crit_edge, label %if.then.i366.i.if.end15.i.i_crit_edge

if.then.i366.i.if.end15.i.i_crit_edge:            ; preds = %if.then.i366.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then.i366.i.if.end220.i_crit_edge:             ; preds = %if.then.i366.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220.i

if.else2.i.i:                                     ; preds = %if.then218.i
  %arrayidx.i367.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add.i364.i
  %183 = ptrtoint ptr %arrayidx.i367.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i367.i, align 4
  %shr.mask.i.i = and i32 %184, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.mask.i.i)
  %cmp4.i.i = icmp eq i32 %shr.mask.i.i, 1073741824
  br i1 %cmp4.i.i, label %if.then5.i374.i, label %if.else2.i.i.if.end15.i.i_crit_edge

if.else2.i.i.if.end15.i.i_crit_edge:              ; preds = %if.else2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i.i

if.then5.i374.i:                                  ; preds = %if.else2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i368.i = and i32 %184, 1073741823
  %185 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i370.i = getelementptr inbounds %struct.super_block, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %s_blocksize.i370.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %s_blocksize.i370.i, align 16
  %add10.i.i = add nsw i32 %and.i368.i, -1
  %sub.i371.i = add i32 %add10.i.i, %188
  %s_blocksize_bits.i372.i = getelementptr inbounds %struct.super_block, ptr %186, i32 0, i32 2
  %189 = ptrtoint ptr %s_blocksize_bits.i372.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %s_blocksize_bits.i372.i, align 4
  %conv.i373.i = zext i8 %190 to i32
  %shr12.i.i = lshr i32 %sub.i371.i, %conv.i373.i
  %.pre.i.i = add nuw nsw i32 %c.8.i, 2
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then5.i374.i, %if.else2.i.i.if.end15.i.i_crit_edge, %if.then.i366.i.if.end15.i.i_crit_edge
  %i.0254.pre-phi.i.i = phi i32 [ %add.i364.i, %if.else2.i.i.if.end15.i.i_crit_edge ], [ %add.i364.i, %if.then.i366.i.if.end15.i.i_crit_edge ], [ %.pre.i.i, %if.then5.i374.i ]
  %start.0.i.i = phi i32 [ %c.8.i, %if.else2.i.i.if.end15.i.i_crit_edge ], [ %c.8.i, %if.then.i366.i.if.end15.i.i_crit_edge ], [ %add.i364.i, %if.then5.i374.i ]
  %currlength.0.i.i = phi i32 [ 0, %if.else2.i.i.if.end15.i.i_crit_edge ], [ 0, %if.then.i366.i.if.end15.i.i_crit_edge ], [ %shr12.i.i, %if.then5.i374.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0254.pre-phi.i.i, i32 %endnum.3.i)
  %cmp17.not255.i.i = icmp sgt i32 %i.0254.pre-phi.i.i, %endnum.3.i
  br i1 %cmp17.not255.i.i, label %if.end15.i.i.for.end.i.i_crit_edge, label %for.body.i.i.preheader

if.end15.i.i.for.end.i.i_crit_edge:               ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i.preheader:                           ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0254.pre-phi.i.i, i32 %endnum.3.i)
  %cmp19.i.i60 = icmp eq i32 %i.0254.pre-phi.i.i, %endnum.3.i
  br i1 %cmp19.i.i60, label %for.body.i.i.preheader.for.inc.i.i.thread_crit_edge, label %for.body.i.i.preheader.if.else26.i.i_crit_edge

for.body.i.i.preheader.if.else26.i.i_crit_edge:   ; preds = %for.body.i.i.preheader
  br label %if.else26.i.i

for.body.i.i.preheader.for.inc.i.i.thread_crit_edge: ; preds = %for.body.i.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.thread

for.inc.i.i.thread:                               ; preds = %for.inc.i.i.for.inc.i.i.thread_crit_edge, %for.body.i.i.preheader.for.inc.i.i.thread_crit_edge
  %length.1256.i.i.lcssa = phi i32 [ %currlength.0.i.i, %for.body.i.i.preheader.for.inc.i.i.thread_crit_edge ], [ %add44.i.i, %for.inc.i.i.for.inc.i.i.thread_crit_edge ]
  %add24.i.i = add i32 %length.1256.i.i.lcssa, 8
  %spec.select.i.i = select i1 %tobool.not.i365.i, i32 %length.1256.i.i.lcssa, i32 %add24.i.i
  br label %for.end.i.i

if.else26.i.i:                                    ; preds = %for.inc.i.i.if.else26.i.i_crit_edge, %for.body.i.i.preheader.if.else26.i.i_crit_edge
  %length.1256.i.i62 = phi i32 [ %add44.i.i, %for.inc.i.i.if.else26.i.i_crit_edge ], [ %currlength.0.i.i, %for.body.i.i.preheader.if.else26.i.i_crit_edge ]
  %i.0257.i.i61 = phi i32 [ %i.0.i.i, %for.inc.i.i.if.else26.i.i_crit_edge ], [ %i.0254.pre-phi.i.i, %for.body.i.i.preheader.if.else26.i.i_crit_edge ]
  %arrayidx27.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.0257.i.i61
  %191 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx27.i.i, align 4
  %shr29.mask.i.i = and i32 %192, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr29.mask.i.i)
  %cmp30.i.i = icmp eq i32 %shr29.mask.i.i, -2147483648
  br i1 %cmp30.i.i, label %for.inc.i.i, label %if.else26.i.i.for.end.i.i_crit_edge

if.else26.i.i.for.end.i.i_crit_edge:              ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %if.else26.i.i
  %and35.i.i = and i32 %192, 1073741823
  %193 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize37.i.i = getelementptr inbounds %struct.super_block, ptr %194, i32 0, i32 3
  %195 = ptrtoint ptr %s_blocksize37.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %s_blocksize37.i.i, align 16
  %add38.i.i = add nsw i32 %and35.i.i, -1
  %sub39.i.i = add i32 %add38.i.i, %196
  %s_blocksize_bits41.i.i = getelementptr inbounds %struct.super_block, ptr %194, i32 0, i32 2
  %197 = ptrtoint ptr %s_blocksize_bits41.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %s_blocksize_bits41.i.i, align 4
  %conv42.i.i = zext i8 %198 to i32
  %shr43.i.i = lshr i32 %sub39.i.i, %conv42.i.i
  %add44.i.i = add i32 %shr43.i.i, %length.1256.i.i62
  %i.0.i.i = add nsw i32 %i.0257.i.i61, 1
  %cmp19.i.i = icmp eq i32 %i.0.i.i, %endnum.3.i
  br i1 %cmp19.i.i, label %for.inc.i.i.for.inc.i.i.thread_crit_edge, label %for.inc.i.i.if.else26.i.i_crit_edge

for.inc.i.i.if.else26.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26.i.i

for.inc.i.i.for.inc.i.i.thread_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.thread

for.end.i.i:                                      ; preds = %if.else26.i.i.for.end.i.i_crit_edge, %for.inc.i.i.thread, %if.end15.i.i.for.end.i.i_crit_edge
  %length.1.lcssa.i.i = phi i32 [ %currlength.0.i.i, %if.end15.i.i.for.end.i.i_crit_edge ], [ %spec.select.i.i, %for.inc.i.i.thread ], [ %length.1256.i.i62, %if.else26.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.1.lcssa.i.i)
  %tobool48.not.i.i = icmp eq i32 %length.1.lcssa.i.i, 0
  br i1 %tobool48.not.i.i, label %for.end.i.i.if.end220.i_crit_edge, label %if.then49.i.i

for.end.i.i.if.end220.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220.i

if.then49.i.i:                                    ; preds = %for.end.i.i
  %arrayidx50.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %start.0.i.i
  %extLocation.i375.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %start.0.i.i, i32 1
  %199 = ptrtoint ptr %extLocation.i375.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %extLocation.i375.i, align 4
  %201 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx50.i.i, align 4
  %and53.i.i = and i32 %202, 1073741823
  %203 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize55.i.i = getelementptr inbounds %struct.super_block, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %s_blocksize55.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %s_blocksize55.i.i, align 16
  %add56.i.i = add nsw i32 %and53.i.i, -1
  %sub57.i.i = add i32 %add56.i.i, %206
  %s_blocksize_bits59.i.i = getelementptr inbounds %struct.super_block, ptr %204, i32 0, i32 2
  %207 = ptrtoint ptr %s_blocksize_bits59.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %s_blocksize_bits59.i.i, align 4
  %conv60.i.i = zext i8 %208 to i32
  %shr61.i.i = lshr i32 %sub57.i.i, %conv60.i.i
  %add62.i.i = add i32 %shr61.i.i, %200
  %partitionReferenceNum.i376.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %start.0.i.i, i32 1, i32 1
  %209 = ptrtoint ptr %partitionReferenceNum.i376.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %partitionReferenceNum.i376.i, align 4
  %211 = call i32 @llvm.smin.i32(i32 %length.1.lcssa.i.i, i32 8) #8
  %sub68.i.i = sub i32 %211, %currlength.0.i.i
  %call.i377.i = call i32 @udf_prealloc_blocks(ptr noundef %204, ptr noundef %inode, i16 noundef zeroext %210, i32 noundef %add62.i.i, i32 noundef %sub68.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i377.i)
  %tobool69.not.i.i = icmp eq i32 %call.i377.i, 0
  br i1 %tobool69.not.i.i, label %if.then49.i.i.if.end220.i_crit_edge, label %if.then70.i.i

if.then49.i.i.if.end220.i_crit_edge:              ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220.i

if.then70.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0.i.i, i32 %add.i364.i)
  %cmp72.i.i = icmp eq i32 %start.0.i.i, %add.i364.i
  br i1 %cmp72.i.i, label %if.then74.i.i, label %if.else81.i.i

if.then74.i.i:                                    ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits76.i.i = getelementptr inbounds %struct.super_block, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %s_blocksize_bits76.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %s_blocksize_bits76.i.i, align 4
  %conv77.i.i = zext i8 %215 to i32
  %shl.i378.i = shl i32 %call.i377.i, %conv77.i.i
  %216 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx50.i.i, align 4
  %add80.i.i = add i32 %shl.i378.i, %217
  store i32 %add80.i.i, ptr %arrayidx50.i.i, align 4
  %.pre.i = add i32 %c.8.i, 2
  br label %land.rhs.preheader.i.i

if.else81.i.i:                                    ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add82.i379.i = add i32 %c.8.i, 2
  %arrayidx83.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add82.i379.i
  %arrayidx85.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add.i364.i
  %sub87.i.i = sub i32 %endnum.3.i, %add.i364.i
  %mul.i.i = shl i32 %sub87.i.i, 4
  %218 = call ptr @memmove(ptr %arrayidx83.i.i, ptr %arrayidx85.i.i, i32 %mul.i.i)
  %inc88.i.i = add i32 %endnum.3.i, 1
  %extLocation91.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add.i364.i, i32 1
  %219 = ptrtoint ptr %extLocation91.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %add62.i.i, ptr %extLocation91.i.i, align 4
  %partitionReferenceNum95.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %c.8.i, i32 1, i32 1
  %220 = ptrtoint ptr %partitionReferenceNum95.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %partitionReferenceNum95.i.i, align 4
  %partitionReferenceNum99.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add.i364.i, i32 1, i32 1
  %222 = ptrtoint ptr %partitionReferenceNum99.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %221, ptr %partitionReferenceNum99.i.i, align 4
  %223 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits101.i.i = getelementptr inbounds %struct.super_block, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %s_blocksize_bits101.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %s_blocksize_bits101.i.i, align 4
  %conv102.i.i = zext i8 %226 to i32
  %shl103.i.i = shl i32 %call.i377.i, %conv102.i.i
  %or.i380.i = or i32 %shl103.i.i, 1073741824
  %227 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %or.i380.i, ptr %arrayidx85.i.i, align 4
  br label %land.rhs.preheader.i.i

land.rhs.preheader.i.i:                           ; preds = %if.else81.i.i, %if.then74.i.i
  %i.1263.i.pre-phi.i = phi i32 [ %add82.i379.i, %if.else81.i.i ], [ %.pre.i, %if.then74.i.i ]
  %endnum.4.i = phi i32 [ %inc88.i.i, %if.else81.i.i ], [ %endnum.3.i, %if.then74.i.i ]
  %arrayidx115.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.1263.i.pre-phi.i
  %add138.i.i = add i32 %c.8.i, 3
  %arrayidx144.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add138.i.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end150.i.i.land.rhs.i.i_crit_edge, %land.rhs.preheader.i.i
  %endnum.5.i = phi i32 [ %endnum.4.i, %land.rhs.preheader.i.i ], [ %dec149.i.i, %if.end150.i.i.land.rhs.i.i_crit_edge ]
  %numalloc.0262.i.i = phi i32 [ %call.i377.i, %land.rhs.preheader.i.i ], [ %sub137.i.i, %if.end150.i.i.land.rhs.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1263.i.pre-phi.i, i32 %endnum.5.i)
  %cmp112.i.i = icmp slt i32 %i.1263.i.pre-phi.i, %endnum.5.i
  br i1 %cmp112.i.i, label %for.body114.i.i, label %land.rhs.i.i.for.end153.i.i_crit_edge

land.rhs.i.i.for.end153.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end153.i.i

for.body114.i.i:                                  ; preds = %land.rhs.i.i
  %228 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx115.i.i, align 4
  %and117.i.i = and i32 %229, 1073741823
  %230 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize119.i.i = getelementptr inbounds %struct.super_block, ptr %231, i32 0, i32 3
  %232 = ptrtoint ptr %s_blocksize119.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %s_blocksize119.i.i, align 16
  %add120.i.i = add nsw i32 %and117.i.i, -1
  %sub121.i.i = add i32 %add120.i.i, %233
  %s_blocksize_bits123.i.i = getelementptr inbounds %struct.super_block, ptr %231, i32 0, i32 2
  %234 = ptrtoint ptr %s_blocksize_bits123.i.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %s_blocksize_bits123.i.i, align 4
  %conv124.i.i = zext i8 %235 to i32
  %shr125.i.i = lshr i32 %sub121.i.i, %conv124.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %numalloc.0262.i.i, i32 %shr125.i.i)
  %cmp126.i.i = icmp slt i32 %numalloc.0262.i.i, %shr125.i.i
  br i1 %cmp126.i.i, label %if.end150.thread.i.i, label %if.else136.i.i

if.end150.thread.i.i:                             ; preds = %for.body114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv124.i.i.le = zext i8 %235 to i32
  %shl132.i.i = shl i32 %numalloc.0262.i.i, %conv124.i.i.le
  %sub135.i.i = sub i32 %229, %shl132.i.i
  %236 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %sub135.i.i, ptr %arrayidx115.i.i, align 4
  br label %for.end153.i.i

if.else136.i.i:                                   ; preds = %for.body114.i.i
  %sub137.i.i = sub i32 %numalloc.0262.i.i, %shr125.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %endnum.5.i, i32 %add138.i.i)
  %cmp139.i.i = icmp sgt i32 %endnum.5.i, %add138.i.i
  br i1 %cmp139.i.i, label %if.then141.i.i, label %if.else136.i.i.if.end150.i.i_crit_edge

if.else136.i.i.if.end150.i.i_crit_edge:           ; preds = %if.else136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i.i

if.then141.i.i:                                   ; preds = %if.else136.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub146.i.i = sub i32 %endnum.5.i, %add138.i.i
  %mul147.i.i = shl i32 %sub146.i.i, 4
  %237 = call ptr @memmove(ptr %arrayidx115.i.i, ptr %arrayidx144.i.i, i32 %mul147.i.i)
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %if.then141.i.i, %if.else136.i.i.if.end150.i.i_crit_edge
  %dec149.i.i = add nsw i32 %endnum.5.i, -1
  %tobool111.not.i.i = icmp eq i32 %sub137.i.i, 0
  br i1 %tobool111.not.i.i, label %if.end150.i.i.for.end153.i.i_crit_edge, label %if.end150.i.i.land.rhs.i.i_crit_edge

if.end150.i.i.land.rhs.i.i_crit_edge:             ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i

if.end150.i.i.for.end153.i.i_crit_edge:           ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end153.i.i

for.end153.i.i:                                   ; preds = %if.end150.i.i.for.end153.i.i_crit_edge, %if.end150.thread.i.i, %land.rhs.i.i.for.end153.i.i_crit_edge
  %endnum.6.i = phi i32 [ %endnum.5.i, %if.end150.thread.i.i ], [ %dec149.i.i, %if.end150.i.i.for.end153.i.i_crit_edge ], [ %endnum.5.i, %land.rhs.i.i.for.end153.i.i_crit_edge ]
  %numalloc.0.lcssa.ph.i.i = phi i32 [ 0, %if.end150.thread.i.i ], [ 0, %if.end150.i.i.for.end153.i.i_crit_edge ], [ %numalloc.0262.i.i, %land.rhs.i.i.for.end153.i.i_crit_edge ]
  %238 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize_bits155.i.i = getelementptr inbounds %struct.super_block, ptr %239, i32 0, i32 2
  %240 = ptrtoint ptr %s_blocksize_bits155.i.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %s_blocksize_bits155.i.i, align 4
  %conv156.i.i = zext i8 %241 to i32
  %shl157.i.i = shl i32 %numalloc.0.lcssa.ph.i.i, %conv156.i.i
  %conv158.i.i = sext i32 %shl157.i.i to i64
  %i_lenExtents.i.i = getelementptr i8, ptr %inode, i32 -216
  %242 = ptrtoint ptr %i_lenExtents.i.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %i_lenExtents.i.i, align 8
  %add160.i.i = add i64 %243, %conv158.i.i
  store i64 %add160.i.i, ptr %i_lenExtents.i.i, align 8
  br label %if.end220.i

if.end220.i:                                      ; preds = %for.end153.i.i, %if.then49.i.i.if.end220.i_crit_edge, %for.end.i.i.if.end220.i_crit_edge, %if.then.i366.i.if.end220.i_crit_edge, %udf_split_extents.exit.i.if.end220.i_crit_edge
  %endnum.8.i = phi i32 [ %endnum.3.i, %udf_split_extents.exit.i.if.end220.i_crit_edge ], [ %endnum.3.i, %for.end.i.i.if.end220.i_crit_edge ], [ %endnum.3.i, %if.then49.i.i.if.end220.i_crit_edge ], [ %endnum.6.i, %for.end153.i.i ], [ %endnum.3.i, %if.then.i366.i.if.end220.i_crit_edge ]
  %244 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i382.i = getelementptr inbounds %struct.super_block, ptr %245, i32 0, i32 3
  %246 = ptrtoint ptr %s_blocksize.i382.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %s_blocksize.i382.i, align 16
  %sub252.i.i = add i32 %endnum.8.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub252.i.i)
  %cmp253.i.i = icmp sgt i32 %sub252.i.i, 0
  br i1 %cmp253.i.i, label %for.body.lr.ph.i385.i, label %if.end220.i.udf_merge_extents.exit.i_crit_edge

if.end220.i.udf_merge_extents.exit.i_crit_edge:   ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_merge_extents.exit.i

for.body.lr.ph.i385.i:                            ; preds = %if.end220.i
  %s_blocksize_bits.i383.i = getelementptr inbounds %struct.super_block, ptr %245, i32 0, i32 2
  %248 = ptrtoint ptr %s_blocksize_bits.i383.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %s_blocksize_bits.i383.i, align 4
  %add13.i.i = add i32 %247, -1
  %conv.i384.i = zext i8 %249 to i32
  %neg109.i.i = sub i32 0, %247
  br label %for.body.i389.i

for.body.i389.i:                                  ; preds = %if.end166.i.i.for.body.i389.i_crit_edge, %for.body.lr.ph.i385.i
  %endnum.9.i = phi i32 [ %endnum.8.i, %for.body.lr.ph.i385.i ], [ %endnum.10.i, %if.end166.i.i.for.body.i389.i_crit_edge ]
  %i.0254.i.i = phi i32 [ 0, %for.body.lr.ph.i385.i ], [ %inc.i405.i, %if.end166.i.i.for.body.i389.i_crit_edge ]
  %arrayidx.i386.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.0254.i.i
  %add.i387.i = add nsw i32 %i.0254.i.i, 1
  %arrayidx2.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add.i387.i
  %250 = ptrtoint ptr %arrayidx.i386.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx.i386.i, align 4
  %shr.i388.i = lshr i32 %251, 30
  %252 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx2.i.i, align 4
  %shr4.i.i = lshr i32 %253, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i388.i, i32 %shr4.i.i)
  %cmp5.i.i = icmp eq i32 %shr.i388.i, %shr4.i.i
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %for.body.i389.i.if.else71.i.i_crit_edge

for.body.i389.i.if.else71.i.i_crit_edge:          ; preds = %for.body.i389.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i389.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i388.i)
  %cmp8.i.i = icmp eq i32 %shr.i388.i, 2
  br i1 %cmp8.i.i, label %land.lhs.true.if.then_crit_edge.i.i, label %lor.lhs.false.i.i

land.lhs.true.if.then_crit_edge.i.i:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i390.i = and i32 %251, 1073741823
  %.pre256.i.i = add i32 %.pre.i390.i, %add13.i.i
  br label %if.then.i394.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %extLocation.i391.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add.i387.i, i32 1
  %254 = ptrtoint ptr %extLocation.i391.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %extLocation.i391.i, align 4
  %extLocation9.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.0254.i.i, i32 1
  %256 = ptrtoint ptr %extLocation9.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %extLocation9.i.i, align 4
  %sub11.i.i = sub i32 %255, %257
  %and.i392.i = and i32 %251, 1073741823
  %sub14.i.i = add i32 %and.i392.i, %add13.i.i
  %shr15.i.i = lshr i32 %sub14.i.i, %conv.i384.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub11.i.i, i32 %shr15.i.i)
  %cmp16.i.i = icmp eq i32 %sub11.i.i, %shr15.i.i
  br i1 %cmp16.i.i, label %lor.lhs.false.i.i.if.then.i394.i_crit_edge, label %lor.lhs.false.i.i.if.else71.i.i_crit_edge

lor.lhs.false.i.i.if.else71.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else71.i.i

lor.lhs.false.i.i.if.then.i394.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i394.i

if.then.i394.i:                                   ; preds = %lor.lhs.false.i.i.if.then.i394.i_crit_edge, %land.lhs.true.if.then_crit_edge.i.i
  %add23.pre-phi.i.i = phi i32 [ %.pre256.i.i, %land.lhs.true.if.then_crit_edge.i.i ], [ %sub14.i.i, %lor.lhs.false.i.i.if.then.i394.i_crit_edge ]
  %and19.pre-phi.i.i = phi i32 [ %.pre.i390.i, %land.lhs.true.if.then_crit_edge.i.i ], [ %and.i392.i, %lor.lhs.false.i.i.if.then.i394.i_crit_edge ]
  %and21.i.i = and i32 %253, 1073741823
  %sub24.i.i = add i32 %add23.pre-phi.i.i, %and21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %sub24.i.i)
  %tobool.not.i393.i = icmp ult i32 %sub24.i.i, 1073741824
  br i1 %tobool.not.i393.i, label %if.else.i396.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.then.i394.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub30.i.i = xor i32 %and19.pre-phi.i.i, 1073741823
  %add31.i395.i = add i32 %sub30.i.i, %253
  %and33.i.i = and i32 %add31.i395.i, %neg109.i.i
  %258 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %and33.i.i, ptr %arrayidx2.i.i, align 4
  %259 = add i32 %251, 1073741824
  %add37.i.i = and i32 %259, -1073741824
  %sub38.i.i = sub i32 %add37.i.i, %247
  %260 = ptrtoint ptr %arrayidx.i386.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %sub38.i.i, ptr %arrayidx.i386.i, align 4
  %extLocation40.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.0254.i.i, i32 1
  %261 = ptrtoint ptr %extLocation40.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %extLocation40.i.i, align 4
  %and43.i.i = and i32 %sub38.i.i, 1073741823
  %shr45.i.i = lshr i32 %and43.i.i, %conv.i384.i
  %add46.i.i = add i32 %262, %shr45.i.i
  %extLocation47.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add.i387.i, i32 1
  %263 = ptrtoint ptr %extLocation47.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %add46.i.i, ptr %extLocation47.i.i, align 4
  br label %if.end166.i.i

if.else.i396.i:                                   ; preds = %if.then.i394.i
  %and56.i.i = and i32 %add23.pre-phi.i.i, %neg109.i.i
  %add57.i.i = add i32 %and56.i.i, %253
  %264 = ptrtoint ptr %arrayidx.i386.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %add57.i.i, ptr %arrayidx.i386.i, align 4
  %add59.i.i = add i32 %i.0254.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %endnum.9.i, i32 %add59.i.i)
  %cmp60.i.i = icmp sgt i32 %endnum.9.i, %add59.i.i
  br i1 %cmp60.i.i, label %if.then62.i.i, label %if.else.i396.i.if.end.i.i_crit_edge

if.else.i396.i.if.end.i.i_crit_edge:              ; preds = %if.else.i396.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then62.i.i:                                    ; preds = %if.else.i396.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx66.i397.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add59.i.i
  %sub68.i398.i = sub i32 %endnum.9.i, %add59.i.i
  %mul.i399.i = shl i32 %sub68.i398.i, 4
  %265 = call ptr @memmove(ptr %arrayidx2.i.i, ptr %arrayidx66.i397.i, i32 %mul.i399.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then62.i.i, %if.else.i396.i.if.end.i.i_crit_edge
  %dec.i.i = add i32 %i.0254.i.i, -1
  %dec69.i.i = add i32 %endnum.9.i, -1
  br label %if.end166.i.i

if.else71.i.i:                                    ; preds = %lor.lhs.false.i.i.if.else71.i.i_crit_edge, %for.body.i389.i.if.else71.i.i_crit_edge
  %shr73.mask.i.i = and i32 %251, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr73.mask.i.i)
  %cmp74.i.i = icmp eq i32 %shr73.mask.i.i, 1073741824
  br i1 %cmp74.i.i, label %land.lhs.true76.i.i, label %if.else71.i.i.if.end166.i.i_crit_edge

if.else71.i.i.if.end166.i.i_crit_edge:            ; preds = %if.else71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166.i.i

land.lhs.true76.i.i:                              ; preds = %if.else71.i.i
  %shr78.mask.i.i = and i32 %253, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr78.mask.i.i)
  %cmp79.i.i = icmp eq i32 %shr78.mask.i.i, -2147483648
  %266 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %i_sb.i, align 4
  %extLocation83.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.0254.i.i, i32 1
  %and85.i.i = and i32 %251, 1073741823
  %sub87.i400.i = add i32 %and85.i.i, %add13.i.i
  %shr89.i.i = lshr i32 %sub87.i400.i, %conv.i384.i
  call void @udf_free_blocks(ptr noundef %267, ptr noundef %inode, ptr noundef %extLocation83.i.i, i32 noundef 0, i32 noundef %shr89.i.i) #8
  %268 = ptrtoint ptr %extLocation83.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 0, ptr %extLocation83.i.i, align 4
  %partitionReferenceNum.i401.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.0254.i.i, i32 1, i32 1
  %269 = ptrtoint ptr %partitionReferenceNum.i401.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 0, ptr %partitionReferenceNum.i401.i, align 4
  %270 = ptrtoint ptr %arrayidx.i386.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx.i386.i, align 4
  %and94.i.i = and i32 %271, 1073741823
  br i1 %cmp79.i.i, label %if.then81.i.i, label %if.then148.i.i

if.then81.i.i:                                    ; preds = %land.lhs.true76.i.i
  %272 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %arrayidx2.i.i, align 4
  %and96.i.i = and i32 %273, 1073741823
  %add98.i.i = add i32 %and94.i.i, %add13.i.i
  %sub99.i402.i = add i32 %and96.i.i, %add98.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %sub99.i402.i)
  %tobool101.not.i.i = icmp ult i32 %sub99.i402.i, 1073741824
  br i1 %tobool101.not.i.i, label %if.else117.i.i, label %if.then102.i.i

if.then102.i.i:                                   ; preds = %if.then81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub106.i.i = xor i32 %and94.i.i, 1073741823
  %add107.i.i = add i32 %273, %sub106.i.i
  %and110.i.i = and i32 %add107.i.i, %neg109.i.i
  %274 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %and110.i.i, ptr %arrayidx2.i.i, align 4
  %275 = add i32 %271, 1073741824
  %add114.i.i = and i32 %275, -1073741824
  %sub115.i.i = sub i32 %add114.i.i, %247
  %276 = ptrtoint ptr %arrayidx.i386.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %sub115.i.i, ptr %arrayidx.i386.i, align 4
  br label %if.end166.i.i

if.else117.i.i:                                   ; preds = %if.then81.i.i
  %and125.i.i = and i32 %add98.i.i, %neg109.i.i
  %add126.i.i = add i32 %273, %and125.i.i
  %277 = ptrtoint ptr %arrayidx.i386.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %add126.i.i, ptr %arrayidx.i386.i, align 4
  %add128.i.i = add i32 %i.0254.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %endnum.9.i, i32 %add128.i.i)
  %cmp129.i.i = icmp sgt i32 %endnum.9.i, %add128.i.i
  br i1 %cmp129.i.i, label %if.then131.i.i, label %if.else117.i.i.if.end139.i.i_crit_edge

if.else117.i.i.if.end139.i.i_crit_edge:           ; preds = %if.else117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139.i.i

if.then131.i.i:                                   ; preds = %if.else117.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx135.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %add128.i.i
  %sub137.i403.i = sub i32 %endnum.9.i, %add128.i.i
  %mul138.i.i = shl i32 %sub137.i403.i, 4
  %278 = call ptr @memmove(ptr %arrayidx2.i.i, ptr %arrayidx135.i.i, i32 %mul138.i.i)
  br label %if.end139.i.i

if.end139.i.i:                                    ; preds = %if.then131.i.i, %if.else117.i.i.if.end139.i.i_crit_edge
  %dec140.i.i = add i32 %i.0254.i.i, -1
  %dec141.i.i = add i32 %endnum.9.i, -1
  br label %if.end166.i.i

if.then148.i.i:                                   ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i404.i = or i32 %and94.i.i, -2147483648
  %279 = ptrtoint ptr %arrayidx.i386.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %or.i404.i, ptr %arrayidx.i386.i, align 4
  br label %if.end166.i.i

if.end166.i.i:                                    ; preds = %if.then148.i.i, %if.end139.i.i, %if.then102.i.i, %if.else71.i.i.if.end166.i.i_crit_edge, %if.end.i.i, %if.then26.i.i
  %endnum.10.i = phi i32 [ %dec69.i.i, %if.end.i.i ], [ %endnum.9.i, %if.then26.i.i ], [ %dec141.i.i, %if.end139.i.i ], [ %endnum.9.i, %if.then102.i.i ], [ %endnum.9.i, %if.then148.i.i ], [ %endnum.9.i, %if.else71.i.i.if.end166.i.i_crit_edge ]
  %i.1.i.i = phi i32 [ %dec.i.i, %if.end.i.i ], [ %i.0254.i.i, %if.then26.i.i ], [ %dec140.i.i, %if.end139.i.i ], [ %i.0254.i.i, %if.then102.i.i ], [ %i.0254.i.i, %if.then148.i.i ], [ %i.0254.i.i, %if.else71.i.i.if.end166.i.i_crit_edge ]
  %inc.i405.i = add i32 %i.1.i.i, 1
  %sub.i406.i = add i32 %endnum.10.i, -1
  %cmp.i.i = icmp slt i32 %inc.i405.i, %sub.i406.i
  br i1 %cmp.i.i, label %if.end166.i.i.for.body.i389.i_crit_edge, label %if.end166.i.i.udf_merge_extents.exit.i_crit_edge

if.end166.i.i.udf_merge_extents.exit.i_crit_edge: ; preds = %if.end166.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_merge_extents.exit.i

if.end166.i.i.for.body.i389.i_crit_edge:          ; preds = %if.end166.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i389.i

udf_merge_extents.exit.i:                         ; preds = %if.end166.i.i.udf_merge_extents.exit.i_crit_edge, %if.end220.i.udf_merge_extents.exit.i_crit_edge
  %endnum.11.i = phi i32 [ %endnum.8.i, %if.end220.i.udf_merge_extents.exit.i_crit_edge ], [ %endnum.10.i, %if.end166.i.i.udf_merge_extents.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmploc.i.i) #8
  %280 = ptrtoint ptr %tmploc.i.i to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 -1, ptr %tmploc.i.i, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmplen.i.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %startnum.1.i, i32 %endnum.11.i)
  %cmp.i408.i = icmp sgt i32 %startnum.1.i, %endnum.11.i
  br i1 %cmp.i408.i, label %for.cond.preheader.i.i, label %if.else.i414.i

for.cond.preheader.i.i:                           ; preds = %udf_merge_extents.exit.i
  %sub.i409.i = sub i32 %startnum.1.i, %endnum.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i409.i)
  %cmp183.i.i = icmp sgt i32 %sub.i409.i, 0
  br i1 %cmp183.i.i, label %for.body.lr.ph.i410.i, label %for.cond.preheader.i.i.if.end19.i.i_crit_edge

for.cond.preheader.i.i.if.end19.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

for.body.lr.ph.i410.i:                            ; preds = %for.cond.preheader.i.i
  %.elt77.i.i = getelementptr inbounds [4 x i32], ptr %prev_epos.i, i32 0, i32 3
  br label %for.body.i413.i

for.body.i413.i:                                  ; preds = %for.body.i413.i.for.body.i413.i_crit_edge, %for.body.lr.ph.i410.i
  %i.084.i.i = phi i32 [ 0, %for.body.lr.ph.i410.i ], [ %inc.i412.i, %for.body.i413.i.for.body.i413.i_crit_edge ]
  %281 = ptrtoint ptr %prev_epos.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %.unpack72.i.i = load i32, ptr %prev_epos.i, align 4
  %282 = insertvalue [4 x i32] undef, i32 %.unpack72.i.i, 0
  %283 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %.unpack74.i.i = load i32, ptr %offset2.i, align 4
  %284 = insertvalue [4 x i32] %282, i32 %.unpack74.i.i, 1
  %285 = ptrtoint ptr %block3.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %.unpack76.i.i = load i32, ptr %block3.i, align 4
  %286 = insertvalue [4 x i32] %284, i32 %.unpack76.i.i, 2
  %287 = ptrtoint ptr %.elt77.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %.unpack78.i.i = load i32, ptr %.elt77.i.i, align 4
  %288 = insertvalue [4 x i32] %286, i32 %.unpack78.i.i, 3
  %call.i411.i = call signext i8 @udf_delete_aext(ptr noundef %inode, [4 x i32] %288) #8
  %inc.i412.i = add nuw nsw i32 %i.084.i.i, 1
  %exitcond88.not.i.i = icmp eq i32 %inc.i412.i, %sub.i409.i
  br i1 %exitcond88.not.i.i, label %for.body.i413.i.if.end19.i.i_crit_edge, label %for.body.i413.i.for.body.i413.i_crit_edge

for.body.i413.i.for.body.i413.i_crit_edge:        ; preds = %for.body.i413.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i413.i

for.body.i413.i.if.end19.i.i_crit_edge:           ; preds = %for.body.i413.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.else.i414.i:                                   ; preds = %udf_merge_extents.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %startnum.1.i, i32 %endnum.11.i)
  %cmp2.i.i = icmp slt i32 %startnum.1.i, %endnum.11.i
  br i1 %cmp2.i.i, label %for.cond4.preheader.i.i, label %if.else.i414.i.if.end19.i.i_crit_edge

if.else.i414.i.if.end19.i.i_crit_edge:            ; preds = %if.else.i414.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

for.cond4.preheader.i.i:                          ; preds = %if.else.i414.i
  %sub5.i.i = sub i32 %endnum.11.i, %startnum.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i.i)
  %cmp680.i.i = icmp sgt i32 %sub5.i.i, 0
  br i1 %cmp680.i.i, label %for.body7.lr.ph.i.i, label %for.cond4.preheader.i.i.if.end19.i.i_crit_edge

for.cond4.preheader.i.i.if.end19.i.i_crit_edge:   ; preds = %for.cond4.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

for.body7.lr.ph.i.i:                              ; preds = %for.cond4.preheader.i.i
  %.elt67.i.i = getelementptr inbounds [4 x i32], ptr %prev_epos.i, i32 0, i32 3
  %epos.coerce.fca.1.gep.i.i.i = getelementptr inbounds [4 x i32], ptr %epos.i.i.i, i32 0, i32 1
  %epos.coerce.fca.2.gep.i.i.i = getelementptr inbounds [4 x i32], ptr %epos.i.i.i, i32 0, i32 2
  %epos.coerce.fca.3.gep.i.i.i = getelementptr inbounds [4 x i32], ptr %epos.i.i.i, i32 0, i32 3
  %neloc.coerce.fca.1.gep.i.i.i = getelementptr inbounds [2 x i32], ptr %neloc.i.i.i, i32 0, i32 1
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %udf_insert_aext.exit.i.i.for.body7.i.i_crit_edge, %for.body7.lr.ph.i.i
  %i.182.i.i = phi i32 [ 0, %for.body7.lr.ph.i.i ], [ %inc17.i.i, %udf_insert_aext.exit.i.i.for.body7.i.i_crit_edge ]
  %arrayidx.i415.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.182.i.i
  %extLocation.i416.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.182.i.i, i32 1
  %289 = ptrtoint ptr %arrayidx.i415.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx.i415.i, align 4
  %291 = ptrtoint ptr %prev_epos.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %.unpack.i.i = load i32, ptr %prev_epos.i, align 4
  %292 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %.unpack64.i.i = load i32, ptr %offset2.i, align 4
  %293 = ptrtoint ptr %block3.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %.unpack66.i.i = load i32, ptr %block3.i, align 4
  %294 = ptrtoint ptr %.elt67.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %.unpack68.i.i = load i32, ptr %.elt67.i.i, align 4
  %295 = ptrtoint ptr %extLocation.i416.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %.unpack69.i.i = load i32, ptr %extLocation.i416.i, align 4
  %.elt70.i.i = getelementptr inbounds [2 x i32], ptr %extLocation.i416.i, i32 0, i32 1
  %296 = ptrtoint ptr %.elt70.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %.unpack71.i.i = load i32, ptr %.elt70.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos.i.i.i) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %neloc.i.i.i) #8
  %297 = ptrtoint ptr %epos.i.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %.unpack.i.i, ptr %epos.i.i.i, align 4
  %298 = ptrtoint ptr %epos.coerce.fca.1.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %.unpack64.i.i, ptr %epos.coerce.fca.1.gep.i.i.i, align 4
  %299 = ptrtoint ptr %epos.coerce.fca.2.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %.unpack66.i.i, ptr %epos.coerce.fca.2.gep.i.i.i, align 4
  %300 = ptrtoint ptr %epos.coerce.fca.3.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %.unpack68.i.i, ptr %epos.coerce.fca.3.gep.i.i.i, align 4
  %301 = ptrtoint ptr %neloc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %.unpack69.i.i, ptr %neloc.i.i.i, align 8
  %302 = ptrtoint ptr %neloc.coerce.fca.1.gep.i.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %.unpack71.i.i, ptr %neloc.coerce.fca.1.gep.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oeloc.i.i.i) #8
  %303 = ptrtoint ptr %oeloc.i.i.i to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 -1, ptr %oeloc.i.i.i, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oelen.i.i.i) #8
  %304 = ptrtoint ptr %oelen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 -1, ptr %oelen.i.i.i, align 4, !annotation !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.unpack.i.i)
  %tobool.not.i.i.i44 = icmp eq i32 %.unpack.i.i, 0
  br i1 %tobool.not.i.i.i44, label %for.body7.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i45

for.body7.i.i.if.end.i.i.i_crit_edge:             ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i45:                                  ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %305 = inttoptr i32 %.unpack.i.i to ptr
  %b_count.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %305, i32 0, i32 11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i.i, i32 1, i32 3, i32 1) #8
  %306 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i.i, ptr %b_count.i.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i.i) #8, !srcloc !100
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i45, %for.body7.i.i.if.end.i.i.i_crit_edge
  %call3.i.i.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos.i.i.i, ptr noundef nonnull %oeloc.i.i.i, ptr noundef nonnull %oelen.i.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call3.i.i.i)
  %cmp.not4.i.i.i = icmp eq i8 %call3.i.i.i, -1
  br i1 %cmp.not4.i.i.i, label %if.end.i.i.i.while.end.i.i.i_crit_edge, label %if.end.i.i.i.while.body.i.i.i_crit_edge

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  br label %while.body.i.i.i

if.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.i.i.while.body.i.i.i_crit_edge
  %call6.i.i.i = phi i8 [ %call.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %call3.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %nelen.addr.05.i.i.i = phi i32 [ %or.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %290, %if.end.i.i.i.while.body.i.i.i_crit_edge ]
  %conv1.i.i.i = zext i8 %call6.i.i.i to i32
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %epos.i.i.i, ptr noundef nonnull %neloc.i.i.i, i32 noundef %nelen.addr.05.i.i.i, i32 noundef 1) #8
  %307 = ptrtoint ptr %oeloc.i.i.i to i32
  call void @__asan_load8_noabort(i32 %307)
  %308 = load i64, ptr %oeloc.i.i.i, align 8
  %309 = ptrtoint ptr %neloc.i.i.i to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 %308, ptr %neloc.i.i.i, align 8
  %shl.i.i.i = shl i32 %conv1.i.i.i, 30
  %310 = ptrtoint ptr %oelen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %oelen.i.i.i, align 4
  %or.i.i.i = or i32 %311, %shl.i.i.i
  %call.i.i.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos.i.i.i, ptr noundef nonnull %oeloc.i.i.i, ptr noundef nonnull %oelen.i.i.i, i32 noundef 0) #8
  %cmp.not.i.i.i = icmp eq i8 %call.i.i.i, -1
  br i1 %cmp.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %if.end.i.i.i.while.end.i.i.i_crit_edge
  %nelen.addr.0.lcssa.i.i.i = phi i32 [ %290, %if.end.i.i.i.while.end.i.i.i_crit_edge ], [ %or.i.i.i, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %312 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %i_sb.i, align 4
  %314 = ptrtoint ptr %i_use.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %bf.load.i.i.i.i = load i32, ptr %i_use.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %bf.load.i.i.i.i, 536870912
  br i1 %cmp.i.i.i.i, label %while.end.i.i.i.if.end8.i.i.i.i_crit_edge, label %if.else.i.i.i.i

while.end.i.i.i.if.end8.i.i.i.i_crit_edge:        ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %while.end.i.i.i
  %bf.lshr4.mask.i.i.i.i = and i32 %bf.load.i.i.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask.i.i.i.i)
  %cmp5.i.i.i.i = icmp eq i32 %bf.lshr4.mask.i.i.i.i, 536870912
  br i1 %cmp5.i.i.i.i, label %if.else.i.i.i.i.if.end8.i.i.i.i_crit_edge, label %if.else.i.i.i.i.udf_add_aext.exit.i.i.i_crit_edge

if.else.i.i.i.i.udf_add_aext.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit.i.i.i

if.else.i.i.i.i.if.end8.i.i.i.i_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.else.i.i.i.i.if.end8.i.i.i.i_crit_edge, %while.end.i.i.i.if.end8.i.i.i.i_crit_edge
  %adsize.0.i.i.i.i = phi i32 [ 16, %while.end.i.i.i.if.end8.i.i.i.i_crit_edge ], [ 32, %if.else.i.i.i.i.if.end8.i.i.i.i_crit_edge ]
  %315 = ptrtoint ptr %epos.coerce.fca.1.gep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %epos.coerce.fca.1.gep.i.i.i, align 4
  %add.i.i.i.i = add i32 %316, %adsize.0.i.i.i.i
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %313, i32 0, i32 3
  %317 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %318)
  %cmp9.i.i.i.i = icmp ugt i32 %add.i.i.i.i, %318
  br i1 %cmp9.i.i.i.i, label %if.then10.i.i.i.i, label %if.end8.i.i.i.i.if.end20.i.i.i.i_crit_edge

if.end8.i.i.i.i.if.end20.i.i.i.i_crit_edge:       ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end8.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i.i.i.i) #8
  %319 = ptrtoint ptr %err.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 -1, ptr %err.i.i.i.i, align 4, !annotation !81
  %320 = ptrtoint ptr %epos.coerce.fca.3.gep.i.i.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %epos.coerce.fca.3.gep.i.i.i, align 4
  %322 = ptrtoint ptr %epos.coerce.fca.2.gep.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %epos.coerce.fca.2.gep.i.i.i, align 4
  %call12.i.i.i.i = call i32 @udf_new_block(ptr noundef %313, ptr noundef null, i16 noundef zeroext %321, i32 noundef %323, ptr noundef nonnull %err.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call12.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %cleanup.thread.i.i.i.i, label %cleanup.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %if.then10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i.i.i) #8
  br label %udf_add_aext.exit.i.i.i

cleanup.i.i.i.i:                                  ; preds = %if.then10.i.i.i.i
  %call15.i.i.i.i = call i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %call12.i.i.i.i, ptr noundef nonnull %epos.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.i)
  %tobool16.not.i.i.i.i = icmp eq i32 %call15.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i.i.i.i) #8
  br i1 %tobool16.not.i.i.i.i, label %cleanup.i.i.i.i.if.end20.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.udf_add_aext.exit.i.i.i_crit_edge

cleanup.i.i.i.i.udf_add_aext.exit.i.i.i_crit_edge: ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit.i.i.i

cleanup.i.i.i.i.if.end20.i.i.i.i_crit_edge:       ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i.i.i

if.end20.i.i.i.i:                                 ; preds = %cleanup.i.i.i.i.if.end20.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.end20.i.i.i.i_crit_edge
  %call21.i.i.i.i = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef nonnull %epos.i.i.i, ptr noundef nonnull %neloc.i.i.i, i32 noundef %nelen.addr.0.lcssa.i.i.i, i32 noundef 1) #8
  br label %udf_add_aext.exit.i.i.i

udf_add_aext.exit.i.i.i:                          ; preds = %if.end20.i.i.i.i, %cleanup.i.i.i.i.udf_add_aext.exit.i.i.i_crit_edge, %cleanup.thread.i.i.i.i, %if.else.i.i.i.i.udf_add_aext.exit.i.i.i_crit_edge
  %324 = ptrtoint ptr %epos.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %epos.i.i.i, align 4
  %tobool.not.i2.i.i.i = icmp eq ptr %325, null
  br i1 %tobool.not.i2.i.i.i, label %udf_add_aext.exit.i.i.i.udf_insert_aext.exit.i.i_crit_edge, label %if.then.i.i.i.i

udf_add_aext.exit.i.i.i.udf_insert_aext.exit.i.i_crit_edge: ; preds = %udf_add_aext.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_insert_aext.exit.i.i

if.then.i.i.i.i:                                  ; preds = %udf_add_aext.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %325) #8
  br label %udf_insert_aext.exit.i.i

udf_insert_aext.exit.i.i:                         ; preds = %if.then.i.i.i.i, %udf_add_aext.exit.i.i.i.udf_insert_aext.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oelen.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oeloc.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %neloc.i.i.i) #8
  %call14.i.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %prev_epos.i, ptr noundef %extLocation.i416.i, ptr noundef %arrayidx.i415.i, i32 noundef 1) #8
  %inc17.i.i = add nuw nsw i32 %i.182.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc17.i.i, %sub5.i.i
  br i1 %exitcond.not.i.i, label %udf_insert_aext.exit.i.i.if.end19.i.i_crit_edge, label %udf_insert_aext.exit.i.i.for.body7.i.i_crit_edge

udf_insert_aext.exit.i.i.for.body7.i.i_crit_edge: ; preds = %udf_insert_aext.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i.i

udf_insert_aext.exit.i.i.if.end19.i.i_crit_edge:  ; preds = %udf_insert_aext.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %udf_insert_aext.exit.i.i.if.end19.i.i_crit_edge, %for.cond4.preheader.i.i.if.end19.i.i_crit_edge, %if.else.i414.i.if.end19.i.i_crit_edge, %for.body.i413.i.if.end19.i.i_crit_edge, %for.cond.preheader.i.i.if.end19.i.i_crit_edge
  %start.1.i.i = phi i32 [ 0, %if.else.i414.i.if.end19.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.if.end19.i.i_crit_edge ], [ 0, %for.cond4.preheader.i.i.if.end19.i.i_crit_edge ], [ 0, %for.body.i413.i.if.end19.i.i_crit_edge ], [ %sub5.i.i, %udf_insert_aext.exit.i.i.if.end19.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.1.i.i, i32 %endnum.11.i)
  %cmp2185.i.i = icmp slt i32 %start.1.i.i, %endnum.11.i
  br i1 %cmp2185.i.i, label %if.end19.i.i.for.body22.i.i_crit_edge, label %if.end19.i.i.udf_update_extents.exit.i_crit_edge

if.end19.i.i.udf_update_extents.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_update_extents.exit.i

if.end19.i.i.for.body22.i.i_crit_edge:            ; preds = %if.end19.i.i
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %for.body22.i.i.for.body22.i.i_crit_edge, %if.end19.i.i.for.body22.i.i_crit_edge
  %i.286.i.i = phi i32 [ %inc29.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ %start.1.i.i, %if.end19.i.i.for.body22.i.i_crit_edge ]
  %call23.i.i = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %prev_epos.i, ptr noundef nonnull %tmploc.i.i, ptr noundef nonnull %tmplen.i.i, i32 noundef 0) #8
  %arrayidx24.i417.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.286.i.i
  %extLocation25.i.i = getelementptr %struct.kernel_long_ad, ptr %laarr.i, i32 %i.286.i.i, i32 1
  %326 = ptrtoint ptr %arrayidx24.i417.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx24.i417.i, align 4
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %prev_epos.i, ptr noundef %extLocation25.i.i, i32 noundef %327, i32 noundef 1) #8
  %inc29.i.i = add i32 %i.286.i.i, 1
  %exitcond89.not.i.i = icmp eq i32 %inc29.i.i, %endnum.11.i
  br i1 %exitcond89.not.i.i, label %for.body22.i.i.udf_update_extents.exit.i_crit_edge, label %for.body22.i.i.for.body22.i.i_crit_edge

for.body22.i.i.for.body22.i.i_crit_edge:          ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.i.i

for.body22.i.i.udf_update_extents.exit.i_crit_edge: ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_update_extents.exit.i

udf_update_extents.exit.i:                        ; preds = %for.body22.i.i.udf_update_extents.exit.i_crit_edge, %if.end19.i.i.udf_update_extents.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmplen.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmploc.i.i) #8
  %328 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %i_sb.i, align 4
  %partitionReferenceNum225.i = getelementptr i8, ptr %inode, i32 -236
  %330 = ptrtoint ptr %partitionReferenceNum225.i to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %partitionReferenceNum225.i, align 4
  %call226.i = call i32 @udf_get_pblock(ptr noundef %329, i32 noundef %newblocknum.0.i, i16 noundef zeroext %331, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226.i)
  %tobool227.not.i = icmp eq i32 %call226.i, 0
  br i1 %tobool227.not.i, label %if.then228.i, label %if.end229.i

if.then228.i:                                     ; preds = %udf_update_extents.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %332 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 -5, ptr %err, align 4
  br label %out_free.i

if.end229.i:                                      ; preds = %udf_update_extents.exit.i
  %conv230.i = trunc i64 %block to i32
  %333 = ptrtoint ptr %i_next_alloc_block to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %conv230.i, ptr %i_next_alloc_block, align 8
  %i_next_alloc_goal232.i = getelementptr i8, ptr %inode, i32 -204
  %334 = ptrtoint ptr %i_next_alloc_goal232.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %newblocknum.0.i, ptr %i_next_alloc_goal232.i, align 4
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #8
  %335 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #8
  %336 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %337, i32 0, i32 10
  %338 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %s_flags.i, align 4
  %and234.i = and i32 %339, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i)
  %tobool235.not.i = icmp eq i32 %and234.i, 0
  br i1 %tobool235.not.i, label %lor.lhs.false.i, label %if.end229.i.if.then238.i_crit_edge

if.end229.i.if.then238.i_crit_edge:               ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then238.i

lor.lhs.false.i:                                  ; preds = %if.end229.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %340 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %i_flags.i, align 4
  %and236.i = and i32 %341, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236.i)
  %tobool237.not.i = icmp eq i32 %and236.i, 0
  br i1 %tobool237.not.i, label %if.else240.i, label %lor.lhs.false.i.if.then238.i_crit_edge

lor.lhs.false.i.if.then238.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then238.i

if.then238.i:                                     ; preds = %lor.lhs.false.i.if.then238.i_crit_edge, %if.end229.i.if.then238.i_crit_edge
  %call.i418.i = call fastcc i32 @udf_update_inode(ptr noundef %inode, i32 noundef 1) #8
  br label %out_free.i

if.else240.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %out_free.i

out_free.i:                                       ; preds = %if.else240.i, %if.then238.i, %if.then228.i, %if.then202.i, %cleanup.i, %if.end82.i
  %tobool15.not = phi i1 [ false, %if.else240.i ], [ false, %if.then238.i ], [ true, %if.then228.i ], [ true, %if.then202.i ], [ true, %cleanup.i ], [ true, %if.end82.i ]
  %newblock.1.i = phi i32 [ %call226.i, %if.else240.i ], [ %call226.i, %if.then238.i ], [ 0, %if.then228.i ], [ 0, %if.then202.i ], [ 0, %cleanup.i ], [ %call.i.i, %if.end82.i ]
  %342 = ptrtoint ptr %prev_epos.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %prev_epos.i, align 4
  %tobool.not.i419.i = icmp eq ptr %343, null
  br i1 %tobool.not.i419.i, label %out_free.i.brelse.exit422.i_crit_edge, label %if.then.i420.i

out_free.i.brelse.exit422.i_crit_edge:            ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit422.i

if.then.i420.i:                                   ; preds = %out_free.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %343) #8
  br label %brelse.exit422.i

brelse.exit422.i:                                 ; preds = %if.then.i420.i, %out_free.i.brelse.exit422.i_crit_edge
  %344 = ptrtoint ptr %cur_epos.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cur_epos.i, align 4
  %tobool.not.i423.i = icmp eq ptr %345, null
  br i1 %tobool.not.i423.i, label %brelse.exit422.i.brelse.exit426.i_crit_edge, label %if.then.i424.i

brelse.exit422.i.brelse.exit426.i_crit_edge:      ; preds = %brelse.exit422.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit426.i

if.then.i424.i:                                   ; preds = %brelse.exit422.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %345) #8
  br label %brelse.exit426.i

brelse.exit426.i:                                 ; preds = %if.then.i424.i, %brelse.exit422.i.brelse.exit426.i_crit_edge
  %346 = ptrtoint ptr %next_epos.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %next_epos.i, align 4
  %tobool.not.i427.i = icmp eq ptr %347, null
  br i1 %tobool.not.i427.i, label %brelse.exit426.i.inode_getblk.exit_crit_edge, label %if.then.i428.i

brelse.exit426.i.inode_getblk.exit_crit_edge:     ; preds = %brelse.exit426.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inode_getblk.exit

if.then.i428.i:                                   ; preds = %brelse.exit426.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %347) #8
  br label %inode_getblk.exit

inode_getblk.exit:                                ; preds = %if.then.i428.i, %brelse.exit426.i.inode_getblk.exit_crit_edge
  %conv245.i = zext i32 %newblock.1.i to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpeloc.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpelen.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %next_epos.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cur_epos.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prev_epos.i) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %laarr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %newblock.1.i)
  %tobool12.not = icmp eq i32 %newblock.1.i, 0
  br i1 %tobool12.not, label %inode_getblk.exit.abort_crit_edge, label %if.end14

inode_getblk.exit.abort_crit_edge:                ; preds = %inode_getblk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end14:                                         ; preds = %inode_getblk.exit
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  %348 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load volatile i32, ptr %bh_result, align 4
  %350 = and i32 %349, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i = icmp eq i32 %350, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then16.if.end17_crit_edge

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then.i, %if.then16.if.end17_crit_edge, %if.end14.if.end17_crit_edge
  %351 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %i_sb.i, align 4
  %353 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load volatile i32, ptr %bh_result, align 4
  %355 = and i32 %354, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool.not.i.i46 = icmp eq i32 %355, 0
  br i1 %tobool.not.i.i46, label %if.then.i.i47, label %if.end17.map_bh.exit53_crit_edge

if.end17.map_bh.exit53_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %map_bh.exit53

if.then.i.i47:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #8
  br label %map_bh.exit53

map_bh.exit53:                                    ; preds = %if.then.i.i47, %if.end17.map_bh.exit53_crit_edge
  %s_bdev.i48 = getelementptr inbounds %struct.super_block, ptr %352, i32 0, i32 26
  %356 = ptrtoint ptr %s_bdev.i48 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %s_bdev.i48, align 4
  %b_bdev.i49 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %358 = ptrtoint ptr %b_bdev.i49 to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %357, ptr %b_bdev.i49, align 8
  %b_blocknr.i50 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %359 = ptrtoint ptr %b_blocknr.i50 to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %conv245.i, ptr %b_blocknr.i50, align 8
  %s_blocksize.i51 = getelementptr inbounds %struct.super_block, ptr %352, i32 0, i32 3
  %360 = ptrtoint ptr %s_blocksize.i51 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %s_blocksize.i51, align 16
  %b_size.i52 = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %362 = ptrtoint ptr %b_size.i52 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %361, ptr %b_size.i52, align 8
  br label %abort

abort:                                            ; preds = %map_bh.exit53, %inode_getblk.exit.abort_crit_edge
  call void @up_write(ptr noundef %i_data_sem) #8
  %363 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %abort, %map_bh.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %364, %abort ], [ 0, %map_bh.exit ], [ 0, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_truncate_extents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @udf_update_extra_perms(ptr nocapture noundef %inode, i16 noundef zeroext %mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_extraPerms = getelementptr i8, ptr %inode, i32 -196
  %0 = ptrtoint ptr %i_extraPerms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_extraPerms, align 4
  %and = and i32 %1, -16913
  %conv = zext i16 %mode to i32
  %and1 = shl nuw nsw i32 %conv, 7
  %2 = and i32 %and1, 16384
  %3 = or i32 %and, %2
  %and4 = shl nuw nsw i32 %conv, 5
  %4 = and i32 %and4, 512
  %5 = or i32 %4, %3
  store i32 %5, ptr %i_extraPerms, align 4
  %and11 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %entry.if.end16_crit_edge, label %if.then13

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %i_extraPerms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_extraPerms, align 4
  %or15 = or i32 %7, 16
  store i32 %or15, ptr %i_extraPerms, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %entry.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call = tail call fastcc i32 @udf_update_inode(ptr noundef %inode, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__udf_iget(ptr noundef %sb, ptr nocapture noundef readonly %ino, i1 noundef zeroext %hidden_inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ino, align 4
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %ino, i32 0, i32 1
  %2 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = tail call i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %1, i16 noundef zeroext %3, i32 noundef 0) #8
  %call1 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %call.i) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_location = getelementptr i8, ptr %call1, i32 -240
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %ino, align 4
  %8 = ptrtoint ptr %i_location to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %i_location, align 8
  %call8 = tail call fastcc i32 @udf_read_inode(ptr noundef nonnull %call1, i1 noundef zeroext %hidden_inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iget_failed(ptr noundef nonnull %call1) #8
  %9 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_new_inode(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then9 ], [ %call1, %if.end11 ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_read_inode(ptr noundef %inode, i1 noundef zeroext %hidden_inode) unnamed_addr #0 align 64 {
entry:
  %ident = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ident) #8
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ident, align 2, !annotation !81
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -256
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %partitionReferenceNum = getelementptr i8, ptr %inode, i32 -236
  %s_partitions = getelementptr inbounds %struct.udf_sb_info, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %partitionReferenceNum, align 4
  %9 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_partitions, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.not944 = icmp ult i16 %8, %10
  br i1 %cmp.not944, label %entry.if.end14_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.if.end14_crit_edge:                         ; preds = %entry
  br label %if.end14

do.body:                                          ; preds = %cleanup87.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_read_inode.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_read_inode, %if.then9)) #8
          to label %cleanup501 [label %if.then9], !srcloc !83

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %partitionReferenceNum, align 4
  %conv11 = zext i16 %12 to i32
  %13 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_partitions, align 4
  %conv13 = zext i16 %14 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_read_inode.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1320, ptr noundef nonnull @.str.19, i32 noundef %conv11, i32 noundef %conv13) #8
  br label %cleanup501

if.end14:                                         ; preds = %cleanup87.if.end14_crit_edge, %entry.if.end14_crit_edge
  %15 = phi i16 [ %60, %cleanup87.if.end14_crit_edge ], [ %8, %entry.if.end14_crit_edge ]
  %indirections.0945 = phi i32 [ %inc, %cleanup87.if.end14_crit_edge ], [ 0, %entry.if.end14_crit_edge ]
  %conv = zext i16 %15 to i32
  %16 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_location, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 8
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %19, i32 %conv, i32 2
  %20 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_partition_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp16.not = icmp ult i32 %17, %21
  br i1 %cmp16.not, label %if.end38, label %do.body19

do.body19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_read_inode.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_read_inode, %if.then31)) #8
          to label %cleanup501 [label %if.then31], !srcloc !83

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_location, align 4
  %24 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %partitionReferenceNum, align 4
  %conv34 = zext i16 %25 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_read_inode.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1327, ptr noundef nonnull @.str.19, i32 noundef %23, i32 noundef %conv34) #8
  br label %cleanup501

if.end38:                                         ; preds = %if.end14
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %call40 = call ptr @udf_read_ptagged(ptr noundef %27, ptr noundef %i_location, i32 noundef 0, ptr noundef nonnull %ident) #8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %29, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, i32 noundef %31) #8
  br label %cleanup501

if.end44:                                         ; preds = %if.end38
  %32 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ident, align 2
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %33, label %if.then55 [
    i16 261, label %if.end44.if.end59_crit_edge
    i16 266, label %if.end44.if.end59_crit_edge1149
    i16 263, label %if.end44.if.end59_crit_edge1150
  ]

if.end44.if.end59_crit_edge1150:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end44.if.end59_crit_edge1149:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end44.if.end59_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then55:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %conv45 = zext i16 %33 to i32
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %i_ino57 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino57, align 8
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %36, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.25, i32 noundef %38, i32 noundef %conv45) #8
  br label %brelse.exit866

if.end59:                                         ; preds = %if.end44.if.end59_crit_edge, %if.end44.if.end59_crit_edge1149, %if.end44.if.end59_crit_edge1150
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call40, i32 0, i32 5
  %39 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data, align 4
  %strategyType = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %strategyType to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %strategyType, align 1
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %42, label %if.then95 [
    i16 16, label %if.then64
    i16 1024, label %if.then107.loopexit
  ]

if.then64:                                        ; preds = %if.end59
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %call66 = call ptr @udf_read_ptagged(ptr noundef %45, ptr noundef %i_location, i32 noundef 1, ptr noundef nonnull %ident) #8
  %46 = ptrtoint ptr %ident to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ident, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 259, i16 %47)
  %cmp68 = icmp ne i16 %47, 259
  %tobool71.not = icmp eq ptr %call66, null
  %or.cond = select i1 %cmp68, i1 true, i1 %tobool71.not
  br i1 %or.cond, label %if.end86, label %if.then72

if.then72:                                        ; preds = %if.then64
  %b_data73 = getelementptr inbounds %struct.buffer_head, ptr %call66, i32 0, i32 5
  %48 = ptrtoint ptr %b_data73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data73, align 4
  %indirectICB = getelementptr inbounds %struct.indirectEntry, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %indirectICB to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %indirectICB, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool76.not = icmp eq i32 %51, 0
  br i1 %tobool76.not, label %if.then.i775.loopexit, label %brelse.exit

brelse.exit:                                      ; preds = %if.then72
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.indirectEntry, ptr %49, i32 0, i32 2, i32 1, i32 1
  %52 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %extLocation = getelementptr inbounds %struct.indirectEntry, ptr %49, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #8
  %tmp74.sroa.0.0.insert.ext = zext i32 %54 to i64
  %tmp74.sroa.0.0.insert.shift = shl nuw i64 %tmp74.sroa.0.0.insert.ext, 32
  %55 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #8
  %tmp74.sroa.5.0.insert.ext = zext i16 %55 to i64
  %tmp74.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp74.sroa.5.0.insert.ext, 16
  %tmp74.sroa.5.0.insert.insert = or i64 %tmp74.sroa.0.0.insert.shift, %tmp74.sroa.5.0.insert.shift
  %tmp74.sroa.0.0.insert.insert = or i64 %tmp74.sroa.5.0.insert.insert, 65535
  call void @__brelse(ptr noundef nonnull %call66) #8
  %56 = ptrtoint ptr %i_location to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %tmp74.sroa.0.0.insert.insert, ptr %i_location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %indirections.0945)
  %exitcond = icmp eq i32 %indirections.0945, 1024
  br i1 %exitcond, label %cleanup87.thread874, label %cleanup87

cleanup87.thread874:                              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %58, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.26, i32 noundef 1024) #8
  br label %brelse.exit866

if.end86:                                         ; preds = %if.then64
  %b_data.le1032 = getelementptr inbounds %struct.buffer_head, ptr %call40, i32 0, i32 5
  %strategyType.le1030 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 1, i32 1
  br i1 %tobool71.not, label %if.end86.if.end101_crit_edge, label %if.end86.if.then.i775_crit_edge

if.end86.if.then.i775_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i775

if.end86.if.end101_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then.i775.loopexit:                            ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %b_data.le = getelementptr inbounds %struct.buffer_head, ptr %call40, i32 0, i32 5
  %strategyType.le = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 1, i32 1
  br label %if.then.i775

if.then.i775:                                     ; preds = %if.then.i775.loopexit, %if.end86.if.then.i775_crit_edge
  %b_data1020 = phi ptr [ %b_data.le, %if.then.i775.loopexit ], [ %b_data.le1032, %if.end86.if.then.i775_crit_edge ]
  %strategyType1005 = phi ptr [ %strategyType.le, %if.then.i775.loopexit ], [ %strategyType.le1030, %if.end86.if.then.i775_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call66) #8
  br label %if.end101

cleanup87:                                        ; preds = %brelse.exit
  %inc = add nuw nsw i32 %indirections.0945, 1
  call void @__brelse(ptr noundef nonnull %call40) #8
  %59 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %partitionReferenceNum, align 4
  %61 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %s_partitions, align 4
  %cmp.not = icmp ult i16 %60, %62
  br i1 %cmp.not, label %cleanup87.if.end14_crit_edge, label %cleanup87.do.body_crit_edge

cleanup87.do.body_crit_edge:                      ; preds = %cleanup87
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup87.if.end14_crit_edge:                     ; preds = %cleanup87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then95:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb, align 4
  %65 = call i16 @llvm.bswap.i16(i16 %42)
  %conv99 = zext i16 %65 to i32
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %64, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.27, i32 noundef %conv99) #8
  br label %brelse.exit866

if.end101:                                        ; preds = %if.then.i775, %if.end86.if.end101_crit_edge
  %b_data1021 = phi ptr [ %b_data.le1032, %if.end86.if.end101_crit_edge ], [ %b_data1020, %if.then.i775 ]
  %strategyType1006 = phi ptr [ %strategyType.le1030, %if.end86.if.end101_crit_edge ], [ %strategyType1005, %if.then.i775 ]
  %66 = ptrtoint ptr %strategyType1006 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %.pr = load i16, ptr %strategyType1006, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %.pr)
  %cmp105 = icmp eq i16 %.pr, 1024
  br i1 %cmp105, label %if.end101.if.then107_crit_edge, label %if.else108

if.end101.if.then107_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then107

if.then107.loopexit:                              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %b_data.le1034 = getelementptr inbounds %struct.buffer_head, ptr %call40, i32 0, i32 5
  br label %if.then107

if.then107:                                       ; preds = %if.then107.loopexit, %if.end101.if.then107_crit_edge
  %b_data1019 = phi ptr [ %b_data.le1034, %if.then107.loopexit ], [ %b_data1021, %if.end101.if.then107_crit_edge ]
  %i_strat4096 = getelementptr i8, ptr %inode, i32 -192
  %67 = ptrtoint ptr %i_strat4096 to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load = load i32, ptr %i_strat4096, align 8
  %bf.clear = and i32 %bf.load, -67108865
  store i32 %bf.clear, ptr %i_strat4096, align 8
  br label %if.end113

if.else108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %i_strat4096109 = getelementptr i8, ptr %inode, i32 -192
  %68 = ptrtoint ptr %i_strat4096109 to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load110 = load i32, ptr %i_strat4096109, align 8
  %bf.set112 = or i32 %bf.load110, 67108864
  store i32 %bf.set112, ptr %i_strat4096109, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.else108, %if.then107
  %b_data1018 = phi ptr [ %b_data1021, %if.else108 ], [ %b_data1019, %if.then107 ]
  %flags = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 1, i32 7
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %flags, align 1
  %71 = lshr i16 %70, 8
  %and = zext i16 %71 to i32
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %72 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load116 = load i32, ptr %i_alloc_type, align 8
  %bf.shl = shl i32 %and, 29
  %bf.clear117 = and i32 %bf.load116, 536870911
  %bf.set118 = or i32 %bf.shl, %bf.clear117
  store i32 %bf.set118, ptr %i_alloc_type, align 8
  %bf.lshr = and i32 %and, 7
  %73 = zext i32 %bf.lshr to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %bf.lshr, label %if.end113.brelse.exit866_crit_edge [
    i32 0, label %if.end113.if.end136_crit_edge
    i32 1, label %if.end113.if.end136_crit_edge1151
    i32 3, label %if.end113.if.end136_crit_edge1152
  ]

if.end113.if.end136_crit_edge1152:                ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end113.if.end136_crit_edge1151:                ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end113.if.end136_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end113.brelse.exit866_crit_edge:               ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.end136:                                        ; preds = %if.end113.if.end136_crit_edge, %if.end113.if.end136_crit_edge1151, %if.end113.if.end136_crit_edge1152
  %i_unique = getelementptr i8, ptr %inode, i32 -232
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %74 = call ptr @memset(ptr %i_unique, i32 0, i32 32)
  %75 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %40, align 1
  %77 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %76, label %if.end136.if.end205_crit_edge [
    i16 2561, label %if.then140
    i16 1281, label %if.then159
    i16 1793, label %if.then183
  ]

if.end136.if.end205_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then140:                                       ; preds = %if.end136
  %bf.set143 = and i32 %bf.set118, -402653185
  %bf.clear145 = or i32 %bf.set143, 268435456
  %78 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %bf.clear145, ptr %i_alloc_type, align 8
  %sub = add i32 %6, -216
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3264) #11
  %i_data.i = getelementptr i8, ptr %inode, i32 -188
  %79 = ptrtoint ptr %i_data.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call9.i.i, ptr %i_data.i, align 4
  %tobool.not.i777.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i777.not, label %if.then140.brelse.exit866_crit_edge, label %if.then140.if.end205.sink.split_crit_edge

if.then140.if.end205.sink.split_crit_edge:        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205.sink.split

if.then140.brelse.exit866_crit_edge:              ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.then159:                                       ; preds = %if.end136
  %bf.clear166 = and i32 %bf.set118, -402653185
  %80 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %bf.clear166, ptr %i_alloc_type, align 8
  %sub168 = add i32 %6, -176
  %call9.i.i803 = call noalias align 128 ptr @__kmalloc(i32 noundef %sub168, i32 noundef 3264) #11
  %i_data.i806 = getelementptr i8, ptr %inode, i32 -188
  %81 = ptrtoint ptr %i_data.i806 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call9.i.i803, ptr %i_data.i806, align 4
  %tobool.not.i807.not = icmp eq ptr %call9.i.i803, null
  br i1 %tobool.not.i807.not, label %if.then159.brelse.exit866_crit_edge, label %if.then159.if.end205.sink.split_crit_edge

if.then159.if.end205.sink.split_crit_edge:        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205.sink.split

if.then159.brelse.exit866_crit_edge:              ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.then183:                                       ; preds = %if.end136
  %bf.clear190 = and i32 %bf.set118, -402653185
  %bf.set191 = or i32 %bf.clear190, 134217728
  %82 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %bf.set191, ptr %i_alloc_type, align 8
  %83 = ptrtoint ptr %b_data1018 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_data1018, align 4
  %lengthAllocDescs = getelementptr inbounds %struct.unallocSpaceEntry, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %lengthAllocDescs, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %i_lenAlloc, align 4
  %sub194 = add i32 %6, -40
  %call9.i.i835 = call noalias align 128 ptr @__kmalloc(i32 noundef %sub194, i32 noundef 3264) #11
  %i_data.i838 = getelementptr i8, ptr %inode, i32 -188
  %89 = ptrtoint ptr %i_data.i838 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call9.i.i835, ptr %i_data.i838, align 4
  %tobool.not.i839.not = icmp eq ptr %call9.i.i835, null
  br i1 %tobool.not.i839.not, label %if.then183.brelse.exit866_crit_edge, label %if.end198

if.then183.brelse.exit866_crit_edge:              ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.end198:                                        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  %i_data199 = getelementptr i8, ptr %inode, i32 -188
  %90 = ptrtoint ptr %i_data199 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_data199, align 4
  %92 = ptrtoint ptr %b_data1018 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %b_data1018, align 4
  %add.ptr201 = getelementptr i8, ptr %93, i32 40
  %94 = call ptr @memcpy(ptr %91, ptr %add.ptr201, i32 %sub194)
  br label %cleanup501

if.end205.sink.split:                             ; preds = %if.then159.if.end205.sink.split_crit_edge, %if.then140.if.end205.sink.split_crit_edge
  %.sink1037 = phi i32 [ 216, %if.then140.if.end205.sink.split_crit_edge ], [ 176, %if.then159.if.end205.sink.split_crit_edge ]
  %sub168.sink = phi i32 [ %sub, %if.then140.if.end205.sink.split_crit_edge ], [ %sub168, %if.then159.if.end205.sink.split_crit_edge ]
  %i_data173 = getelementptr i8, ptr %inode, i32 -188
  %95 = ptrtoint ptr %i_data173 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_data173, align 4
  %97 = ptrtoint ptr %b_data1018 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %b_data1018, align 4
  %add.ptr175 = getelementptr i8, ptr %98, i32 %.sink1037
  %99 = call ptr @memcpy(ptr %96, ptr %add.ptr175, i32 %sub168.sink)
  br label %if.end205

if.end205:                                        ; preds = %if.end205.sink.split, %if.end136.if.end205_crit_edge
  %s_cred_lock = getelementptr inbounds %struct.udf_sb_info, ptr %4, i32 0, i32 13
  call void @_raw_read_lock(ptr noundef %s_cred_lock) #8
  %uid206 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 2
  %100 = ptrtoint ptr %uid206 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %uid206, align 1
  %102 = call i32 @llvm.bswap.i32(i32 %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp207 = icmp eq i32 %101, -1
  br i1 %cmp207, label %if.end205.if.then212_crit_edge, label %lor.lhs.false

if.end205.if.then212_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then212

lor.lhs.false:                                    ; preds = %if.end205
  %103 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %104, i32 0, i32 33
  %105 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %106, i32 0, i32 17
  %107 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %s_flags.i, align 4
  %109 = and i32 %108, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool211.not = icmp eq i32 %109, 0
  br i1 %tobool211.not, label %if.else213, label %lor.lhs.false.if.then212_crit_edge

lor.lhs.false.if.then212_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then212

if.then212:                                       ; preds = %lor.lhs.false.if.then212_crit_edge, %if.end205.if.then212_crit_edge
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %s_uid = getelementptr inbounds %struct.udf_sb_info, ptr %4, i32 0, i32 10
  %110 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %s_uid, align 8
  %112 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %i_uid, align 4
  br label %if.end214

if.else213:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %s_user_ns.i.i = getelementptr inbounds %struct.super_block, ptr %104, i32 0, i32 53
  %113 = ptrtoint ptr %s_user_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_user_ns.i.i, align 8
  %call1.i = call i32 @make_kuid(ptr noundef %114, i32 noundef %102) #8
  %115 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call1.i, ptr %i_uid.i, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.else213, %if.then212
  %gid215 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 3
  %116 = ptrtoint ptr %gid215 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %gid215, align 1
  %118 = call i32 @llvm.bswap.i32(i32 %117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %cmp216 = icmp eq i32 %117, -1
  br i1 %cmp216, label %if.end214.if.then222_crit_edge, label %lor.lhs.false218

if.end214.if.then222_crit_edge:                   ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then222

lor.lhs.false218:                                 ; preds = %if.end214
  %119 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i842 = getelementptr inbounds %struct.super_block, ptr %120, i32 0, i32 33
  %121 = ptrtoint ptr %s_fs_info.i.i842 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_fs_info.i.i842, align 16
  %s_flags.i843 = getelementptr inbounds %struct.udf_sb_info, ptr %122, i32 0, i32 17
  %123 = ptrtoint ptr %s_flags.i843 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %s_flags.i843, align 4
  %125 = and i32 %124, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool221.not = icmp eq i32 %125, 0
  br i1 %tobool221.not, label %if.else223, label %lor.lhs.false218.if.then222_crit_edge

lor.lhs.false218.if.then222_crit_edge:            ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then222

if.then222:                                       ; preds = %lor.lhs.false218.if.then222_crit_edge, %if.end214.if.then222_crit_edge
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %s_gid = getelementptr inbounds %struct.udf_sb_info, ptr %4, i32 0, i32 9
  %126 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_gid, align 4
  %128 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %i_gid, align 8
  br label %if.end224

if.else223:                                       ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #10
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %s_user_ns.i.i847 = getelementptr inbounds %struct.super_block, ptr %120, i32 0, i32 53
  %129 = ptrtoint ptr %s_user_ns.i.i847 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %s_user_ns.i.i847, align 8
  %call1.i848 = call i32 @make_kgid(ptr noundef %130, i32 noundef %118) #8
  %131 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %call1.i848, ptr %i_gid.i, align 8
  br label %if.end224

if.end224:                                        ; preds = %if.else223, %if.then222
  %fileType = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 1, i32 5
  %132 = ptrtoint ptr %fileType to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %fileType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %133)
  %cmp227.not = icmp eq i8 %133, 4
  br i1 %cmp227.not, label %land.lhs.true241, label %land.lhs.true229

land.lhs.true229:                                 ; preds = %if.end224
  %s_fmode = getelementptr inbounds %struct.udf_sb_info, ptr %4, i32 0, i32 11
  %134 = ptrtoint ptr %s_fmode to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %s_fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %135)
  %cmp231.not = icmp eq i16 %135, -1
  br i1 %cmp231.not, label %land.lhs.true229.if.else248_crit_edge, label %land.lhs.true229.if.end252_crit_edge

land.lhs.true229.if.end252_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end252

land.lhs.true229.if.else248_crit_edge:            ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else248

land.lhs.true241:                                 ; preds = %if.end224
  %s_dmode = getelementptr inbounds %struct.udf_sb_info, ptr %4, i32 0, i32 12
  %136 = ptrtoint ptr %s_dmode to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %s_dmode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %137)
  %cmp243.not = icmp eq i16 %137, -1
  br i1 %cmp243.not, label %land.lhs.true241.if.else248_crit_edge, label %land.lhs.true241.if.end252_crit_edge

land.lhs.true241.if.end252_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end252

land.lhs.true241.if.else248_crit_edge:            ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else248

if.else248:                                       ; preds = %land.lhs.true241.if.else248_crit_edge, %land.lhs.true229.if.else248_crit_edge
  %permissions1.i = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 4
  %138 = ptrtoint ptr %permissions1.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %permissions1.i, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139) #8
  %141 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %141, i32 2)
  %142 = load i16, ptr %flags, align 1
  %143 = call i16 @llvm.bswap.i16(i16 %142) #8
  %conv.i = zext i16 %143 to i32
  %and.i = and i32 %140, 7
  %shr.i = lshr i32 %140, 2
  %and3.i = and i32 %shr.i, 56
  %or.i = or i32 %and3.i, %and.i
  %shr4.i = lshr i32 %140, 4
  %and5.i = and i32 %shr4.i, 448
  %or6.i = or i32 %or.i, %and5.i
  %and7.i = shl nuw nsw i32 %conv.i, 5
  %144 = and i32 %and7.i, 2048
  %or8.i = or i32 %or6.i, %144
  %and9.i = shl nuw nsw i32 %conv.i, 3
  %145 = and i32 %and9.i, 1024
  %or12.i = or i32 %or8.i, %145
  %and13.i = shl nuw nsw i32 %conv.i, 1
  %146 = and i32 %and13.i, 512
  %or16.i = or i32 %or12.i, %146
  %conv17.i = trunc i32 %or16.i to i16
  br label %if.end252

if.end252:                                        ; preds = %if.else248, %land.lhs.true241.if.end252_crit_edge, %land.lhs.true229.if.end252_crit_edge
  %.sink = phi i16 [ %conv17.i, %if.else248 ], [ %135, %land.lhs.true229.if.end252_crit_edge ], [ %137, %land.lhs.true241.if.end252_crit_edge ]
  %147 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %.sink, ptr %inode, align 8
  %s_umask = getelementptr inbounds %struct.udf_sb_info, ptr %4, i32 0, i32 8
  %148 = ptrtoint ptr %s_umask to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %s_umask, align 8
  %neg = xor i16 %149, -1
  %and256 = and i16 %.sink, %neg
  store i16 %and256, ptr %inode, align 8
  %permissions = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 4
  %150 = ptrtoint ptr %permissions to i32
  call void @__asan_loadN_noabort(i32 %150, i32 4)
  %151 = load i32, ptr %permissions, align 1
  %152 = and i32 %151, 417595391
  %153 = call i32 @llvm.bswap.i32(i32 %152)
  %i_extraPerms = getelementptr i8, ptr %inode, i32 -196
  %154 = ptrtoint ptr %i_extraPerms to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %i_extraPerms, align 4
  call void @_raw_read_unlock(ptr noundef %s_cred_lock) #8
  %fileLinkCount = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 5
  %155 = ptrtoint ptr %fileLinkCount to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %fileLinkCount, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool261.not = icmp ne i16 %156, 0
  %brmerge = or i1 %tobool261.not, %hidden_inode
  br i1 %brmerge, label %if.end266, label %if.end252.brelse.exit866_crit_edge

if.end252.brelse.exit866_crit_edge:               ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.end266:                                        ; preds = %if.end252
  %157 = call i16 @llvm.bswap.i16(i16 %156)
  %narrow = select i1 %tobool261.not, i16 %157, i16 1
  %conv260.mux = zext i16 %narrow to i32
  call void @set_nlink(ptr noundef %inode, i32 noundef %conv260.mux) #8
  %informationLength = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 9
  %158 = ptrtoint ptr %informationLength to i32
  call void @__asan_loadN_noabort(i32 %158, i32 8)
  %159 = load i64, ptr %informationLength, align 1
  %160 = call i64 @llvm.bswap.i64(i64 %159)
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %161 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 %160, ptr %i_size, align 8
  %162 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %160, ptr %i_lenExtents, align 8
  %163 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %163)
  %bf.load270 = load i32, ptr %i_alloc_type, align 8
  %164 = and i32 %bf.load270, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp273 = icmp eq i32 %164, 0
  br i1 %cmp273, label %if.then275, label %if.else286

if.then275:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  %logicalBlocksRecorded = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 10
  %165 = ptrtoint ptr %logicalBlocksRecorded to i32
  call void @__asan_loadN_noabort(i32 %165, i32 8)
  %166 = load i64, ptr %logicalBlocksRecorded, align 1
  %167 = call i64 @llvm.bswap.i64(i64 %166)
  %168 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %s_blocksize_bits, align 4
  %conv277 = zext i8 %171 to i32
  %sub278 = add nsw i32 %conv277, -9
  %sh_prom = zext i32 %sub278 to i64
  %shl = shl i64 %167, %sh_prom
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %172 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %shl, ptr %i_blocks, align 8
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %accessTime = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 11
  %173 = ptrtoint ptr %accessTime to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %.unpack744 = load i32, ptr %accessTime, align 1
  %174 = insertvalue [3 x i32] undef, i32 %.unpack744, 0
  %.elt745 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 11, i32 2
  %175 = ptrtoint ptr %.elt745 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %.unpack746 = load i32, ptr %.elt745, align 1
  %176 = insertvalue [3 x i32] %174, i32 %.unpack746, 1
  %.elt747 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 11, i32 6
  %177 = ptrtoint ptr %.elt747 to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %.unpack748 = load i32, ptr %.elt747, align 1
  %178 = insertvalue [3 x i32] %176, i32 %.unpack748, 2
  call void @udf_disk_stamp_to_time(ptr noundef %i_atime, [3 x i32] %178) #8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %modificationTime = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 12
  %179 = ptrtoint ptr %modificationTime to i32
  call void @__asan_loadN_noabort(i32 %179, i32 4)
  %.unpack749 = load i32, ptr %modificationTime, align 1
  %180 = insertvalue [3 x i32] undef, i32 %.unpack749, 0
  %.elt750 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 12, i32 2
  %181 = ptrtoint ptr %.elt750 to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %.unpack751 = load i32, ptr %.elt750, align 1
  %182 = insertvalue [3 x i32] %180, i32 %.unpack751, 1
  %.elt752 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 12, i32 6
  %183 = ptrtoint ptr %.elt752 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %.unpack753 = load i32, ptr %.elt752, align 1
  %184 = insertvalue [3 x i32] %182, i32 %.unpack753, 2
  call void @udf_disk_stamp_to_time(ptr noundef %i_mtime, [3 x i32] %184) #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %attrTime = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 13
  %185 = ptrtoint ptr %attrTime to i32
  call void @__asan_loadN_noabort(i32 %185, i32 4)
  %.unpack754 = load i32, ptr %attrTime, align 1
  %186 = insertvalue [3 x i32] undef, i32 %.unpack754, 0
  %.elt755 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 13, i32 2
  %187 = ptrtoint ptr %.elt755 to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %.unpack756 = load i32, ptr %.elt755, align 1
  %188 = insertvalue [3 x i32] %186, i32 %.unpack756, 1
  %.elt757 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 13, i32 6
  %189 = ptrtoint ptr %.elt757 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %.unpack758 = load i32, ptr %.elt757, align 1
  %190 = insertvalue [3 x i32] %188, i32 %.unpack758, 2
  call void @udf_disk_stamp_to_time(ptr noundef %i_ctime, [3 x i32] %190) #8
  %uniqueID = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 17
  %191 = ptrtoint ptr %uniqueID to i32
  call void @__asan_loadN_noabort(i32 %191, i32 8)
  %192 = load i64, ptr %uniqueID, align 1
  %193 = call i64 @llvm.bswap.i64(i64 %192)
  %194 = ptrtoint ptr %i_unique to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %i_unique, align 8
  %lengthExtendedAttr = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 18
  %195 = ptrtoint ptr %lengthExtendedAttr to i32
  call void @__asan_loadN_noabort(i32 %195, i32 4)
  %196 = load i32, ptr %lengthExtendedAttr, align 1
  %197 = call i32 @llvm.bswap.i32(i32 %196)
  %198 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %i_lenEAttr, align 8
  %lengthAllocDescs281 = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 19
  %199 = ptrtoint ptr %lengthAllocDescs281 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 4)
  %200 = load i32, ptr %lengthAllocDescs281, align 1
  %201 = call i32 @llvm.bswap.i32(i32 %200)
  %202 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %i_lenAlloc, align 4
  %checkpoint = getelementptr inbounds %struct.fileEntry, ptr %40, i32 0, i32 14
  %203 = ptrtoint ptr %checkpoint to i32
  call void @__asan_loadN_noabort(i32 %203, i32 4)
  %204 = load i32, ptr %checkpoint, align 1
  %205 = call i32 @llvm.bswap.i32(i32 %204)
  %i_checkpoint = getelementptr i8, ptr %inode, i32 -200
  %206 = ptrtoint ptr %i_checkpoint to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %i_checkpoint, align 8
  %207 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %207)
  %bf.load283 = load i32, ptr %i_alloc_type, align 8
  %bf.clear284 = and i32 %bf.load283, -33554433
  store i32 %bf.clear284, ptr %i_alloc_type, align 8
  %i_lenStreams = getelementptr i8, ptr %inode, i32 -176
  %208 = ptrtoint ptr %i_lenStreams to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 0, ptr %i_lenStreams, align 8
  br label %if.end333

if.else286:                                       ; preds = %if.end266
  %logicalBlocksRecorded287 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 11
  %209 = ptrtoint ptr %logicalBlocksRecorded287 to i32
  call void @__asan_loadN_noabort(i32 %209, i32 8)
  %210 = load i64, ptr %logicalBlocksRecorded287, align 1
  %211 = call i64 @llvm.bswap.i64(i64 %210)
  %212 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits289 = getelementptr inbounds %struct.super_block, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %s_blocksize_bits289 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %s_blocksize_bits289, align 4
  %conv290 = zext i8 %215 to i32
  %sub291 = add nsw i32 %conv290, -9
  %sh_prom292 = zext i32 %sub291 to i64
  %shl293 = shl i64 %211, %sh_prom292
  %i_blocks294 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %216 = ptrtoint ptr %i_blocks294 to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %shl293, ptr %i_blocks294, align 8
  %i_atime295 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %accessTime296 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 12
  %217 = ptrtoint ptr %accessTime296 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %.unpack = load i32, ptr %accessTime296, align 1
  %218 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %.elt725 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 12, i32 2
  %219 = ptrtoint ptr %.elt725 to i32
  call void @__asan_loadN_noabort(i32 %219, i32 4)
  %.unpack726 = load i32, ptr %.elt725, align 1
  %220 = insertvalue [3 x i32] %218, i32 %.unpack726, 1
  %.elt727 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 12, i32 6
  %221 = ptrtoint ptr %.elt727 to i32
  call void @__asan_loadN_noabort(i32 %221, i32 4)
  %.unpack728 = load i32, ptr %.elt727, align 1
  %222 = insertvalue [3 x i32] %220, i32 %.unpack728, 2
  call void @udf_disk_stamp_to_time(ptr noundef %i_atime295, [3 x i32] %222) #8
  %i_mtime297 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %modificationTime298 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 13
  %223 = ptrtoint ptr %modificationTime298 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %.unpack729 = load i32, ptr %modificationTime298, align 1
  %224 = insertvalue [3 x i32] undef, i32 %.unpack729, 0
  %.elt730 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 13, i32 2
  %225 = ptrtoint ptr %.elt730 to i32
  call void @__asan_loadN_noabort(i32 %225, i32 4)
  %.unpack731 = load i32, ptr %.elt730, align 1
  %226 = insertvalue [3 x i32] %224, i32 %.unpack731, 1
  %.elt732 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 13, i32 6
  %227 = ptrtoint ptr %.elt732 to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %.unpack733 = load i32, ptr %.elt732, align 1
  %228 = insertvalue [3 x i32] %226, i32 %.unpack733, 2
  call void @udf_disk_stamp_to_time(ptr noundef %i_mtime297, [3 x i32] %228) #8
  %createTime = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 14
  %229 = ptrtoint ptr %createTime to i32
  call void @__asan_loadN_noabort(i32 %229, i32 4)
  %.unpack734 = load i32, ptr %createTime, align 1
  %230 = insertvalue [3 x i32] undef, i32 %.unpack734, 0
  %.elt735 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 14, i32 2
  %231 = ptrtoint ptr %.elt735 to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %.unpack736 = load i32, ptr %.elt735, align 1
  %232 = insertvalue [3 x i32] %230, i32 %.unpack736, 1
  %.elt737 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 14, i32 6
  %233 = ptrtoint ptr %.elt737 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %.unpack738 = load i32, ptr %.elt737, align 1
  %234 = insertvalue [3 x i32] %232, i32 %.unpack738, 2
  call void @udf_disk_stamp_to_time(ptr noundef %add.ptr.i, [3 x i32] %234) #8
  %i_ctime299 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %attrTime300 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 15
  %235 = ptrtoint ptr %attrTime300 to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %.unpack739 = load i32, ptr %attrTime300, align 1
  %236 = insertvalue [3 x i32] undef, i32 %.unpack739, 0
  %.elt740 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 15, i32 2
  %237 = ptrtoint ptr %.elt740 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %.unpack741 = load i32, ptr %.elt740, align 1
  %238 = insertvalue [3 x i32] %236, i32 %.unpack741, 1
  %.elt742 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 15, i32 6
  %239 = ptrtoint ptr %.elt742 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %.unpack743 = load i32, ptr %.elt742, align 1
  %240 = insertvalue [3 x i32] %238, i32 %.unpack743, 2
  call void @udf_disk_stamp_to_time(ptr noundef %i_ctime299, [3 x i32] %240) #8
  %uniqueID301 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 21
  %241 = ptrtoint ptr %uniqueID301 to i32
  call void @__asan_loadN_noabort(i32 %241, i32 8)
  %242 = load i64, ptr %uniqueID301, align 1
  %243 = call i64 @llvm.bswap.i64(i64 %242)
  %244 = ptrtoint ptr %i_unique to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %243, ptr %i_unique, align 8
  %lengthExtendedAttr303 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 22
  %245 = ptrtoint ptr %lengthExtendedAttr303 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %lengthExtendedAttr303, align 1
  %247 = call i32 @llvm.bswap.i32(i32 %246)
  %248 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %i_lenEAttr, align 8
  %lengthAllocDescs305 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 23
  %249 = ptrtoint ptr %lengthAllocDescs305 to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %250 = load i32, ptr %lengthAllocDescs305, align 1
  %251 = call i32 @llvm.bswap.i32(i32 %250)
  %252 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %i_lenAlloc, align 4
  %checkpoint307 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 16
  %253 = ptrtoint ptr %checkpoint307 to i32
  call void @__asan_loadN_noabort(i32 %253, i32 4)
  %254 = load i32, ptr %checkpoint307, align 1
  %255 = call i32 @llvm.bswap.i32(i32 %254)
  %i_checkpoint308 = getelementptr i8, ptr %inode, i32 -200
  %256 = ptrtoint ptr %i_checkpoint308 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %i_checkpoint308, align 8
  %streamDirectoryICB = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 19
  %257 = ptrtoint ptr %streamDirectoryICB to i32
  call void @__asan_loadN_noabort(i32 %257, i32 4)
  %258 = load i32, ptr %streamDirectoryICB, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %cmp310.not = icmp eq i32 %258, 0
  %259 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %259)
  %bf.load313 = load i32, ptr %i_alloc_type, align 8
  %bf.shl315 = select i1 %cmp310.not, i32 0, i32 33554432
  %bf.clear316 = and i32 %bf.load313, -33554433
  %bf.set317 = or i32 %bf.clear316, %bf.shl315
  store i32 %bf.set317, ptr %i_alloc_type, align 8
  %i_locStreamdir = getelementptr i8, ptr %inode, i32 -184
  %extLocation320 = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 19, i32 1
  %260 = ptrtoint ptr %extLocation320 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 4)
  %extLocation320.coerce.sroa.0.0.copyload = load i32, ptr %extLocation320, align 1
  %extLocation320.coerce.sroa.2.0.extLocation320.sroa_idx = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 19, i32 1, i32 1
  %261 = ptrtoint ptr %extLocation320.coerce.sroa.2.0.extLocation320.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %261, i32 2)
  %extLocation320.coerce.sroa.2.0.copyload = load i16, ptr %extLocation320.coerce.sroa.2.0.extLocation320.sroa_idx, align 1
  %262 = call i32 @llvm.bswap.i32(i32 %extLocation320.coerce.sroa.0.0.copyload) #8
  %263 = call i16 @llvm.bswap.i16(i16 %extLocation320.coerce.sroa.2.0.copyload) #8
  %tmp318.sroa.5.0.insert.ext = zext i16 %263 to i64
  %tmp318.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp318.sroa.5.0.insert.ext, 16
  %tmp318.sroa.0.0.insert.ext = zext i32 %262 to i64
  %tmp318.sroa.0.0.insert.shift = shl nuw i64 %tmp318.sroa.0.0.insert.ext, 32
  %tmp318.sroa.5.0.insert.insert = or i64 %tmp318.sroa.5.0.insert.shift, %tmp318.sroa.0.0.insert.shift
  %tmp318.sroa.0.0.insert.insert = or i64 %tmp318.sroa.5.0.insert.insert, 65535
  %264 = ptrtoint ptr %i_locStreamdir to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %tmp318.sroa.0.0.insert.insert, ptr %i_locStreamdir, align 8
  %objectSize = getelementptr inbounds %struct.extendedFileEntry, ptr %40, i32 0, i32 10
  %265 = ptrtoint ptr %objectSize to i32
  call void @__asan_loadN_noabort(i32 %265, i32 8)
  %266 = load i64, ptr %objectSize, align 1
  %267 = call i64 @llvm.bswap.i64(i64 %266)
  %i_lenStreams321 = getelementptr i8, ptr %inode, i32 -176
  %268 = ptrtoint ptr %i_lenStreams321 to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %267, ptr %i_lenStreams321, align 8
  %269 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %267, i64 %270)
  %cmp324.not = icmp ult i64 %267, %270
  br i1 %cmp324.not, label %if.else330, label %if.then326

if.then326:                                       ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #10
  %sub329 = sub i64 %267, %270
  %271 = ptrtoint ptr %i_lenStreams321 to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %sub329, ptr %i_lenStreams321, align 8
  br label %if.end333

if.else330:                                       ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #10
  %272 = ptrtoint ptr %i_lenStreams321 to i32
  call void @__asan_store8_noabort(i32 %272)
  store i64 0, ptr %i_lenStreams321, align 8
  br label %if.end333

if.end333:                                        ; preds = %if.else330, %if.then326, %if.then275
  %273 = ptrtoint ptr %i_unique to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %i_unique, align 8
  %conv335 = trunc i64 %274 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %275 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %conv335, ptr %i_generation, align 8
  %276 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %i_lenEAttr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %277, i32 %6)
  %cmp337 = icmp ugt i32 %277, %6
  br i1 %cmp337, label %if.end333.brelse.exit866_crit_edge, label %lor.lhs.false339

if.end333.brelse.exit866_crit_edge:               ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

lor.lhs.false339:                                 ; preds = %if.end333
  %278 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %i_lenAlloc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %6)
  %cmp341 = icmp ugt i32 %279, %6
  br i1 %cmp341, label %lor.lhs.false339.brelse.exit866_crit_edge, label %if.end344

lor.lhs.false339.brelse.exit866_crit_edge:        ; preds = %lor.lhs.false339
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.end344:                                        ; preds = %lor.lhs.false339
  %280 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %280)
  %bf.load.i = load i32, ptr %i_alloc_type, align 8
  %281 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool.not.i850 = icmp eq i32 %281, 0
  br i1 %tobool.not.i850, label %if.else.i, label %if.end344.udf_file_entry_alloc_offset.exit_crit_edge

if.end344.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.end344
  %282 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %tobool4.not.i = icmp eq i32 %282, 0
  %283 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %i_lenEAttr, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %284, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i = add i32 %284, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.end344.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i851 = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.end344.udf_file_entry_alloc_offset.exit_crit_edge ]
  %add = add i32 %retval.0.i851, %279
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp347 = icmp ugt i32 %add, %6
  br i1 %cmp347, label %udf_file_entry_alloc_offset.exit.brelse.exit866_crit_edge, label %if.end350

udf_file_entry_alloc_offset.exit.brelse.exit866_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.end350:                                        ; preds = %udf_file_entry_alloc_offset.exit
  %285 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %285)
  %bf.load352 = load i32, ptr %i_alloc_type, align 8
  %bf.lshr353.mask = and i32 %bf.load352, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr353.mask)
  %cmp354 = icmp eq i32 %bf.lshr353.mask, 1610612736
  br i1 %cmp354, label %if.then356, label %if.end350.if.end372_crit_edge

if.end350.if.end372_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end372

if.then356:                                       ; preds = %if.end350
  %conv358 = zext i32 %279 to i64
  %286 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %287, i64 %conv358)
  %cmp360.not = icmp eq i64 %287, %conv358
  br i1 %cmp360.not, label %if.end363, label %if.then356.brelse.exit866_crit_edge

if.then356.brelse.exit866_crit_edge:              ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.end363:                                        ; preds = %if.then356
  br i1 %tobool.not.i850, label %if.else.i857, label %if.end363.udf_file_entry_alloc_offset.exit863_crit_edge

if.end363.udf_file_entry_alloc_offset.exit863_crit_edge: ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit863

if.else.i857:                                     ; preds = %if.end363
  %288 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool4.not.i855 = icmp eq i32 %288, 0
  %289 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %i_lenEAttr, align 8
  br i1 %tobool4.not.i855, label %if.else6.i861, label %if.then5.i859

if.then5.i859:                                    ; preds = %if.else.i857
  call void @__sanitizer_cov_trace_pc() #10
  %add.i858 = add i32 %290, 216
  br label %udf_file_entry_alloc_offset.exit863

if.else6.i861:                                    ; preds = %if.else.i857
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i860 = add i32 %290, 176
  br label %udf_file_entry_alloc_offset.exit863

udf_file_entry_alloc_offset.exit863:              ; preds = %if.else6.i861, %if.then5.i859, %if.end363.udf_file_entry_alloc_offset.exit863_crit_edge
  %retval.0.i862 = phi i32 [ %add.i858, %if.then5.i859 ], [ %add8.i860, %if.else6.i861 ], [ 40, %if.end363.udf_file_entry_alloc_offset.exit863_crit_edge ]
  %sub366 = sub i32 %6, %retval.0.i862
  call void @__sanitizer_cov_trace_cmp4(i32 %279, i32 %sub366)
  %cmp368 = icmp ugt i32 %279, %sub366
  br i1 %cmp368, label %udf_file_entry_alloc_offset.exit863.brelse.exit866_crit_edge, label %udf_file_entry_alloc_offset.exit863.if.end372_crit_edge

udf_file_entry_alloc_offset.exit863.if.end372_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit863
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end372

udf_file_entry_alloc_offset.exit863.brelse.exit866_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit863
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.end372:                                        ; preds = %udf_file_entry_alloc_offset.exit863.if.end372_crit_edge, %if.end350.if.end372_crit_edge
  %291 = ptrtoint ptr %fileType to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %fileType, align 1
  %293 = zext i8 %292 to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %292, label %sw.default [
    i8 4, label %sw.bb
    i8 -7, label %if.end372.sw.bb379_crit_edge
    i8 5, label %if.end372.sw.bb379_crit_edge1153
    i8 0, label %if.end372.sw.bb379_crit_edge1154
    i8 -8, label %if.end372.sw.bb379_crit_edge1155
    i8 6, label %sw.bb396
    i8 7, label %sw.bb401
    i8 9, label %sw.bb406
    i8 10, label %sw.bb411
    i8 12, label %sw.bb416
    i8 -6, label %do.body422
    i8 -5, label %do.body439
    i8 -4, label %do.body456
  ]

if.end372.sw.bb379_crit_edge1155:                 ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb379

if.end372.sw.bb379_crit_edge1154:                 ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb379

if.end372.sw.bb379_crit_edge1153:                 ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb379

if.end372.sw.bb379_crit_edge:                     ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb379

sw.bb:                                            ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %294 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr @udf_dir_inode_operations, ptr %i_op, align 8
  %295 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr @udf_dir_operations, ptr %295, align 8
  %297 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %inode, align 8
  %299 = or i16 %298, 16384
  store i16 %299, ptr %inode, align 8
  call void @inc_nlink(ptr noundef %inode) #8
  br label %sw.epilog

sw.bb379:                                         ; preds = %if.end372.sw.bb379_crit_edge, %if.end372.sw.bb379_crit_edge1153, %if.end372.sw.bb379_crit_edge1154, %if.end372.sw.bb379_crit_edge1155
  %spec.select = select i1 %cmp354, ptr @udf_adinicb_aops, ptr @udf_aops
  %300 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %spec.select, ptr %300, align 8
  %i_op391 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %302 = ptrtoint ptr %i_op391 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr @udf_file_inode_operations, ptr %i_op391, align 8
  %303 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr @udf_file_operations, ptr %303, align 8
  %305 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %inode, align 8
  %307 = or i16 %306, -32768
  store i16 %307, ptr %inode, align 8
  br label %sw.epilog

sw.bb396:                                         ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %308 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %inode, align 8
  %310 = or i16 %309, 24576
  store i16 %310, ptr %inode, align 8
  br label %sw.epilog

sw.bb401:                                         ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %inode, align 8
  %313 = or i16 %312, 8192
  store i16 %313, ptr %inode, align 8
  br label %sw.epilog

sw.bb406:                                         ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %314 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %inode, align 8
  %316 = or i16 %315, 4096
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %316, i32 noundef 0) #8
  br label %sw.epilog

sw.bb411:                                         ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %317 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %inode, align 8
  %319 = or i16 %318, -16384
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %319, i32 noundef 0) #8
  br label %sw.epilog

sw.bb416:                                         ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %a_ops418 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46, i32 9
  %320 = ptrtoint ptr %a_ops418 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr @udf_symlink_aops, ptr %a_ops418, align 8
  %i_op419 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %321 = ptrtoint ptr %i_op419 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr @udf_symlink_inode_operations, ptr %i_op419, align 8
  call void @inode_nohighmem(ptr noundef %inode) #8
  %322 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 -24065, ptr %inode, align 8
  br label %sw.epilog

do.body422:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_read_inode.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_read_inode, %if.then434)) #8
          to label %sw.epilog [label %if.then434], !srcloc !83

if.then434:                                       ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_read_inode.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1587, ptr noundef nonnull @.str.19) #8
  br label %sw.epilog

do.body439:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_read_inode.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_read_inode, %if.then451)) #8
          to label %sw.epilog [label %if.then451], !srcloc !83

if.then451:                                       ; preds = %do.body439
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_read_inode.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, i32 noundef 1590, ptr noundef nonnull @.str.19) #8
  br label %sw.epilog

do.body456:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_read_inode.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_read_inode, %if.then468)) #8
          to label %sw.epilog [label %if.then468], !srcloc !83

if.then468:                                       ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_read_inode.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1593, ptr noundef nonnull @.str.19) #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #10
  %conv375 = zext i8 %292 to i32
  %323 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %i_sb, align 4
  %i_ino473 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %325 = ptrtoint ptr %i_ino473 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %i_ino473, align 8
  call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %324, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.34, i32 noundef %326, i32 noundef %conv375) #8
  br label %brelse.exit866

sw.epilog:                                        ; preds = %if.then468, %do.body456, %if.then451, %do.body439, %if.then434, %do.body422, %sw.bb416, %sw.bb411, %sw.bb406, %sw.bb401, %sw.bb396, %sw.bb379, %sw.bb
  %327 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %inode, align 8
  %329 = and i16 %328, -4096
  %330 = zext i16 %329 to i64
  call void @__sanitizer_cov_trace_switch(i64 %330, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %329, label %sw.epilog.brelse.exit866_crit_edge [
    i16 8192, label %sw.epilog.if.then488_crit_edge
    i16 24576, label %sw.epilog.if.then488_crit_edge1156
  ]

sw.epilog.if.then488_crit_edge1156:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then488

sw.epilog.if.then488_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then488

sw.epilog.brelse.exit866_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

if.then488:                                       ; preds = %sw.epilog.if.then488_crit_edge, %sw.epilog.if.then488_crit_edge1156
  %call489 = call ptr @udf_get_extendedattr(ptr noundef %inode, i32 noundef 12, i8 noundef zeroext 1) #8
  %tobool490.not = icmp eq ptr %call489, null
  br i1 %tobool490.not, label %if.then488.brelse.exit866_crit_edge, label %cleanup497.thread

if.then488.brelse.exit866_crit_edge:              ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit866

cleanup497.thread:                                ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #10
  %331 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %inode, align 8
  %majorDeviceIdent = getelementptr inbounds %struct.deviceSpec, ptr %call489, i32 0, i32 5
  %333 = ptrtoint ptr %majorDeviceIdent to i32
  call void @__asan_loadN_noabort(i32 %333, i32 4)
  %334 = load i32, ptr %majorDeviceIdent, align 1
  %335 = call i32 @llvm.bswap.i32(i32 %334)
  %shl493 = shl i32 %335, 20
  %minorDeviceIdent = getelementptr inbounds %struct.deviceSpec, ptr %call489, i32 0, i32 6
  %336 = ptrtoint ptr %minorDeviceIdent to i32
  call void @__asan_loadN_noabort(i32 %336, i32 4)
  %337 = load i32, ptr %minorDeviceIdent, align 1
  %338 = call i32 @llvm.bswap.i32(i32 %337)
  %or494 = or i32 %shl493, %338
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %332, i32 noundef %or494) #8
  br label %brelse.exit866

brelse.exit866:                                   ; preds = %cleanup497.thread, %if.then488.brelse.exit866_crit_edge, %sw.epilog.brelse.exit866_crit_edge, %sw.default, %udf_file_entry_alloc_offset.exit863.brelse.exit866_crit_edge, %if.then356.brelse.exit866_crit_edge, %udf_file_entry_alloc_offset.exit.brelse.exit866_crit_edge, %lor.lhs.false339.brelse.exit866_crit_edge, %if.end333.brelse.exit866_crit_edge, %if.end252.brelse.exit866_crit_edge, %if.then183.brelse.exit866_crit_edge, %if.then159.brelse.exit866_crit_edge, %if.then140.brelse.exit866_crit_edge, %if.end113.brelse.exit866_crit_edge, %if.then95, %cleanup87.thread874, %if.then55
  %ret.0 = phi i32 [ -5, %if.then55 ], [ -12, %if.then140.brelse.exit866_crit_edge ], [ -5, %if.end333.brelse.exit866_crit_edge ], [ -5, %lor.lhs.false339.brelse.exit866_crit_edge ], [ -5, %udf_file_entry_alloc_offset.exit.brelse.exit866_crit_edge ], [ -5, %if.then356.brelse.exit866_crit_edge ], [ -5, %udf_file_entry_alloc_offset.exit863.brelse.exit866_crit_edge ], [ -5, %sw.default ], [ -12, %if.then159.brelse.exit866_crit_edge ], [ -12, %if.then183.brelse.exit866_crit_edge ], [ -5, %if.then95 ], [ -5, %if.end113.brelse.exit866_crit_edge ], [ -116, %if.end252.brelse.exit866_crit_edge ], [ -5, %cleanup87.thread874 ], [ -5, %if.then488.brelse.exit866_crit_edge ], [ 0, %cleanup497.thread ], [ 0, %sw.epilog.brelse.exit866_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call40) #8
  br label %cleanup501

cleanup501:                                       ; preds = %brelse.exit866, %if.end198, %if.then42, %if.then31, %do.body19, %if.then9, %do.body
  %retval.0 = phi i32 [ %ret.0, %brelse.exit866 ], [ 0, %if.end198 ], [ -5, %if.then42 ], [ -5, %if.then9 ], [ -5, %if.then31 ], [ -5, %do.body ], [ -5, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ident) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %block, ptr noundef %epos) local_unnamed_addr #0 align 64 {
entry:
  %nepos = alloca %struct.extent_position, align 4
  %cp_loc = alloca %struct.kernel_lb_addr, align 8
  %cp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nepos) #8
  %2 = call ptr @memset(ptr %nepos, i32 255, i32 16)
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %3 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 536870912
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  %bf.lshr4.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask)
  %cmp5 = icmp eq i32 %bf.lshr4.mask, 536870912
  br i1 %cmp5, label %if.else.if.end8_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %adsize.0 = phi i32 [ 8, %entry.if.end8_crit_edge ], [ 16, %if.else.if.end8_crit_edge ]
  %block9 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %partitionReferenceNum = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %partitionReferenceNum, align 4
  %call.i = tail call i32 @udf_get_pblock(ptr noundef %1, i32 noundef %block, i16 noundef zeroext %5, i32 noundef 0) #8
  %call12 = tail call ptr @udf_tgetblk(ptr noundef %1, i32 noundef %call.i) #8
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call12, i32 noundef 4) #8
  %6 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call12, align 4
  %and.i.i.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end14.if.then.i92_crit_edge

if.end14.if.then.i92_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i92

trylock_buffer.exit.i:                            ; preds = %if.end14
  tail call void @llvm.prefetch.p0(ptr nonnull %call12, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call12, ptr nonnull %call12, i32 4, ptr nonnull elementtype(i32) %call12) #8, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %9 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i92_crit_edge

trylock_buffer.exit.i.if.then.i92_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i92

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i92:                                      ; preds = %trylock_buffer.exit.i.if.then.i92_crit_edge, %if.end14.if.then.i92_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call12) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i92, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call12, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  %14 = call ptr @memset(ptr %11, i32 0, i32 %13)
  %15 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call12, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call12) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call12) #8
  tail call void @mark_buffer_dirty_inode(ptr noundef nonnull %call12, ptr noundef %inode) #8
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %s_flags.i, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %if.then18, label %set_buffer_uptodate.exit.if.end21_crit_edge

set_buffer_uptodate.exit.if.end21_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %block9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %block9, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %previousAllocExtLocation = getelementptr inbounds %struct.allocExtDesc, ptr %18, i32 0, i32 1
  %27 = ptrtoint ptr %previousAllocExtLocation to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %previousAllocExtLocation, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %set_buffer_uptodate.exit.if.end21_crit_edge
  %lengthAllocDescs = getelementptr inbounds %struct.allocExtDesc, ptr %18, i32 0, i32 2
  %28 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %lengthAllocDescs, align 1
  %29 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %32)
  %cmp23 = icmp ugt i16 %32, 511
  %. = select i1 %cmp23, i16 3, i16 2
  %33 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data, align 4
  tail call void @udf_new_tag(ptr noundef %34, i16 noundef zeroext 258, i16 noundef zeroext %., i16 noundef zeroext 1, i32 noundef %block, i32 noundef 16) #8
  %block30 = getelementptr inbounds %struct.extent_position, ptr %nepos, i32 0, i32 2
  %neloc.sroa.6.0.insert.ext = zext i16 %5 to i64
  %neloc.sroa.6.0.insert.shift = shl nuw nsw i64 %neloc.sroa.6.0.insert.ext, 16
  %neloc.sroa.0.0.insert.ext = zext i32 %block to i64
  %neloc.sroa.0.0.insert.shift = shl nuw i64 %neloc.sroa.0.0.insert.ext, 32
  %neloc.sroa.6.0.insert.insert = or i64 %neloc.sroa.6.0.insert.shift, %neloc.sroa.0.0.insert.shift
  %neloc.sroa.0.0.insert.insert = or i64 %neloc.sroa.6.0.insert.insert, 65535
  %35 = ptrtoint ptr %block30 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %neloc.sroa.0.0.insert.insert, ptr %block30, align 4
  %offset = getelementptr inbounds %struct.extent_position, ptr %nepos, i32 0, i32 1
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 24, ptr %offset, align 4
  %37 = ptrtoint ptr %nepos to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call12, ptr %nepos, align 4
  %offset32 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %38 = ptrtoint ptr %offset32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset32, align 4
  %add = add i32 %39, %adsize.0
  %40 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %41)
  %cmp34 = icmp ugt i32 %add, %41
  br i1 %cmp34, label %if.then36, label %if.else44

if.then36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cp_loc) #8
  %42 = ptrtoint ptr %cp_loc to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %cp_loc, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp_len) #8
  %43 = ptrtoint ptr %cp_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %cp_len, align 4, !annotation !81
  %sub = sub i32 %39, %adsize.0
  %44 = ptrtoint ptr %offset32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub, ptr %offset32, align 4
  %call38 = call signext i8 @udf_current_aext(ptr noundef %inode, ptr noundef %epos, ptr noundef nonnull %cp_loc, ptr noundef nonnull %cp_len, i32 noundef 0)
  %conv3990 = zext i8 %call38 to i32
  %shl = shl i32 %conv3990, 30
  %45 = ptrtoint ptr %cp_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cp_len, align 4
  %or = or i32 %shl, %46
  %call40 = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef nonnull %nepos, ptr noundef nonnull %cp_loc, i32 noundef %or, i32 noundef 1)
  %47 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize, align 16
  %or43 = or i32 %48, -1073741824
  call void @udf_write_aext(ptr noundef %inode, ptr noundef %epos, ptr noundef %block30, i32 noundef %or43, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp_len) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cp_loc) #8
  br label %if.end49

if.else44:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %or47 = or i32 %41, -1073741824
  %call48 = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef %epos, ptr noundef %block30, i32 noundef %or47, i32 noundef 0)
  br label %if.end49

if.end49:                                         ; preds = %if.else44, %if.then36
  %49 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %epos, align 4
  %tobool.not.i94 = icmp eq ptr %50, null
  br i1 %tobool.not.i94, label %if.end49.brelse.exit_crit_edge, label %if.then.i95

if.end49.brelse.exit_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i95:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %50) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i95, %if.end49.brelse.exit_crit_edge
  %51 = call ptr @memcpy(ptr %epos, ptr %nepos, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %brelse.exit ], [ -5, %if.else.cleanup_crit_edge ], [ -5, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nepos) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_new_tag(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @udf_current_aext(ptr nocapture noundef readonly %inode, ptr noundef %epos, ptr nocapture noundef writeonly %eloc, ptr nocapture noundef writeonly %elen, i32 noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epos, align 4
  %tobool.not = icmp eq ptr %1, null
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  %i_use.i = getelementptr i8, ptr %inode, i32 -192
  %4 = ptrtoint ptr %i_use.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %i_use.i, align 8
  %5 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.udf_file_entry_alloc_offset.exit_crit_edge

if.then2.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.then2
  %6 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %inode, i32 -224
  %7 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %8, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i = add i32 %8, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.then2.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i85 = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.then2.udf_file_entry_alloc_offset.exit_crit_edge ]
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i85, ptr %offset, align 4
  br label %if.end

if.end:                                           ; preds = %udf_file_entry_alloc_offset.exit, %if.then.if.end_crit_edge
  %i_data = getelementptr i8, ptr %inode, i32 -188
  %10 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_data, align 4
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %i_use.i86 = getelementptr i8, ptr %inode, i32 -192
  %14 = ptrtoint ptr %i_use.i86 to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load.i87 = load i32, ptr %i_use.i86, align 8
  %15 = and i32 %bf.load.i87, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i88 = icmp eq i32 %15, 0
  br i1 %tobool.not.i88, label %if.else.i91, label %udf_file_entry_alloc_offset.exit97

if.else.i91:                                      ; preds = %if.end
  %16 = and i32 %bf.load.i87, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i89 = icmp eq i32 %16, 0
  %i_lenEAttr7.i90 = getelementptr i8, ptr %inode, i32 -224
  %17 = ptrtoint ptr %i_lenEAttr7.i90 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_lenEAttr7.i90, align 8
  %retval.0.i96.ph.v.neg = select i1 %tobool4.not.i89, i32 -176, i32 -216
  %retval.0.i96.ph.neg = sub i32 %retval.0.i96.ph.v.neg, %18
  %add.ptr7112 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i96.ph.neg
  %add.ptr8114 = getelementptr i8, ptr %add.ptr7112, i32 %18
  br i1 %tobool4.not.i89, label %if.else6.i107, label %if.then5.i105

udf_file_entry_alloc_offset.exit97:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 -40
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %19 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr8 = getelementptr i8, ptr %add.ptr7, i32 %20
  br label %udf_file_entry_alloc_offset.exit109

if.then5.i105:                                    ; preds = %if.else.i91
  call void @__sanitizer_cov_trace_pc() #10
  %add.i104 = add i32 %18, 216
  br label %udf_file_entry_alloc_offset.exit109

if.else6.i107:                                    ; preds = %if.else.i91
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i106 = add i32 %18, 176
  br label %udf_file_entry_alloc_offset.exit109

udf_file_entry_alloc_offset.exit109:              ; preds = %if.else6.i107, %if.then5.i105, %udf_file_entry_alloc_offset.exit97
  %add.ptr8115 = phi ptr [ %add.ptr8114, %if.then5.i105 ], [ %add.ptr8114, %if.else6.i107 ], [ %add.ptr8, %udf_file_entry_alloc_offset.exit97 ]
  %retval.0.i108 = phi i32 [ %add.i104, %if.then5.i105 ], [ %add8.i106, %if.else6.i107 ], [ 40, %udf_file_entry_alloc_offset.exit97 ]
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %21 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_lenAlloc, align 4
  %add = add i32 %22, %retval.0.i108
  br label %if.end21

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then12, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 24, ptr %offset, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else.if.end14_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data, align 4
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %add.ptr17 = getelementptr i8, ptr %25, i32 %27
  %lengthAllocDescs = getelementptr inbounds %struct.allocExtDesc, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %lengthAllocDescs, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %add20 = add i32 %30, 24
  br label %if.end21

if.end21:                                         ; preds = %if.end14, %udf_file_entry_alloc_offset.exit109
  %ptr.0 = phi ptr [ %add.ptr17, %if.end14 ], [ %add.ptr8115, %udf_file_entry_alloc_offset.exit109 ]
  %alen.0 = phi i32 [ %add20, %if.end14 ], [ %add, %udf_file_entry_alloc_offset.exit109 ]
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %31 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %32 = zext i32 %bf.lshr to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %bf.lshr, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
  ]

sw.bb:                                            ; preds = %if.end21
  %offset22 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %call23 = tail call ptr @udf_get_fileshortad(ptr noundef %ptr.0, i32 noundef %alen.0, ptr noundef %offset22, i32 noundef %inc) #8
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %sw.bb.cleanup_crit_edge, label %if.end26

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call23 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %call23, align 1
  %extPosition = getelementptr inbounds %struct.short_ad, ptr %call23, i32 0, i32 1
  %35 = ptrtoint ptr %extPosition to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %extPosition, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %eloc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %eloc, align 4
  %partitionReferenceNum = getelementptr i8, ptr %inode, i32 -236
  %39 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %partitionReferenceNum, align 4
  %partitionReferenceNum27 = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %41 = ptrtoint ptr %partitionReferenceNum27 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %partitionReferenceNum27, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end21
  %offset30 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %call31 = tail call ptr @udf_get_filelongad(ptr noundef %ptr.0, i32 noundef %alen.0, ptr noundef %offset30, i32 noundef %inc) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %sw.bb29.cleanup_crit_edge, label %if.end34

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call31 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %call31, align 1
  %extLocation = getelementptr inbounds %struct.long_ad, ptr %call31, i32 0, i32 1
  %44 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.long_ad, ptr %call31, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #8
  %47 = tail call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #8
  %tmp.sroa.5.0.insert.ext = zext i16 %47 to i64
  %tmp.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp.sroa.5.0.insert.ext, 16
  %tmp.sroa.0.0.insert.ext = zext i32 %46 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.5.0.insert.insert = or i64 %tmp.sroa.5.0.insert.shift, %tmp.sroa.0.0.insert.shift
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.5.0.insert.insert, 65535
  %48 = ptrtoint ptr %eloc to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %eloc, align 4
  br label %sw.epilog

do.body:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_current_aext.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_current_aext, %if.then45)) #8
          to label %cleanup [label %if.then45], !srcloc !83

if.then45:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load47 = load i32, ptr %i_alloc_type, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 29
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_current_aext.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 2219, ptr noundef nonnull @.str.6, i32 noundef %bf.lshr48) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end34, %if.end26
  %call31.sink = phi ptr [ %call31, %if.end34 ], [ %call23, %if.end26 ]
  %etype.0.in.in = phi i32 [ %43, %if.end34 ], [ %34, %if.end26 ]
  %50 = ptrtoint ptr %call31.sink to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %call31.sink, align 1
  %52 = and i32 %51, -193
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %etype.0.in = trunc i32 %etype.0.in.in to i8
  %etype.0 = lshr i8 %etype.0.in, 6
  %54 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %elen, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then45, %do.body, %sw.bb29.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i8 [ %etype.0, %sw.epilog ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb29.cleanup_crit_edge ], [ -1, %if.then45 ], [ -1, %do.body ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__udf_add_aext(ptr noundef %inode, ptr nocapture noundef %epos, ptr nocapture noundef readonly %eloc, i32 noundef %elen, i32 noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %0 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 536870912
  br i1 %cmp, label %entry.if.end7_crit_edge, label %if.else

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %entry
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp4 = icmp eq i32 %bf.lshr.mask, 536870912
  br i1 %cmp4, label %if.else.if.end7_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %entry.if.end7_crit_edge
  %adsize.0 = phi i32 [ 8, %entry.if.end7_crit_edge ], [ 16, %if.else.if.end7_crit_edge ]
  %1 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %epos, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then8, label %if.else32

if.then8:                                         ; preds = %if.end7
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %3 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_lenAlloc, align 4
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %7 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i = load i32, ptr %i_alloc_type, align 8
  %8 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.udf_file_entry_alloc_offset.exit_crit_edge

if.then8.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.then8
  %9 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %inode, i32 -224
  %10 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %11, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i = add i32 %11, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.then8.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.then8.udf_file_entry_alloc_offset.exit_crit_edge ]
  %sub = sub i32 %6, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub)
  %cmp10.not = icmp eq i32 %4, %sub
  br i1 %cmp10.not, label %udf_file_entry_alloc_offset.exit.if.end99_crit_edge, label %udf_file_entry_alloc_offset.exit.if.end99.sink.split_crit_edge, !prof !86

udf_file_entry_alloc_offset.exit.if.end99.sink.split_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.sink.split

udf_file_entry_alloc_offset.exit.if.end99_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.else32:                                        ; preds = %if.end7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %lengthAllocDescs = getelementptr inbounds %struct.allocExtDesc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %lengthAllocDescs, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %offset35 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %17 = ptrtoint ptr %offset35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset35, align 4
  %sub36 = add i32 %18, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub36)
  %cmp37.not = icmp eq i32 %16, %sub36
  br i1 %cmp37.not, label %if.else32.if.end59_crit_edge, label %do.end53, !prof !86

if.else32.if.end59_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end53:                                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2023, i32 noundef 9, ptr noundef null) #8
  br label %if.end59

if.end59:                                         ; preds = %do.end53, %if.else32.if.end59_crit_edge
  %19 = ptrtoint ptr %offset35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset35, align 4
  %add = add i32 %20, %adsize.0
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp69 = icmp ugt i32 %add, %24
  br i1 %cmp69, label %if.end59.if.end99.sink.split_crit_edge, label %if.end59.if.end99_crit_edge, !prof !88

if.end59.if.end99_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.end59.if.end99.sink.split_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99.sink.split

if.end99.sink.split:                              ; preds = %if.end59.if.end99.sink.split_crit_edge, %udf_file_entry_alloc_offset.exit.if.end99.sink.split_crit_edge
  %.sink = phi i32 [ 2019, %udf_file_entry_alloc_offset.exit.if.end99.sink.split_crit_edge ], [ 2024, %if.end59.if.end99.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %if.end99

if.end99:                                         ; preds = %if.end99.sink.split, %if.end59.if.end99_crit_edge, %udf_file_entry_alloc_offset.exit.if.end99_crit_edge
  tail call void @udf_write_aext(ptr noundef %inode, ptr noundef %epos, ptr noundef %eloc, i32 noundef %elen, i32 noundef %inc)
  %25 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %epos, align 4
  %tobool101.not = icmp eq ptr %26, null
  br i1 %tobool101.not, label %if.then102, label %if.else105

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %i_lenAlloc103 = getelementptr i8, ptr %inode, i32 -220
  %27 = ptrtoint ptr %i_lenAlloc103 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %i_lenAlloc103, align 4
  %add104 = add i32 %28, %adsize.0
  store i32 %add104, ptr %i_lenAlloc103, align 4
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %cleanup

if.else105:                                       ; preds = %if.end99
  %b_data107 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 5
  %29 = ptrtoint ptr %b_data107 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data107, align 4
  %lengthAllocDescs108 = getelementptr inbounds %struct.allocExtDesc, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %lengthAllocDescs108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lengthAllocDescs108, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %add.i160 = add i32 %33, %adsize.0
  %34 = tail call i32 @llvm.bswap.i32(i32 %add.i160) #8
  %35 = ptrtoint ptr %lengthAllocDescs108 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %lengthAllocDescs108, align 4
  %i_sb109 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb109 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb109, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %s_flags.i, align 4
  %42 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool111.not = icmp eq i32 %42, 0
  br i1 %tobool111.not, label %if.else105.if.then116_crit_edge, label %lor.lhs.false

if.else105.if.then116_crit_edge:                  ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then116

lor.lhs.false:                                    ; preds = %if.else105
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %39, i32 0, i32 16
  %43 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %44)
  %cmp114 = icmp ugt i16 %44, 512
  br i1 %cmp114, label %lor.lhs.false.if.then116_crit_edge, label %if.else122

lor.lhs.false.if.then116_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false.if.then116_crit_edge, %if.else105.if.then116_crit_edge
  %45 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %epos, align 4
  %b_data118 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %b_data118 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data118, align 4
  %offset119 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %49 = ptrtoint ptr %offset119 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool120.not = icmp eq i32 %inc, 0
  %spec.select = select i1 %tobool120.not, i32 %adsize.0, i32 0
  %add121 = add i32 %50, %spec.select
  tail call void @udf_update_tag(ptr noundef %48, i32 noundef %add121) #8
  br label %if.end125

if.else122:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %epos, align 4
  %b_data124 = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %b_data124 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data124, align 4
  tail call void @udf_update_tag(ptr noundef %54, i32 noundef 24) #8
  br label %if.end125

if.end125:                                        ; preds = %if.else122, %if.then116
  %55 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %epos, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %56, ptr noundef %inode) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.then102, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.else.cleanup_crit_edge ], [ 0, %if.end125 ], [ 0, %if.then102 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_write_aext(ptr noundef %inode, ptr nocapture noundef %epos, ptr nocapture noundef readonly %eloc, i32 noundef %elen, i32 noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epos, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %i_data = getelementptr i8, ptr %inode, i32 -188
  %2 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_data, align 4
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %i_use.i = getelementptr i8, ptr %inode, i32 -192
  %6 = ptrtoint ptr %i_use.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %i_use.i, align 8
  %7 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.udf_file_entry_alloc_offset.exit_crit_edge

if.then.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.then
  %8 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %inode, i32 -224
  %9 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.neg = sub i32 -216, %10
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.neg = sub i32 -176, %10
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.then.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i.neg = phi i32 [ %add.i.neg, %if.then5.i ], [ %add8.i.neg, %if.else6.i ], [ -40, %if.then.udf_file_entry_alloc_offset.exit_crit_edge ]
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i.neg
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %11 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %offset5 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %15 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset5, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 %16
  br label %if.end

if.end:                                           ; preds = %if.else, %udf_file_entry_alloc_offset.exit
  %ptr.0 = phi ptr [ %add.ptr6, %if.else ], [ %add.ptr3, %udf_file_entry_alloc_offset.exit ]
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %17 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr = lshr i32 %bf.load, 29
  %18 = zext i32 %bf.lshr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %bf.lshr, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %elen)
  %20 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %ptr.0, align 1
  %21 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eloc, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %extPosition = getelementptr inbounds %struct.short_ad, ptr %ptr.0, i32 0, i32 1
  %24 = ptrtoint ptr %extPosition to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %extPosition, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %elen)
  %26 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %ptr.0, align 1
  %extLocation = getelementptr inbounds %struct.long_ad, ptr %ptr.0, i32 0, i32 1
  %27 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack = load i32, ptr %eloc, align 4
  %.elt56 = getelementptr inbounds [2 x i32], ptr %eloc, i32 0, i32 1
  %28 = ptrtoint ptr %.elt56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack57 = load i32, ptr %.elt56, align 4
  %in.sroa.2.4.extract.shift.i = lshr i32 %.unpack57, 16
  %in.sroa.2.4.extract.trunc.i = trunc i32 %in.sroa.2.4.extract.shift.i to i16
  %29 = tail call i32 @llvm.bswap.i32(i32 %.unpack) #8
  %30 = tail call i16 @llvm.bswap.i16(i16 %in.sroa.2.4.extract.trunc.i) #8
  %31 = ptrtoint ptr %extLocation to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %29, ptr %extLocation, align 1
  %tmp.sroa.4.0.extLocation.sroa_idx = getelementptr inbounds %struct.long_ad, ptr %ptr.0, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %tmp.sroa.4.0.extLocation.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %30, ptr %tmp.sroa.4.0.extLocation.sroa_idx, align 1
  %impUse = getelementptr inbounds %struct.long_ad, ptr %ptr.0, i32 0, i32 2
  %33 = call ptr @memset(ptr %impUse, i32 0, i32 6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %adsize.0 = phi i32 [ 16, %sw.bb7 ], [ 8, %sw.bb ]
  %34 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %epos, align 4
  %tobool10.not = icmp eq ptr %35, null
  br i1 %tobool10.not, label %if.else24, label %if.then11

if.then11:                                        ; preds = %sw.epilog
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %36 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 33
  %38 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %s_flags.i, align 4
  %42 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool13.not = icmp eq i32 %42, 0
  br i1 %tobool13.not, label %if.then11.if.then17_crit_edge, label %lor.lhs.false

if.then11.if.then17_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.then11
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %39, i32 0, i32 16
  %43 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %44)
  %cmp = icmp ugt i16 %44, 512
  br i1 %cmp, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.then11.if.then17_crit_edge
  %b_data19 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %45 = ptrtoint ptr %b_data19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data19, align 4
  %lengthAllocDescs = getelementptr inbounds %struct.allocExtDesc, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %lengthAllocDescs, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %add = add i32 %49, 24
  tail call void @udf_update_tag(ptr noundef %46, i32 noundef %add) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %lor.lhs.false.if.end22_crit_edge
  %50 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %epos, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %51, ptr noundef %inode) #8
  br label %if.end25

if.else24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool26.not = icmp eq i32 %inc, 0
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %offset28 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %52 = ptrtoint ptr %offset28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset28, align 4
  %add29 = add i32 %53, %adsize.0
  store i32 %add29, ptr %offset28, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_update_tag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @udf_next_aext(ptr nocapture noundef readonly %inode, ptr noundef %epos, ptr nocapture noundef %eloc, ptr nocapture noundef writeonly %elen, i32 noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %block5 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %i_sb6 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2, i32 1
  br label %while.cond

while.cond:                                       ; preds = %brelse.exit.while.cond_crit_edge, %entry
  %indirections.0 = phi i32 [ 0, %entry ], [ %inc2, %brelse.exit.while.cond_crit_edge ]
  %call = tail call signext i8 @udf_current_aext(ptr noundef %inode, ptr noundef %epos, ptr noundef %eloc, ptr noundef %elen, i32 noundef %inc)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call)
  %cmp = icmp eq i8 %call, 3
  br i1 %cmp, label %while.body, label %while.cond.cleanup21_crit_edge

while.cond.cleanup21_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

while.body:                                       ; preds = %while.cond
  %inc2 = add nuw nsw i32 %indirections.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %indirections.0)
  %exitcond = icmp eq i32 %indirections.0, 16
  br i1 %exitcond, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %i_sb6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb6, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %1, ptr noundef nonnull @__func__.udf_next_aext, ptr noundef nonnull @.str.2, i32 noundef %3) #8
  br label %cleanup21

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %eloc to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %eloc, align 4
  %6 = ptrtoint ptr %block5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %block5, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 24, ptr %offset, align 4
  %8 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %epos, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %9) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  %10 = ptrtoint ptr %i_sb6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb6, align 4
  %12 = ptrtoint ptr %block5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block5, align 4
  %14 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = tail call i32 @udf_get_pblock(ptr noundef %11, i32 noundef %13, i16 noundef zeroext %15, i32 noundef 0) #8
  %16 = ptrtoint ptr %i_sb6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb6, align 4
  %call10 = tail call ptr @udf_tread(ptr noundef %17, i32 noundef %call.i) #8
  %18 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %epos, align 4
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %do.body, label %brelse.exit.while.cond_crit_edge

brelse.exit.while.cond_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.body:                                          ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_next_aext.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_next_aext, %if.then18)) #8
          to label %cleanup21 [label %if.then18], !srcloc !83

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_next_aext.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 2164, ptr noundef nonnull @__func__.udf_next_aext, i32 noundef %call.i) #8
  br label %cleanup21

cleanup21:                                        ; preds = %if.then18, %do.body, %if.then, %while.cond.cleanup21_crit_edge
  %retval.2 = phi i8 [ -1, %if.then ], [ -1, %if.then18 ], [ -1, %do.body ], [ %call, %while.cond.cleanup21_crit_edge ]
  ret i8 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tread(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_get_fileshortad(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_get_filelongad(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @udf_delete_aext(ptr noundef %inode, [4 x i32] %epos.coerce) local_unnamed_addr #0 align 64 {
entry:
  %epos = alloca %struct.extent_position, align 4
  %oepos = alloca %struct.extent_position, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %epos.coerce.fca.0.extract = extractvalue [4 x i32] %epos.coerce, 0
  %0 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %epos.coerce.fca.0.extract, ptr %epos, align 4
  %epos.coerce.fca.1.extract = extractvalue [4 x i32] %epos.coerce, 1
  %epos.coerce.fca.1.gep = getelementptr inbounds [4 x i32], ptr %epos, i32 0, i32 1
  %1 = ptrtoint ptr %epos.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %epos.coerce.fca.1.extract, ptr %epos.coerce.fca.1.gep, align 4
  %epos.coerce.fca.2.extract = extractvalue [4 x i32] %epos.coerce, 2
  %epos.coerce.fca.2.gep = getelementptr inbounds [4 x i32], ptr %epos, i32 0, i32 2
  %2 = ptrtoint ptr %epos.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %epos.coerce.fca.2.extract, ptr %epos.coerce.fca.2.gep, align 4
  %epos.coerce.fca.3.extract = extractvalue [4 x i32] %epos.coerce, 3
  %epos.coerce.fca.3.gep = getelementptr inbounds [4 x i32], ptr %epos, i32 0, i32 3
  %3 = ptrtoint ptr %epos.coerce.fca.3.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %epos.coerce.fca.3.extract, ptr %epos.coerce.fca.3.gep, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oepos) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #8
  %4 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %eloc, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #8
  %5 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %elen, align 4, !annotation !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %epos.coerce.fca.0.extract)
  %tobool.not = icmp eq i32 %epos.coerce.fca.0.extract, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = inttoptr i32 %epos.coerce.fca.0.extract to ptr
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !100
  %8 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %epos, align 4
  %b_count.i139 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 11
  %call.i.i.i140 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i139, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i139, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i139, ptr %b_count.i139, i32 1, ptr elementtype(i32) %b_count.i139) #8, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %11 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp = icmp ult i32 %bf.load, 536870912
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp7 = icmp eq i32 %bf.lshr.mask, 536870912
  %. = select i1 %cmp7, i32 16, i32 0
  %adsize.0 = select i1 %cmp, i32 8, i32 %.
  %12 = call ptr @memcpy(ptr %oepos, ptr %epos, i32 16)
  %call12 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call12)
  %cmp13 = icmp eq i8 %call12, -1
  br i1 %cmp13, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %call17155 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call17155)
  %cmp19.not156 = icmp eq i8 %call17155, -1
  br i1 %cmp19.not156, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %block = getelementptr inbounds %struct.extent_position, ptr %oepos, i32 0, i32 2
  %offset32 = getelementptr inbounds %struct.extent_position, ptr %oepos, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %while.body.lr.ph
  %call17157 = phi i8 [ %call17155, %while.body.lr.ph ], [ %call17, %if.end33.while.body_crit_edge ]
  %conv18138 = zext i8 %call17157 to i32
  %shl = shl i32 %conv18138, 30
  %13 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %elen, align 4
  %or = or i32 %14, %shl
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %oepos, ptr noundef nonnull %eloc, i32 noundef %or, i32 noundef 1)
  %15 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %oepos, align 4
  %17 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %epos, align 4
  %cmp24.not = icmp eq ptr %16, %18
  br i1 %cmp24.not, label %while.body.if.end33_crit_edge, label %if.then26

while.body.if.end33_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then26:                                        ; preds = %while.body
  %19 = ptrtoint ptr %epos.coerce.fca.2.gep to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %epos.coerce.fca.2.gep, align 4
  %21 = ptrtoint ptr %block to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %block, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then26.brelse.exit_crit_edge, label %if.then.i

if.then26.brelse.exit_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %16) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then26.brelse.exit_crit_edge
  %22 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %epos, align 4
  %b_count.i141 = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 11
  %call.i.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i141, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i141, i32 1, i32 3, i32 1) #8
  %24 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i141, ptr %b_count.i141, i32 1, ptr elementtype(i32) %b_count.i141) #8, !srcloc !100
  %25 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %epos, align 4
  %27 = ptrtoint ptr %oepos to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %oepos, align 4
  %28 = ptrtoint ptr %epos.coerce.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %epos.coerce.fca.1.gep, align 4
  %sub = sub i32 %29, %adsize.0
  %30 = ptrtoint ptr %offset32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %offset32, align 4
  br label %if.end33

if.end33:                                         ; preds = %brelse.exit, %while.body.if.end33_crit_edge
  %call17 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1)
  %cmp19.not = icmp eq i8 %call17, -1
  br i1 %cmp19.not, label %if.end33.while.end_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end33.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %31 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %eloc, align 8
  %32 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %elen, align 4
  %33 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %epos, align 4
  %35 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oepos, align 4
  %cmp36.not = icmp eq ptr %34, %36
  br i1 %cmp36.not, label %if.else68, label %if.then38

if.then38:                                        ; preds = %while.end
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb, align 4
  call void @udf_free_blocks(ptr noundef %38, ptr noundef %inode, ptr noundef %epos.coerce.fca.2.gep, i32 noundef 0, i32 noundef 1) #8
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %oepos, ptr noundef nonnull %eloc, i32 noundef 0, i32 noundef 1)
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %oepos, ptr noundef nonnull %eloc, i32 noundef 0, i32 noundef 1)
  %39 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %oepos, align 4
  %tobool41.not = icmp eq ptr %40, null
  br i1 %tobool41.not, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  %mul.neg = mul nsw i32 %adsize.0, -2
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %41 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_lenAlloc, align 4
  %sub43 = add i32 %42, %mul.neg
  store i32 %sub43, ptr %i_lenAlloc, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %if.end100

if.else44:                                        ; preds = %if.then38
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data, align 4
  %lengthAllocDescs = getelementptr inbounds %struct.allocExtDesc, ptr %44, i32 0, i32 2
  %mul46 = shl nuw nsw i32 %adsize.0, 1
  %45 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lengthAllocDescs, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46) #8
  %add.i = sub i32 %47, %mul46
  %48 = call i32 @llvm.bswap.i32(i32 %add.i) #8
  %49 = ptrtoint ptr %lengthAllocDescs to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %lengthAllocDescs, align 4
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %52 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %s_flags.i, align 4
  %56 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool50.not = icmp eq i32 %56, 0
  br i1 %tobool50.not, label %if.else44.if.then56_crit_edge, label %lor.lhs.false

if.else44.if.then56_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.else44
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %53, i32 0, i32 16
  %57 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %58)
  %cmp54 = icmp ugt i16 %58, 512
  br i1 %cmp54, label %lor.lhs.false.if.then56_crit_edge, label %if.else62

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false.if.then56_crit_edge, %if.else44.if.then56_crit_edge
  %59 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_data, align 4
  %offset59 = getelementptr inbounds %struct.extent_position, ptr %oepos, i32 0, i32 1
  %61 = ptrtoint ptr %offset59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset59, align 4
  %sub61 = sub i32 %62, %mul46
  call void @udf_update_tag(ptr noundef %60, i32 noundef %sub61) #8
  br label %if.end65

if.else62:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_data, align 4
  call void @udf_update_tag(ptr noundef %64, i32 noundef 24) #8
  br label %if.end65

if.end65:                                         ; preds = %if.else62, %if.then56
  %65 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %oepos, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %66, ptr noundef %inode) #8
  br label %if.end100

if.else68:                                        ; preds = %while.end
  call void @udf_write_aext(ptr noundef %inode, ptr noundef nonnull %oepos, ptr noundef nonnull %eloc, i32 noundef 0, i32 noundef 1)
  %67 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %oepos, align 4
  %tobool70.not = icmp eq ptr %68, null
  br i1 %tobool70.not, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  %i_lenAlloc72 = getelementptr i8, ptr %inode, i32 -220
  %69 = ptrtoint ptr %i_lenAlloc72 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_lenAlloc72, align 4
  %sub73 = sub i32 %70, %adsize.0
  store i32 %sub73, ptr %i_lenAlloc72, align 4
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %if.end100

if.else74:                                        ; preds = %if.else68
  %b_data76 = getelementptr inbounds %struct.buffer_head, ptr %68, i32 0, i32 5
  %71 = ptrtoint ptr %b_data76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_data76, align 4
  %lengthAllocDescs77 = getelementptr inbounds %struct.allocExtDesc, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %lengthAllocDescs77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lengthAllocDescs77, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #8
  %add.i143 = sub i32 %75, %adsize.0
  %76 = call i32 @llvm.bswap.i32(i32 %add.i143) #8
  %77 = ptrtoint ptr %lengthAllocDescs77 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %lengthAllocDescs77, align 4
  %i_sb79 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %78 = ptrtoint ptr %i_sb79 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_sb79, align 4
  %s_fs_info.i.i144 = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %s_fs_info.i.i144 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i.i144, align 16
  %s_flags.i145 = getelementptr inbounds %struct.udf_sb_info, ptr %81, i32 0, i32 17
  %82 = ptrtoint ptr %s_flags.i145 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %s_flags.i145, align 4
  %84 = and i32 %83, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool81.not = icmp eq i32 %84, 0
  br i1 %tobool81.not, label %if.else74.if.then89_crit_edge, label %lor.lhs.false82

if.else74.if.then89_crit_edge:                    ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

lor.lhs.false82:                                  ; preds = %if.else74
  %s_udfrev85 = getelementptr inbounds %struct.udf_sb_info, ptr %81, i32 0, i32 16
  %85 = ptrtoint ptr %s_udfrev85 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %s_udfrev85, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %86)
  %cmp87 = icmp ugt i16 %86, 512
  br i1 %cmp87, label %lor.lhs.false82.if.then89_crit_edge, label %if.else94

lor.lhs.false82.if.then89_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false82.if.then89_crit_edge, %if.else74.if.then89_crit_edge
  %87 = ptrtoint ptr %b_data76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data76, align 4
  %89 = ptrtoint ptr %epos.coerce.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %epos.coerce.fca.1.gep, align 4
  %sub93 = sub i32 %90, %adsize.0
  call void @udf_update_tag(ptr noundef %88, i32 noundef %sub93) #8
  br label %if.end97

if.else94:                                        ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %b_data76 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data76, align 4
  call void @udf_update_tag(ptr noundef %92, i32 noundef 24) #8
  br label %if.end97

if.end97:                                         ; preds = %if.else94, %if.then89
  %93 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %oepos, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %94, ptr noundef %inode) #8
  br label %if.end100

if.end100:                                        ; preds = %if.end97, %if.then71, %if.end65, %if.then42
  %95 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %epos, align 4
  %tobool.not.i149 = icmp eq ptr %96, null
  br i1 %tobool.not.i149, label %if.end100.brelse.exit151_crit_edge, label %if.then.i150

if.end100.brelse.exit151_crit_edge:               ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit151

if.then.i150:                                     ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %96) #8
  br label %brelse.exit151

brelse.exit151:                                   ; preds = %if.then.i150, %if.end100.brelse.exit151_crit_edge
  %97 = ptrtoint ptr %oepos to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %oepos, align 4
  %tobool.not.i152 = icmp eq ptr %98, null
  br i1 %tobool.not.i152, label %brelse.exit151.cleanup_crit_edge, label %if.then.i153

brelse.exit151.cleanup_crit_edge:                 ; preds = %brelse.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i153:                                     ; preds = %brelse.exit151
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %98) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i153, %brelse.exit151.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i8 [ -1, %if.end.cleanup_crit_edge ], [ 0, %brelse.exit151.cleanup_crit_edge ], [ 0, %if.then.i153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oepos) #8
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_free_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @inode_bmap(ptr noundef %inode, i64 noundef %block, ptr noundef %pos, ptr nocapture noundef %eloc, ptr nocapture noundef %elen, ptr nocapture noundef writeonly %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %3 to i64
  %shl = shl i64 %block, %sh_prom
  %i_extent_cache_lock.i = getelementptr i8, ptr %inode, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %i_extent_cache_lock.i) #8
  %lstart.i = getelementptr i8, ptr %inode, i32 -56
  %4 = ptrtoint ptr %lstart.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %lstart.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %shl)
  %cmp.not.i = icmp sgt i64 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp3.not.i = icmp eq i64 %5, -1
  %or.cond.i = or i1 %cmp.not.i, %cmp3.not.i
  br i1 %or.cond.i, label %if.then, label %if.then.i

if.then.i:                                        ; preds = %entry
  %cached_extent.i = getelementptr i8, ptr %inode, i32 -72
  %6 = call ptr @memcpy(ptr %pos, ptr %cached_extent.i, i32 16)
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pos, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i.udf_read_extent_cache.exit.thread_crit_edge, label %if.then7.i

if.then.i.udf_read_extent_cache.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_read_extent_cache.exit.thread

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #8, !srcloc !100
  br label %udf_read_extent_cache.exit.thread

udf_read_extent_cache.exit.thread:                ; preds = %if.then7.i, %if.then.i.udf_read_extent_cache.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i) #8
  %offset2 = getelementptr inbounds %struct.extent_position, ptr %pos, i32 0, i32 1
  %10 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %offset2, align 4
  %block3 = getelementptr inbounds %struct.extent_position, ptr %pos, i32 0, i32 2
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %11 = ptrtoint ptr %i_location to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_location, align 8
  %13 = ptrtoint ptr %block3 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %block3, align 4
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %udf_read_extent_cache.exit.thread
  %lbcount.058 = phi i64 [ %5, %udf_read_extent_cache.exit.thread ], [ 0, %if.then ]
  %15 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %elen, align 4
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %if.end
  %lbcount.1 = phi i64 [ %lbcount.058, %if.end ], [ %add, %if.end10.do.body_crit_edge ]
  %call4 = tail call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef %pos, ptr noundef %eloc, ptr noundef %elen, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call4)
  %cmp = icmp eq i8 %call4, -1
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i64 %shl, %lbcount.1
  %shr = ashr i64 %sub, %sh_prom
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shr, ptr %offset, align 8
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %17 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %lbcount.1, ptr %i_lenExtents, align 8
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %18 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %elen, align 4
  %conv11 = zext i32 %19 to i64
  %add = add i64 %lbcount.1, %conv11
  %cmp12.not = icmp slt i64 %shl, %add
  br i1 %cmp12.not, label %do.end, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end10
  tail call void @_raw_spin_lock(ptr noundef %i_extent_cache_lock.i) #8
  %20 = ptrtoint ptr %lstart.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lstart.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %21)
  %cmp.not.i.i = icmp eq i64 %21, -1
  br i1 %cmp.not.i.i, label %do.end.__udf_clear_extent_cache.exit.i_crit_edge, label %if.then.i.i

do.end.__udf_clear_extent_cache.exit.i_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__udf_clear_extent_cache.exit.i

if.then.i.i:                                      ; preds = %do.end
  %cached_extent.i.i = getelementptr i8, ptr %inode, i32 -72
  %22 = ptrtoint ptr %cached_extent.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cached_extent.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.brelse.exit.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %23) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.brelse.exit.i.i_crit_edge
  %24 = ptrtoint ptr %lstart.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %lstart.i, align 8
  br label %__udf_clear_extent_cache.exit.i

__udf_clear_extent_cache.exit.i:                  ; preds = %brelse.exit.i.i, %do.end.__udf_clear_extent_cache.exit.i_crit_edge
  %25 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pos, align 4
  %tobool.not.i48 = icmp eq ptr %26, null
  br i1 %tobool.not.i48, label %__udf_clear_extent_cache.exit.i.if.end.i_crit_edge, label %if.then.i51

__udf_clear_extent_cache.exit.i.if.end.i_crit_edge: ; preds = %__udf_clear_extent_cache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i51:                                      ; preds = %__udf_clear_extent_cache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %b_count.i.i49 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 11
  %call.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i49, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i49, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i49, ptr %b_count.i.i49, i32 1, ptr elementtype(i32) %b_count.i.i49) #8, !srcloc !100
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i51, %__udf_clear_extent_cache.exit.i.if.end.i_crit_edge
  %cached_extent.i52 = getelementptr i8, ptr %inode, i32 -72
  %28 = call ptr @memcpy(ptr %cached_extent.i52, ptr %pos, i32 16)
  %29 = ptrtoint ptr %lstart.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %lbcount.1, ptr %lstart.i, align 8
  %i_alloc_type.i = getelementptr i8, ptr %inode, i32 -192
  %30 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %31 = zext i32 %bf.lshr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %bf.lshr.i, label %if.end.i.udf_update_extent_cache.exit_crit_edge [
    i32 0, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb5.i
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end.i.udf_update_extent_cache.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_update_extent_cache.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb5.i, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink20.i = phi i32 [ -16, %sw.bb5.i ], [ -8, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %offset.i = getelementptr i8, ptr %inode, i32 -68
  %32 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset.i, align 4
  %sub9.i = add i32 %33, %.sink20.i
  store i32 %sub9.i, ptr %offset.i, align 4
  br label %udf_update_extent_cache.exit

udf_update_extent_cache.exit:                     ; preds = %sw.epilog.sink.split.i, %if.end.i.udf_update_extent_cache.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i) #8
  %34 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %elen, align 4
  %conv16 = zext i32 %35 to i64
  %add17 = sub i64 %shl, %add
  %sub18 = add i64 %add17, %conv16
  %shr21 = ashr i64 %sub18, %sh_prom
  %36 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shr21, ptr %offset, align 8
  br label %cleanup

cleanup:                                          ; preds = %udf_update_extent_cache.exit, %if.then7
  ret i8 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_block_map(ptr noundef %inode, i64 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  %offset = alloca i64, align 8
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #8
  %0 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %eloc, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #8
  %1 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %elen, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #8
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %offset, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #8
  %3 = call ptr @memset(ptr %epos, i32 0, i32 16)
  %i_data_sem = getelementptr i8, ptr %inode, i32 -168
  tail call void @down_read(ptr noundef %i_data_sem) #8
  %call1 = call signext i8 @inode_bmap(ptr noundef %inode, i64 noundef %block, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call1)
  %cmp = icmp eq i8 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset, align 8
  %conv3 = trunc i64 %7 to i32
  %8 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eloc, align 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %10 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %5, i32 noundef %9, i16 noundef zeroext %11, i32 noundef %conv3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @up_read(ptr noundef %i_data_sem) #8
  %12 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %epos, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %13) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  %i_sb7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb7, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %s_flags.i, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %shr = lshr i32 %ret.0, 5
  %mul = mul i32 %shr, 39
  %and = and i32 %ret.0, 31
  %add = add i32 %mul, %and
  %retval.0 = select i1 %tobool.not, i32 %ret.0, i32 %add
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udf_write_failed(ptr nocapture noundef readonly %mapping, i64 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %to)
  %cmp = icmp slt i64 %3, %to
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @truncate_pagecache(ptr noundef %1, i64 noundef %3) #8
  %i_alloc_type = getelementptr i8, ptr %1, i32 -192
  %4 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp1.not = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %if.then
  %i_data_sem = getelementptr i8, ptr %1, i32 -168
  tail call void @down_write(ptr noundef %i_data_sem) #8
  %i_extent_cache_lock.i = getelementptr i8, ptr %1, i32 -48
  tail call void @_raw_spin_lock(ptr noundef %i_extent_cache_lock.i) #8
  %lstart.i.i = getelementptr i8, ptr %1, i32 -56
  %5 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %lstart.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.not.i.i = icmp eq i64 %6, -1
  br i1 %cmp.not.i.i, label %if.then2.udf_clear_extent_cache.exit_crit_edge, label %if.then.i.i

if.then2.udf_clear_extent_cache.exit_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_clear_extent_cache.exit

if.then.i.i:                                      ; preds = %if.then2
  %cached_extent.i.i = getelementptr i8, ptr %1, i32 -72
  %7 = ptrtoint ptr %cached_extent.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cached_extent.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.brelse.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.brelse.exit.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %8) #8
  br label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.brelse.exit.i.i_crit_edge
  %9 = ptrtoint ptr %lstart.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %lstart.i.i, align 8
  br label %udf_clear_extent_cache.exit

udf_clear_extent_cache.exit:                      ; preds = %brelse.exit.i.i, %if.then2.udf_clear_extent_cache.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_extent_cache_lock.i) #8
  %call3 = tail call i32 @udf_truncate_extents(ptr noundef %1) #8
  tail call void @up_write(ptr noundef %i_data_sem) #8
  br label %if.end5

if.end5:                                          ; preds = %udf_clear_extent_cache.exit, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_do_extend_file(ptr noundef %inode, ptr noundef %last_pos, ptr noundef %last_ext, i64 noundef %new_block_bytes) unnamed_addr #0 align 64 {
entry:
  %err.i275 = alloca i32, align 4
  %err.i248 = alloca i32, align 4
  %err.i221 = alloca i32, align 4
  %err.i = alloca i32, align 4
  %prealloc_loc = alloca %struct.kernel_lb_addr, align 8
  %tmploc = alloca %struct.kernel_lb_addr, align 8
  %tmplen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %last_ext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_ext, align 4
  %and = and i32 %1, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %prealloc_loc) #8
  %4 = ptrtoint ptr %prealloc_loc to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %prealloc_loc, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_block_bytes)
  %tobool1.not = icmp ne i64 %new_block_bytes, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool1.not, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %6, -1
  %and4 = and i32 %sub, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end27_crit_edge, label %if.then6

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and8 = and i32 %1, -1073741824
  %sub13 = add i32 %sub, %and
  %neg = sub i32 0, %6
  %and16 = and i32 %sub13, %neg
  %or = or i32 %and16, %and8
  %7 = ptrtoint ptr %last_ext to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %last_ext, align 4
  %i_lenExtents = getelementptr i8, ptr %inode, i32 -216
  %8 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_lenExtents, align 8
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %11 to i64
  %add19 = add i64 %9, 4294967295
  %sub20 = add i64 %add19, %conv
  %neg23 = sub i32 0, %11
  %conv24 = zext i32 %neg23 to i64
  %and25 = and i64 %sub20, %conv24
  store i64 %and25, ptr %i_lenExtents, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then6, %if.end.if.end27_crit_edge
  %12 = ptrtoint ptr %last_ext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_ext, align 4
  %and29 = and i32 %13, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and29)
  %cmp = icmp eq i32 %and29, 1073741824
  br i1 %cmp, label %if.then31, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %extLocation = getelementptr inbounds %struct.kernel_long_ad, ptr %last_ext, i32 0, i32 1
  %14 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %extLocation, align 4
  %16 = ptrtoint ptr %prealloc_loc to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %prealloc_loc, align 8
  %and34 = and i32 %13, 1073741823
  %or35 = or i32 %and34, -2147483648
  %17 = ptrtoint ptr %last_ext to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or35, ptr %last_ext, align 4
  store i32 0, ptr %extLocation, align 4
  %partitionReferenceNum = getelementptr inbounds %struct.kernel_long_ad, ptr %last_ext, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %partitionReferenceNum, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %if.end27.if.end39_crit_edge
  %prealloc_len.0 = phi i32 [ %13, %if.then31 ], [ 0, %if.end27.if.end39_crit_edge ]
  %19 = ptrtoint ptr %last_ext to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_ext, align 4
  %and41 = and i32 %20, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %and41)
  %cmp42 = icmp eq i32 %and41, -2147483648
  br i1 %cmp42, label %if.then44, label %if.end39.if.end60_crit_edge

if.end39.if.end60_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize, align 16
  %and48 = and i32 %20, 1073741823
  %23 = add i32 %and48, %22
  %sub49 = sub i32 1073741824, %23
  %conv50 = zext i32 %sub49 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv50, i64 %new_block_bytes)
  %cmp51 = icmp sgt i64 %conv50, %new_block_bytes
  %conv54 = trunc i64 %new_block_bytes to i32
  %spec.select = select i1 %cmp51, i32 %conv54, i32 %sub49
  %conv56 = zext i32 %spec.select to i64
  %sub57 = sub i64 %new_block_bytes, %conv56
  %add59 = add i32 %spec.select, %20
  %24 = ptrtoint ptr %last_ext to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add59, ptr %last_ext, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then44, %if.end39.if.end60_crit_edge
  %new_block_bytes.addr.0 = phi i64 [ %sub57, %if.then44 ], [ %new_block_bytes, %if.end39.if.end60_crit_edge ]
  br i1 %tobool.not, label %if.then62, label %if.else

if.then62:                                        ; preds = %if.end60
  %extLocation63 = getelementptr inbounds %struct.kernel_long_ad, ptr %last_ext, i32 0, i32 1
  %25 = ptrtoint ptr %last_ext to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last_ext, align 4
  %27 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb, align 4
  %i_alloc_type.i = getelementptr i8, ptr %inode, i32 -192
  %29 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i)
  %cmp.i = icmp ult i32 %bf.load.i, 536870912
  br i1 %cmp.i, label %if.then62.if.end8.i_crit_edge, label %if.else.i

if.then62.if.end8.i_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then62
  %bf.lshr4.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask.i)
  %cmp5.i = icmp eq i32 %bf.lshr4.mask.i, 536870912
  br i1 %cmp5.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.if.end73_crit_edge

if.else.i.if.end73_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then62.if.end8.i_crit_edge
  %adsize.0.i = phi i32 [ 16, %if.then62.if.end8.i_crit_edge ], [ 32, %if.else.i.if.end8.i_crit_edge ]
  %offset.i = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 1
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %31, %adsize.0.i
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %33)
  %cmp9.i = icmp ugt i32 %add.i, %33
  br i1 %cmp9.i, label %if.then10.i, label %if.end8.i.if.end20.i_crit_edge

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #8
  %34 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %err.i, align 4, !annotation !81
  %block.i = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2
  %partitionReferenceNum.i = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %partitionReferenceNum.i, align 4
  %37 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %block.i, align 4
  %call12.i = call i32 @udf_new_block(ptr noundef %28, ptr noundef null, i16 noundef zeroext %36, i32 noundef %38, ptr noundef nonnull %err.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br label %if.end73

cleanup.i:                                        ; preds = %if.then10.i
  %call15.i = call i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %call12.i, ptr noundef %last_pos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #8
  br i1 %tobool16.not.i, label %cleanup.i.if.end20.i_crit_edge, label %cleanup.i.if.end73_crit_edge

cleanup.i.if.end73_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

cleanup.i.if.end20.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %cleanup.i.if.end20.i_crit_edge, %if.end8.i.if.end20.i_crit_edge
  %call21.i = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef %last_pos, ptr noundef %extLocation63, i32 noundef %26, i32 noundef 1) #8
  br label %if.end73

if.else:                                          ; preds = %if.end60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmploc) #8
  %39 = ptrtoint ptr %tmploc to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %tmploc, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmplen) #8
  %extLocation66 = getelementptr inbounds %struct.kernel_long_ad, ptr %last_ext, i32 0, i32 1
  %40 = ptrtoint ptr %last_ext to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %last_ext, align 4
  tail call void @udf_write_aext(ptr noundef %inode, ptr noundef %last_pos, ptr noundef %extLocation66, i32 noundef %41, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_block_bytes.addr.0)
  %tobool68.not = icmp eq i64 %new_block_bytes.addr.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prealloc_len.0)
  %tobool69.not = icmp eq i32 %prealloc_len.0, 0
  %or.cond = select i1 %tobool68.not, i1 %tobool69.not, i1 false
  br i1 %or.cond, label %if.else.if.end72_crit_edge, label %if.then70

if.else.if.end72_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = call signext i8 @udf_next_aext(ptr noundef %inode, ptr noundef %last_pos, ptr noundef nonnull %tmploc, ptr noundef nonnull %tmplen, i32 noundef 0)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.else.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmplen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmploc) #8
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end20.i, %cleanup.i.if.end73_crit_edge, %cleanup.thread.i, %if.else.i.if.end73_crit_edge
  %count.0 = phi i32 [ 0, %if.end72 ], [ 1, %if.else.i.if.end73_crit_edge ], [ 1, %cleanup.thread.i ], [ 1, %cleanup.i.if.end73_crit_edge ], [ 1, %if.end20.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_block_bytes.addr.0)
  %tobool74.not = icmp eq i64 %new_block_bytes.addr.0, 0
  br i1 %tobool74.not, label %if.end73.out_crit_edge, label %if.end76

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end76:                                         ; preds = %if.end73
  %extLocation77 = getelementptr inbounds %struct.kernel_long_ad, ptr %last_ext, i32 0, i32 1
  %42 = ptrtoint ptr %extLocation77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %extLocation77, align 4
  %partitionReferenceNum80 = getelementptr inbounds %struct.kernel_long_ad, ptr %last_ext, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %partitionReferenceNum80 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %partitionReferenceNum80, align 4
  %44 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_blocksize, align 16
  %sub82 = sub i32 1073741824, %45
  %or83 = or i32 %sub82, -2147483648
  %46 = ptrtoint ptr %last_ext to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or83, ptr %last_ext, align 4
  %conv85 = zext i32 %sub82 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %new_block_bytes.addr.0, i64 %conv85)
  %cmp86313 = icmp sgt i64 %new_block_bytes.addr.0, %conv85
  %extract.t322 = trunc i64 %new_block_bytes.addr.0 to i32
  br i1 %cmp86313, label %while.body.lr.ph, label %if.end76.if.then98_crit_edge

if.end76.if.then98_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

while.body.lr.ph:                                 ; preds = %if.end76
  %i_alloc_type.i223 = getelementptr i8, ptr %inode, i32 -192
  %offset.i230 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 1
  %block.i235 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2
  %partitionReferenceNum.i236 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end95.while.body_crit_edge, %while.body.lr.ph
  %count.1315 = phi i32 [ %count.0, %while.body.lr.ph ], [ %inc96, %if.end95.while.body_crit_edge ]
  %new_block_bytes.addr.1314 = phi i64 [ %new_block_bytes.addr.0, %while.body.lr.ph ], [ %sub89, %if.end95.while.body_crit_edge ]
  %47 = ptrtoint ptr %last_ext to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_ext, align 4
  %49 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb, align 4
  %51 = ptrtoint ptr %i_alloc_type.i223 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i224 = load i32, ptr %i_alloc_type.i223, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i224)
  %cmp.i225 = icmp ult i32 %bf.load.i224, 536870912
  br i1 %cmp.i225, label %while.body.if.end8.i234_crit_edge, label %if.else.i228

while.body.if.end8.i234_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i234

if.else.i228:                                     ; preds = %while.body
  %bf.lshr4.mask.i226 = and i32 %bf.load.i224, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask.i226)
  %cmp5.i227 = icmp eq i32 %bf.lshr4.mask.i226, 536870912
  br i1 %cmp5.i227, label %if.else.i228.if.end8.i234_crit_edge, label %if.else.i228.cleanup_crit_edge

if.else.i228.cleanup_crit_edge:                   ; preds = %if.else.i228
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i228.if.end8.i234_crit_edge:              ; preds = %if.else.i228
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i234

if.end8.i234:                                     ; preds = %if.else.i228.if.end8.i234_crit_edge, %while.body.if.end8.i234_crit_edge
  %adsize.0.i229 = phi i32 [ 16, %while.body.if.end8.i234_crit_edge ], [ 32, %if.else.i228.if.end8.i234_crit_edge ]
  %52 = ptrtoint ptr %offset.i230 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset.i230, align 4
  %add.i231 = add i32 %53, %adsize.0.i229
  %s_blocksize.i232 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 3
  %54 = ptrtoint ptr %s_blocksize.i232 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize.i232, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i231, i32 %55)
  %cmp9.i233 = icmp ugt i32 %add.i231, %55
  br i1 %cmp9.i233, label %if.then10.i239, label %if.end8.i234.udf_add_aext.exit247_crit_edge

if.end8.i234.udf_add_aext.exit247_crit_edge:      ; preds = %if.end8.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit247

if.then10.i239:                                   ; preds = %if.end8.i234
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i221) #8
  %56 = ptrtoint ptr %err.i221 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %err.i221, align 4, !annotation !81
  %57 = ptrtoint ptr %partitionReferenceNum.i236 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %partitionReferenceNum.i236, align 4
  %59 = ptrtoint ptr %block.i235 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %block.i235, align 4
  %call12.i237 = call i32 @udf_new_block(ptr noundef %50, ptr noundef null, i16 noundef zeroext %58, i32 noundef %60, ptr noundef nonnull %err.i221) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i237)
  %tobool.not.i238 = icmp eq i32 %call12.i237, 0
  br i1 %tobool.not.i238, label %cleanup.thread.i240, label %cleanup.i243

cleanup.thread.i240:                              ; preds = %if.then10.i239
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i221) #8
  br label %cleanup

cleanup.i243:                                     ; preds = %if.then10.i239
  %call15.i241 = call i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %call12.i237, ptr noundef %last_pos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i241)
  %tobool16.not.i242 = icmp eq i32 %call15.i241, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i221) #8
  br i1 %tobool16.not.i242, label %cleanup.i243.udf_add_aext.exit247_crit_edge, label %cleanup.i243.cleanup_crit_edge

cleanup.i243.cleanup_crit_edge:                   ; preds = %cleanup.i243
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.i243.udf_add_aext.exit247_crit_edge:      ; preds = %cleanup.i243
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit247

udf_add_aext.exit247:                             ; preds = %cleanup.i243.udf_add_aext.exit247_crit_edge, %if.end8.i234.udf_add_aext.exit247_crit_edge
  %call21.i244 = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef %last_pos, ptr noundef %extLocation77, i32 noundef %48, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i244)
  %tobool93.not = icmp eq i32 %call21.i244, 0
  br i1 %tobool93.not, label %if.end95, label %udf_add_aext.exit247.cleanup_crit_edge

udf_add_aext.exit247.cleanup_crit_edge:           ; preds = %udf_add_aext.exit247
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end95:                                         ; preds = %udf_add_aext.exit247
  %sub89 = sub i64 %new_block_bytes.addr.1314, %conv85
  %inc96 = add i32 %count.1315, 1
  %cmp86 = icmp sgt i64 %sub89, %conv85
  br i1 %cmp86, label %if.end95.while.body_crit_edge, label %while.end

if.end95.while.body_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub89)
  %tobool97.not = icmp eq i64 %sub89, 0
  %extract.t = trunc i64 %sub89 to i32
  br i1 %tobool97.not, label %while.end.out_crit_edge, label %while.end.if.then98_crit_edge

while.end.if.then98_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then98

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then98:                                        ; preds = %while.end.if.then98_crit_edge, %if.end76.if.then98_crit_edge
  %count.1.lcssa321 = phi i32 [ %inc96, %while.end.if.then98_crit_edge ], [ %count.0, %if.end76.if.then98_crit_edge ]
  %new_block_bytes.addr.1.lcssa320.off0 = phi i32 [ %extract.t, %while.end.if.then98_crit_edge ], [ %extract.t322, %if.end76.if.then98_crit_edge ]
  %conv100 = or i32 %new_block_bytes.addr.1.lcssa320.off0, -2147483648
  %61 = ptrtoint ptr %last_ext to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv100, ptr %last_ext, align 4
  %62 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i_sb, align 4
  %i_alloc_type.i250 = getelementptr i8, ptr %inode, i32 -192
  %64 = ptrtoint ptr %i_alloc_type.i250 to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load.i251 = load i32, ptr %i_alloc_type.i250, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i251)
  %cmp.i252 = icmp ult i32 %bf.load.i251, 536870912
  br i1 %cmp.i252, label %if.then98.if.end8.i261_crit_edge, label %if.else.i255

if.then98.if.end8.i261_crit_edge:                 ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i261

if.else.i255:                                     ; preds = %if.then98
  %bf.lshr4.mask.i253 = and i32 %bf.load.i251, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask.i253)
  %cmp5.i254 = icmp eq i32 %bf.lshr4.mask.i253, 536870912
  br i1 %cmp5.i254, label %if.else.i255.if.end8.i261_crit_edge, label %if.else.i255.cleanup_crit_edge

if.else.i255.cleanup_crit_edge:                   ; preds = %if.else.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i255.if.end8.i261_crit_edge:              ; preds = %if.else.i255
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i261

if.end8.i261:                                     ; preds = %if.else.i255.if.end8.i261_crit_edge, %if.then98.if.end8.i261_crit_edge
  %adsize.0.i256 = phi i32 [ 16, %if.then98.if.end8.i261_crit_edge ], [ 32, %if.else.i255.if.end8.i261_crit_edge ]
  %offset.i257 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 1
  %65 = ptrtoint ptr %offset.i257 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i257, align 4
  %add.i258 = add i32 %66, %adsize.0.i256
  %s_blocksize.i259 = getelementptr inbounds %struct.super_block, ptr %63, i32 0, i32 3
  %67 = ptrtoint ptr %s_blocksize.i259 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize.i259, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i258, i32 %68)
  %cmp9.i260 = icmp ugt i32 %add.i258, %68
  br i1 %cmp9.i260, label %if.then10.i266, label %if.end8.i261.udf_add_aext.exit274_crit_edge

if.end8.i261.udf_add_aext.exit274_crit_edge:      ; preds = %if.end8.i261
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit274

if.then10.i266:                                   ; preds = %if.end8.i261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i248) #8
  %69 = ptrtoint ptr %err.i248 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %err.i248, align 4, !annotation !81
  %block.i262 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2
  %partitionReferenceNum.i263 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %partitionReferenceNum.i263 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %partitionReferenceNum.i263, align 4
  %72 = ptrtoint ptr %block.i262 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %block.i262, align 4
  %call12.i264 = call i32 @udf_new_block(ptr noundef %63, ptr noundef null, i16 noundef zeroext %71, i32 noundef %73, ptr noundef nonnull %err.i248) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i264)
  %tobool.not.i265 = icmp eq i32 %call12.i264, 0
  br i1 %tobool.not.i265, label %cleanup.thread.i267, label %cleanup.i270

cleanup.thread.i267:                              ; preds = %if.then10.i266
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i248) #8
  br label %cleanup

cleanup.i270:                                     ; preds = %if.then10.i266
  %call15.i268 = call i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %call12.i264, ptr noundef %last_pos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i268)
  %tobool16.not.i269 = icmp eq i32 %call15.i268, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i248) #8
  br i1 %tobool16.not.i269, label %cleanup.i270.udf_add_aext.exit274_crit_edge, label %cleanup.i270.cleanup_crit_edge

cleanup.i270.cleanup_crit_edge:                   ; preds = %cleanup.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.i270.udf_add_aext.exit274_crit_edge:      ; preds = %cleanup.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit274

udf_add_aext.exit274:                             ; preds = %cleanup.i270.udf_add_aext.exit274_crit_edge, %if.end8.i261.udf_add_aext.exit274_crit_edge
  %call21.i271 = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef %last_pos, ptr noundef %extLocation77, i32 noundef %conv100, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i271)
  %tobool105.not = icmp eq i32 %call21.i271, 0
  br i1 %tobool105.not, label %if.end107, label %udf_add_aext.exit274.cleanup_crit_edge

udf_add_aext.exit274.cleanup_crit_edge:           ; preds = %udf_add_aext.exit274
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end107:                                        ; preds = %udf_add_aext.exit274
  call void @__sanitizer_cov_trace_pc() #10
  %inc108 = add i32 %count.1.lcssa321, 1
  br label %out

out:                                              ; preds = %if.end107, %while.end.out_crit_edge, %if.end73.out_crit_edge
  %count.2 = phi i32 [ %inc108, %if.end107 ], [ %inc96, %while.end.out_crit_edge ], [ %count.0, %if.end73.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prealloc_len.0)
  %tobool110.not = icmp eq i32 %prealloc_len.0, 0
  br i1 %tobool110.not, label %out.if.end119_crit_edge, label %if.then111

out.if.end119_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then111:                                       ; preds = %out
  %74 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %i_sb, align 4
  %i_alloc_type.i277 = getelementptr i8, ptr %inode, i32 -192
  %76 = ptrtoint ptr %i_alloc_type.i277 to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load.i278 = load i32, ptr %i_alloc_type.i277, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load.i278)
  %cmp.i279 = icmp ult i32 %bf.load.i278, 536870912
  br i1 %cmp.i279, label %if.then111.if.end8.i288_crit_edge, label %if.else.i282

if.then111.if.end8.i288_crit_edge:                ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i288

if.else.i282:                                     ; preds = %if.then111
  %bf.lshr4.mask.i280 = and i32 %bf.load.i278, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr4.mask.i280)
  %cmp5.i281 = icmp eq i32 %bf.lshr4.mask.i280, 536870912
  br i1 %cmp5.i281, label %if.else.i282.if.end8.i288_crit_edge, label %if.else.i282.cleanup_crit_edge

if.else.i282.cleanup_crit_edge:                   ; preds = %if.else.i282
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i282.if.end8.i288_crit_edge:              ; preds = %if.else.i282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i288

if.end8.i288:                                     ; preds = %if.else.i282.if.end8.i288_crit_edge, %if.then111.if.end8.i288_crit_edge
  %adsize.0.i283 = phi i32 [ 16, %if.then111.if.end8.i288_crit_edge ], [ 32, %if.else.i282.if.end8.i288_crit_edge ]
  %offset.i284 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 1
  %77 = ptrtoint ptr %offset.i284 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset.i284, align 4
  %add.i285 = add i32 %78, %adsize.0.i283
  %s_blocksize.i286 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 3
  %79 = ptrtoint ptr %s_blocksize.i286 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %s_blocksize.i286, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i285, i32 %80)
  %cmp9.i287 = icmp ugt i32 %add.i285, %80
  br i1 %cmp9.i287, label %if.then10.i293, label %if.end8.i288.udf_add_aext.exit301_crit_edge

if.end8.i288.udf_add_aext.exit301_crit_edge:      ; preds = %if.end8.i288
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit301

if.then10.i293:                                   ; preds = %if.end8.i288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i275) #8
  %81 = ptrtoint ptr %err.i275 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %err.i275, align 4, !annotation !81
  %block.i289 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2
  %partitionReferenceNum.i290 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %partitionReferenceNum.i290 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %partitionReferenceNum.i290, align 4
  %84 = ptrtoint ptr %block.i289 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %block.i289, align 4
  %call12.i291 = call i32 @udf_new_block(ptr noundef %75, ptr noundef null, i16 noundef zeroext %83, i32 noundef %85, ptr noundef nonnull %err.i275) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i291)
  %tobool.not.i292 = icmp eq i32 %call12.i291, 0
  br i1 %tobool.not.i292, label %cleanup.thread.i294, label %cleanup.i297

cleanup.thread.i294:                              ; preds = %if.then10.i293
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i275) #8
  br label %cleanup

cleanup.i297:                                     ; preds = %if.then10.i293
  %call15.i295 = call i32 @udf_setup_indirect_aext(ptr noundef %inode, i32 noundef %call12.i291, ptr noundef %last_pos) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i295)
  %tobool16.not.i296 = icmp eq i32 %call15.i295, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i275) #8
  br i1 %tobool16.not.i296, label %cleanup.i297.udf_add_aext.exit301_crit_edge, label %cleanup.i297.cleanup_crit_edge

cleanup.i297.cleanup_crit_edge:                   ; preds = %cleanup.i297
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.i297.udf_add_aext.exit301_crit_edge:      ; preds = %cleanup.i297
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_add_aext.exit301

udf_add_aext.exit301:                             ; preds = %cleanup.i297.udf_add_aext.exit301_crit_edge, %if.end8.i288.udf_add_aext.exit301_crit_edge
  %call21.i298 = call i32 @__udf_add_aext(ptr noundef %inode, ptr noundef %last_pos, ptr noundef nonnull %prealloc_loc, i32 noundef %prealloc_len.0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i298)
  %tobool113.not = icmp eq i32 %call21.i298, 0
  br i1 %tobool113.not, label %if.end115, label %udf_add_aext.exit301.cleanup_crit_edge

udf_add_aext.exit301.cleanup_crit_edge:           ; preds = %udf_add_aext.exit301
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end115:                                        ; preds = %udf_add_aext.exit301
  call void @__sanitizer_cov_trace_pc() #10
  %extLocation116 = getelementptr inbounds %struct.kernel_long_ad, ptr %last_ext, i32 0, i32 1
  %86 = ptrtoint ptr %prealloc_loc to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %prealloc_loc, align 8
  %88 = ptrtoint ptr %extLocation116 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %extLocation116, align 4
  %89 = ptrtoint ptr %last_ext to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %prealloc_len.0, ptr %last_ext, align 4
  %inc118 = add i32 %count.2, 1
  br label %if.end119

if.end119:                                        ; preds = %if.end115, %out.if.end119_crit_edge
  %count.3 = phi i32 [ %inc118, %if.end115 ], [ %count.2, %out.if.end119_crit_edge ]
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %90 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp120 = icmp ult i32 %bf.load, 536870912
  br i1 %cmp120, label %if.then122, label %if.else124

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %offset = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 1
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset, align 4
  %sub123 = add i32 %92, -8
  store i32 %sub123, ptr %offset, align 4
  br label %cleanup

if.else124:                                       ; preds = %if.end119
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr.mask)
  %cmp128 = icmp eq i32 %bf.lshr.mask, 536870912
  br i1 %cmp128, label %if.then130, label %if.else124.cleanup_crit_edge

if.else124.cleanup_crit_edge:                     ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then130:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #10
  %offset131 = getelementptr inbounds %struct.extent_position, ptr %last_pos, i32 0, i32 1
  %93 = ptrtoint ptr %offset131 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset131, align 4
  %sub132 = add i32 %94, -16
  store i32 %sub132, ptr %offset131, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %if.else124.cleanup_crit_edge, %if.then122, %udf_add_aext.exit301.cleanup_crit_edge, %cleanup.i297.cleanup_crit_edge, %cleanup.thread.i294, %if.else.i282.cleanup_crit_edge, %udf_add_aext.exit274.cleanup_crit_edge, %cleanup.i270.cleanup_crit_edge, %cleanup.thread.i267, %if.else.i255.cleanup_crit_edge, %udf_add_aext.exit247.cleanup_crit_edge, %cleanup.i243.cleanup_crit_edge, %cleanup.thread.i240, %if.else.i228.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call21.i271, %udf_add_aext.exit274.cleanup_crit_edge ], [ %call21.i298, %udf_add_aext.exit301.cleanup_crit_edge ], [ -5, %if.else124.cleanup_crit_edge ], [ %count.3, %if.then130 ], [ %count.3, %if.then122 ], [ -28, %cleanup.thread.i240 ], [ -28, %cleanup.thread.i267 ], [ -5, %if.else.i255.cleanup_crit_edge ], [ %call15.i268, %cleanup.i270.cleanup_crit_edge ], [ -28, %cleanup.thread.i294 ], [ -5, %if.else.i282.cleanup_crit_edge ], [ %call15.i295, %cleanup.i297.cleanup_crit_edge ], [ %call15.i241, %cleanup.i243.cleanup_crit_edge ], [ -5, %if.else.i228.cleanup_crit_edge ], [ %call21.i244, %udf_add_aext.exit247.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %prealloc_loc) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_prealloc_blocks(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_get_extendedattr(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_add_extendedattr(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_time_to_disk_stamp(ptr noundef, [2 x i64]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @udf_tag_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_read_ptagged(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_disk_stamp_to_time(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__func__.udf_evict_inode, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/udf/inode.c", i32 150, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @udf_aops, !4, !"udf_aops", i1 false, i1 false}
!4 = !{!"../fs/udf/inode.c", i32 237, i32 39}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../fs/udf/inode.c", i32 262, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.udf_next_aext, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/udf/inode.c", i32 2152, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/udf/inode.c", i32 2164, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @udf_next_aext.__UNIQUE_ID_ddebug278, !12, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/udf/inode.c", i32 2219, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @udf_current_aext.__UNIQUE_ID_ddebug279, !17, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/mm.h", i32 717, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/udf/inode.c", i32 1697, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @udf_update_inode.__UNIQUE_ID_ddebug277, !32, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!35 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/udf/inode.c", i32 1762, i32 22}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/udf/inode.c", i32 1891, i32 4}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/udf/inode.c", i32 1319, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @udf_read_inode.__UNIQUE_ID_ddebug272, !41, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!44 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/udf/inode.c", i32 1326, i32 3}
!47 = !{ptr @udf_read_inode.__UNIQUE_ID_ddebug273, !46, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!48 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/udf/inode.c", i32 1345, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/udf/inode.c", i32 1351, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/udf/inode.c", i32 1375, i32 6}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/udf/inode.c", i32 1387, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/udf/inode.c", i32 1587, i32 3}
!59 = !{ptr @udf_read_inode.__UNIQUE_ID_ddebug274, !58, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!60 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/udf/inode.c", i32 1590, i32 3}
!63 = !{ptr @udf_read_inode.__UNIQUE_ID_ddebug275, !62, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!64 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/udf/inode.c", i32 1593, i32 3}
!67 = !{ptr @udf_read_inode.__UNIQUE_ID_ddebug276, !66, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!68 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/udf/inode.c", i32 1596, i32 3}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 2154799989, i64 2154800468, i64 2154800026, i64 2154800082, i64 2154800116, i64 2154800140, i64 2154800181, i64 2154800202, i64 2154800230, i64 2154800264}
!83 = !{i64 2148608169, i64 2148608174, i64 2148608187, i64 2148608231, i64 2148608265, i64 2148608286}
!84 = !{i64 2148792429, i64 2148792461, i64 2148792490, i64 2148792524, i64 2148792555, i64 2148792578}
!85 = !{i64 2148881534}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i8 0, i8 2}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2150692316, i64 2150692807, i64 2150692353, i64 2150692409, i64 2150692443, i64 2150692467, i64 2150692508, i64 2150692529, i64 2150692557, i64 2150692591}
!90 = !{i64 2151442208}
!91 = !{i64 2153819347}
!92 = !{i64 2152298867}
!93 = !{i64 2151443279}
!94 = !{i64 2152299074}
!95 = !{i64 2153822118}
!96 = !{i64 2153295334, i64 2153295817, i64 2153295371, i64 2153295427, i64 2153295461, i64 2153295485, i64 2153295526, i64 2153295547, i64 2153295575, i64 2153295609}
!97 = !{i64 2148872047}
!98 = !{i64 2148786756, i64 2148786788, i64 2148786817, i64 2148786851, i64 2148786882, i64 2148786905}
!99 = !{i64 2148872276}
!100 = !{i64 2148783571, i64 2148783597, i64 2148783626, i64 2148783660, i64 2148783691, i64 2148783714}
