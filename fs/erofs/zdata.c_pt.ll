; ModuleID = '/llk/IR_all_yes/fs/erofs/zdata.c_pt.bc'
source_filename = "../fs/erofs/zdata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.z_erofs_pcluster_slab = type { ptr, i32, [48 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.z_erofs_pcluster = type { %struct.erofs_workgroup, %struct.z_erofs_collection, ptr, i32, i16, %union.anon.78, i8, [0 x ptr] }
%struct.erofs_workgroup = type { i32, %struct.atomic_t }
%struct.z_erofs_collection = type { %struct.mutex, i16, i16, i32, %union.anon.77 }
%union.anon.77 = type { [3 x %struct.__tagptr2] }
%struct.__tagptr2 = type { i32 }
%union.anon.78 = type { i16 }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.6, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.z_erofs_decompress_frontend = type { ptr, %struct.z_erofs_collector, %struct.erofs_map_blocks, i8, i8, i64 }
%struct.z_erofs_collector = type { %struct.z_erofs_pagevec_ctor, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.z_erofs_pagevec_ctor = type { ptr, ptr, ptr, i32, i32 }
%struct.erofs_map_blocks = type { %struct.erofs_buf, i64, i64, i64, i64, i16, i8, i32 }
%struct.erofs_buf = type { ptr, ptr, i32 }
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
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.anon.76 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.erofs_map_dev = type { ptr, ptr, i64, i64, i32 }
%struct.z_erofs_decompressqueue = type { ptr, %struct.atomic_t, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.34 }
%struct.llist_node = type { ptr }
%union.anon.34 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.z_erofs_decompress_req = type { ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, i8 }

@z_erofs_workqueue = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@z_erofs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @z_erofs_readpage, ptr null, ptr null, ptr null, ptr @z_erofs_readahead, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcluster_pool = internal global [6 x %struct.z_erofs_pcluster_slab] [%struct.z_erofs_pcluster_slab { ptr null, i32 1, [48 x i8] zeroinitializer }, %struct.z_erofs_pcluster_slab { ptr null, i32 4, [48 x i8] zeroinitializer }, %struct.z_erofs_pcluster_slab { ptr null, i32 16, [48 x i8] zeroinitializer }, %struct.z_erofs_pcluster_slab { ptr null, i32 64, [48 x i8] zeroinitializer }, %struct.z_erofs_pcluster_slab { ptr null, i32 128, [48 x i8] zeroinitializer }, %struct.z_erofs_pcluster_slab { ptr null, i32 256, [48 x i8] zeroinitializer }], section ".data..read_mostly", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"erofs_pcluster-%u\00", [46 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"erofs_unzipd\00", [19 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.z_erofs_readpage = private unnamed_addr constant [17 x i8] c"z_erofs_readpage\00", align 1
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read, err [%d]\0A\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_erofs_readpage = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/erofs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_erofs_readpage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.z_erofs_pcluster_readmore = private unnamed_addr constant [26 x i8] c"z_erofs_pcluster_readmore\00", align 1
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"readmore error at page %lu @ nid %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@z_erofs_do_read_page.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erofs\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"z_erofs_do_read_page\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/erofs/zdata.c\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: [out-of-range] pos %llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"erofs: %s: [out-of-range] pos %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get inline page, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@z_erofs_do_read_page.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.16, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s, finish page: %pK spiltted: %u map->m_llen %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"erofs: %s, finish page: %pK spiltted: %u map->m_llen %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@z_erofs_register_collection.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cl->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@z_erofs_onlinepage_endio.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str.24, ptr @.str.25, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"z_erofs_onlinepage_endio\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/erofs/zdata.h\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s, page %p value %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"erofs: %s, page %p value %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@jobqueue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&q->u.work)\00", [34 x i8] zeroinitializer }, align 32
@jobqueue_init.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fgq->u.wait\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@z_pagemap_global_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @z_pagemap_global_lock, i64 52), ptr getelementptr (i8, ptr @z_pagemap_global_lock, i64 52) }, ptr @z_pagemap_global_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@z_pagemap_global = internal global { [2048 x ptr], [2048 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"z_pagemap_global_lock.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"z_pagemap_global_lock\00", [42 x i8] zeroinitializer }, align 32
@__func__.z_erofs_readahead = private unnamed_addr constant [18 x i8] c"z_erofs_readahead\00", align 1
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"readahead error at page %lu @ nid %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_erofs_readpages = external dso_local global %struct.tracepoint, align 4
@trace_erofs_readpages.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.36 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1594810029]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1594810029]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1594804990, i64 1594810029]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1594804990, i64 1594810029]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1594804990, i64 1594810029]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1594804990, i64 1594810029]
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"z_erofs_aops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1578, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 51, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 135, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 260, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 717, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1527, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [32 x i8] c"../include/trace/events/erofs.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 81, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1493, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 681, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 707, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 788, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 452, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 498, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 55, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1160, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c"../fs/erofs/zdata.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 194, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 416, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1223, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1227, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 788, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [22 x i8] c"z_pagemap_global_lock\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"z_pagemap_global\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 227, i32 21 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 228, i32 8 }
@___asan_gen_.164 = private constant [20 x i8] c"../fs/erofs/zdata.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 1564, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 1096, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @z_erofs_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @z_erofs_register_collection.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @jobqueue_init.__key, ptr @.str.29, ptr @jobqueue_init.__key.30, ptr @.str.31, ptr @.str.32, ptr @z_pagemap_global_lock, ptr @z_pagemap_global, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_erofs_register_collection.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jobqueue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jobqueue_init.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_pagemap_global_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @z_pagemap_global to i32), i32 8192, i32 10240, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @z_erofs_exit_zip_subsystem() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @z_erofs_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  tail call fastcc void @z_erofs_destroy_pcluster_pool()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @z_erofs_destroy_pcluster_pool() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pcluster_pool, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kmem_cache_destroy(ptr noundef nonnull %0) #10
  store ptr null, ptr @pcluster_pool, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %1 = load ptr, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kmem_cache_destroy(ptr noundef nonnull %1) #10
  store ptr null, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 1), align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %2 = load ptr, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %2, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kmem_cache_destroy(ptr noundef nonnull %2) #10
  store ptr null, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 2), align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %3 = load ptr, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %3, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kmem_cache_destroy(ptr noundef nonnull %3) #10
  store ptr null, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 3), align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %4 = load ptr, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %4, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kmem_cache_destroy(ptr noundef nonnull %4) #10
  store ptr null, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 4), align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %5 = load ptr, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %5, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kmem_cache_destroy(ptr noundef nonnull %5) #10
  store ptr null, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 5), align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @z_erofs_init_zip_subsystem() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.z_erofs_pcluster_slab, ptr %pcs.016.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 1, i32 0)
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %if.end.i.i.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %pcs.016.i = phi ptr [ @pcluster_pool, %entry ], [ %incdec.ptr.i, %for.cond.i.for.body.i_crit_edge ]
  %maxpages.i = getelementptr inbounds %struct.z_erofs_pcluster_slab, ptr %pcs.016.i, i32 0, i32 1
  %0 = ptrtoint ptr %maxpages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxpages.i, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #10
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 136) #10
  %retval.0.i.i = select i1 %3, i32 -1, i32 %spec.select.i.i
  %name.i = getelementptr inbounds %struct.z_erofs_pcluster_slab, ptr %pcs.016.i, i32 0, i32 2
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str, i32 noundef %1) #10
  %call5.i = tail call ptr @kmem_cache_create(ptr noundef %name.i, i32 noundef %retval.0.i.i, i32 noundef 0, i32 noundef 131072, ptr noundef null) #10
  %5 = ptrtoint ptr %pcs.016.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5.i, ptr %pcs.016.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %z_erofs_create_pcluster_pool.exit, label %for.cond.i

z_erofs_create_pcluster_pool.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @z_erofs_destroy_pcluster_pool() #10
  br label %cleanup

if.end.i.i.i:                                     ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %6) #10
  %div3.i = lshr i32 %call4.i.i.i, 2
  %add.i = add i32 %div3.i, %call4.i.i.i
  %call1.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 18, i32 noundef %add.i) #10
  store ptr %call1.i, ptr @z_erofs_workqueue, align 4
  %tobool.not.i8.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i8.not, label %if.then3, label %if.end.i.i.i.cleanup_crit_edge

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @z_erofs_destroy_pcluster_pool()
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.i.i.i.cleanup_crit_edge, %z_erofs_create_pcluster_pool.exit
  %retval.0 = phi i32 [ -12, %z_erofs_create_pcluster_pool.exit ], [ -12, %if.then3 ], [ 0, %if.end.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_try_to_free_all_cached_pages(ptr nocapture noundef readonly %sbi, ptr noundef %grp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %grp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body2, label %for.cond.preheader, !prof !95

for.cond.preheader:                               ; preds = %entry
  %2 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %grp, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp54.not = icmp eq i16 %4, 0
  br i1 %cmp54.not, label %for.cond.preheader.cleanup31_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup31_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %managed_cache.i = getelementptr inbounds %struct.erofs_sb_info, ptr %sbi, i32 0, i32 6
  br label %for.body

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 302, 0\0A.popsection", ""() #10, !srcloc !96
  unreachable

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.z_erofs_pcluster, ptr %grp, i32 0, i32 7, i32 %i.055
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %6 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #10
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %11, align 4
  %and.i.i4.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.cleanup31_crit_edge

folio_flags.exit.i.i.cleanup31_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #10, !srcloc !99
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool13.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool13.not.not, label %if.end15, label %trylock_page.exit.cleanup31_crit_edge

trylock_page.exit.cleanup31_crit_edge:            ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

if.end15:                                         ; preds = %trylock_page.exit
  %mapping.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping.i, align 4
  %21 = ptrtoint ptr %managed_cache.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %managed_cache.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_mapping.i, align 8
  %cmp.i = icmp eq ptr %20, %24
  br i1 %cmp.i, label %do.body23, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body23:                                        ; preds = %if.end15
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr null, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %7, align 4
  %and.i.i43 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i47, label %if.then.i.i46, !prof !97

if.then.i.i46:                                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i45 = add i32 %27, -1
  br label %detach_page_private.exit

if.end.i.i47:                                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %6 to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i47, %if.then.i.i46
  %retval.0.i.i48 = phi i32 [ %sub.i.i45, %if.then.i.i46 ], [ %28, %if.end.i.i47 ]
  %29 = inttoptr i32 %retval.0.i.i48 to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %29) #10
  tail call void @unlock_page(ptr noundef nonnull %6) #10
  br label %for.inc

for.inc:                                          ; preds = %detach_page_private.exit, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %2, align 2
  %conv = zext i16 %31 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup31_crit_edge

for.inc.cleanup31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup31

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup31:                                        ; preds = %for.inc.cleanup31_crit_edge, %trylock_page.exit.cleanup31_crit_edge, %folio_flags.exit.i.i.cleanup31_crit_edge, %for.cond.preheader.cleanup31_crit_edge
  %retval.2 = phi i32 [ 0, %for.cond.preheader.cleanup31_crit_edge ], [ -16, %folio_flags.exit.i.i.cleanup31_crit_edge ], [ -16, %trylock_page.exit.cleanup31_crit_edge ], [ 0, %for.inc.cleanup31_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_try_to_free_cached_page(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %6, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %refcount.i = getelementptr inbounds %struct.erofs_workgroup, ptr %2, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, i32 -520810292, ptr elementtype(i32) %refcount.i) #10, !srcloc !103
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult3.i.i.i.i, 1
  br i1 %cmp.not.i, label %if.then, label %erofs_workgroup_try_to_freeze.exit

erofs_workgroup_try_to_freeze.exit:               ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %8 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i1.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %if.end31

if.then:                                          ; preds = %atomic_cmpxchg.exit.i
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %do.body4, label %for.cond.preheader, !prof !95

for.cond.preheader:                               ; preds = %if.then
  %14 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %2, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  %conv = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp51.not = icmp eq i16 %16, 0
  br i1 %cmp51.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %arrayidx60 = getelementptr %struct.z_erofs_pcluster, ptr %2, i32 0, i32 7, i32 0
  %17 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx60, align 4
  %cmp1161 = icmp eq ptr %18, %page
  br i1 %cmp1161, label %for.body.preheader.do.body18_crit_edge, label %for.body.preheader.for.cond_crit_edge

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.body.preheader.do.body18_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.body4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 336, 0\0A.popsection", ""() #10, !srcloc !106
  unreachable

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.05262 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.05262, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.z_erofs_pcluster, ptr %2, i32 0, i32 7, i32 %inc
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %cmp11 = icmp eq ptr %20, %page
  br i1 %cmp11, label %do.body18.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

do.body18.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le = icmp ult i32 %inc, %conv
  br label %do.body18

do.body18:                                        ; preds = %do.body18.loopexit, %for.body.preheader.do.body18_crit_edge
  %cmp53.lcssa = phi i1 [ true, %for.body.preheader.do.body18_crit_edge ], [ %cmp.le, %do.body18.loopexit ]
  %arrayidx.lcssa = phi ptr [ %arrayidx60, %for.body.preheader.do.body18_crit_edge ], [ %arrayidx, %do.body18.loopexit ]
  %21 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr null, ptr %arrayidx.lcssa, align 4
  br label %for.end

for.end.loopexit:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp.le69 = icmp ult i32 %inc, %conv
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.body18, %for.cond.preheader.for.end_crit_edge
  %cmp50 = phi i1 [ %cmp53.lcssa, %do.body18 ], [ false, %for.cond.preheader.for.end_crit_edge ], [ %cmp.le69, %for.end.loopexit ]
  %ret.0 = phi i32 [ 1, %do.body18 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %for.end.loopexit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  %call.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  %22 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %refcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %23 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i45 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i45 to ptr
  %preempt_count.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i46, align 4
  %sub.i.i47 = add i32 %26, -1
  store volatile i32 %sub.i.i47, ptr %preempt_count.i.i.i46, align 4
  br i1 %cmp50, label %if.then28, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %for.end
  %27 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i48 = add i32 %29, -1
  br label %detach_page_private.exit

if.end.i.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i48, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  tail call fastcc void @folio_detach_private(ptr noundef %31) #10
  br label %if.end31

if.end31:                                         ; preds = %detach_page_private.exit, %for.end.if.end31_crit_edge, %erofs_workgroup_try_to_freeze.exit
  %ret.1 = phi i32 [ 0, %erofs_workgroup_try_to_freeze.exit ], [ %ret.0, %detach_page_private.exit ], [ %ret.0, %for.end.if.end31_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_workgroup_free_rcu(ptr noundef %grp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %grp, i32 0, i32 1, i32 4
  tail call void @call_rcu(ptr noundef %0, ptr noundef nonnull @z_erofs_rcu_callback) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_erofs_rcu_callback(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %head, i32 -108
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i.i, label %entry.z_erofs_pclusterpages.exit.i_crit_edge, label %if.end.i.i

entry.z_erofs_pclusterpages.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pclusterpages.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr i8, ptr %head, i32 22
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %conv.i.i = zext i16 %4 to i32
  br label %z_erofs_pclusterpages.exit.i

z_erofs_pclusterpages.exit.i:                     ; preds = %if.end.i.i, %entry.z_erofs_pclusterpages.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 1, %entry.z_erofs_pclusterpages.exit.i_crit_edge ]
  %5 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %5)
  %cmp1.i = icmp ugt i32 %retval.0.i.i, %5
  br i1 %cmp1.i, label %for.inc.critedge.i, label %z_erofs_pclusterpages.exit.i.z_erofs_free_pcluster.exit_crit_edge

z_erofs_pclusterpages.exit.i.z_erofs_free_pcluster.exit_crit_edge: ; preds = %z_erofs_pclusterpages.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit

for.inc.critedge.i:                               ; preds = %z_erofs_pclusterpages.exit.i
  %6 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %6)
  %cmp1.1.i = icmp ugt i32 %retval.0.i.i, %6
  br i1 %cmp1.1.i, label %for.inc.critedge.1.i, label %for.inc.critedge.i.z_erofs_free_pcluster.exit_crit_edge

for.inc.critedge.i.z_erofs_free_pcluster.exit_crit_edge: ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit

for.inc.critedge.1.i:                             ; preds = %for.inc.critedge.i
  %7 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %7)
  %cmp1.2.i = icmp ugt i32 %retval.0.i.i, %7
  br i1 %cmp1.2.i, label %for.inc.critedge.2.i, label %for.inc.critedge.1.i.z_erofs_free_pcluster.exit_crit_edge

for.inc.critedge.1.i.z_erofs_free_pcluster.exit_crit_edge: ; preds = %for.inc.critedge.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit

for.inc.critedge.2.i:                             ; preds = %for.inc.critedge.1.i
  %8 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %8)
  %cmp1.3.i = icmp ugt i32 %retval.0.i.i, %8
  br i1 %cmp1.3.i, label %for.inc.critedge.3.i, label %for.inc.critedge.2.i.z_erofs_free_pcluster.exit_crit_edge

for.inc.critedge.2.i.z_erofs_free_pcluster.exit_crit_edge: ; preds = %for.inc.critedge.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit

for.inc.critedge.3.i:                             ; preds = %for.inc.critedge.2.i
  %9 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %9)
  %cmp1.4.i = icmp ugt i32 %retval.0.i.i, %9
  br i1 %cmp1.4.i, label %for.inc.critedge.4.i, label %for.inc.critedge.3.i.z_erofs_free_pcluster.exit_crit_edge

for.inc.critedge.3.i.z_erofs_free_pcluster.exit_crit_edge: ; preds = %for.inc.critedge.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit

for.inc.critedge.4.i:                             ; preds = %for.inc.critedge.3.i
  %10 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %10)
  %cmp1.5.i = icmp ugt i32 %retval.0.i.i, %10
  br i1 %cmp1.5.i, label %for.inc.critedge.5.i, label %for.inc.critedge.4.i.z_erofs_free_pcluster.exit_crit_edge

for.inc.critedge.4.i.z_erofs_free_pcluster.exit_crit_edge: ; preds = %for.inc.critedge.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit

for.inc.critedge.5.i:                             ; preds = %for.inc.critedge.4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

z_erofs_free_pcluster.exit:                       ; preds = %for.inc.critedge.4.i.z_erofs_free_pcluster.exit_crit_edge, %for.inc.critedge.3.i.z_erofs_free_pcluster.exit_crit_edge, %for.inc.critedge.2.i.z_erofs_free_pcluster.exit_crit_edge, %for.inc.critedge.1.i.z_erofs_free_pcluster.exit_crit_edge, %for.inc.critedge.i.z_erofs_free_pcluster.exit_crit_edge, %z_erofs_pclusterpages.exit.i.z_erofs_free_pcluster.exit_crit_edge
  %i.016.lcssa.i = phi i32 [ 0, %z_erofs_pclusterpages.exit.i.z_erofs_free_pcluster.exit_crit_edge ], [ 1, %for.inc.critedge.i.z_erofs_free_pcluster.exit_crit_edge ], [ 2, %for.inc.critedge.1.i.z_erofs_free_pcluster.exit_crit_edge ], [ 3, %for.inc.critedge.2.i.z_erofs_free_pcluster.exit_crit_edge ], [ 4, %for.inc.critedge.3.i.z_erofs_free_pcluster.exit_crit_edge ], [ 5, %for.inc.critedge.4.i.z_erofs_free_pcluster.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.z_erofs_pcluster_slab, ptr @pcluster_pool, i32 %i.016.lcssa.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %add.ptr3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @z_erofs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  %f = alloca %struct.z_erofs_decompress_frontend, align 8
  %pagepool = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %f) #10
  %8 = call ptr @memset(ptr %f, i32 0, i32 112)
  %9 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %f, align 8
  %owned_head = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %owned_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 1594804990 to ptr), ptr %owned_head, align 8
  %mode = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %mode, align 4
  %backmost = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %backmost to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %backmost, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagepool) #10
  %13 = ptrtoint ptr %pagepool to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pagepool, align 4
  tail call fastcc void @trace_erofs_readpage(ptr noundef %page)
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %conv = zext i32 %15 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %headoffset = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 5
  %16 = ptrtoint ptr %headoffset to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shl, ptr %headoffset, align 8
  %sub = or i64 %shl, 4095
  call fastcc void @z_erofs_pcluster_readmore(ptr noundef nonnull %f, ptr noundef null, i64 noundef %sub, ptr noundef nonnull %pagepool, i1 noundef zeroext true)
  %call = call fastcc i32 @z_erofs_do_read_page(ptr noundef nonnull %f, ptr noundef %page, ptr noundef nonnull %pagepool)
  call fastcc void @z_erofs_pcluster_readmore(ptr noundef nonnull %f, ptr noundef null, i64 noundef 0, ptr noundef nonnull %pagepool, i1 noundef zeroext false)
  %cl1.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %cl1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl1.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %entry.z_erofs_collector_end.exit_crit_edge, label %if.end.i

entry.z_erofs_collector_end.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_collector_end.exit

if.end.i:                                         ; preds = %entry
  %clt = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1
  %19 = ptrtoint ptr %clt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clt, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, label %if.end.i.i

if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 55) #10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %shr.i.i.i.i = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i.i, label %if.end.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge [
    i32 2, label %if.end.i.i.if.end.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

is_highmem_idx.exit.i.i.i:                        ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i.i.i = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge

is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.i.if.end.i.i.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %20) #10
  br label %z_erofs_pagevec_ctor_exit.exit.i

z_erofs_pagevec_ctor_exit.exit.i:                 ; preds = %if.end.i.i.i, %is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, %if.end.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, %if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull %18) #10
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i = icmp ult i32 %26, 3
  br i1 %cmp.i, label %if.then2.i, label %z_erofs_pagevec_ctor_exit.exit.i.if.end3.i_crit_edge

z_erofs_pagevec_ctor_exit.exit.i.if.end3.i_crit_edge: ; preds = %z_erofs_pagevec_ctor_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %z_erofs_pagevec_ctor_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 -8
  %call.i.i = call i32 @erofs_workgroup_put(ptr noundef %add.ptr.i.i) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %z_erofs_pagevec_ctor_exit.exit.i.if.end3.i_crit_edge
  %27 = ptrtoint ptr %cl1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cl1.i, align 8
  br label %z_erofs_collector_end.exit

z_erofs_collector_end.exit:                       ; preds = %if.end3.i, %entry.z_erofs_collector_end.exit_crit_edge
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %sync_decompress.i = getelementptr inbounds %struct.erofs_mount_opts, ptr %7, i32 0, i32 1
  %30 = ptrtoint ptr %sync_decompress.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sync_decompress.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %switch.selectcmp = icmp ult i32 %31, 2
  call fastcc void @z_erofs_runqueue(ptr noundef %29, ptr noundef nonnull %f, ptr noundef nonnull %pagepool, i1 noundef zeroext %switch.selectcmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %z_erofs_collector_end.exit.if.end_crit_edge, label %if.then

z_erofs_collector_end.exit.if.end_crit_edge:      ; preds = %z_erofs_collector_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %z_erofs_collector_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %33, ptr noundef nonnull @__func__.z_erofs_readpage, ptr noundef nonnull @.str.5, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %z_erofs_collector_end.exit.if.end_crit_edge
  %map = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2
  call void @erofs_put_metabuf(ptr noundef %map) #10
  call void @erofs_release_pages(ptr noundef nonnull %pagepool) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagepool) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %f) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_erofs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  %f = alloca %struct.z_erofs_decompress_frontend, align 8
  %pagepool = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %f) #10
  %8 = call ptr @memset(ptr %f, i32 0, i32 112)
  %9 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %f, align 8
  %owned_head = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %owned_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 1594804990 to ptr), ptr %owned_head, align 8
  %mode = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %mode, align 4
  %backmost = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %backmost to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %backmost, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagepool) #10
  %13 = ptrtoint ptr %pagepool to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %pagepool, align 4
  %readahead = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 3
  %14 = ptrtoint ptr %readahead to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %readahead, align 8
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %15 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %16 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %headoffset = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 5
  %17 = ptrtoint ptr %headoffset to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul.i, ptr %headoffset, align 8
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %18 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_nr_pages.i, align 4
  %mul.i38 = shl i32 %19, 12
  %conv = zext i32 %mul.i38 to i64
  %add = add nsw i64 %mul.i, -1
  %sub = add nsw i64 %add, %conv
  call fastcc void @z_erofs_pcluster_readmore(ptr noundef nonnull %f, ptr noundef %rac, i64 noundef %sub, ptr noundef nonnull %pagepool, i1 noundef zeroext true)
  %20 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_nr_pages.i, align 4
  %22 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_index.i, align 4
  call fastcc void @trace_erofs_readpages(ptr noundef %3, i32 noundef %23, i32 noundef %21)
  %_batch_count.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 5
  %24 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %_batch_count.i.i, align 4
  %26 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.i.i55 = icmp ult i32 %27, %25
  br i1 %cmp.i.i55, label %entry.do.body2.i.i_crit_edge, label %entry.do.end7.i.i_crit_edge, !prof !95

entry.do.end7.i.i_crit_edge:                      ; preds = %entry
  br label %do.end7.i.i

entry.do.body2.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

do.body2.i.i:                                     ; preds = %while.body.do.body2.i.i_crit_edge, %entry.do.body2.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #10, !srcloc !110
  unreachable

do.end7.i.i:                                      ; preds = %while.body.do.end7.i.i_crit_edge, %entry.do.end7.i.i_crit_edge
  %28 = phi i32 [ %54, %while.body.do.end7.i.i_crit_edge ], [ %27, %entry.do.end7.i.i_crit_edge ]
  %29 = phi i32 [ %52, %while.body.do.end7.i.i_crit_edge ], [ %25, %entry.do.end7.i.i_crit_edge ]
  %head.056 = phi ptr [ %call.i.i, %while.body.do.end7.i.i_crit_edge ], [ null, %entry.do.end7.i.i_crit_edge ]
  %sub.i.i = sub i32 %28, %29
  %30 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i.i, ptr %_nr_pages.i, align 4
  %31 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_index.i, align 4
  %add.i.i = add i32 %32, %29
  store i32 %add.i.i, ptr %_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %29)
  %tobool12.not.i.i = icmp eq i32 %28, %29
  br i1 %tobool12.not.i.i, label %readahead_page.exit.thread, label %if.end15.i.i

readahead_page.exit.thread:                       ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %_batch_count.i.i, align 4
  br label %while.cond7.preheader

if.end15.i.i:                                     ; preds = %do.end7.i.i
  %34 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mapping, align 4
  %i_pages.i.i = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 1
  %call.i.i = call ptr @xa_load(ptr noundef %i_pages.i.i, i32 noundef %add.i.i) #10
  %36 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !97

if.then.i.i.i.i:                                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.2) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %if.end15.i.i
  %39 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then27.i.i, label %do.end36.i.i, !prof !95

if.then27.i.i:                                    ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.36) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #10, !srcloc !111
  unreachable

do.end36.i.i:                                     ; preds = %folio_test_locked.exit.i.i
  %41 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %42, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !95

if.then.i.i.i.i.i:                                ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.18) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #10, !srcloc !112
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %do.end36.i.i
  %43 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %call.i.i, align 4
  %45 = and i32 %44, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i53.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.i.i53.i.i, label %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %readahead_page.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %call.i.i, i32 1, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %readahead_page.exit

readahead_page.exit:                              ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge
  %storemerge.i.i = phi i32 [ %47, %if.end.i.i.i.i ], [ 1, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge ]
  %48 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge.i.i, ptr %_batch_count.i.i, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %readahead_page.exit.while.cond7.preheader_crit_edge, label %while.body

readahead_page.exit.while.cond7.preheader_crit_edge: ; preds = %readahead_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond7.preheader

while.cond7.preheader:                            ; preds = %readahead_page.exit.while.cond7.preheader_crit_edge, %readahead_page.exit.thread
  %tobool8.not57 = icmp eq ptr %head.056, null
  br i1 %tobool8.not57, label %while.cond7.preheader.while.end14_crit_edge, label %while.body9.lr.ph

while.cond7.preheader.while.end14_crit_edge:      ; preds = %while.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end14

while.body9.lr.ph:                                ; preds = %while.cond7.preheader
  %add.ptr = getelementptr i8, ptr %3, i32 -56
  br label %while.body9

while.body:                                       ; preds = %readahead_page.exit
  %49 = ptrtoint ptr %head.056 to i32
  %private1.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 3
  %50 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %private1.i, align 4
  %51 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %_batch_count.i.i, align 4
  %53 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %_nr_pages.i, align 4
  %cmp.i.i = icmp ult i32 %54, %52
  br i1 %cmp.i.i, label %while.body.do.body2.i.i_crit_edge, label %while.body.do.end7.i.i_crit_edge, !prof !95

while.body.do.end7.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i.i

while.body.do.body2.i.i_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i.i

while.body9:                                      ; preds = %put_page.exit.while.body9_crit_edge, %while.body9.lr.ph
  %head.158 = phi ptr [ %head.056, %while.body9.lr.ph ], [ %57, %put_page.exit.while.body9_crit_edge ]
  %private = getelementptr inbounds %struct.page, ptr %head.158, i32 0, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %private, align 4
  %57 = inttoptr i32 %56 to ptr
  %call11 = call fastcc i32 @z_erofs_do_read_page(ptr noundef nonnull %f, ptr noundef nonnull %head.158, ptr noundef nonnull %pagepool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.body9.if.end_crit_edge, label %if.then

while.body9.if.end_crit_edge:                     ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body9
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  %index = getelementptr inbounds %struct.page, ptr %head.158, i32 0, i32 1, i32 0, i32 2
  %60 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index, align 4
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %add.ptr, align 8
  call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %59, ptr noundef nonnull @__func__.z_erofs_readahead, ptr noundef nonnull @.str.35, i32 noundef %61, i64 noundef %63) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body9.if.end_crit_edge
  %64 = getelementptr inbounds %struct.page, ptr %head.158, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i41 = add i32 %66, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %head.158 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i42 = phi i32 [ %sub.i.i41, %if.then.i.i ], [ %67, %if.end.i.i ]
  %68 = inttoptr i32 %retval.0.i.i42 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %69 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i.i.i = icmp eq i32 %70, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i43, label %do.end5.i.i.i.i, !prof !95

if.then.i.i.i.i43:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = inttoptr i32 %retval.0.i.i42 to ptr
  call void @dump_page(ptr noundef %71, ptr noundef nonnull @.str.4) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %72, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@z_erofs_readahead, %if.then.i.i.i.i.i44)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i44], !srcloc !117

if.then.i.i.i.i.i44:                              ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %68, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i44, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %68) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool8.not = icmp eq i32 %56, 0
  br i1 %tobool8.not, label %put_page.exit.while.end14_crit_edge, label %put_page.exit.while.body9_crit_edge

put_page.exit.while.body9_crit_edge:              ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body9

put_page.exit.while.end14_crit_edge:              ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end14

while.end14:                                      ; preds = %put_page.exit.while.end14_crit_edge, %while.cond7.preheader.while.end14_crit_edge
  call fastcc void @z_erofs_pcluster_readmore(ptr noundef nonnull %f, ptr noundef %rac, i64 noundef 0, ptr noundef nonnull %pagepool, i1 noundef zeroext false)
  %cl1.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %cl1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cl1.i, align 8
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %while.end14.z_erofs_collector_end.exit_crit_edge, label %if.end.i

while.end14.z_erofs_collector_end.exit_crit_edge: ; preds = %while.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_collector_end.exit

if.end.i:                                         ; preds = %while.end14
  %clt = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1
  %75 = ptrtoint ptr %clt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clt, align 4
  %tobool.not.i.i45 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i45, label %if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, label %if.end.i.i46

if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

if.end.i.i46:                                     ; preds = %if.end.i
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 55) #10
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %shr.i.i.i.i = lshr i32 %78, 30
  %79 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %shr.i.i.i.i, label %if.end.i.i46.z_erofs_pagevec_ctor_exit.exit.i_crit_edge [
    i32 2, label %if.end.i.i46.if.end.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

if.end.i.i46.if.end.i.i.i_crit_edge:              ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i46.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %if.end.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

is_highmem_idx.exit.i.i.i:                        ; preds = %if.end.i.i46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %80 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp2.i.not.i.i.i = icmp eq i32 %80, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge

is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.i46.if.end.i.i.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %76) #10
  br label %z_erofs_pagevec_ctor_exit.exit.i

z_erofs_pagevec_ctor_exit.exit.i:                 ; preds = %if.end.i.i.i, %is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, %if.end.i.i46.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, %if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull %74) #10
  %81 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp.i = icmp ult i32 %82, 3
  br i1 %cmp.i, label %if.then2.i, label %z_erofs_pagevec_ctor_exit.exit.i.if.end3.i_crit_edge

z_erofs_pagevec_ctor_exit.exit.i.if.end3.i_crit_edge: ; preds = %z_erofs_pagevec_ctor_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then2.i:                                       ; preds = %z_erofs_pagevec_ctor_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %74, i32 -8
  %call.i.i47 = call i32 @erofs_workgroup_put(ptr noundef %add.ptr.i.i) #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %z_erofs_pagevec_ctor_exit.exit.i.if.end3.i_crit_edge
  %83 = ptrtoint ptr %cl1.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %cl1.i, align 8
  br label %z_erofs_collector_end.exit

z_erofs_collector_end.exit:                       ; preds = %if.end3.i, %while.end14.z_erofs_collector_end.exit_crit_edge
  %84 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %i_sb, align 4
  %sync_decompress.i = getelementptr inbounds %struct.erofs_mount_opts, ptr %7, i32 0, i32 1
  %86 = ptrtoint ptr %sync_decompress.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sync_decompress.i, align 4
  %88 = or i32 %87, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %z_erofs_collector_end.exit.z_erofs_get_sync_decompress_policy.exit_crit_edge, label %if.end.i48

z_erofs_collector_end.exit.z_erofs_get_sync_decompress_policy.exit_crit_edge: ; preds = %z_erofs_collector_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_get_sync_decompress_policy.exit

if.end.i48:                                       ; preds = %z_erofs_collector_end.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp3.i = icmp eq i32 %87, 1
  br i1 %cmp3.i, label %land.lhs.true4.i, label %if.end.i48.if.end8.i_crit_edge

if.end.i48.if.end8.i_crit_edge:                   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true4.i:                                 ; preds = %if.end.i48
  %max_sync_decompress_pages.i = getelementptr inbounds %struct.erofs_mount_opts, ptr %7, i32 0, i32 2
  %90 = ptrtoint ptr %max_sync_decompress_pages.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_sync_decompress_pages.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %21)
  %cmp6.not.i = icmp ult i32 %91, %21
  br i1 %cmp6.not.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.z_erofs_get_sync_decompress_policy.exit_crit_edge

land.lhs.true4.i.z_erofs_get_sync_decompress_policy.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_get_sync_decompress_policy.exit

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true4.i.if.end8.i_crit_edge, %if.end.i48.if.end8.i_crit_edge
  br label %z_erofs_get_sync_decompress_policy.exit

z_erofs_get_sync_decompress_policy.exit:          ; preds = %if.end8.i, %land.lhs.true4.i.z_erofs_get_sync_decompress_policy.exit_crit_edge, %z_erofs_collector_end.exit.z_erofs_get_sync_decompress_policy.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end8.i ], [ true, %z_erofs_collector_end.exit.z_erofs_get_sync_decompress_policy.exit_crit_edge ], [ true, %land.lhs.true4.i.z_erofs_get_sync_decompress_policy.exit_crit_edge ]
  call fastcc void @z_erofs_runqueue(ptr noundef %85, ptr noundef nonnull %f, ptr noundef nonnull %pagepool, i1 noundef zeroext %retval.0.i)
  %map = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2
  call void @erofs_put_metabuf(ptr noundef %map) #10
  call void @erofs_release_pages(ptr noundef nonnull %pagepool) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagepool) #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %f) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_detach_private(ptr noundef %folio) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.anon.76, ptr %folio, i32 0, i32 4
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %0, align 4
  %and.i.i.i1 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1)
  %tobool.not.i.i2 = icmp eq i32 %and.i.i.i1, 0
  br i1 %tobool.not.i.i2, label %folio_clear_private.exit, label %if.then.i.i3, !prof !97

if.then.i.i3:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #10
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %9 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !95

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !117

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %folio) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_erofs_readpage(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_readpage, i32 0, i32 1), ptr blockaddress(@trace_erofs_readpage, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !118
  %call43 = tail call i32 @__traceiter_erofs_readpage(ptr noundef null, ptr noundef %page, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !97

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_readpage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_readpage, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_erofs_readpage.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_erofs_readpage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 112, ptr noundef nonnull @.str.7) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @z_erofs_pcluster_readmore(ptr noundef %f, ptr noundef %rac, i64 noundef %end, ptr noundef %pagepool, i1 noundef zeroext %backmost) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  br i1 %backmost, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %map2 = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2
  %m_la = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %m_la to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %end, ptr %m_la, align 8
  %call = tail call i32 @z_erofs_map_blocks_iter(ptr noundef %1, ptr noundef %map2, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup49_crit_edge

if.then.cleanup49_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

if.end:                                           ; preds = %if.then
  %tobool5.not = icmp eq ptr %rac, null
  br i1 %tobool5.not, label %if.end.if.end23_crit_edge, label %if.then6

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %3 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %4 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %5 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_la, align 8
  %m_llen = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_llen, align 8
  %add = add i64 %6, 4294967295
  %sub = add i64 %add, %8
  %or = or i64 %sub, 4095
  %add9 = sub nsw i64 1, %mul.i
  %sub10 = add i64 %add9, %or
  %conv = trunc i64 %sub10 to i32
  tail call void @readahead_expand(ptr noundef nonnull %rac, i64 noundef %mul.i, i32 noundef %conv) #10
  br label %cleanup49

if.else:                                          ; preds = %entry
  %m_la15 = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %m_la15 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %m_la15, align 8
  %m_llen19 = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %m_llen19 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_llen19, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool20.not = icmp eq i64 %12, 0
  br i1 %tobool20.not, label %if.else.cleanup49_crit_edge, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else.cleanup49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %end.addr.0.in.in.in = phi i64 [ %10, %if.else.if.end23_crit_edge ], [ %end, %if.end.if.end23_crit_edge ]
  %end.addr.0.in.in = add i64 %end.addr.0.in.in.in, -1
  %end.addr.0.in = or i64 %end.addr.0.in.in, 4095
  %end.addr.0 = add i64 %end.addr.0.in, 1
  %m_la24 = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %m_la24 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %m_la24, align 8
  %m_llen25 = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %m_llen25 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_llen25, align 8
  %add26 = add i64 %14, -1
  %sub27 = add i64 %add26, %16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  br label %while.cond

while.cond:                                       ; preds = %skip.while.cond_crit_edge, %if.end23
  %cur.0 = phi i64 [ %sub27, %if.end23 ], [ %conv47, %skip.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %cur.0, i64 %end.addr.0)
  %cmp.not = icmp ult i64 %cur.0, %end.addr.0
  br i1 %cmp.not, label %while.cond.cleanup49_crit_edge, label %while.body

while.cond.cleanup49_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %cur.0, 12
  %conv29 = trunc i64 %shr to i32
  %17 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i.i = getelementptr inbounds %struct.address_space, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %gfp_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gfp_mask.i.i.i, align 4
  %or1.i.i = and i32 %20, -76801
  %and.i = or i32 %or1.i.i, 73728
  %call1.i = tail call ptr @pagecache_get_page(ptr noundef %18, i32 noundef %conv29, i32 noundef 54, i32 noundef %and.i) #10
  %tobool31.not = icmp eq ptr %call1.i, null
  br i1 %tobool31.not, label %while.body.skip_crit_edge, label %if.end33

while.body.skip_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

if.end33:                                         ; preds = %while.body
  %21 = getelementptr inbounds %struct.page, ptr %call1.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call1.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %24, %if.end.i.i ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %25, align 4
  %32 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i.not.i = icmp eq i32 %32, 0
  br i1 %tobool.i.not.i, label %if.end37, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @unlock_page(ptr noundef nonnull %call1.i) #10
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %21, align 4
  %and.i.i83 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %and.i.i83, 0
  br i1 %tobool.not.i.i84, label %if.end.i.i87, label %if.then.i.i86, !prof !97

if.then.i.i86:                                    ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i85 = add i32 %34, -1
  br label %_compound_head.exit.i89

if.end.i.i87:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %call1.i to i32
  br label %_compound_head.exit.i89

_compound_head.exit.i89:                          ; preds = %if.end.i.i87, %if.then.i.i86
  %retval.0.i.i88 = phi i32 [ %sub.i.i85, %if.then.i.i86 ], [ %35, %if.end.i.i87 ]
  %36 = inttoptr i32 %retval.0.i.i88 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !95

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i89
  call void @__sanitizer_cov_trace_pc() #12
  %39 = inttoptr i32 %retval.0.i.i88 to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i89
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@z_erofs_pcluster_readmore, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !117

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.skip.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.skip_crit_edge

folio_put_testzero.exit.i.i.skip_crit_edge:       ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

folio_put_testzero.exit.i.i.skip.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip.sink.split

if.end37:                                         ; preds = %folio_flags.exit.i.i
  %call38 = tail call fastcc i32 @z_erofs_do_read_page(ptr noundef %f, ptr noundef nonnull %call1.i, ptr noundef %pagepool)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb, align 4
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %42, ptr noundef nonnull @__func__.z_erofs_pcluster_readmore, ptr noundef nonnull @.str.9, i32 noundef %conv29, i64 noundef %44) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %21, align 4
  %and.i.i90 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %and.i.i90, 0
  br i1 %tobool.not.i.i91, label %if.end.i.i94, label %if.then.i.i93, !prof !97

if.then.i.i93:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i92 = add i32 %46, -1
  br label %_compound_head.exit.i99

if.end.i.i94:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %call1.i to i32
  br label %_compound_head.exit.i99

_compound_head.exit.i99:                          ; preds = %if.end.i.i94, %if.then.i.i93
  %retval.0.i.i95 = phi i32 [ %sub.i.i92, %if.then.i.i93 ], [ %47, %if.end.i.i94 ]
  %48 = inttoptr i32 %retval.0.i.i95 to ptr
  %_refcount.i.i.i.i.i96 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 3
  %call.i.i.i.i.i.i.i97 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i96, i32 noundef 4) #10
  %49 = ptrtoint ptr %_refcount.i.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %_refcount.i.i.i.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i.i.i98 = icmp eq i32 %50, 0
  br i1 %cmp.i.i.i.i98, label %if.then.i.i.i.i100, label %do.end5.i.i.i.i104, !prof !95

if.then.i.i.i.i100:                               ; preds = %_compound_head.exit.i99
  call void @__sanitizer_cov_trace_pc() #12
  %51 = inttoptr i32 %retval.0.i.i95 to ptr
  tail call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i104:                               ; preds = %_compound_head.exit.i99
  %call.i.i.i10.i.i.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i96, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i96, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i96, ptr %_refcount.i.i.i.i.i96, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i96) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i102 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i102)
  %cmp.i.i.i.i.i.i.i103 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i102, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@z_erofs_pcluster_readmore, %if.then.i.i.i.i.i106)) #10
          to label %folio_put_testzero.exit.i.i107 [label %if.then.i.i.i.i.i106], !srcloc !117

if.then.i.i.i.i.i106:                             ; preds = %do.end5.i.i.i.i104
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i105 = zext i1 %cmp.i.i.i.i.i.i.i103 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %48, i32 noundef -1, i32 noundef %conv.i.i.i.i.i105) #10
  br label %folio_put_testzero.exit.i.i107

folio_put_testzero.exit.i.i107:                   ; preds = %if.then.i.i.i.i.i106, %do.end5.i.i.i.i104
  br i1 %cmp.i.i.i.i.i.i.i103, label %folio_put_testzero.exit.i.i107.skip.sink.split_crit_edge, label %folio_put_testzero.exit.i.i107.skip_crit_edge

folio_put_testzero.exit.i.i107.skip_crit_edge:    ; preds = %folio_put_testzero.exit.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

folio_put_testzero.exit.i.i107.skip.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip.sink.split

skip.sink.split:                                  ; preds = %folio_put_testzero.exit.i.i107.skip.sink.split_crit_edge, %folio_put_testzero.exit.i.i.skip.sink.split_crit_edge
  %.sink = phi ptr [ %36, %folio_put_testzero.exit.i.i.skip.sink.split_crit_edge ], [ %48, %folio_put_testzero.exit.i.i107.skip.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #10
  br label %skip

skip:                                             ; preds = %skip.sink.split, %folio_put_testzero.exit.i.i107.skip_crit_edge, %folio_put_testzero.exit.i.i.skip_crit_edge, %while.body.skip_crit_edge
  %cmp42 = icmp ult i64 %cur.0, 4096
  %shl = shl i32 %conv29, 12
  %sub46 = add i32 %shl, -1
  %conv47 = zext i32 %sub46 to i64
  br i1 %cmp42, label %skip.cleanup49_crit_edge, label %skip.while.cond_crit_edge

skip.while.cond_crit_edge:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

skip.cleanup49_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup49

cleanup49:                                        ; preds = %skip.cleanup49_crit_edge, %while.cond.cleanup49_crit_edge, %if.else.cleanup49_crit_edge, %if.then6, %if.then.cleanup49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @z_erofs_do_read_page(ptr noundef %fe, ptr noundef %page, ptr noundef %pagepool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %map2 = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 2
  %clt3 = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %7 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %private1.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %private1.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i292, label %z_erofs_onlinepage_init.exit, !prof !95

if.then.i.i292:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !124
  unreachable

z_erofs_onlinepage_init.exit:                     ; preds = %entry
  tail call void @_set_bit(i32 noundef 13, ptr noundef %page) #10
  %m_la = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 2, i32 2
  %m_llen = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 2, i32 4
  %cl = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 3
  %mode.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 6
  %backmost = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 4
  %m_flags = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 2, i32 7
  %owned_head.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 5
  %m_pa.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 2, i32 1
  %m_plen.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 2, i32 3
  %pcl.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 1
  %m_algorithmformat.i.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 2, i32 6
  %tailpcl.i.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 2
  %nr1.i.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 3
  %next.i128.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 1
  %pages2.i.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 2
  %index.i.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 4
  %icpage_ptr.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 1, i32 4
  %headoffset.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %fe, i32 0, i32 5
  %managed_cache = getelementptr inbounds %struct.erofs_sb_info, ptr %5, i32 0, i32 6
  br label %repeat

repeat:                                           ; preds = %next_part.repeat_crit_edge, %z_erofs_onlinepage_init.exit
  %end.0 = phi i32 [ 4096, %z_erofs_onlinepage_init.exit ], [ %233, %next_part.repeat_crit_edge ]
  %spiltted.0 = phi i32 [ 0, %z_erofs_onlinepage_init.exit ], [ %spiltted.1, %next_part.repeat_crit_edge ]
  %tight.0.off0 = phi i1 [ true, %z_erofs_onlinepage_init.exit ], [ %tight.2, %next_part.repeat_crit_edge ]
  %sub = add i32 %end.0, -1
  %conv = zext i32 %sub to i64
  %add = add nuw nsw i64 %shl.i, %conv
  %11 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %m_la, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %12)
  %cmp.not = icmp ult i64 %add, %12
  br i1 %cmp.not, label %repeat.do.body_crit_edge, label %land.lhs.true

repeat.do.body_crit_edge:                         ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %repeat
  %13 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %m_llen, align 8
  %add8 = add i64 %14, %12
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add8)
  %cmp9 = icmp ult i64 %add, %add8
  br i1 %cmp9, label %if.then, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cl, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.then.restart_now_crit_edge, label %if.then.hitted_crit_edge

if.then.hitted_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %hitted

if.then.restart_now_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart_now

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %repeat.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @z_erofs_do_read_page.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@z_erofs_do_read_page, %if.then17)) #10
          to label %do.end [label %if.then17], !srcloc !117

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @z_erofs_do_read_page.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i64 noundef %add) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %17 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl, align 4
  %tobool.not.i293 = icmp eq ptr %18, null
  br i1 %tobool.not.i293, label %do.end.if.end23_crit_edge, label %if.end.i

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i:                                         ; preds = %do.end
  %19 = ptrtoint ptr %clt3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clt3, align 4
  %tobool.not.i.i294 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i294, label %if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, label %if.end.i.i295

if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

if.end.i.i295:                                    ; preds = %if.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 55) #10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %shr.i.i.i.i = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %shr.i.i.i.i, label %if.end.i.i295.z_erofs_pagevec_ctor_exit.exit.i_crit_edge [
    i32 2, label %if.end.i.i295.if.end.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

if.end.i.i295.if.end.i.i.i_crit_edge:             ; preds = %if.end.i.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i295.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %if.end.i.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

is_highmem_idx.exit.i.i.i:                        ; preds = %if.end.i.i295
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i.i.i = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge

is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.i

is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %is_highmem_idx.exit.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.i295.if.end.i.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %20) #10
  br label %z_erofs_pagevec_ctor_exit.exit.i

z_erofs_pagevec_ctor_exit.exit.i:                 ; preds = %if.end.i.i.i, %is_highmem_idx.exit.i.i.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, %if.end.i.i295.z_erofs_pagevec_ctor_exit.exit.i_crit_edge, %if.end.i.z_erofs_pagevec_ctor_exit.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull %18) #10
  %25 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i = icmp ult i32 %26, 3
  br i1 %cmp.i, label %if.then2.i, label %z_erofs_pagevec_ctor_exit.exit.i.if.then22_crit_edge

z_erofs_pagevec_ctor_exit.exit.i.if.then22_crit_edge: ; preds = %z_erofs_pagevec_ctor_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then2.i:                                       ; preds = %z_erofs_pagevec_ctor_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 -8
  %call.i.i = tail call i32 @erofs_workgroup_put(ptr noundef %add.ptr.i.i) #10
  br label %if.then22

if.then22:                                        ; preds = %if.then2.i, %z_erofs_pagevec_ctor_exit.exit.i.if.then22_crit_edge
  %27 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %cl, align 4
  %28 = ptrtoint ptr %backmost to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %backmost, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.end.if.end23_crit_edge
  %29 = ptrtoint ptr %m_la to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add, ptr %m_la, align 8
  %30 = ptrtoint ptr %m_llen to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %m_llen, align 8
  %call28 = tail call i32 @z_erofs_map_blocks_iter(ptr noundef %1, ptr noundef %map2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end23.restart_now_crit_edge, label %if.end23.err_out_crit_edge

if.end23.err_out_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end23.restart_now_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %restart_now

restart_now:                                      ; preds = %if.end23.restart_now_crit_edge, %if.then.restart_now_crit_edge
  %31 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_flags, align 4
  %and = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %restart_now.hitted_crit_edge, label %if.end34

restart_now.hitted_crit_edge:                     ; preds = %restart_now
  call void @__sanitizer_cov_trace_pc() #12
  br label %hitted

if.end34:                                         ; preds = %restart_now
  %33 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cl, align 4
  %tobool.not.i296 = icmp eq ptr %34, null
  br i1 %tobool.not.i296, label %do.body9.i, label %do.body3.i, !prof !97

do.body3.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 542, 0\0A.popsection", ""() #10, !srcloc !125
  unreachable

do.body9.i:                                       ; preds = %if.end34
  %35 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %owned_head.i, align 4
  %magicptr.i = ptrtoint ptr %36 to i32
  %37 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %magicptr.i, label %do.end44.i [
    i32 0, label %do.body17.i
    i32 1594810029, label %do.body36.i
  ], !prof !126

do.body17.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 545, 0\0A.popsection", ""() #10, !srcloc !127
  unreachable

do.body36.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 546, 0\0A.popsection", ""() #10, !srcloc !128
  unreachable

do.end44.i:                                       ; preds = %do.body9.i
  %38 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m_flags, align 4
  %and.i = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool45.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool45.not.i, label %if.end60.i, label %if.then46.i

if.then46.i:                                      ; preds = %do.end44.i
  %40 = ptrtoint ptr %m_pa.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %m_pa.i, align 8
  %and47.i = and i64 %41, 4095
  %42 = ptrtoint ptr %m_plen.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %m_plen.i, align 8
  %add.i = add i64 %and47.i, %43
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %add.i)
  %cmp48.i = icmp ugt i64 %add.i, 4096
  br i1 %cmp48.i, label %do.body51.i, label %if.then46.i.tailpacking.i_crit_edge

if.then46.i.tailpacking.i_crit_edge:              ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailpacking.i

do.body51.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 550, 0\0A.popsection", ""() #10, !srcloc !129
  unreachable

if.end60.i:                                       ; preds = %do.end44.i
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %46 = ptrtoint ptr %m_pa.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %m_pa.i, align 8
  %shr.i = lshr i64 %47, 12
  %conv.i297 = trunc i64 %shr.i to i32
  %call.i = tail call ptr @erofs_find_workgroup(ptr noundef %45, i32 noundef %conv.i297) #10
  %tobool62.not.i = icmp eq ptr %call.i, null
  br i1 %tobool62.not.i, label %if.end60.i.tailpacking.i_crit_edge, label %if.then63.i

if.end60.i.tailpacking.i_crit_edge:               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailpacking.i

if.then63.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %pcl.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %pcl.i, align 4
  br label %if.end72.i

tailpacking.i:                                    ; preds = %if.end60.i.tailpacking.i_crit_edge, %if.then46.i.tailpacking.i_crit_edge
  %49 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %m_flags, align 4
  %and.i.i298 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i298)
  %tobool.not.i.i299 = icmp eq i32 %and.i.i298, 0
  %and2.i.i = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body4.i.i, label %if.end.i.i300

do.body4.i.i:                                     ; preds = %tailpacking.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 471, 0\0A.popsection", ""() #10, !srcloc !130
  unreachable

if.end.i.i300:                                    ; preds = %tailpacking.i
  br i1 %tobool.not.i.i299, label %cond.false.i.i, label %if.end.i.i300.cond.end.i.i_crit_edge

if.end.i.i300.cond.end.i.i_crit_edge:             ; preds = %if.end.i.i300
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i300
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %m_plen.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %m_plen.i, align 8
  %shr.i.i = lshr i64 %52, 12
  %extract.t.i.i = trunc i64 %shr.i.i to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.i.i300.cond.end.i.i_crit_edge
  %cond.off0.i.i = phi i32 [ %extract.t.i.i, %cond.false.i.i ], [ 1, %if.end.i.i300.cond.end.i.i_crit_edge ]
  %53 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %cond.off0.i.i)
  %cmp1.i.i.i = icmp ult i32 %53, %cond.off0.i.i
  br i1 %cmp1.i.i.i, label %for.inc.i.i.i, label %cond.end.i.i.if.end.i.i.i301_crit_edge

cond.end.i.i.if.end.i.i.i301_crit_edge:           ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i301

if.end.i.i.i301:                                  ; preds = %for.inc.4.i.i.i.if.end.i.i.i301_crit_edge, %for.inc.3.i.i.i.if.end.i.i.i301_crit_edge, %for.inc.2.i.i.i.if.end.i.i.i301_crit_edge, %for.inc.1.i.i.i.if.end.i.i.i301_crit_edge, %for.inc.i.i.i.if.end.i.i.i301_crit_edge, %cond.end.i.i.if.end.i.i.i301_crit_edge
  %i.016.lcssa.i.i.i = phi i32 [ 0, %cond.end.i.i.if.end.i.i.i301_crit_edge ], [ 1, %for.inc.i.i.i.if.end.i.i.i301_crit_edge ], [ 2, %for.inc.1.i.i.i.if.end.i.i.i301_crit_edge ], [ 3, %for.inc.2.i.i.i.if.end.i.i.i301_crit_edge ], [ 4, %for.inc.3.i.i.i.if.end.i.i.i301_crit_edge ], [ 5, %for.inc.4.i.i.i.if.end.i.i.i301_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.z_erofs_pcluster_slab, ptr @pcluster_pool, i32 %i.016.lcssa.i.i.i
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i.i.i, align 4
  %call.i.i120.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %55, i32 noundef 3392) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i120.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i301.if.then12.i.i_crit_edge, label %z_erofs_alloc_pcluster.exit.i.i

if.end.i.i.i301.if.then12.i.i_crit_edge:          ; preds = %if.end.i.i.i301
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i.i

for.inc.i.i.i:                                    ; preds = %cond.end.i.i
  %56 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %cond.off0.i.i)
  %cmp1.1.i.i.i = icmp ult i32 %56, %cond.off0.i.i
  br i1 %cmp1.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.i.if.end.i.i.i301_crit_edge

for.inc.i.i.i.if.end.i.i.i301_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i301

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %57 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %cond.off0.i.i)
  %cmp1.2.i.i.i = icmp ult i32 %57, %cond.off0.i.i
  br i1 %cmp1.2.i.i.i, label %for.inc.2.i.i.i, label %for.inc.1.i.i.i.if.end.i.i.i301_crit_edge

for.inc.1.i.i.i.if.end.i.i.i301_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i301

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %58 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %cond.off0.i.i)
  %cmp1.3.i.i.i = icmp ult i32 %58, %cond.off0.i.i
  br i1 %cmp1.3.i.i.i, label %for.inc.3.i.i.i, label %for.inc.2.i.i.i.if.end.i.i.i301_crit_edge

for.inc.2.i.i.i.if.end.i.i.i301_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i301

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %59 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %cond.off0.i.i)
  %cmp1.4.i.i.i = icmp ult i32 %59, %cond.off0.i.i
  br i1 %cmp1.4.i.i.i, label %for.inc.4.i.i.i, label %for.inc.3.i.i.i.if.end.i.i.i301_crit_edge

for.inc.3.i.i.i.if.end.i.i.i301_crit_edge:        ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i301

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %60 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %cond.off0.i.i)
  %cmp1.5.i.i.i = icmp ult i32 %60, %cond.off0.i.i
  br i1 %cmp1.5.i.i.i, label %for.inc.4.i.i.i.if.then12.i.i_crit_edge, label %for.inc.4.i.i.i.if.end.i.i.i301_crit_edge

for.inc.4.i.i.i.if.end.i.i.i301_crit_edge:        ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i301

for.inc.4.i.i.i.if.then12.i.i_crit_edge:          ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i.i

z_erofs_alloc_pcluster.exit.i.i:                  ; preds = %if.end.i.i.i301
  %conv.i.i.i = trunc i32 %cond.off0.i.i to i16
  %61 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %call.i.i120.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i.i, ptr %61, align 2
  %cmp.i.i.i = icmp ugt ptr %call.i.i120.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %z_erofs_alloc_pcluster.exit.i.i.if.then12.i.i_crit_edge, label %if.end14.i.i

z_erofs_alloc_pcluster.exit.i.i.if.then12.i.i_crit_edge: ; preds = %z_erofs_alloc_pcluster.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %z_erofs_alloc_pcluster.exit.i.i.if.then12.i.i_crit_edge, %for.inc.4.i.i.i.if.then12.i.i_crit_edge, %if.end.i.i.i301.if.then12.i.i_crit_edge
  %retval.2.i134.i.i = phi ptr [ %call.i.i120.i.i, %z_erofs_alloc_pcluster.exit.i.i.if.then12.i.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.4.i.i.i.if.then12.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.i301.if.then12.i.i_crit_edge ]
  %63 = ptrtoint ptr %retval.2.i134.i.i to i32
  br label %z_erofs_register_collection.exit.i

if.end14.i.i:                                     ; preds = %z_erofs_alloc_pcluster.exit.i.i
  %refcount.i.i = getelementptr inbounds %struct.erofs_workgroup, ptr %call.i.i120.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #10
  %64 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 1, ptr %refcount.i.i, align 4
  %65 = ptrtoint ptr %m_algorithmformat.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %m_algorithmformat.i.i, align 2
  %algorithmformat.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %call.i.i120.i.i, i32 0, i32 6
  %67 = ptrtoint ptr %algorithmformat.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %algorithmformat.i.i, align 4
  %68 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %m_llen, align 8
  %70 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %m_flags, align 4
  %and16.i.i = lshr i32 %71, 17
  %and16.lobit.i.i = and i32 %and16.i.i, 1
  %.tr.i.i = trunc i64 %69 to i32
  %72 = shl i32 %.tr.i.i, 1
  %conv20.i.i = or i32 %and16.lobit.i.i, %72
  %length.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %call.i.i120.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv20.i.i, ptr %length.i.i, align 4
  %74 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %owned_head.i, align 4
  %next.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %call.i.i120.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %next.i.i, align 8
  %77 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %mode.i, align 4
  %primary_collection.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %call.i.i120.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %m_la, align 8
  %80 = trunc i64 %79 to i16
  %conv22.i.i = and i16 %80, 4095
  %pageofs.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %call.i.i120.i.i, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %pageofs.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv22.i.i, ptr %pageofs.i.i, align 4
  tail call void @__mutex_init(ptr noundef %primary_collection.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @z_erofs_register_collection.__key) #10
  %call28.i.i = tail call i32 @mutex_trylock(ptr noundef %primary_collection.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %do.body34.i.i, label %do.end42.i.i, !prof !95

do.body34.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #10, !srcloc !131
  unreachable

do.end42.i.i:                                     ; preds = %if.end14.i.i
  br i1 %tobool.not.i.i299, label %if.else.i.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %call.i.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %call.i.i120.i.i, align 8
  %83 = ptrtoint ptr %m_pa.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %m_pa.i, align 8
  %85 = trunc i64 %84 to i16
  %conv46.i.i = and i16 %85, 4095
  %pageofs_in.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %call.i.i120.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %pageofs_in.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv46.i.i, ptr %pageofs_in.i.i, align 8
  %87 = ptrtoint ptr %m_plen.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %m_plen.i, align 8
  %conv48.i.i = trunc i64 %88 to i16
  %89 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv48.i.i, ptr %61, align 2
  br label %if.end65.i.i

if.else.i.i:                                      ; preds = %do.end42.i.i
  %90 = ptrtoint ptr %m_pa.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %m_pa.i, align 8
  %shr50.i.i = lshr i64 %91, 12
  %conv51.i.i = trunc i64 %shr50.i.i to i32
  %92 = ptrtoint ptr %call.i.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv51.i.i, ptr %call.i.i120.i.i, align 8
  %93 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb, align 4
  %call55.i.i = tail call ptr @erofs_insert_workgroup(ptr noundef %94, ptr noundef nonnull %call.i.i120.i.i) #10
  %cmp.i121.i.i = icmp ugt ptr %call55.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121.i.i, label %if.then57.i.i, label %if.end59.i.i

if.then57.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %call55.i.i to i32
  br label %err_out.i.i

if.end59.i.i:                                     ; preds = %if.else.i.i
  %cmp.not.i.i = icmp eq ptr %call55.i.i, %call.i.i120.i.i
  br i1 %cmp.not.i.i, label %if.end59.i.i.if.end65.i.i_crit_edge, label %if.then62.i.i

if.end59.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i.i

if.then62.i.i:                                    ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %pcl.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call55.i.i, ptr %pcl.i, align 4
  br label %err_out.i.i

if.end65.i.i:                                     ; preds = %if.end59.i.i.if.end65.i.i_crit_edge, %if.then44.i.i
  %97 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %owned_head.i, align 4
  %cmp67.i.i = icmp eq ptr %98, inttoptr (i32 1594804990 to ptr)
  br i1 %cmp67.i.i, label %if.then69.i.i, label %if.end65.i.i.z_erofs_register_collection.exit.thread.i_crit_edge

if.end65.i.i.z_erofs_register_collection.exit.thread.i_crit_edge: ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_register_collection.exit.thread.i

if.then69.i.i:                                    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %tailpcl.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i120.i.i, ptr %tailpcl.i.i, align 4
  br label %z_erofs_register_collection.exit.thread.i

z_erofs_register_collection.exit.thread.i:        ; preds = %if.then69.i.i, %if.end65.i.i.z_erofs_register_collection.exit.thread.i_crit_edge
  %100 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %next.i.i, ptr %owned_head.i, align 4
  %101 = ptrtoint ptr %pcl.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i.i120.i.i, ptr %pcl.i, align 4
  br label %out.sink.split.i

err_out.i.i:                                      ; preds = %if.then62.i.i, %if.then57.i.i
  %err.0.i.i = phi i32 [ %95, %if.then57.i.i ], [ -17, %if.then62.i.i ]
  tail call void @mutex_unlock(ptr noundef %primary_collection.i.i) #10
  %102 = ptrtoint ptr %call.i.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call.i.i120.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i.i.i.i.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i.i.i.i.i, label %err_out.i.i.z_erofs_pclusterpages.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

err_out.i.i.z_erofs_pclusterpages.exit.i.i.i_crit_edge: ; preds = %err_out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pclusterpages.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %err_out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %61 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %61, align 2
  %conv.i.i.i.i = zext i16 %105 to i32
  br label %z_erofs_pclusterpages.exit.i.i.i

z_erofs_pclusterpages.exit.i.i.i:                 ; preds = %if.end.i.i.i.i, %err_out.i.i.z_erofs_pclusterpages.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 1, %err_out.i.i.z_erofs_pclusterpages.exit.i.i.i_crit_edge ]
  %106 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %106)
  %cmp1.i122.i.i = icmp ugt i32 %retval.0.i.i.i.i, %106
  br i1 %cmp1.i122.i.i, label %for.inc.critedge.i.i.i, label %z_erofs_pclusterpages.exit.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge

z_erofs_pclusterpages.exit.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge: ; preds = %z_erofs_pclusterpages.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit.i.i

for.inc.critedge.i.i.i:                           ; preds = %z_erofs_pclusterpages.exit.i.i.i
  %107 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %107)
  %cmp1.1.i126.i.i = icmp ugt i32 %retval.0.i.i.i.i, %107
  br i1 %cmp1.1.i126.i.i, label %for.inc.critedge.1.i.i.i, label %for.inc.critedge.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge

for.inc.critedge.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge: ; preds = %for.inc.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit.i.i

for.inc.critedge.1.i.i.i:                         ; preds = %for.inc.critedge.i.i.i
  %108 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %108)
  %cmp1.2.i127.i.i = icmp ugt i32 %retval.0.i.i.i.i, %108
  br i1 %cmp1.2.i127.i.i, label %for.inc.critedge.2.i.i.i, label %for.inc.critedge.1.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge

for.inc.critedge.1.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge: ; preds = %for.inc.critedge.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit.i.i

for.inc.critedge.2.i.i.i:                         ; preds = %for.inc.critedge.1.i.i.i
  %109 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %109)
  %cmp1.3.i128.i.i = icmp ugt i32 %retval.0.i.i.i.i, %109
  br i1 %cmp1.3.i128.i.i, label %for.inc.critedge.3.i.i.i, label %for.inc.critedge.2.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge

for.inc.critedge.2.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge: ; preds = %for.inc.critedge.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit.i.i

for.inc.critedge.3.i.i.i:                         ; preds = %for.inc.critedge.2.i.i.i
  %110 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %110)
  %cmp1.4.i129.i.i = icmp ugt i32 %retval.0.i.i.i.i, %110
  br i1 %cmp1.4.i129.i.i, label %for.inc.critedge.4.i.i.i, label %for.inc.critedge.3.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge

for.inc.critedge.3.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge: ; preds = %for.inc.critedge.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit.i.i

for.inc.critedge.4.i.i.i:                         ; preds = %for.inc.critedge.3.i.i.i
  %111 = load i32, ptr getelementptr inbounds ([6 x %struct.z_erofs_pcluster_slab], ptr @pcluster_pool, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %111)
  %cmp1.5.i130.i.i = icmp ugt i32 %retval.0.i.i.i.i, %111
  br i1 %cmp1.5.i130.i.i, label %for.inc.critedge.5.i.i.i, label %for.inc.critedge.4.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge

for.inc.critedge.4.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge: ; preds = %for.inc.critedge.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_free_pcluster.exit.i.i

for.inc.critedge.5.i.i.i:                         ; preds = %for.inc.critedge.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #10, !srcloc !109
  unreachable

z_erofs_free_pcluster.exit.i.i:                   ; preds = %for.inc.critedge.4.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge, %for.inc.critedge.3.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge, %for.inc.critedge.2.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge, %for.inc.critedge.1.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge, %for.inc.critedge.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge, %z_erofs_pclusterpages.exit.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge
  %i.016.lcssa.i123.i.i = phi i32 [ 0, %z_erofs_pclusterpages.exit.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge ], [ 1, %for.inc.critedge.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge ], [ 2, %for.inc.critedge.1.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge ], [ 3, %for.inc.critedge.2.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge ], [ 4, %for.inc.critedge.3.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge ], [ 5, %for.inc.critedge.4.i.i.i.z_erofs_free_pcluster.exit.i.i_crit_edge ]
  %add.ptr.i124.i.i = getelementptr %struct.z_erofs_pcluster_slab, ptr @pcluster_pool, i32 %i.016.lcssa.i123.i.i
  %112 = ptrtoint ptr %add.ptr.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr.i124.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %113, ptr noundef nonnull %call.i.i120.i.i) #10
  br label %z_erofs_register_collection.exit.i

z_erofs_register_collection.exit.i:               ; preds = %z_erofs_free_pcluster.exit.i.i, %if.then12.i.i
  %retval.0.i.i302 = phi i32 [ %63, %if.then12.i.i ], [ %err.0.i.i, %z_erofs_free_pcluster.exit.i.i ]
  %114 = zext i32 %retval.0.i.i302 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %retval.0.i.i302, label %z_erofs_register_collection.exit.i.err_out_crit_edge [
    i32 0, label %z_erofs_register_collection.exit.i.out.i_crit_edge
    i32 -17, label %z_erofs_register_collection.exit.i.if.end72.i_crit_edge
  ]

z_erofs_register_collection.exit.i.if.end72.i_crit_edge: ; preds = %z_erofs_register_collection.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72.i

z_erofs_register_collection.exit.i.out.i_crit_edge: ; preds = %z_erofs_register_collection.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

z_erofs_register_collection.exit.i.err_out_crit_edge: ; preds = %z_erofs_register_collection.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end72.i:                                       ; preds = %z_erofs_register_collection.exit.i.if.end72.i_crit_edge, %if.then63.i
  %115 = ptrtoint ptr %pcl.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pcl.i, align 4
  %117 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %owned_head.i, align 4
  %next.i112.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %116, i32 0, i32 2
  %cmp.i.i = icmp eq ptr %118, %next.i112.i
  br i1 %cmp.i.i, label %if.end72.i.do.body3.i.i_crit_edge, label %lor.lhs.false.i.i

if.end72.i.do.body3.i.i_crit_edge:                ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

lor.lhs.false.i.i:                                ; preds = %if.end72.i
  %119 = ptrtoint ptr %tailpcl.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tailpcl.i.i, align 4
  %cmp2.i.i = icmp eq ptr %116, %120
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.do.body3.i.i_crit_edge, label %if.end.i118.i

lor.lhs.false.i.i.do.body3.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %lor.lhs.false.i.i.do.body3.i.i_crit_edge, %if.end72.i.do.body3.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #10, !srcloc !132
  unreachable

if.end.i118.i:                                    ; preds = %lor.lhs.false.i.i
  %primary_collection.i114.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %116, i32 0, i32 1
  %pageofs.i115.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %116, i32 0, i32 1, i32 1
  %121 = ptrtoint ptr %pageofs.i115.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %pageofs.i115.i, align 4
  %conv.i.i = zext i16 %122 to i64
  %123 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %m_la, align 8
  %and.i117.i = and i64 %124, 4095
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i117.i, i64 %conv.i.i)
  %cmp9.not.i.i = icmp eq i64 %and.i117.i, %conv.i.i
  br i1 %cmp9.not.i.i, label %do.end24.i.i, label %do.body13.i.i

do.body13.i.i:                                    ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #10, !srcloc !133
  unreachable

do.end24.i.i:                                     ; preds = %if.end.i118.i
  %length25.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %116, i32 0, i32 3
  %125 = ptrtoint ptr %length25.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %length25.i.i, align 4
  %and26.i.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool.not.i119.i = icmp eq i32 %and26.i.i, 0
  %127 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %m_llen, align 8
  br i1 %tobool.not.i119.i, label %if.else.i122.i, label %if.then27.i.i

if.then27.i.i:                                    ; preds = %do.end24.i.i
  %shl.i.i = shl i64 %128, 1
  %conv28.i.i = zext i32 %126 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %conv28.i.i)
  %cmp29.i.i = icmp ugt i64 %shl.i.i, %conv28.i.i
  br i1 %cmp29.i.i, label %do.body33.i.i, label %if.then27.i.i.if.end70.i124.i_crit_edge

if.then27.i.i.if.end70.i124.i_crit_edge:          ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i124.i

do.body33.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 435, 0\0A.popsection", ""() #10, !srcloc !134
  unreachable

if.else.i122.i:                                   ; preds = %do.end24.i.i
  %.tr.i120.i = trunc i64 %128 to i32
  %conv44.i.i = shl i32 %.tr.i120.i, 1
  %129 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %m_flags, align 4
  %and45.i.i = lshr i32 %130, 17
  %131 = and i32 %and45.i.i, 1
  %132 = or i32 %131, %conv44.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %126)
  %cmp493.i.i = icmp ugt i32 %132, %126
  br i1 %cmp493.i.i, label %if.else.i122.i.land.rhs.i.i_crit_edge, label %if.else.i122.i.if.end70.i124.i_crit_edge

if.else.i122.i.if.end70.i124.i_crit_edge:         ; preds = %if.else.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i124.i

if.else.i122.i.land.rhs.i.i_crit_edge:            ; preds = %if.else.i122.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.end60.i.i.land.rhs.i.i_crit_edge, %if.else.i122.i.land.rhs.i.i_crit_edge
  %length.04.i.i = phi i32 [ %135, %do.end60.i.i.land.rhs.i.i_crit_edge ], [ %126, %if.else.i122.i.land.rhs.i.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %length25.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %length25.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %land.rhs.i.i
  %133 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %length25.i.i, i32 %length.04.i.i, i32 %132) #10, !srcloc !135
  %asmresult.i.i.i = extractvalue { i32, i32 } %133, 0
  %tobool.not.i.i123.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i123.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %133, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %length.04.i.i, i32 %asmresult1.i.i.i)
  %cmp54.not.i.i = icmp eq i32 %length.04.i.i, %asmresult1.i.i.i
  br i1 %cmp54.not.i.i, label %__cmpxchg.exit.i.i.if.end70.i124.i_crit_edge, label %do.end60.i.i

__cmpxchg.exit.i.i.if.end70.i124.i_crit_edge:     ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i124.i

do.end60.i.i:                                     ; preds = %__cmpxchg.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !137
  %134 = ptrtoint ptr %length25.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %length25.i.i, align 4
  %cmp49.i.i = icmp ugt i32 %132, %135
  br i1 %cmp49.i.i, label %do.end60.i.i.land.rhs.i.i_crit_edge, label %do.end60.i.i.if.end70.i124.i_crit_edge

do.end60.i.i.if.end70.i124.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.i124.i

do.end60.i.i.land.rhs.i.i_crit_edge:              ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i.i

if.end70.i124.i:                                  ; preds = %do.end60.i.i.if.end70.i124.i_crit_edge, %__cmpxchg.exit.i.i.if.end70.i124.i_crit_edge, %if.else.i122.i.if.end70.i124.i_crit_edge, %if.then27.i.i.if.end70.i124.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %primary_collection.i114.i, i32 noundef 0) #10
  %136 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %owned_head.i, align 4
  %cmp72.i.i = icmp eq ptr %137, inttoptr (i32 1594804990 to ptr)
  br i1 %cmp72.i.i, label %if.then74.i.i, label %if.end70.i124.i.if.end76.i.i_crit_edge

if.end70.i124.i.if.end76.i.i_crit_edge:           ; preds = %if.end70.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76.i.i

if.then74.i.i:                                    ; preds = %if.end70.i124.i
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %tailpcl.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %116, ptr %tailpcl.i.i, align 4
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %if.then74.i.i, %if.end70.i124.i.if.end76.i.i_crit_edge
  %139 = ptrtoint ptr %pcl.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pcl.i, align 4
  %next.i.i.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %140, i32 0, i32 2
  %call.i.i.i125.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !138
  %141 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %owned_head.i, align 4
  %143 = ptrtoint ptr %142 to i32
  tail call void @llvm.prefetch.p0(ptr %next.i.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end76.i.i
  %144 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %next.i.i.i, i32 0, i32 %143) #10, !srcloc !135
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %144, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %__cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

__cmpxchg.exit.i.i.i:                             ; preds = %do.body.i.i.i.i
  %asmresult1.i.i.i.i = extractvalue { i32, i32 } %144, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i.i)
  %cmp.i.i126.i = icmp eq i32 %asmresult1.i.i.i.i, 0
  br i1 %cmp.i.i126.i, label %if.then.i.i.i, label %if.end.i.i127.i

if.then.i.i.i:                                    ; preds = %__cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %145 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %next.i.i.i, ptr %owned_head.i, align 4
  %146 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 4, ptr %mode.i, align 4
  br label %out.sink.split.i

if.end.i.i127.i:                                  ; preds = %__cmpxchg.exit.i.i.i
  %call.i58.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !140
  %147 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %owned_head.i, align 4
  %149 = ptrtoint ptr %148 to i32
  tail call void @llvm.prefetch.p0(ptr %next.i.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i61.i.i.i

do.body.i61.i.i.i:                                ; preds = %do.body.i61.i.i.i.do.body.i61.i.i.i_crit_edge, %if.end.i.i127.i
  %150 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %next.i.i.i, i32 1594804990, i32 %149) #10, !srcloc !135
  %asmresult.i59.i.i.i = extractvalue { i32, i32 } %150, 0
  %tobool.not.i60.i.i.i = icmp eq i32 %asmresult.i59.i.i.i, 0
  br i1 %tobool.not.i60.i.i.i, label %__cmpxchg.exit63.i.i.i, label %do.body.i61.i.i.i.do.body.i61.i.i.i_crit_edge

do.body.i61.i.i.i.do.body.i61.i.i.i_crit_edge:    ; preds = %do.body.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i61.i.i.i

__cmpxchg.exit63.i.i.i:                           ; preds = %do.body.i61.i.i.i
  %asmresult1.i62.i.i.i = extractvalue { i32, i32 } %150, 1
  %151 = inttoptr i32 %asmresult1.i62.i.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !141
  %cmp40.i.i.i = icmp eq ptr %151, inttoptr (i32 1594804990 to ptr)
  br i1 %cmp40.i.i.i, label %if.then41.i.i.i, label %if.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %__cmpxchg.exit63.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %owned_head.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 1594804990 to ptr), ptr %owned_head.i, align 4
  %153 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 2, ptr %mode.i, align 4
  %154 = ptrtoint ptr %tailpcl.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %tailpcl.i.i, align 4
  br label %out.sink.split.i

if.end43.i.i.i:                                   ; preds = %__cmpxchg.exit63.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %155 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 1, ptr %mode.i, align 4
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.end43.i.i.i, %if.then41.i.i.i, %if.then.i.i.i, %z_erofs_register_collection.exit.thread.i
  %primary_collection.i.sink.i = phi ptr [ %primary_collection.i.i, %z_erofs_register_collection.exit.thread.i ], [ %primary_collection.i114.i, %if.then.i.i.i ], [ %primary_collection.i114.i, %if.then41.i.i.i ], [ %primary_collection.i114.i, %if.end43.i.i.i ]
  %156 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %primary_collection.i.sink.i, ptr %cl, align 4
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %z_erofs_register_collection.exit.i.out.i_crit_edge
  %157 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cl, align 4
  %159 = getelementptr inbounds %struct.z_erofs_collection, ptr %158, i32 0, i32 4
  %vcnt.i = getelementptr inbounds %struct.z_erofs_collection, ptr %158, i32 0, i32 3
  %160 = ptrtoint ptr %vcnt.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vcnt.i, align 4
  %162 = ptrtoint ptr %nr1.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 3, ptr %nr1.i.i, align 4
  %163 = ptrtoint ptr %next.i128.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %next.i128.i, align 4
  %164 = ptrtoint ptr %clt3 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr null, ptr %clt3, align 4
  %165 = ptrtoint ptr %pages2.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %159, ptr %pages2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %161)
  %cmp.i129.i = icmp ugt i32 %161, 2
  br i1 %cmp.i129.i, label %if.then.i.i304, label %out.i.for.cond.preheader.i.i.i_crit_edge

out.i.for.cond.preheader.i.i.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i.i.i

if.then.i.i304:                                   ; preds = %out.i
  %sub.i.i303 = add i32 %161, -3
  tail call fastcc void @z_erofs_pagevec_ctor_pagedown(ptr noundef %clt3, i1 noundef zeroext false) #10
  %166 = ptrtoint ptr %nr1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nr1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i303, i32 %167)
  %cmp46.i.i = icmp ugt i32 %sub.i.i303, %167
  br i1 %cmp46.i.i, label %if.then.i.i304.while.body.i.i_crit_edge, label %if.then.i.i304.if.end.i131.i_crit_edge

if.then.i.i304.if.end.i131.i_crit_edge:           ; preds = %if.then.i.i304
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i131.i

if.then.i.i304.while.body.i.i_crit_edge:          ; preds = %if.then.i.i304
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.i304.while.body.i.i_crit_edge
  %168 = phi i32 [ %170, %while.body.i.i.while.body.i.i_crit_edge ], [ %167, %if.then.i.i304.while.body.i.i_crit_edge ]
  %i.addr.07.i.i = phi i32 [ %sub6.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub.i.i303, %if.then.i.i304.while.body.i.i_crit_edge ]
  %sub6.i.i = sub i32 %i.addr.07.i.i, %168
  tail call fastcc void @z_erofs_pagevec_ctor_pagedown(ptr noundef %clt3, i1 noundef zeroext false) #10
  %169 = ptrtoint ptr %nr1.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nr1.i.i, align 4
  %cmp4.i.i = icmp ugt i32 %sub6.i.i, %170
  br i1 %cmp4.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.if.end.i131.i_crit_edge

while.body.i.i.if.end.i131.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i131.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i131.i:                                    ; preds = %while.body.i.i.if.end.i131.i_crit_edge, %if.then.i.i304.if.end.i131.i_crit_edge
  %i.addr.0.lcssa.i.i = phi i32 [ %sub.i.i303, %if.then.i.i304.if.end.i131.i_crit_edge ], [ %sub6.i.i, %while.body.i.i.if.end.i131.i_crit_edge ]
  %171 = ptrtoint ptr %next.i128.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr.i.i = load ptr, ptr %next.i128.i, align 4
  %tobool.not.i.i130.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not.i.i130.i, label %if.end.i131.i.for.cond.preheader.i.i.i_crit_edge, label %if.end.i131.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge

if.end.i131.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge: ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_init.exit.i

if.end.i131.i.for.cond.preheader.i.i.i_crit_edge: ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i131.i.for.cond.preheader.i.i.i_crit_edge, %out.i.for.cond.preheader.i.i.i_crit_edge
  %i.addr.14.i.i = phi i32 [ %i.addr.0.lcssa.i.i, %if.end.i131.i.for.cond.preheader.i.i.i_crit_edge ], [ %161, %out.i.for.cond.preheader.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.addr.14.i.i)
  %cmp28.not.i.i.i = icmp eq i32 %i.addr.14.i.i, 0
  br i1 %cmp28.not.i.i.i, label %for.cond.preheader.i.i.i.do.body.i.i132.i_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.preheader.i.i.i.do.body.i.i132.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i132.i

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.preheader.i.i.i
  %172 = ptrtoint ptr %pages2.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pages2.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %index.029.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %i.addr.14.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.do.body.i.i132.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.cond.i.i.i.do.body.i.i132.i_crit_edge:        ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i132.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %index.029.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.__tagptr2, ptr %173, i32 %index.029.i.i.i
  %174 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %t.sroa.0.0.copyload.i.i.i = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %t.sroa.0.0.copyload.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp2.i.i.i, label %cleanup20.loopexit.i.i.i, label %for.cond.i.i.i

do.body.i.i132.i:                                 ; preds = %for.cond.i.i.i.do.body.i.i132.i_crit_edge, %for.cond.preheader.i.i.i.do.body.i.i132.i_crit_edge
  %175 = ptrtoint ptr %nr1.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %nr1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %i.addr.14.i.i)
  %cmp9.not.i.i.i = icmp ugt i32 %176, %i.addr.14.i.i
  br i1 %cmp9.not.i.i.i, label %do.body.i.i132.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge, label %do.body13.i.i.i, !prof !97

do.body.i.i132.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge: ; preds = %do.body.i.i132.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_init.exit.i

do.body13.i.i.i:                                  ; preds = %do.body.i.i132.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zpvec.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #10, !srcloc !142
  unreachable

cleanup20.loopexit.i.i.i:                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.le.i.i.i = and i32 %t.sroa.0.0.copyload.i.i.i, -4
  %177 = inttoptr i32 %and5.le.i.i.i to ptr
  br label %z_erofs_pagevec_ctor_init.exit.i

z_erofs_pagevec_ctor_init.exit.i:                 ; preds = %cleanup20.loopexit.i.i.i, %do.body.i.i132.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge, %if.end.i131.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge
  %i.addr.13.i.i = phi i32 [ %i.addr.0.lcssa.i.i, %if.end.i131.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge ], [ %i.addr.14.i.i, %do.body.i.i132.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge ], [ %i.addr.14.i.i, %cleanup20.loopexit.i.i.i ]
  %retval.2.i.i.i = phi ptr [ %.pr.i.i, %if.end.i131.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge ], [ null, %do.body.i.i132.i.z_erofs_pagevec_ctor_init.exit.i_crit_edge ], [ %177, %cleanup20.loopexit.i.i.i ]
  %178 = ptrtoint ptr %next.i128.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %retval.2.i.i.i, ptr %next.i128.i, align 4
  %179 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %i.addr.13.i.i, ptr %index.i.i, align 4
  %180 = ptrtoint ptr %pcl.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pcl.i, align 4
  %compressed_pages.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %181, i32 0, i32 7
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i.i133.i = icmp eq i32 %183, 0
  br i1 %tobool.not.i.i133.i, label %z_erofs_pagevec_ctor_init.exit.i.z_erofs_collector_begin.exit.thread_crit_edge, label %if.end.i135.i

z_erofs_pagevec_ctor_init.exit.i.z_erofs_collector_begin.exit.thread_crit_edge: ; preds = %z_erofs_pagevec_ctor_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_collector_begin.exit.thread

if.end.i135.i:                                    ; preds = %z_erofs_pagevec_ctor_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %184 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %181, i32 0, i32 5
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %184, align 2
  %conv.i134.i = zext i16 %186 to i32
  br label %z_erofs_collector_begin.exit.thread

z_erofs_collector_begin.exit.thread:              ; preds = %if.end.i135.i, %z_erofs_pagevec_ctor_init.exit.i.z_erofs_collector_begin.exit.thread_crit_edge
  %retval.0.i136.i = phi i32 [ %conv.i134.i, %if.end.i135.i ], [ 1, %z_erofs_pagevec_ctor_init.exit.i.z_erofs_collector_begin.exit.thread_crit_edge ]
  %add.ptr85.i = getelementptr ptr, ptr %compressed_pages.i, i32 %retval.0.i136.i
  %187 = ptrtoint ptr %icpage_ptr.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %add.ptr85.i, ptr %icpage_ptr.i, align 4
  %188 = ptrtoint ptr %pcl.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pcl.i, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i306 = icmp eq i32 %191, 0
  br i1 %tobool.not.i306, label %if.then40, label %if.else

if.then40:                                        ; preds = %z_erofs_collector_begin.exit.thread
  %192 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i_sb, align 4
  %194 = ptrtoint ptr %m_pa.i to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %m_pa.i, align 8
  %div287 = lshr i64 %195, 12
  %conv43 = trunc i64 %div287 to i32
  %call44 = tail call ptr @erofs_read_metabuf(ptr noundef %map2, ptr noundef %193, i32 noundef %conv43, i32 noundef 0) #10
  %cmp.i307 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i307, label %cleanup, label %if.end49

if.end49:                                         ; preds = %if.then40
  %196 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %map2, align 8
  %198 = getelementptr inbounds %struct.page, ptr %197, i32 0, i32 1
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile i32, ptr %198, align 4
  %and.i.i308 = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i308)
  %tobool.not.i.i309 = icmp eq i32 %and.i.i308, 0
  br i1 %tobool.not.i.i309, label %if.end.i.i312, label %if.then.i.i311, !prof !97

if.then.i.i311:                                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i310 = add i32 %200, -1
  br label %_compound_head.exit.i315

if.end.i.i312:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %197 to i32
  br label %_compound_head.exit.i315

_compound_head.exit.i315:                         ; preds = %if.end.i.i312, %if.then.i.i311
  %retval.0.i.i313 = phi i32 [ %sub.i.i310, %if.then.i.i311 ], [ %201, %if.end.i.i312 ]
  %202 = inttoptr i32 %retval.0.i.i313 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %202, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %203 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %204, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i314 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i314, label %if.then.i1.i, label %do.end5.i.i, !prof !95

if.then.i1.i:                                     ; preds = %_compound_head.exit.i315
  call void @__sanitizer_cov_trace_pc() #12
  %205 = inttoptr i32 %retval.0.i.i313 to ptr
  tail call void @dump_page(ptr noundef %205, ptr noundef nonnull @.str.21) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i315
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %206 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@z_erofs_do_read_page, %if.then.i.i.i.i)) #10
          to label %cleanup.thread [label %if.then.i.i.i.i], !srcloc !117

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %202, i32 noundef 1) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %207 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %map2, align 8
  %209 = ptrtoint ptr %pcl.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %pcl.i, align 4
  %compressed_pages = getelementptr inbounds %struct.z_erofs_pcluster, ptr %210, i32 0, i32 7
  %211 = ptrtoint ptr %compressed_pages to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %208, ptr %compressed_pages, align 4
  %212 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 3, ptr %mode.i, align 4
  br label %hitted

cleanup:                                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %213 = ptrtoint ptr %call44 to i32
  %214 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %215, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15, i32 noundef %213) #10
  br label %err_out

if.else:                                          ; preds = %z_erofs_collector_begin.exit.thread
  %216 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %5, align 8
  %218 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %m_la, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %cmp.i316 = icmp eq i8 %217, 0
  br i1 %cmp.i316, label %if.else.should_alloc_managed_pages.exit.thread_crit_edge, label %if.end.i318

if.else.should_alloc_managed_pages.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %should_alloc_managed_pages.exit.thread

if.end.i318:                                      ; preds = %if.else
  %220 = ptrtoint ptr %backmost to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %backmost, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i317 = icmp eq i8 %221, 0
  br i1 %tobool.not.i317, label %if.end2.i, label %if.end.i318.should_alloc_managed_pages.exit.thread336_crit_edge

if.end.i318.should_alloc_managed_pages.exit.thread336_crit_edge: ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #12
  br label %should_alloc_managed_pages.exit.thread336

if.end2.i:                                        ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %217)
  %cmp3.i = icmp ugt i8 %217, 1
  br i1 %cmp3.i, label %should_alloc_managed_pages.exit, label %if.end2.i.should_alloc_managed_pages.exit.thread_crit_edge

if.end2.i.should_alloc_managed_pages.exit.thread_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %should_alloc_managed_pages.exit.thread

should_alloc_managed_pages.exit:                  ; preds = %if.end2.i
  %222 = ptrtoint ptr %headoffset.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %headoffset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %223, i64 %219)
  %cmp4.i = icmp ugt i64 %223, %219
  br i1 %cmp4.i, label %should_alloc_managed_pages.exit.should_alloc_managed_pages.exit.thread336_crit_edge, label %should_alloc_managed_pages.exit.should_alloc_managed_pages.exit.thread_crit_edge

should_alloc_managed_pages.exit.should_alloc_managed_pages.exit.thread_crit_edge: ; preds = %should_alloc_managed_pages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %should_alloc_managed_pages.exit.thread

should_alloc_managed_pages.exit.should_alloc_managed_pages.exit.thread336_crit_edge: ; preds = %should_alloc_managed_pages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %should_alloc_managed_pages.exit.thread336

should_alloc_managed_pages.exit.thread336:        ; preds = %should_alloc_managed_pages.exit.should_alloc_managed_pages.exit.thread336_crit_edge, %if.end.i318.should_alloc_managed_pages.exit.thread336_crit_edge
  br label %should_alloc_managed_pages.exit.thread

should_alloc_managed_pages.exit.thread:           ; preds = %should_alloc_managed_pages.exit.thread336, %should_alloc_managed_pages.exit.should_alloc_managed_pages.exit.thread_crit_edge, %if.end2.i.should_alloc_managed_pages.exit.thread_crit_edge, %if.else.should_alloc_managed_pages.exit.thread_crit_edge
  %224 = phi i32 [ 1, %should_alloc_managed_pages.exit.thread336 ], [ 0, %should_alloc_managed_pages.exit.should_alloc_managed_pages.exit.thread_crit_edge ], [ 0, %if.else.should_alloc_managed_pages.exit.thread_crit_edge ], [ 0, %if.end2.i.should_alloc_managed_pages.exit.thread_crit_edge ]
  %225 = ptrtoint ptr %managed_cache to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %managed_cache, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %226, i32 0, i32 9
  %227 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %i_mapping, align 8
  tail call fastcc void @preload_compressed_pages(ptr noundef %clt3, ptr noundef %228, i32 noundef %224, ptr noundef %pagepool)
  br label %hitted

hitted:                                           ; preds = %should_alloc_managed_pages.exit.thread, %cleanup.thread, %restart_now.hitted_crit_edge, %if.then.hitted_crit_edge
  %229 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %230)
  %cmp75 = icmp ugt i32 %230, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %230)
  %cmp78 = icmp ne i32 %230, 3
  %spec.select = and i1 %cmp75, %cmp78
  %and82285 = and i1 %tight.0.off0, %spec.select
  %conv85 = zext i32 %end.0 to i64
  %add86 = add nuw nsw i64 %shl.i, %conv85
  %231 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %m_la, align 8
  %sub88 = sub i64 %add86, %232
  %conv89 = trunc i64 %sub88 to i32
  %233 = tail call i32 @llvm.usub.sat.i32(i32 %end.0, i32 %conv89)
  %234 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %m_flags, align 4
  %and95 = and i32 %235, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %hitted
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %233, i32 noundef %end.0, i32 noundef 0, i32 noundef 0) #10
  br label %next_part

if.end98:                                         ; preds = %hitted
  call void @__sanitizer_cov_trace_cmp4(i32 %end.0, i32 %conv89)
  %tobool99.not.not = icmp ugt i32 %end.0, %conv89
  br i1 %tobool99.not.not, label %if.then113, label %cond.false101

cond.false101:                                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spiltted.0)
  %tobool102.not = icmp eq i32 %spiltted.0, 0
  br i1 %tobool102.not, label %cond.false101.if.end122_crit_edge, label %cond.false104

cond.false101.if.end122_crit_edge:                ; preds = %cond.false101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

cond.false104:                                    ; preds = %cond.false101
  call void @__sanitizer_cov_trace_pc() #12
  %not.and82285 = xor i1 %and82285, true
  %cond107 = zext i1 %not.and82285 to i32
  br label %if.end122

if.then113:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %230)
  %cmp115 = icmp ugt i32 %230, 3
  %and119286 = and i1 %tight.0.off0, %cmp115
  br label %if.end122

if.end122:                                        ; preds = %if.then113, %cond.false104, %cond.false101.if.end122_crit_edge
  %cond111339 = phi i32 [ 2, %if.then113 ], [ 0, %cond.false101.if.end122_crit_edge ], [ %cond107, %cond.false104 ]
  %tight.1 = phi i1 [ %and119286, %if.then113 ], [ %and82285, %cond.false101.if.end122_crit_edge ], [ %and82285, %cond.false104 ]
  br label %retry

retry:                                            ; preds = %if.then129.retry_crit_edge, %if.end122
  %236 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %237)
  %cmp124 = icmp ugt i32 %237, 3
  %call126 = tail call fastcc i32 @z_erofs_attach_page(ptr noundef %clt3, ptr noundef %page, i32 noundef %cond111339, i1 noundef zeroext %cmp124)
  %238 = zext i32 %call126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %238, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call126, label %retry.err_out_crit_edge [
    i32 -11, label %if.then129
    i32 0, label %if.end141
  ]

retry.err_out_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.then129:                                       ; preds = %retry
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 35904, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %private1.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 3
  %239 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 -4, ptr %private1.i, align 4
  %call131 = tail call fastcc i32 @z_erofs_attach_page(ptr noundef %clt3, ptr noundef %call38.i.i.i, i32 noundef 0, i1 noundef zeroext true)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.then129.retry_crit_edge, label %if.then129.err_out_crit_edge

if.then129.err_out_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.then129.retry_crit_edge:                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

if.end141:                                        ; preds = %retry
  %240 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %index.i, align 4
  %242 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %m_la, align 8
  %shr = lshr i64 %243, 12
  %244 = trunc i64 %shr to i32
  %conv146 = sub i32 %241, %244
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %244)
  %tobool1.not.i = icmp eq i32 %241, %244
  %shl.i320 = shl i32 %conv146, 2
  br label %repeat.i

repeat.i:                                         ; preds = %atomic_cmpxchg.exit.i.repeat.i_crit_edge, %if.end141
  %call.i.i.i321 = tail call zeroext i1 @__kasan_check_read(ptr noundef %private1.i.i, i32 noundef 4) #10
  %245 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %private1.i.i, align 4
  %shr.i322 = ashr i32 %246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %246)
  %tobool.not.i323 = icmp ult i32 %246, 4
  br i1 %tobool.not.i323, label %repeat.i.if.end13.i_crit_edge, label %if.then.i324

repeat.i.if.end13.i_crit_edge:                    ; preds = %repeat.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then.i324:                                     ; preds = %repeat.i
  br i1 %tobool1.not.i, label %if.then.i324.z_erofs_onlinepage_fixup.exit_crit_edge, label %do.body.i

if.then.i324.z_erofs_onlinepage_fixup.exit_crit_edge: ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_onlinepage_fixup.exit

do.body.i:                                        ; preds = %if.then.i324
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i322, i32 %conv146)
  %cmp.not.i = icmp eq i32 %shr.i322, %conv146
  br i1 %cmp.not.i, label %do.body.i.if.end13.i_crit_edge, label %do.body6.i, !prof !97

do.body.i.if.end13.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 169, 0\0A.popsection", ""() #10, !srcloc !146
  unreachable

if.end13.i:                                       ; preds = %do.body.i.if.end13.i_crit_edge, %repeat.i.if.end13.i_crit_edge
  %and.i325 = and i32 %246, 3
  %add.i326 = add nuw nsw i32 %and.i325, 1
  %or.i = or i32 %add.i326, %shl.i320
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %private1.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr %private1.i.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i329

do.body.i.i.i.i329:                               ; preds = %do.body.i.i.i.i329.do.body.i.i.i.i329_crit_edge, %if.end13.i
  %247 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %private1.i.i, ptr %private1.i.i, i32 %246, i32 %or.i, ptr elementtype(i32) %private1.i.i) #10, !srcloc !103
  %asmresult.i.i.i.i327 = extractvalue { i32, i32 } %247, 0
  %tobool.not.i.i.i.i328 = icmp eq i32 %asmresult.i.i.i.i327, 0
  br i1 %tobool.not.i.i.i.i328, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i329.do.body.i.i.i.i329_crit_edge

do.body.i.i.i.i329.do.body.i.i.i.i329_crit_edge:  ; preds = %do.body.i.i.i.i329
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i329

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i329
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %247, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  %cmp16.not.i = icmp eq i32 %asmresult3.i.i.i.i, %246
  br i1 %cmp16.not.i, label %atomic_cmpxchg.exit.i.z_erofs_onlinepage_fixup.exit_crit_edge, label %atomic_cmpxchg.exit.i.repeat.i_crit_edge

atomic_cmpxchg.exit.i.repeat.i_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %repeat.i

atomic_cmpxchg.exit.i.z_erofs_onlinepage_fixup.exit_crit_edge: ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_onlinepage_fixup.exit

z_erofs_onlinepage_fixup.exit:                    ; preds = %atomic_cmpxchg.exit.i.z_erofs_onlinepage_fixup.exit_crit_edge, %if.then.i324.z_erofs_onlinepage_fixup.exit_crit_edge
  %inc = add i32 %spiltted.0, 1
  %248 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cl, align 4
  %nr_pages = getelementptr inbounds %struct.z_erofs_collection, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %nr_pages, align 2
  %conv148 = zext i16 %251 to i32
  %add149 = add i32 %conv146, 1
  %252 = tail call i32 @llvm.umax.i32(i32 %add149, i32 %conv148)
  %conv157 = trunc i32 %252 to i16
  %253 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv157, ptr %nr_pages, align 2
  br label %next_part

next_part:                                        ; preds = %z_erofs_onlinepage_fixup.exit, %if.then97
  %spiltted.1 = phi i32 [ %inc, %z_erofs_onlinepage_fixup.exit ], [ %spiltted.0, %if.then97 ]
  %tight.2 = phi i1 [ %tight.1, %z_erofs_onlinepage_fixup.exit ], [ %and82285, %if.then97 ]
  %conv160 = zext i32 %233 to i64
  %add161 = add nuw nsw i64 %shl.i, %conv160
  %254 = ptrtoint ptr %m_la to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %m_la, align 8
  %sub163 = sub i64 %add161, %255
  %256 = ptrtoint ptr %m_llen to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %sub163, ptr %m_llen, align 8
  %cmp165.not.not = icmp ugt i32 %end.0, %conv89
  br i1 %cmp165.not.not, label %next_part.repeat_crit_edge, label %next_part.out_crit_edge

next_part.out_crit_edge:                          ; preds = %next_part
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

next_part.repeat_crit_edge:                       ; preds = %next_part
  call void @__sanitizer_cov_trace_pc() #12
  br label %repeat

out:                                              ; preds = %SetPageError.exit, %next_part.out_crit_edge
  %spiltted.2 = phi i32 [ %spiltted.0, %SetPageError.exit ], [ %spiltted.1, %next_part.out_crit_edge ]
  %err.6 = phi i32 [ %err.7, %SetPageError.exit ], [ 0, %next_part.out_crit_edge ]
  tail call fastcc void @z_erofs_onlinepage_endio(ptr noundef %page)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @z_erofs_do_read_page.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@z_erofs_do_read_page, %if.then181)) #10
          to label %cleanup186 [label %if.then181], !srcloc !117

if.then181:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %257 = ptrtoint ptr %m_llen to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %m_llen, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @z_erofs_do_read_page.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, ptr noundef %page, i32 noundef %spiltted.2, i64 noundef %258) #10
  br label %cleanup186

err_out:                                          ; preds = %if.then129.err_out_crit_edge, %retry.err_out_crit_edge, %cleanup, %z_erofs_register_collection.exit.i.err_out_crit_edge, %if.end23.err_out_crit_edge
  %err.7 = phi i32 [ %213, %cleanup ], [ %call131, %if.then129.err_out_crit_edge ], [ %call126, %retry.err_out_crit_edge ], [ %call28, %if.end23.err_out_crit_edge ], [ %retval.0.i.i302, %z_erofs_register_collection.exit.i.err_out_crit_edge ]
  %259 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load volatile i32, ptr %259, align 4
  %and.i.i = and i32 %261, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !97

if.then.i:                                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.body7.i:                                       ; preds = %err_out
  %262 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load volatile i32, ptr %259, align 4
  %and.i31.i = and i32 %263, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %263, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %264 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %264, %if.end.i.i ]
  %265 = inttoptr i32 %retval.0.i.i to ptr
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load volatile i32, ptr %265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %267)
  %cmp.i.not.i = icmp eq i32 %267, -1
  %268 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load volatile i32, ptr %259, align 4
  %and.i32.i = and i32 %269, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !95

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !97

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %269, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %270 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %270, %if.end.i36.i ]
  %271 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %271, ptr noundef nonnull @.str.27) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !97

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %269, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %272 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %272, %if.end.i43.i ]
  %273 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %273) #10
  br label %out

cleanup186:                                       ; preds = %if.then181, %out
  ret i32 %err.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @z_erofs_runqueue(ptr noundef %sb, ptr nocapture noundef readonly %f, ptr noundef %pagepool, i1 noundef zeroext %force_fg) unnamed_addr #0 align 64 {
entry:
  %mdev.i = alloca %struct.erofs_map_dev, align 8
  %io = alloca [2 x %struct.z_erofs_decompressqueue], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %io) #10
  %0 = call ptr @memset(ptr %io, i32 255, i32 128)
  %owned_head = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 1, i32 5
  %1 = ptrtoint ptr %owned_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owned_head, align 4
  %cmp = icmp eq ptr %2, inttoptr (i32 1594804990 to ptr)
  br i1 %cmp, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

if.end:                                           ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i, align 16
  %u10.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %u10.i.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @jobqueue_init.__key.30) #10
  %pending_bios.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %pending_bios.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %pending_bios.i.i.i, align 4
  %6 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sb, ptr %io, align 4
  %head.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 2
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 1594810029 to ptr), ptr %head.i.i.i, align 4
  %add.ptr1.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 1
  br i1 %force_fg, label %if.end.fg_out.i.i.i_crit_edge, label %if.then.i.i.i

if.end.fg_out.i.i.i_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fg_out.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  %call.i.i27.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 64, i32 noundef 11712, i32 noundef -1) #13
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i27.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.then.i.i.i.fg_out.i.i.i_crit_edge, label %do.body.i.i.i

if.then.i.i.i.fg_out.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fg_out.i.i.i

do.body.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %u.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %call.i.i27.i.i.i, i32 0, i32 3
  call void @__init_work(ptr noundef %u.i.i.i, i32 noundef 0) #10
  %8 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %u.i.i.i, align 4
  %lockdep_map.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %call.i.i27.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @jobqueue_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry7.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %call.i.i27.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %entry7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry7.i.i.i, ptr %entry7.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %call.i.i27.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry7.i.i.i, ptr %prev.i.i.i.i, align 4
  %func.i.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %call.i.i27.i.i.i, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @z_erofs_decompressqueue_work, ptr %func.i.i.i, align 4
  br label %jobqueueset_init.exit.i

fg_out.i.i.i:                                     ; preds = %if.then.i.i.i.fg_out.i.i.i_crit_edge, %if.end.fg_out.i.i.i_crit_edge
  %u10.i18.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 1, i32 3
  call void @__init_waitqueue_head(ptr noundef %u10.i18.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @jobqueue_init.__key.30) #10
  %pending_bios.i19.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 1, i32 1
  %call.i.i.i20.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios.i19.i.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %pending_bios.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %pending_bios.i19.i.i, align 4
  br label %jobqueueset_init.exit.i

jobqueueset_init.exit.i:                          ; preds = %fg_out.i.i.i, %do.body.i.i.i
  %tobool120.not.i = phi i1 [ false, %fg_out.i.i.i ], [ true, %do.body.i.i.i ]
  %tobool127.i = phi i1 [ true, %fg_out.i.i.i ], [ false, %do.body.i.i.i ]
  %force_fg.addr.1 = phi i32 [ 1, %fg_out.i.i.i ], [ 0, %do.body.i.i.i ]
  %q.0.i.i.i = phi ptr [ %add.ptr1.i.i, %fg_out.i.i.i ], [ %call.i.i27.i.i.i, %do.body.i.i.i ]
  %13 = ptrtoint ptr %q.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sb, ptr %q.0.i.i.i, align 4
  %head.i21.i.i = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %q.0.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %q.0.i.i.i to i32
  %or.i.i = or i32 %force_fg.addr.1, %14
  %15 = inttoptr i32 %or.i.i to ptr
  %16 = ptrtoint ptr %head.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %2, ptr %head.i21.i.i, align 4
  %.compoundliteral.sroa.2.0.mdev.sroa_idx.i = getelementptr inbounds i8, ptr %mdev.i, i32 16
  %.compoundliteral.sroa.3.0.mdev.sroa_idx.i = getelementptr inbounds i8, ptr %mdev.i, i32 24
  %managed_cache.i = getelementptr inbounds %struct.erofs_sb_info, ptr %4, i32 0, i32 6
  %readahead.i = getelementptr inbounds %struct.z_erofs_decompress_frontend, ptr %f, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup105.i.do.body.i_crit_edge, %jobqueueset_init.exit.i
  %qtail.sroa.0.0.i = phi ptr [ %head.i.i.i, %jobqueueset_init.exit.i ], [ %qtail.sroa.0.1.i, %cleanup105.i.do.body.i_crit_edge ]
  %qtail.sroa.8.0.i = phi ptr [ %head.i21.i.i, %jobqueueset_init.exit.i ], [ %qtail.sroa.8.1.i, %cleanup105.i.do.body.i_crit_edge ]
  %bio.0.i = phi ptr [ null, %jobqueueset_init.exit.i ], [ %bio.6.i, %cleanup105.i.do.body.i_crit_edge ]
  %nr_bios.0.i = phi i32 [ 0, %jobqueueset_init.exit.i ], [ %nr_bios.6.i, %cleanup105.i.do.body.i_crit_edge ]
  %last_bdev.0.i = phi ptr [ inttoptr (i32 -1 to ptr), %jobqueueset_init.exit.i ], [ %last_bdev.6.i, %cleanup105.i.do.body.i_crit_edge ]
  %last_index.0.i = phi i32 [ -1, %jobqueueset_init.exit.i ], [ %last_index.3.i, %cleanup105.i.do.body.i_crit_edge ]
  %owned_head.0.i = phi ptr [ %2, %jobqueueset_init.exit.i ], [ %20, %cleanup105.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mdev.i) #10
  %17 = call ptr @memset(ptr %mdev.i, i32 255, i32 32)
  %magicptr.i = ptrtoint ptr %owned_head.0.i to i32
  %18 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %magicptr.i, label %do.end33.i [
    i32 1594810029, label %do.body10.i
    i32 0, label %do.body25.i
  ], !prof !126

do.body10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1334, 0\0A.popsection", ""() #10, !srcloc !149
  unreachable

do.body25.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1335, 0\0A.popsection", ""() #10, !srcloc !150
  unreachable

do.end33.i:                                       ; preds = %do.body.i
  %call.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %owned_head.0.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !151
  call void @llvm.prefetch.p0(ptr %owned_head.0.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.end33.i
  %19 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %owned_head.0.i, i32 1594804990, i32 1594810029) #10, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %add.ptr.i = getelementptr i8, ptr %owned_head.0.i, i32 -120
  %asmresult1.i.i = extractvalue { i32, i32 } %19, 1
  %20 = inttoptr i32 %asmresult1.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !152
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i178.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i178.i, label %if.then54.i, label %if.end56.i

if.then54.i:                                      ; preds = %__cmpxchg.exit.i
  %cmp.i.i = icmp eq ptr %20, inttoptr (i32 1594810029 to ptr)
  br i1 %cmp.i.i, label %do.body3.i.i, label %if.then54.i.cleanup105.sink.split.i_crit_edge, !prof !95

if.then54.i.cleanup105.sink.split.i_crit_edge:    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105.sink.split.i

do.body3.i.i:                                     ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1263, 0\0A.popsection", ""() #10, !srcloc !153
  unreachable

if.end56.i:                                       ; preds = %__cmpxchg.exit.i
  %23 = call ptr @memset(ptr %mdev.i, i32 0, i32 16)
  %conv.i = zext i32 %22 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %24 = ptrtoint ptr %.compoundliteral.sroa.2.0.mdev.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %mul.i, ptr %.compoundliteral.sroa.2.0.mdev.sroa_idx.i, align 8
  %25 = ptrtoint ptr %.compoundliteral.sroa.3.0.mdev.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %.compoundliteral.sroa.3.0.mdev.sroa_idx.i, align 8
  %call57.i = call i32 @erofs_map_dev(ptr noundef %sb, ptr noundef nonnull %mdev.i) #10
  %26 = ptrtoint ptr %.compoundliteral.sroa.2.0.mdev.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %.compoundliteral.sroa.2.0.mdev.sroa_idx.i, align 8
  %div176.i = lshr i64 %27, 12
  %conv59.i = trunc i64 %div176.i to i32
  %28 = getelementptr i8, ptr %owned_head.0.i, i32 10
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  %conv60.i = zext i16 %30 to i32
  %add.i = add i32 %conv59.i, %conv60.i
  br label %do.body61.outer.i

do.body61.outer.i:                                ; preds = %cleanup.thread.i.do.body61.outer.i_crit_edge, %if.end56.i
  %cur.0.ph.i = phi i32 [ %inc95196.i, %cleanup.thread.i.do.body61.outer.i_crit_edge ], [ %conv59.i, %if.end56.i ]
  %i.0.ph.i = phi i32 [ %inc.i, %cleanup.thread.i.do.body61.outer.i_crit_edge ], [ 0, %if.end56.i ]
  %bypass.0.off0.ph.i = phi i1 [ false, %cleanup.thread.i.do.body61.outer.i_crit_edge ], [ true, %if.end56.i ]
  %bio.1.ph.i = phi ptr [ %bio.4.i, %cleanup.thread.i.do.body61.outer.i_crit_edge ], [ %bio.0.i, %if.end56.i ]
  %nr_bios.1.ph.i = phi i32 [ %nr_bios.4.i, %cleanup.thread.i.do.body61.outer.i_crit_edge ], [ %nr_bios.0.i, %if.end56.i ]
  %last_bdev.1.ph.i = phi ptr [ %last_bdev.4.i, %cleanup.thread.i.do.body61.outer.i_crit_edge ], [ %last_bdev.0.i, %if.end56.i ]
  %last_index.1.ph.i = phi i32 [ %cur.0.i, %cleanup.thread.i.do.body61.outer.i_crit_edge ], [ %last_index.0.i, %if.end56.i ]
  br label %do.body61.i

do.body61.i:                                      ; preds = %cleanup.i.do.body61.i_crit_edge, %do.body61.outer.i
  %cur.0.i = phi i32 [ %inc95.i, %cleanup.i.do.body61.i_crit_edge ], [ %cur.0.ph.i, %do.body61.outer.i ]
  %i.0.i = phi i32 [ %inc.i, %cleanup.i.do.body61.i_crit_edge ], [ %i.0.ph.i, %do.body61.outer.i ]
  %inc.i = add i32 %i.0.i, 1
  %31 = ptrtoint ptr %managed_cache.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %managed_cache.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping.i, align 8
  %call62.i = call fastcc ptr @pickup_page_for_submission(ptr noundef %add.ptr.i, i32 noundef %i.0.i, ptr noundef %pagepool, ptr noundef %34) #10
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %cleanup.i, label %if.end65.i

if.end65.i:                                       ; preds = %do.body61.i
  %tobool66.not.i = icmp eq ptr %bio.1.ph.i, null
  br i1 %tobool66.not.i, label %if.end65.i.if.end73.i_crit_edge, label %land.lhs.true.i

if.end65.i.if.end73.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

land.lhs.true.i:                                  ; preds = %if.end65.i
  %add67.i = add i32 %last_index.1.ph.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cur.0.i, i32 %add67.i)
  %cmp68.not.i = icmp eq i32 %cur.0.i, %add67.i
  br i1 %cmp68.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.submit_bio_retry.i_crit_edge

land.lhs.true.i.submit_bio_retry.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_bio_retry.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdev.i, align 8
  %cmp70.not.i = icmp eq ptr %last_bdev.1.ph.i, %36
  br i1 %cmp70.not.i, label %lor.lhs.false.i.if.end73.i_crit_edge, label %lor.lhs.false.i.submit_bio_retry.i_crit_edge

lor.lhs.false.i.submit_bio_retry.i_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_bio_retry.i

lor.lhs.false.i.if.end73.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

submit_bio_retry.i:                               ; preds = %if.end88.i.submit_bio_retry.i_crit_edge, %lor.lhs.false.i.submit_bio_retry.i_crit_edge, %land.lhs.true.i.submit_bio_retry.i_crit_edge
  %bio.2.i = phi ptr [ %bio.4.i, %if.end88.i.submit_bio_retry.i_crit_edge ], [ %bio.1.ph.i, %lor.lhs.false.i.submit_bio_retry.i_crit_edge ], [ %bio.1.ph.i, %land.lhs.true.i.submit_bio_retry.i_crit_edge ]
  %nr_bios.2.i = phi i32 [ %nr_bios.4.i, %if.end88.i.submit_bio_retry.i_crit_edge ], [ %nr_bios.1.ph.i, %lor.lhs.false.i.submit_bio_retry.i_crit_edge ], [ %nr_bios.1.ph.i, %land.lhs.true.i.submit_bio_retry.i_crit_edge ]
  %last_bdev.2.i = phi ptr [ %last_bdev.4.i, %if.end88.i.submit_bio_retry.i_crit_edge ], [ %last_bdev.1.ph.i, %lor.lhs.false.i.submit_bio_retry.i_crit_edge ], [ %last_bdev.1.ph.i, %land.lhs.true.i.submit_bio_retry.i_crit_edge ]
  call void @submit_bio(ptr noundef %bio.2.i) #10
  br label %if.end73.i

if.end73.i:                                       ; preds = %submit_bio_retry.i, %lor.lhs.false.i.if.end73.i_crit_edge, %if.end65.i.if.end73.i_crit_edge
  %bio.3.i = phi ptr [ null, %submit_bio_retry.i ], [ %bio.1.ph.i, %lor.lhs.false.i.if.end73.i_crit_edge ], [ null, %if.end65.i.if.end73.i_crit_edge ]
  %nr_bios.3.i = phi i32 [ %nr_bios.2.i, %submit_bio_retry.i ], [ %nr_bios.1.ph.i, %lor.lhs.false.i.if.end73.i_crit_edge ], [ %nr_bios.1.ph.i, %if.end65.i.if.end73.i_crit_edge ]
  %last_bdev.3.i = phi ptr [ %last_bdev.2.i, %submit_bio_retry.i ], [ %last_bdev.1.ph.i, %lor.lhs.false.i.if.end73.i_crit_edge ], [ %last_bdev.1.ph.i, %if.end65.i.if.end73.i_crit_edge ]
  %tobool74.not.i = icmp eq ptr %bio.3.i, null
  br i1 %tobool74.not.i, label %if.then75.i, label %if.end73.i.if.end88.i_crit_edge

if.end73.i.if.end88.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.i

if.then75.i:                                      ; preds = %if.end73.i
  %call.i179.i = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #10
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i179.i, i32 0, i32 10
  %37 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @z_erofs_decompressqueue_endio, ptr %bi_end_io.i, align 8
  %38 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdev.i, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i179.i, i32 0, i32 3
  %40 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %41, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i179.i, i32 0, i32 1
  %42 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %43, %39
  br i1 %cmp.not.i.i, label %if.then75.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.then75.i.bio_set_dev.exit.i_crit_edge:         ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i8.i.i = and i16 %41, -2177
  %44 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.then75.i.bio_set_dev.exit.i_crit_edge
  %45 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i179.i) #10
  %46 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mdev.i, align 8
  %conv79.i = zext i32 %cur.0.i to i64
  %shl.i = shl nuw nsw i64 %conv79.i, 3
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i179.i, i32 0, i32 8
  %48 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %shl.i, ptr %bi_iter.i, align 8
  %bi_private80.i = getelementptr inbounds %struct.bio, ptr %call.i179.i, i32 0, i32 11
  %49 = ptrtoint ptr %bi_private80.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %15, ptr %bi_private80.i, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i179.i, i32 0, i32 2
  %50 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %bi_opf.i, align 8
  %51 = ptrtoint ptr %readahead.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %readahead.i, align 8, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool81.not.i = icmp eq i8 %52, 0
  %spec.store.select.i = select i1 %tobool81.not.i, i32 0, i32 524288
  %53 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.store.select.i, ptr %bi_opf.i, align 8
  %inc87.i = add i32 %nr_bios.3.i, 1
  br label %if.end88.i

if.end88.i:                                       ; preds = %bio_set_dev.exit.i, %if.end73.i.if.end88.i_crit_edge
  %bio.4.i = phi ptr [ %bio.3.i, %if.end73.i.if.end88.i_crit_edge ], [ %call.i179.i, %bio_set_dev.exit.i ]
  %nr_bios.4.i = phi i32 [ %nr_bios.3.i, %if.end73.i.if.end88.i_crit_edge ], [ %inc87.i, %bio_set_dev.exit.i ]
  %last_bdev.4.i = phi ptr [ %last_bdev.3.i, %if.end73.i.if.end88.i_crit_edge ], [ %47, %bio_set_dev.exit.i ]
  %call89.i = call i32 @bio_add_page(ptr noundef %bio.4.i, ptr noundef nonnull %call62.i, i32 noundef 4096, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call89.i)
  %cmp90.i = icmp ult i32 %call89.i, 4096
  br i1 %cmp90.i, label %if.end88.i.submit_bio_retry.i_crit_edge, label %cleanup.thread.i

if.end88.i.submit_bio_retry.i_crit_edge:          ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %submit_bio_retry.i

cleanup.i:                                        ; preds = %do.body61.i
  %inc95.i = add i32 %cur.0.i, 1
  %cmp96.i = icmp ult i32 %inc95.i, %add.i
  br i1 %cmp96.i, label %cleanup.i.do.body61.i_crit_edge, label %do.end98.i

cleanup.i.do.body61.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61.i

cleanup.thread.i:                                 ; preds = %if.end88.i
  %inc95196.i = add i32 %cur.0.i, 1
  %cmp96197.i = icmp ult i32 %inc95196.i, %add.i
  br i1 %cmp96197.i, label %cleanup.thread.i.do.body61.outer.i_crit_edge, label %cleanup.thread.i.cleanup105.i_crit_edge

cleanup.thread.i.cleanup105.i_crit_edge:          ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105.i

cleanup.thread.i.do.body61.outer.i_crit_edge:     ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body61.outer.i

do.end98.i:                                       ; preds = %cleanup.i
  br i1 %bypass.0.off0.ph.i, label %if.else.i, label %do.end98.i.cleanup105.i_crit_edge

do.end98.i.cleanup105.i_crit_edge:                ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105.i

if.else.i:                                        ; preds = %do.end98.i
  %cmp.i180.i = icmp eq ptr %20, inttoptr (i32 1594810029 to ptr)
  br i1 %cmp.i180.i, label %do.body3.i181.i, label %if.else.i.cleanup105.sink.split.i_crit_edge, !prof !95

if.else.i.cleanup105.sink.split.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup105.sink.split.i

do.body3.i181.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1263, 0\0A.popsection", ""() #10, !srcloc !153
  unreachable

cleanup105.sink.split.i:                          ; preds = %if.else.i.cleanup105.sink.split.i_crit_edge, %if.then54.i.cleanup105.sink.split.i_crit_edge
  %bio.6.ph.i = phi ptr [ %bio.0.i, %if.then54.i.cleanup105.sink.split.i_crit_edge ], [ %bio.1.ph.i, %if.else.i.cleanup105.sink.split.i_crit_edge ]
  %nr_bios.6.ph.i = phi i32 [ %nr_bios.0.i, %if.then54.i.cleanup105.sink.split.i_crit_edge ], [ %nr_bios.1.ph.i, %if.else.i.cleanup105.sink.split.i_crit_edge ]
  %last_bdev.6.ph.i = phi ptr [ %last_bdev.0.i, %if.then54.i.cleanup105.sink.split.i_crit_edge ], [ %last_bdev.1.ph.i, %if.else.i.cleanup105.sink.split.i_crit_edge ]
  %last_index.3.ph.i = phi i32 [ %last_index.0.i, %if.then54.i.cleanup105.sink.split.i_crit_edge ], [ %last_index.1.ph.i, %if.else.i.cleanup105.sink.split.i_crit_edge ]
  %cmp9.i183.i = icmp eq ptr %20, inttoptr (i32 1594804990 to ptr)
  %spec.store.select.i184.i = select i1 %cmp9.i183.i, ptr inttoptr (i32 1594810029 to ptr), ptr %20
  %54 = ptrtoint ptr %owned_head.0.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr inttoptr (i32 1594810029 to ptr), ptr %owned_head.0.i, align 4
  %55 = ptrtoint ptr %qtail.sroa.8.0.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %spec.store.select.i184.i, ptr %qtail.sroa.8.0.i, align 4
  %56 = ptrtoint ptr %qtail.sroa.0.0.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %owned_head.0.i, ptr %qtail.sroa.0.0.i, align 4
  br label %cleanup105.i

cleanup105.i:                                     ; preds = %cleanup105.sink.split.i, %do.end98.i.cleanup105.i_crit_edge, %cleanup.thread.i.cleanup105.i_crit_edge
  %qtail.sroa.0.1.i = phi ptr [ %qtail.sroa.0.0.i, %do.end98.i.cleanup105.i_crit_edge ], [ %owned_head.0.i, %cleanup105.sink.split.i ], [ %qtail.sroa.0.0.i, %cleanup.thread.i.cleanup105.i_crit_edge ]
  %qtail.sroa.8.1.i = phi ptr [ %owned_head.0.i, %do.end98.i.cleanup105.i_crit_edge ], [ %qtail.sroa.8.0.i, %cleanup105.sink.split.i ], [ %owned_head.0.i, %cleanup.thread.i.cleanup105.i_crit_edge ]
  %bio.6.i = phi ptr [ %bio.1.ph.i, %do.end98.i.cleanup105.i_crit_edge ], [ %bio.6.ph.i, %cleanup105.sink.split.i ], [ %bio.4.i, %cleanup.thread.i.cleanup105.i_crit_edge ]
  %nr_bios.6.i = phi i32 [ %nr_bios.1.ph.i, %do.end98.i.cleanup105.i_crit_edge ], [ %nr_bios.6.ph.i, %cleanup105.sink.split.i ], [ %nr_bios.4.i, %cleanup.thread.i.cleanup105.i_crit_edge ]
  %last_bdev.6.i = phi ptr [ %last_bdev.1.ph.i, %do.end98.i.cleanup105.i_crit_edge ], [ %last_bdev.6.ph.i, %cleanup105.sink.split.i ], [ %last_bdev.4.i, %cleanup.thread.i.cleanup105.i_crit_edge ]
  %last_index.3.i = phi i32 [ %last_index.1.ph.i, %do.end98.i.cleanup105.i_crit_edge ], [ %last_index.3.ph.i, %cleanup105.sink.split.i ], [ %cur.0.i, %cleanup.thread.i.cleanup105.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mdev.i) #10
  %cmp114.not.i = icmp eq ptr %20, inttoptr (i32 1594804990 to ptr)
  br i1 %cmp114.not.i, label %do.end116.i, label %cleanup105.i.do.body.i_crit_edge

cleanup105.i.do.body.i_crit_edge:                 ; preds = %cleanup105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end116.i:                                      ; preds = %cleanup105.i
  %tobool117.not.i = icmp eq ptr %bio.6.i, null
  br i1 %tobool117.not.i, label %do.end116.i.if.end119.i_crit_edge, label %if.then118.i

do.end116.i.if.end119.i_crit_edge:                ; preds = %do.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119.i

if.then118.i:                                     ; preds = %do.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @submit_bio(ptr noundef nonnull %bio.6.i) #10
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then118.i, %do.end116.i.if.end119.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bios.6.i)
  %tobool122.not.i = icmp eq i32 %nr_bios.6.i, 0
  %or.cond.i = select i1 %tobool120.not.i, i1 %tobool122.not.i, i1 false
  br i1 %or.cond.i, label %if.then123.i, label %if.end125.i

if.then123.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree(ptr noundef %q.0.i.i.i) #10
  br label %z_erofs_submit_queue.exit

if.end125.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @z_erofs_decompress_kickoff(ptr noundef %q.0.i.i.i, i1 noundef zeroext %tobool127.i, i32 noundef %nr_bios.6.i) #10
  br label %z_erofs_submit_queue.exit

z_erofs_submit_queue.exit:                        ; preds = %if.end125.i, %if.then123.i
  %57 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %head.i.i.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end26.i, %z_erofs_submit_queue.exit
  %owned.0.i = phi ptr [ %58, %z_erofs_submit_queue.exit ], [ %61, %do.end26.i ]
  %magicptr36.i = ptrtoint ptr %owned.0.i to i32
  %59 = zext i32 %magicptr36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %magicptr36.i, label %do.end26.i [
    i32 1594810029, label %z_erofs_decompress_queue.exit
    i32 1594804990, label %do.body3.i
    i32 0, label %do.body18.i
  ], !prof !154

do.body3.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1044, 0\0A.popsection", ""() #10, !srcloc !155
  unreachable

do.body18.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1047, 0\0A.popsection", ""() #10, !srcloc !156
  unreachable

do.end26.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i32 = getelementptr i8, ptr %owned.0.i, i32 -120
  %60 = ptrtoint ptr %owned.0.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %owned.0.i, align 4
  %62 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %io, align 4
  call fastcc void @z_erofs_decompress_pcluster(ptr noundef %63, ptr noundef %add.ptr.i32, ptr noundef %pagepool) #10
  br label %while.cond.i

z_erofs_decompress_queue.exit:                    ; preds = %while.cond.i
  br i1 %tobool120.not.i, label %z_erofs_decompress_queue.exit.cleanup24_crit_edge, label %do.body3

z_erofs_decompress_queue.exit.cleanup24_crit_edge: ; preds = %z_erofs_decompress_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

do.body3:                                         ; preds = %z_erofs_decompress_queue.exit
  call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 1432) #10
  %pending_bios = getelementptr inbounds [2 x %struct.z_erofs_decompressqueue], ptr %io, i32 0, i32 1, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios, i32 noundef 4) #10
  %64 = ptrtoint ptr %pending_bios to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %pending_bios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool8.not = icmp eq i32 %65, 0
  br i1 %tobool8.not, label %do.body3.do.end22_crit_edge, label %if.end10

do.body3.do.end22_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

if.end10:                                         ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %66 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %u = getelementptr inbounds [2 x %struct.z_erofs_decompressqueue], ptr %io, i32 0, i32 1, i32 3
  %call1255 = call i32 @prepare_to_wait_event(ptr noundef %u, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i3056 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios, i32 noundef 4) #10
  %67 = ptrtoint ptr %pending_bios to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %pending_bios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool16.not57 = icmp eq i32 %68, 0
  br i1 %tobool16.not57, label %if.end10.for.end_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  br label %cleanup

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  call void @io_schedule() #10
  %call12 = call i32 @prepare_to_wait_event(ptr noundef %u, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call.i.i30 = call zeroext i1 @__kasan_check_read(ptr noundef %pending_bios, i32 noundef 4) #10
  %69 = ptrtoint ptr %pending_bios to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %pending_bios, align 4
  %tobool16.not = icmp eq i32 %70, 0
  br i1 %tobool16.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end10.for.end_crit_edge
  call void @finish_wait(ptr noundef %u, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end22

do.end22:                                         ; preds = %for.end, %do.body3.do.end22_crit_edge
  %head.i33 = getelementptr inbounds [2 x %struct.z_erofs_decompressqueue], ptr %io, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %head.i33 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head.i33, align 4
  br label %while.cond.i36

while.cond.i36:                                   ; preds = %do.end26.i40, %do.end22
  %owned.0.i34 = phi ptr [ %72, %do.end22 ], [ %75, %do.end26.i40 ]
  %magicptr36.i35 = ptrtoint ptr %owned.0.i34 to i32
  %73 = zext i32 %magicptr36.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %magicptr36.i35, label %do.end26.i40 [
    i32 1594810029, label %while.cond.i36.cleanup24_crit_edge
    i32 1594804990, label %do.body3.i37
    i32 0, label %do.body18.i38
  ], !prof !154

while.cond.i36.cleanup24_crit_edge:               ; preds = %while.cond.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup24

do.body3.i37:                                     ; preds = %while.cond.i36
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1044, 0\0A.popsection", ""() #10, !srcloc !155
  unreachable

do.body18.i38:                                    ; preds = %while.cond.i36
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1047, 0\0A.popsection", ""() #10, !srcloc !156
  unreachable

do.end26.i40:                                     ; preds = %while.cond.i36
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i39 = getelementptr i8, ptr %owned.0.i34, i32 -120
  %74 = ptrtoint ptr %owned.0.i34 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %owned.0.i34, align 4
  %76 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr1.i.i, align 4
  call fastcc void @z_erofs_decompress_pcluster(ptr noundef %77, ptr noundef %add.ptr.i39, ptr noundef %pagepool) #10
  br label %while.cond.i36

cleanup24:                                        ; preds = %while.cond.i36.cleanup24_crit_edge, %z_erofs_decompress_queue.exit.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %io) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_put_metabuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_release_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_erofs_readpage(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_map_blocks_iter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @readahead_expand(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_read_metabuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @preload_compressed_pages(ptr nocapture noundef %clt, ptr noundef %mc, i32 noundef %type, ptr noundef %pagepool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pcl1 = getelementptr inbounds %struct.z_erofs_collector, ptr %clt, i32 0, i32 1
  %0 = ptrtoint ptr %pcl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcl1, align 4
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask.i, align 4
  %and = and i32 %3, -599041
  %or3 = or i32 %and, 598016
  %mode = getelementptr inbounds %struct.z_erofs_collector, ptr %clt, i32 0, i32 6
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ult i32 %5, 4
  br i1 %cmp, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 2
  %conv77 = zext i16 %10 to i32
  %add78 = add i32 %7, %conv77
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add78)
  %cmp779 = icmp ult i32 %7, %add78
  br i1 %cmp779, label %for.body.lr.ph, label %if.end.if.then41_crit_edge

if.end.if.then41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

for.body.lr.ph:                                   ; preds = %if.end
  %compressed_pages = getelementptr inbounds %struct.z_erofs_pcluster, ptr %1, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %standalone.0.off084 = phi i1 [ true, %for.body.lr.ph ], [ %standalone.2.off0, %cleanup.for.body_crit_edge ]
  %pages.082 = phi ptr [ %compressed_pages, %for.body.lr.ph ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  %index.080 = phi i32 [ %7, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %11 = ptrtoint ptr %pages.082 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %pages.082, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end10, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %call.i74 = tail call ptr @pagecache_get_page(ptr noundef %mc, i32 noundef %index.080, i32 noundef 0, i32 noundef 0) #10
  %tobool12.not = icmp eq ptr %call.i74, null
  br i1 %tobool12.not, label %if.else, label %if.end10.if.end23_crit_edge

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else:                                          ; preds = %if.end10
  br i1 %cond, label %sw.bb, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.else
  %call15 = tail call ptr @erofs_allocpage(ptr noundef %pagepool, i32 noundef %or3) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %sw.bb.cleanup_crit_edge, label %if.end18

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %private1.i = getelementptr inbounds %struct.page, ptr %call15, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -8, ptr %private1.i, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.end10.if.end23_crit_edge
  %newpage.0 = phi ptr [ %call15, %if.end18 ], [ null, %if.end10.if.end23_crit_edge ]
  %t.sroa.0.0.in.in = phi ptr [ %call15, %if.end18 ], [ %call.i74, %if.end10.if.end23_crit_edge ]
  %standalone.1.off0 = phi i1 [ false, %if.end18 ], [ %standalone.0.off084, %if.end10.if.end23_crit_edge ]
  %t.sroa.0.0.in = ptrtoint ptr %t.sroa.0.0.in.in to i32
  %t.sroa.0.0 = or i32 %t.sroa.0.0.in, 1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pages.082, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %pages.082, i32 1, i32 3, i32 1) #10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end23
  %14 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %pages.082, i32 0, i32 %t.sroa.0.0) #10, !srcloc !135
  %asmresult.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool28.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool28.not, label %__cmpxchg.exit.cleanup_crit_edge, label %if.end30

__cmpxchg.exit.cleanup_crit_edge:                 ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %__cmpxchg.exit
  br i1 %tobool12.not, label %if.else33, label %if.then32

if.then32:                                        ; preds = %if.end30
  %15 = getelementptr inbounds %struct.page, ptr %call.i74, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call.i74 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i.i.i = icmp eq i32 %21, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !95

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@preload_compressed_pages, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !117

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %19, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %19) #10
  br label %cleanup

if.else33:                                        ; preds = %if.end30
  %tobool34.not = icmp eq ptr %newpage.0, null
  br i1 %tobool34.not, label %if.else33.cleanup_crit_edge, label %if.then35

if.else33.cleanup_crit_edge:                      ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pagepool, align 4
  %26 = ptrtoint ptr %25 to i32
  %private1.i.i = getelementptr inbounds %struct.page, ptr %newpage.0, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %private1.i.i, align 4
  store ptr %newpage.0, ptr %pagepool, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.else33.cleanup_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %__cmpxchg.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %standalone.2.off0 = phi i1 [ %standalone.0.off084, %for.body.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ %standalone.1.off0, %__cmpxchg.exit.cleanup_crit_edge ], [ %standalone.1.off0, %if.else33.cleanup_crit_edge ], [ %standalone.1.off0, %if.then35 ], [ %standalone.1.off0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %standalone.1.off0, %if.then.i4.i ]
  %inc = add nuw i32 %index.080, 1
  %incdec.ptr = getelementptr ptr, ptr %pages.082, i32 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %8, align 2
  %conv = zext i16 %31 to i32
  %add = add i32 %29, %conv
  %cmp7 = icmp ult i32 %inc, %add
  br i1 %cmp7, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %standalone.2.off0, label %for.end.if.then41_crit_edge, label %for.end.cleanup44_crit_edge

for.end.cleanup44_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

for.end.if.then41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then41:                                        ; preds = %for.end.if.then41_crit_edge, %if.end.if.then41_crit_edge
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %mode, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %if.then41, %for.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @z_erofs_attach_page(ptr nocapture noundef %clt, ptr noundef %page, i32 noundef %type, i1 noundef zeroext %pvec_safereuse) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.z_erofs_collector, ptr %clt, i32 0, i32 6
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp1 = icmp eq i32 %type, 0
  %or.cond = and i1 %cmp1, %cmp.not
  br i1 %or.cond, label %land.lhs.true2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %pcl1.i = getelementptr inbounds %struct.z_erofs_collector, ptr %clt, i32 0, i32 1
  %2 = ptrtoint ptr %pcl1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcl1.i, align 4
  %icpage_ptr.i = getelementptr inbounds %struct.z_erofs_collector, ptr %clt, i32 0, i32 4
  %compressed_pages.i = getelementptr inbounds %struct.z_erofs_pcluster, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %page to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %__cmpxchg.exit.i.while.cond.i_crit_edge, %land.lhs.true2
  %5 = ptrtoint ptr %icpage_ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %icpage_ptr.i, align 4
  %cmp.i = icmp ugt ptr %6, %compressed_pages.i
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.if.end_crit_edge

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr ptr, ptr %6, i32 -1
  %7 = ptrtoint ptr %icpage_ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %incdec.ptr.i, ptr %icpage_ptr.i, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %incdec.ptr.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %incdec.ptr.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %while.body.i
  %8 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %incdec.ptr.i, i32 0, i32 %4) #10, !srcloc !135
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !158
  %tobool.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit.i.cleanup_crit_edge, label %__cmpxchg.exit.i.while.cond.i_crit_edge

__cmpxchg.exit.i.while.cond.i_crit_edge:          ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

__cmpxchg.exit.i.cleanup_crit_edge:               ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %next.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %clt, i32 0, i32 1
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next.i, align 4
  %tobool.not.i11 = icmp eq ptr %10, null
  br i1 %tobool.not.i11, label %if.then.i, label %if.end.if.end8.i_crit_edge

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %not.pvec_safereuse.i = xor i1 %pvec_safereuse, true
  %spec.select.i = zext i1 %not.pvec_safereuse.i to i32
  %type.addr.0.i = select i1 %cmp1, i32 %spec.select.i, i32 %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.addr.0.i)
  %cmp3.not.i = icmp eq i32 %type.addr.0.i, 0
  br i1 %cmp3.not.i, label %if.then.i.if.end8.i_crit_edge, label %land.lhs.true4.i

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true4.i:                                 ; preds = %if.then.i
  %index.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %clt, i32 0, i32 4
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  %add.i = add i32 %12, 1
  %nr.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %clt, i32 0, i32 3
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp5.i = icmp eq i32 %add.i, %14
  br i1 %cmp5.i, label %land.lhs.true4.i.cleanup_crit_edge, label %land.lhs.true4.i.if.end8.i_crit_edge

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

land.lhs.true4.i.cleanup_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %land.lhs.true4.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge, %if.end.if.end8.i_crit_edge
  %type.addr.1.i = phi i32 [ %type, %if.end.if.end8.i_crit_edge ], [ %type.addr.0.i, %land.lhs.true4.i.if.end8.i_crit_edge ], [ 0, %if.then.i.if.end8.i_crit_edge ]
  %index9.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %clt, i32 0, i32 4
  %15 = ptrtoint ptr %index9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index9.i, align 4
  %nr10.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %clt, i32 0, i32 3
  %17 = ptrtoint ptr %nr10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp11.not.i = icmp ult i32 %16, %18
  br i1 %cmp11.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.then12.i

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @z_erofs_pagevec_ctor_pagedown(ptr noundef %clt, i1 noundef zeroext false) #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end13.i_crit_edge
  %19 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %type.addr.1.i, i32 %21)
  %cmp15.i = icmp eq i32 %type.addr.1.i, %21
  br i1 %cmp15.i, label %if.then16.i, label %if.end13.i.if.end18.i_crit_edge

if.end13.i.if.end18.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %page, ptr %next.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end18.i_crit_edge
  %pages.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %clt, i32 0, i32 2
  %23 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages.i, align 4
  %25 = ptrtoint ptr %index9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index9.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %index9.i, align 4
  %arrayidx.i = getelementptr %struct.__tagptr2, ptr %24, i32 %26
  %27 = ptrtoint ptr %page to i32
  %or.i = or i32 %type.addr.1.i, %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %arrayidx.i, align 4
  %cl15 = getelementptr inbounds %struct.z_erofs_collector, ptr %clt, i32 0, i32 3
  %29 = ptrtoint ptr %cl15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cl15, align 4
  %vcnt16 = getelementptr inbounds %struct.z_erofs_collection, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %vcnt16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vcnt16, align 4
  %add17 = add i32 %32, 1
  store i32 %add17, ptr %vcnt16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18.i, %land.lhs.true4.i.cleanup_crit_edge, %__cmpxchg.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18.i ], [ -11, %land.lhs.true4.i.cleanup_crit_edge ], [ 0, %__cmpxchg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @z_erofs_onlinepage_endio(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !95

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !159
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !95

do.body4:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #10, !srcloc !160
  unreachable

do.end9:                                          ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %private, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %private, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %private, ptr %private, i32 1, ptr elementtype(i32) %private) #10, !srcloc !115
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  %and = and i32 %asmresult.i.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.then12, label %do.end9.do.body18_crit_edge

do.end9.do.body18_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

if.then12:                                        ; preds = %do.end9
  %6 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %private, align 4
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i40 = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i40, label %if.then.i41, label %ClearPagePrivate.exit, !prof !95

if.then.i41:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !161
  unreachable

ClearPagePrivate.exit:                            ; preds = %if.then12
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %page) #10
  %9 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %ClearPagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i42 = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %9, align 4
  %and.i16.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i42, label %if.then.i43, label %do.end10.i, !prof !95

if.then.i43:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !97

if.then.i19.i:                                    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %17, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %18, %if.end.i20.i ]
  %19 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.27) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !162
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !97

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %17, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %page to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %20, %if.end.i27.i ]
  %21 = inttoptr i32 %retval.0.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not = icmp eq i32 %24, 0
  br i1 %tobool14.not, label %if.then15, label %PageError.exit.if.end16_crit_edge

PageError.exit.if.end16_crit_edge:                ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %PageError.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !163
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  br label %if.end16

if.end16:                                         ; preds = %SetPageUptodate.exit, %PageError.exit.if.end16_crit_edge
  tail call void @unlock_page(ptr noundef %page) #10
  br label %do.body18

do.body18:                                        ; preds = %if.end16, %do.end9.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @z_erofs_onlinepage_endio.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@z_erofs_onlinepage_endio, %if.then27)) #10
          to label %do.end31 [label %if.then27], !srcloc !117

if.then27:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %private, i32 noundef 4) #10
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %private, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @z_erofs_onlinepage_endio.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, ptr noundef %page, i32 noundef %28) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_find_workgroup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_workgroup_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_insert_workgroup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @z_erofs_pagevec_ctor_pagedown(ptr nocapture noundef %ctor, i1 noundef zeroext %atomic) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %nr = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %ctor, i32 0, i32 3
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 4
  %next.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %ctor, i32 0, i32 1
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %entry.z_erofs_pagevec_ctor_next_page.exit_crit_edge

entry.z_erofs_pagevec_ctor_next_page.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_next_page.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28.not.i = icmp eq i32 %1, 0
  br i1 %cmp28.not.i, label %for.cond.preheader.i.do.body13.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.do.body13.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %pages.i = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %ctor, i32 0, i32 2
  %4 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %index.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.cond.i.do.body13.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.do.body13.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.__tagptr2, ptr %5, i32 %index.029.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %t.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %t.sroa.0.0.copyload.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.i, label %cleanup20.loopexit.i, label %for.cond.i

do.body13.i:                                      ; preds = %for.cond.i.do.body13.i_crit_edge, %for.cond.preheader.i.do.body13.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zpvec.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #10, !srcloc !142
  unreachable

cleanup20.loopexit.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %and5.le.i = and i32 %t.sroa.0.0.copyload.i, -4
  %7 = inttoptr i32 %and5.le.i to ptr
  br label %z_erofs_pagevec_ctor_next_page.exit

z_erofs_pagevec_ctor_next_page.exit:              ; preds = %cleanup20.loopexit.i, %entry.z_erofs_pagevec_ctor_next_page.exit_crit_edge
  %retval.2.i = phi ptr [ %3, %entry.z_erofs_pagevec_ctor_next_page.exit_crit_edge ], [ %7, %cleanup20.loopexit.i ]
  %8 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctor, align 4
  %tobool.not.i18 = icmp eq ptr %9, null
  br i1 %tobool.not.i18, label %z_erofs_pagevec_ctor_exit.exit, label %if.end.i

if.end.i:                                         ; preds = %z_erofs_pagevec_ctor_next_page.exit
  br i1 %atomic, label %z_erofs_pagevec_ctor_exit.exit.thread27, label %if.else.i

z_erofs_pagevec_ctor_exit.exit.thread27:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pages.i19 = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %ctor, i32 0, i32 2
  %10 = ptrtoint ptr %pages.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages.i19, align 4
  tail call void @kunmap_local_indexed(ptr noundef %11) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !164
  %12 = tail call i32 @llvm.read_register.i32(metadata !85) #10
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
  %dec.i.i.i.i = add i32 %17, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !165
  %18 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %22 = ptrtoint ptr %ctor to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %retval.2.i, ptr %ctor, align 4
  %23 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %next.i, align 4
  br label %cond.true

if.else.i:                                        ; preds = %if.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 55) #10
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %9, align 4
  %shr.i.i.i = lshr i32 %25, 30
  %26 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shr.i.i.i, label %if.else.i.z_erofs_pagevec_ctor_exit.exit.thread_crit_edge [
    i32 2, label %if.else.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.else.i.z_erofs_pagevec_ctor_exit.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.thread

is_highmem_idx.exit.i.i:                          ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %27 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp2.i.not.i.i = icmp eq i32 %27, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i.i.z_erofs_pagevec_ctor_exit.exit.thread_crit_edge

is_highmem_idx.exit.i.i.z_erofs_pagevec_ctor_exit.exit.thread_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit.thread

is_highmem_idx.exit.i.i.if.end.i.i_crit_edge:     ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i.i.if.end.i.i_crit_edge, %if.else.i.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %9) #10
  br label %z_erofs_pagevec_ctor_exit.exit.thread

z_erofs_pagevec_ctor_exit.exit.thread:            ; preds = %if.end.i.i, %is_highmem_idx.exit.i.i.z_erofs_pagevec_ctor_exit.exit.thread_crit_edge, %if.else.i.z_erofs_pagevec_ctor_exit.exit.thread_crit_edge
  %28 = ptrtoint ptr %ctor to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.2.i, ptr %ctor, align 4
  %29 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %next.i, align 4
  br label %cond.false

z_erofs_pagevec_ctor_exit.exit:                   ; preds = %z_erofs_pagevec_ctor_next_page.exit
  %30 = ptrtoint ptr %ctor to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.2.i, ptr %ctor, align 4
  %31 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %next.i, align 4
  br i1 %atomic, label %z_erofs_pagevec_ctor_exit.exit.cond.true_crit_edge, label %z_erofs_pagevec_ctor_exit.exit.cond.false_crit_edge

z_erofs_pagevec_ctor_exit.exit.cond.false_crit_edge: ; preds = %z_erofs_pagevec_ctor_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

z_erofs_pagevec_ctor_exit.exit.cond.true_crit_edge: ; preds = %z_erofs_pagevec_ctor_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true

cond.true:                                        ; preds = %z_erofs_pagevec_ctor_exit.exit.cond.true_crit_edge, %z_erofs_pagevec_ctor_exit.exit.thread27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %32 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %32, 512
  %33 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i20 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !166
  %37 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i1.i.i22 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i.i22 to ptr
  %task.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i.i23, align 8
  %pagefault_disabled.i.i.i.i24 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i.i24, align 8
  %inc.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i24, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !167
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %retval.2.i, i32 noundef %or.i) #10
  br label %cond.end

cond.false:                                       ; preds = %z_erofs_pagevec_ctor_exit.exit.cond.false_crit_edge, %z_erofs_pagevec_ctor_exit.exit.thread
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 44) #10
  %43 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %retval.2.i, align 4
  %shr.i.i = lshr i32 %44, 30
  %45 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %shr.i.i, label %cond.false.if.then.i_crit_edge [
    i32 2, label %cond.false.if.else.i25_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

cond.false.if.else.i25_crit_edge:                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i25

cond.false.if.then.i_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %cond.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %46 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp2.i.not.i = icmp eq i32 %46, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i25_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i25_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i25

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %cond.false.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %retval.2.i) #10
  br label %cond.end

if.else.i25:                                      ; preds = %is_highmem_idx.exit.i.if.else.i25_crit_edge, %cond.false.if.else.i25_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %retval.2.i) #10
  br label %cond.end

cond.end:                                         ; preds = %if.else.i25, %if.then.i, %cond.true
  %cond = phi ptr [ %call.i.i, %cond.true ], [ %call6.i, %if.else.i25 ], [ %call5.i, %if.then.i ]
  %pages = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %ctor, i32 0, i32 2
  %47 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cond, ptr %pages, align 4
  %48 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1024, ptr %nr, align 4
  %index = getelementptr inbounds %struct.z_erofs_pagevec_ctor, ptr %ctor, i32 0, i32 4
  %49 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %index, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_allocpage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_map_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pickup_page_for_submission(ptr noundef %pcl, i32 noundef %nr, ptr noundef %pagepool, ptr noundef %mc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcl, align 4
  %arrayidx = getelementptr %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 7, i32 %nr
  br label %repeat

repeat:                                           ; preds = %if.then150, %entry
  %tocache.0.off0 = phi i1 [ false, %entry ], [ %tocache.1.off0, %if.then150 ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %.pre188 = ptrtoint ptr %3 to i32
  br i1 %tobool.not, label %repeat.out_allocpage_crit_edge, label %if.end

repeat.out_allocpage_crit_edge:                   ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_allocpage

if.end:                                           ; preds = %repeat
  %and = and i32 %.pre188, 1
  %and4 = and i32 %.pre188, -2
  %4 = inttoptr i32 %and4 to ptr
  %private = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %6)
  %cmp = icmp eq i32 %6, -8
  br i1 %cmp, label %out_tocache.thread, label %do.end20

out_tocache.thread:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = inttoptr i32 %and4 to ptr
  %private.le236 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %private.le236 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %private.le236, align 4
  br label %lor.lhs.false

do.end20:                                         ; preds = %if.end
  %mapping22 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %mapping22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mapping22, align 4
  %tobool23.not = icmp eq ptr %11, null
  %cmp24.not = icmp eq ptr %11, %mc
  %or.cond = or i1 %tobool23.not, %cmp24.not
  br i1 %or.cond, label %if.end26, label %out.loopexit

if.end26:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %6)
  %cmp.not.i = icmp eq i32 %6, -4
  br i1 %cmp.not.i, label %do.body.i, label %if.end28

do.body.i:                                        ; preds = %if.end26
  %12 = inttoptr i32 %and4 to ptr
  br i1 %tobool23.not, label %do.body.i.out_crit_edge, label %do.body4.i, !prof !97

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/compress.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

if.end28:                                         ; preds = %if.end26
  tail call void @__might_sleep(ptr noundef nonnull @.str.32, i32 noundef 788) #10
  %13 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i13 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.end28._compound_head.exit.i19_crit_edge, label %if.then.i.i16, !prof !97

if.end28._compound_head.exit.i19_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i19

if.then.i.i16:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i15 = add i32 %15, -1
  %.pre = inttoptr i32 %sub.i.i15 to ptr
  br label %_compound_head.exit.i19

_compound_head.exit.i19:                          ; preds = %if.then.i.i16, %if.end28._compound_head.exit.i19_crit_edge
  %.pre-phi = phi ptr [ %4, %if.end28._compound_head.exit.i19_crit_edge ], [ %.pre, %if.then.i.i16 ]
  %16 = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %.pre-phi, i32 noundef 4) #10
  %19 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %.pre-phi, align 4
  %and.i.i4.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i20_crit_edge

folio_flags.exit.i.i.if.then.i20_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i20

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %.pre-phi, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %.pre-phi, ptr %.pre-phi, i32 1, ptr elementtype(i32) %.pre-phi) #10, !srcloc !99
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i20_crit_edge

folio_trylock.exit.i.if.then.i20_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i20

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i20:                                      ; preds = %folio_trylock.exit.i.if.then.i20_crit_edge, %folio_flags.exit.i.i.if.then.i20_crit_edge
  tail call void @__folio_lock(ptr noundef %.pre-phi) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i20, %folio_trylock.exit.i.lock_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %lock_page.exit.do.end44_crit_edge, label %land.rhs

lock_page.exit.do.end44_crit_edge:                ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

land.rhs:                                         ; preds = %lock_page.exit
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !95

if.then.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %24 = inttoptr i32 %and4 to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !159
  unreachable

PagePrivate.exit:                                 ; preds = %land.rhs
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %4, align 4
  %27 = and i32 %26, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool32.not = icmp eq i32 %27, 0
  br i1 %tobool32.not, label %PagePrivate.exit.do.end44_crit_edge, label %do.body36, !prof !97

PagePrivate.exit.do.end44_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

do.body36:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1152, 0\0A.popsection", ""() #10, !srcloc !169
  unreachable

do.end44:                                         ; preds = %PagePrivate.exit.do.end44_crit_edge, %lock_page.exit.do.end44_crit_edge
  %28 = ptrtoint ptr %mapping22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mapping22, align 4
  %cmp46 = icmp eq ptr %29, %mc
  br i1 %cmp46, label %do.body52, label %do.body88

do.body52:                                        ; preds = %do.end44
  %30 = inttoptr i32 %and4 to ptr
  %private.le = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i3, !prof !97

if.then.i3:                                       ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.28) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !170
  unreachable

do.body7.i:                                       ; preds = %do.body52
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %13, align 4
  %and.i31.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !97

do.body7.i._compound_head.exit.i_crit_edge:       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %35, -1
  %.pre178 = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %do.body7.i._compound_head.exit.i_crit_edge
  %.pre-phi179 = phi ptr [ %30, %do.body7.i._compound_head.exit.i_crit_edge ], [ %.pre178, %if.then.i.i ]
  %36 = ptrtoint ptr %.pre-phi179 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %.pre-phi179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i4 = icmp eq i32 %37, -1
  %38 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %13, align 4
  %and.i32.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i4, label %if.then17.i, label %do.end24.i, !prof !95

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.then17.i._compound_head.exit38.i_crit_edge, label %if.then.i35.i, !prof !97

if.then17.i._compound_head.exit38.i_crit_edge:    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit38.i

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %39, -1
  %.pre180 = inttoptr i32 %sub.i34.i to ptr
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.then.i35.i, %if.then17.i._compound_head.exit38.i_crit_edge
  %.pre-phi181 = phi ptr [ %30, %if.then17.i._compound_head.exit38.i_crit_edge ], [ %.pre180, %if.then.i35.i ]
  tail call void @dump_page(ptr noundef %.pre-phi181, ptr noundef nonnull @.str.27) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !171
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %do.end24.i.ClearPageError.exit_crit_edge, label %if.then.i42.i, !prof !97

do.end24.i.ClearPageError.exit_crit_edge:         ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ClearPageError.exit

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %39, -1
  %.pre182 = inttoptr i32 %sub.i41.i to ptr
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.then.i42.i, %do.end24.i.ClearPageError.exit_crit_edge
  %.pre-phi183 = phi ptr [ %30, %do.end24.i.ClearPageError.exit_crit_edge ], [ %.pre182, %if.then.i42.i ]
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %.pre-phi183) #10
  %40 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i5 = icmp eq i32 %41, -1
  br i1 %cmp.i.not.i5, label %if.then.i6, label %PagePrivate.exit9, !prof !95

if.then.i6:                                       ; preds = %ClearPageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !159
  unreachable

PagePrivate.exit9:                                ; preds = %ClearPageError.exit
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %30, align 4
  %44 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool60.not = icmp eq i32 %44, 0
  br i1 %tobool60.not, label %do.body62, label %PagePrivate.exit9.if.end82_crit_edge

PagePrivate.exit9.if.end82_crit_edge:             ; preds = %PagePrivate.exit9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.body62:                                        ; preds = %PagePrivate.exit9
  br i1 %tobool30.not, label %do.body73, label %do.end81, !prof !95

do.body73:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1165, 0\0A.popsection", ""() #10, !srcloc !172
  unreachable

do.end81:                                         ; preds = %do.body62
  %45 = ptrtoint ptr %pcl to i32
  %46 = ptrtoint ptr %private.le to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %private.le, align 4
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i10 = icmp eq i32 %48, -1
  br i1 %cmp.i.not.i10, label %if.then.i11, label %SetPagePrivate.exit, !prof !95

if.then.i11:                                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !124
  unreachable

SetPagePrivate.exit:                              ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %30) #10
  br label %if.end82

if.end82:                                         ; preds = %SetPagePrivate.exit, %PagePrivate.exit9.if.end82_crit_edge
  %49 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %13, align 4
  %and.i.i22 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end82._compound_head.exit.i30_crit_edge, label %if.then.i.i25, !prof !97

if.end82._compound_head.exit.i30_crit_edge:       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i30

if.then.i.i25:                                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i24 = add i32 %50, -1
  %.pre184 = inttoptr i32 %sub.i.i24 to ptr
  br label %_compound_head.exit.i30

_compound_head.exit.i30:                          ; preds = %if.then.i.i25, %if.end82._compound_head.exit.i30_crit_edge
  %.pre-phi185 = phi ptr [ %30, %if.end82._compound_head.exit.i30_crit_edge ], [ %.pre184, %if.then.i.i25 ]
  %51 = getelementptr inbounds %struct.page, ptr %.pre-phi185, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i.i28 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i28)
  %tobool.not.i.i.i29 = icmp eq i32 %and.i.i.i.i28, 0
  br i1 %tobool.not.i.i.i29, label %folio_flags.exit.i.i32, label %if.then.i.i.i31, !prof !97

if.then.i.i.i31:                                  ; preds = %_compound_head.exit.i30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi185, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i32:                           ; preds = %_compound_head.exit.i30
  %54 = ptrtoint ptr %.pre-phi185 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %.pre-phi185, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i = icmp eq i32 %56, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i32.out_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i32.out_crit_edge:             ; preds = %folio_flags.exit.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @unlock_page(ptr noundef %30) #10
  br label %out

do.body88:                                        ; preds = %do.end44
  %tobool90.not = icmp eq ptr %29, null
  br i1 %tobool90.not, label %do.body107, label %do.body98, !prof !97

do.body98:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1184, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

do.body107:                                       ; preds = %do.body88
  br i1 %tobool30.not, label %do.body118, label %do.end126, !prof !95

do.body118:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1185, 0\0A.popsection", ""() #10, !srcloc !174
  unreachable

do.end126:                                        ; preds = %do.body107
  tail call void @unlock_page(ptr noundef %4) #10
  %57 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %13, align 4
  %and.i.i33 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i33)
  %tobool.not.i.i34 = icmp eq i32 %and.i.i33, 0
  br i1 %tobool.not.i.i34, label %do.end126._compound_head.exit.i39_crit_edge, label %if.then.i.i36, !prof !97

do.end126._compound_head.exit.i39_crit_edge:      ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i39

if.then.i.i36:                                    ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i35 = add i32 %58, -1
  %.pre186 = inttoptr i32 %sub.i.i35 to ptr
  br label %_compound_head.exit.i39

_compound_head.exit.i39:                          ; preds = %if.then.i.i36, %do.end126._compound_head.exit.i39_crit_edge
  %.pre-phi187 = phi ptr [ %4, %do.end126._compound_head.exit.i39_crit_edge ], [ %.pre186, %if.then.i.i36 ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi187, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %59 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !95

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi187, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i39
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@pickup_page_for_submission, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !117

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi187, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_allocpage_crit_edge

folio_put_testzero.exit.i.i.out_allocpage_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_allocpage

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %.pre-phi187) #10
  br label %out_allocpage

out_allocpage:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_allocpage_crit_edge, %repeat.out_allocpage_crit_edge
  %tocache.1.off0 = phi i1 [ true, %if.then.i4.i ], [ true, %folio_put_testzero.exit.i.i.out_allocpage_crit_edge ], [ %tocache.0.off0, %repeat.out_allocpage_crit_edge ]
  %call127 = tail call ptr @erofs_allocpage(ptr noundef %pagepool, i32 noundef 35904) #10
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !175
  %62 = ptrtoint ptr %call127 to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #10
  br label %do.body.i41

do.body.i41:                                      ; preds = %do.body.i41.do.body.i41_crit_edge, %out_allocpage
  %63 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %arrayidx, i32 %.pre188, i32 %62) #10, !srcloc !135
  %asmresult.i = extractvalue { i32, i32 } %63, 0
  %tobool.not.i40 = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i40, label %__cmpxchg.exit, label %do.body.i41.do.body.i41_crit_edge

do.body.i41.do.body.i41_crit_edge:                ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i41

__cmpxchg.exit:                                   ; preds = %do.body.i41
  %asmresult1.i = extractvalue { i32, i32 } %63, 1
  %64 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  %cmp149.not = icmp eq ptr %3, %64
  br i1 %cmp149.not, label %out_tocache, label %if.then150

if.then150:                                       ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pagepool, align 4
  %67 = ptrtoint ptr %66 to i32
  %private1.i.i = getelementptr inbounds %struct.page, ptr %call127, i32 0, i32 1, i32 0, i32 3
  %68 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %private1.i.i, align 4
  store ptr %call127, ptr %pagepool, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.12, i32 noundef 1194, i32 noundef 0) #10
  %call.i42 = tail call i32 @__cond_resched() #10
  br label %repeat

out_tocache:                                      ; preds = %__cmpxchg.exit
  br i1 %tocache.1.off0, label %out_tocache.lor.lhs.false_crit_edge, label %out_tocache.if.then157_crit_edge

out_tocache.if.then157_crit_edge:                 ; preds = %out_tocache
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

out_tocache.lor.lhs.false_crit_edge:              ; preds = %out_tocache
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %out_tocache.lor.lhs.false_crit_edge, %out_tocache.thread
  %page.068 = phi ptr [ %7, %out_tocache.thread ], [ %call127, %out_tocache.lor.lhs.false_crit_edge ]
  %add = add i32 %1, %nr
  %call155 = tail call i32 @add_to_page_cache_lru(ptr noundef %page.068, ptr noundef %mc, i32 noundef %add, i32 noundef 3136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %lor.lhs.false.if.then157_crit_edge

lor.lhs.false.if.then157_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then157

if.then157:                                       ; preds = %lor.lhs.false.if.then157_crit_edge, %out_tocache.if.then157_crit_edge
  %page.069 = phi ptr [ %page.068, %lor.lhs.false.if.then157_crit_edge ], [ %call127, %out_tocache.if.then157_crit_edge ]
  %private1.i43 = getelementptr inbounds %struct.page, ptr %page.069, i32 0, i32 1, i32 0, i32 3
  %69 = ptrtoint ptr %private1.i43 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -4, ptr %private1.i43, align 4
  br label %out

if.end158:                                        ; preds = %lor.lhs.false
  tail call fastcc void @attach_page_private(ptr noundef %page.068, ptr noundef %pcl)
  %70 = getelementptr inbounds %struct.page, ptr %page.068, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %and.i.i44 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool.not.i.i45 = icmp eq i32 %and.i.i44, 0
  br i1 %tobool.not.i.i45, label %if.end.i.i48, label %if.then.i.i47, !prof !97

if.then.i.i47:                                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i46 = add i32 %72, -1
  br label %_compound_head.exit.i53

if.end.i.i48:                                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %page.068 to i32
  br label %_compound_head.exit.i53

_compound_head.exit.i53:                          ; preds = %if.end.i.i48, %if.then.i.i47
  %retval.0.i.i49 = phi i32 [ %sub.i.i46, %if.then.i.i47 ], [ %73, %if.end.i.i48 ]
  %74 = inttoptr i32 %retval.0.i.i49 to ptr
  %_refcount.i.i.i.i.i50 = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 3
  %call.i.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i50, i32 noundef 4) #10
  %75 = ptrtoint ptr %_refcount.i.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %_refcount.i.i.i.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i.i52 = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i.i52, label %if.then.i.i.i.i54, label %do.end5.i.i.i.i58, !prof !95

if.then.i.i.i.i54:                                ; preds = %_compound_head.exit.i53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %74, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i58:                                ; preds = %_compound_head.exit.i53
  %call.i.i.i10.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i50, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i50, i32 1, i32 3, i32 1) #10
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i50, ptr %_refcount.i.i.i.i.i50, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i50) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i56 = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i56)
  %cmp.i.i.i.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i56, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@pickup_page_for_submission, %if.then.i.i.i.i.i60)) #10
          to label %folio_put_testzero.exit.i.i61 [label %if.then.i.i.i.i.i60], !srcloc !117

if.then.i.i.i.i.i60:                              ; preds = %do.end5.i.i.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i59 = zext i1 %cmp.i.i.i.i.i.i.i57 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %74, i32 noundef -1, i32 noundef %conv.i.i.i.i.i59) #10
  br label %folio_put_testzero.exit.i.i61

folio_put_testzero.exit.i.i61:                    ; preds = %if.then.i.i.i.i.i60, %do.end5.i.i.i.i58
  br i1 %cmp.i.i.i.i.i.i.i57, label %if.then.i4.i62, label %folio_put_testzero.exit.i.i61.out_crit_edge

folio_put_testzero.exit.i.i61.out_crit_edge:      ; preds = %folio_put_testzero.exit.i.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i4.i62:                                   ; preds = %folio_put_testzero.exit.i.i61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %74) #10
  br label %out

out.loopexit:                                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #12
  %78 = inttoptr i32 %and4 to ptr
  br label %out

out:                                              ; preds = %out.loopexit, %if.then.i4.i62, %folio_put_testzero.exit.i.i61.out_crit_edge, %if.then157, %PageUptodate.exit, %folio_flags.exit.i.i32.out_crit_edge, %do.body.i.out_crit_edge
  %page.1 = phi ptr [ %page.069, %if.then157 ], [ null, %PageUptodate.exit ], [ %page.068, %folio_put_testzero.exit.i.i61.out_crit_edge ], [ %page.068, %if.then.i4.i62 ], [ %12, %do.body.i.out_crit_edge ], [ %30, %folio_flags.exit.i.i32.out_crit_edge ], [ %78, %out.loopexit ]
  ret ptr %page.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_erofs_decompressqueue_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -2
  %3 = inttoptr i32 %and to ptr
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %4 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i98.not = icmp eq i16 %5, 0
  br i1 %cmp.not.i98.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bi_status, align 2
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool30.not = icmp eq i8 %7, 0
  br label %if.end.i

if.end.i:                                         ; preds = %if.end38.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.0101 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end38.if.end.i_crit_edge ]
  %iter_all.sroa.11.0100 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select85, %if.end38.if.end.i_crit_edge ]
  %iter_all.sroa.15.099 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end38.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.099)
  %tobool.not.i.i54 = icmp eq i32 %iter_all.sroa.15.099, 0
  br i1 %tobool.not.i.i54, label %if.else.i.i, label %if.then.i.i55

if.then.i.i55:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0101, i32 1
  br label %if.end.i.i58

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.0100
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.0100, i32 2
  %12 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %13, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %11, i32 %shr.i.i
  %and.i.i56 = and i32 %13, 4095
  br label %if.end.i.i58

if.end.i.i58:                                     ; preds = %if.else.i.i, %if.then.i.i55
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i55 ]
  %.sink.i.i = phi i32 [ %and.i.i56, %if.else.i.i ], [ 0, %if.then.i.i55 ]
  %sub.i.i57 = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %9, i32 %iter_all.sroa.11.0100, i32 1
  %14 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %15, %iter_all.sroa.15.099
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i.i57, i32 %sub9.i.i) #10
  %add.i.i = add i32 %16, %iter_all.sroa.15.099
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %15)
  %cmp15.i.i = icmp eq i32 %add.i.i, %15
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select85 = add nuw nsw i32 %iter_all.sroa.11.0100, %inc.i.i
  %17 = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i59 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i59, 0
  br i1 %tobool.not.i.i60, label %if.end.i.i63, label %if.then.i.i62, !prof !97

if.then.i.i62:                                    ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i61 = add i32 %19, -1
  br label %_compound_head.exit.i67

if.end.i.i63:                                     ; preds = %if.end.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit.i67

_compound_head.exit.i67:                          ; preds = %if.end.i.i63, %if.then.i.i62
  %retval.0.i.i64 = phi i32 [ %sub.i.i61, %if.then.i.i62 ], [ %20, %if.end.i.i63 ]
  %21 = inttoptr i32 %retval.0.i.i64 to ptr
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i65 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i65)
  %tobool.not.i.i.i66 = icmp eq i32 %and.i.i.i.i65, 0
  br i1 %tobool.not.i.i.i66, label %folio_flags.exit.i.i, label %if.then.i.i.i68, !prof !97

if.then.i.i.i68:                                  ; preds = %_compound_head.exit.i67
  call void @__sanitizer_cov_trace_pc() #12
  %25 = inttoptr i32 %retval.0.i.i64 to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i67
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %21, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %do.body12, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1286, 0\0A.popsection", ""() #10, !srcloc !177
  unreachable

do.body12:                                        ; preds = %folio_flags.exit.i.i
  %mapping.i = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mapping.i, align 4
  %tobool.not.i69 = icmp eq ptr %30, null
  br i1 %tobool.not.i69, label %z_erofs_page_is_invalidated.exit, label %do.body12.do.end29_crit_edge

do.body12.do.end29_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

z_erofs_page_is_invalidated.exit:                 ; preds = %do.body12
  %private.i.i = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %private.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %32)
  %cmp.not.i.i.not = icmp eq i32 %32, -4
  br i1 %cmp.not.i.i.not, label %z_erofs_page_is_invalidated.exit.do.end29_crit_edge, label %do.body21, !prof !97

z_erofs_page_is_invalidated.exit.do.end29_crit_edge: ; preds = %z_erofs_page_is_invalidated.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end29

do.body21:                                        ; preds = %z_erofs_page_is_invalidated.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1287, 0\0A.popsection", ""() #10, !srcloc !178
  unreachable

do.end29:                                         ; preds = %z_erofs_page_is_invalidated.exit.do.end29_crit_edge, %do.body12.do.end29_crit_edge
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %do.end29
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !97

if.then.i:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.28) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.body7.i:                                       ; preds = %if.then31
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %17, align 4
  %and.i31.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %36, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %37, %if.end.i.i ]
  %38 = inttoptr i32 %retval.0.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i = icmp eq i32 %40, -1
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %17, align 4
  %and.i32.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !95

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !97

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %42, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %43, %if.end.i36.i ]
  %44 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.27) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !97

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %42, -1
  br label %if.end32.thread

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %if.end32.thread

if.end32:                                         ; preds = %do.end29
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info, align 16
  %50 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mapping.i, align 4
  %managed_cache.i = getelementptr inbounds %struct.erofs_sb_info, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %managed_cache.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %managed_cache.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_mapping.i, align 8
  %cmp.i = icmp eq ptr %51, %55
  br i1 %cmp.i, label %if.then36, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end32.thread:                                  ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %45, %if.end.i43.i ]
  %56 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %56) #10
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %s_fs_info81 = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 33
  %59 = ptrtoint ptr %s_fs_info81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info81, align 16
  %61 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mapping.i, align 4
  %managed_cache.i82 = getelementptr inbounds %struct.erofs_sb_info, ptr %60, i32 0, i32 6
  %63 = ptrtoint ptr %managed_cache.i82 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %managed_cache.i82, align 8
  %i_mapping.i83 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %i_mapping.i83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_mapping.i83, align 8
  %cmp.i84 = icmp eq ptr %62, %66
  br i1 %cmp.i84, label %if.end32.thread.if.end37_crit_edge, label %if.end32.thread.if.end38_crit_edge

if.end32.thread.if.end38_crit_edge:               ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end32.thread.if.end37_crit_edge:               ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !163
  %67 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %iter_all.sroa.0.1) #10
  br label %if.end37

if.end37:                                         ; preds = %SetPageUptodate.exit, %if.end32.thread.if.end37_crit_edge
  tail call void @unlock_page(ptr noundef %iter_all.sroa.0.1) #10
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end32.thread.if.end38_crit_edge, %if.end32.if.end38_crit_edge
  %69 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %70 to i32
  %cmp.not.i = icmp ult i32 %spec.select85, %conv.i
  br i1 %cmp.not.i, label %if.end38.if.end.i_crit_edge, label %if.end38.for.end_crit_edge

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end38.if.end.i_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

for.end:                                          ; preds = %if.end38.for.end_crit_edge, %entry.for.end_crit_edge
  %and40 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41 = icmp ne i32 %and40, 0
  tail call fastcc void @z_erofs_decompress_kickoff(ptr noundef %3, i1 noundef zeroext %tobool41, i32 noundef -1)
  tail call void @bio_put(ptr noundef %bio) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @z_erofs_decompress_kickoff(ptr noundef %io, i1 noundef zeroext %sync, i32 noundef %bios) unnamed_addr #0 align 64 {
entry:
  %pagepool.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  br i1 %sync, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %u) #10
  %pending_bios = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %pending_bios, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bios, ptr %pending_bios, i32 %bios, ptr elementtype(i32) %pending_bios) #10, !srcloc !180
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool6.not = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool6.not, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__wake_up_locked(ptr noundef %u, i32 noundef 3, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %u, i32 noundef %call2) #10
  br label %cleanup

if.end11:                                         ; preds = %entry
  %pending_bios12 = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 1
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_bios12, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @llvm.prefetch.p0(ptr %pending_bios12, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_bios12, ptr %pending_bios12, i32 %bios, ptr elementtype(i32) %pending_bios12) #10, !srcloc !180
  %asmresult.i.i.i59 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i59)
  %tobool14.not = icmp eq i32 %asmresult.i.i.i59, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %6 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18.not = icmp eq i32 %9, 0
  br i1 %cmp18.not, label %lor.lhs.false, label %if.end16.if.then38_crit_edge

if.end16.if.then38_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.end16
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !182
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not = icmp eq i32 %and.i, 0
  br i1 %tobool37.not, label %if.end47, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %if.end16.if.then38_crit_edge
  %11 = load ptr, ptr @z_erofs_workqueue, align 4
  %u39 = getelementptr inbounds %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %u39) #10
  %sync_decompress = getelementptr inbounds %struct.erofs_mount_opts, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %sync_decompress to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sync_decompress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp41 = icmp eq i32 %13, 0
  br i1 %cmp41, label %if.then43, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %sync_decompress to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %sync_decompress, align 4
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagepool.i) #10
  %15 = ptrtoint ptr %pagepool.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pagepool.i, align 4
  %head.i = getelementptr %struct.z_erofs_decompressqueue, ptr %io, i32 0, i32 2
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 4
  %cmp.i = icmp eq ptr %17, inttoptr (i32 1594810029 to ptr)
  br i1 %cmp.i, label %do.body2.i, label %if.end47.while.cond.i.i_crit_edge, !prof !95

if.end47.while.cond.i.i_crit_edge:                ; preds = %if.end47
  br label %while.cond.i.i

do.body2.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1062, 0\0A.popsection", ""() #10, !srcloc !183
  unreachable

while.cond.i.i:                                   ; preds = %do.end26.i.i, %if.end47.while.cond.i.i_crit_edge
  %owned.0.i.i = phi ptr [ %20, %do.end26.i.i ], [ %17, %if.end47.while.cond.i.i_crit_edge ]
  %magicptr36.i.i = ptrtoint ptr %owned.0.i.i to i32
  %18 = zext i32 %magicptr36.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %magicptr36.i.i, label %do.end26.i.i [
    i32 1594810029, label %z_erofs_decompressqueue_work.exit
    i32 1594804990, label %do.body3.i.i
    i32 0, label %do.body18.i.i
  ], !prof !154

do.body3.i.i:                                     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1044, 0\0A.popsection", ""() #10, !srcloc !155
  unreachable

do.body18.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1047, 0\0A.popsection", ""() #10, !srcloc !156
  unreachable

do.end26.i.i:                                     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %owned.0.i.i, i32 -120
  %19 = ptrtoint ptr %owned.0.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %owned.0.i.i, align 4
  %21 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io, align 4
  call fastcc void @z_erofs_decompress_pcluster(ptr noundef %22, ptr noundef %add.ptr.i.i, ptr noundef nonnull %pagepool.i) #10
  br label %while.cond.i.i

z_erofs_decompressqueue_work.exit:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @erofs_release_pages(ptr noundef nonnull %pagepool.i) #10
  call void @kvfree(ptr noundef %io) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagepool.i) #10
  br label %cleanup

cleanup:                                          ; preds = %z_erofs_decompressqueue_work.exit, %if.then43, %if.then38.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @z_erofs_decompressqueue_work(ptr noundef %work) #0 align 64 {
entry:
  %pagepool = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pagepool) #10
  %0 = ptrtoint ptr %pagepool to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pagepool, align 4
  %head = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 4
  %cmp = icmp eq ptr %2, inttoptr (i32 1594810029 to ptr)
  br i1 %cmp, label %do.body2, label %do.end7, !prof !95

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1062, 0\0A.popsection", ""() #10, !srcloc !183
  unreachable

do.end7:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end26.i, %do.end7
  %owned.0.i = phi ptr [ %4, %do.end7 ], [ %7, %do.end26.i ]
  %magicptr36.i = ptrtoint ptr %owned.0.i to i32
  %5 = zext i32 %magicptr36.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %magicptr36.i, label %do.end26.i [
    i32 1594810029, label %z_erofs_decompress_queue.exit
    i32 1594804990, label %do.body3.i
    i32 0, label %do.body18.i
  ], !prof !154

do.body3.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1044, 0\0A.popsection", ""() #10, !srcloc !155
  unreachable

do.body18.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1047, 0\0A.popsection", ""() #10, !srcloc !156
  unreachable

do.end26.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %owned.0.i, i32 -120
  %6 = ptrtoint ptr %owned.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %owned.0.i, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  call fastcc void @z_erofs_decompress_pcluster(ptr noundef %9, ptr noundef %add.ptr.i, ptr noundef nonnull %pagepool) #10
  br label %while.cond.i

z_erofs_decompress_queue.exit:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @erofs_release_pages(ptr noundef nonnull %pagepool) #10
  call void @kvfree(ptr noundef %add.ptr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pagepool) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !97

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !95

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !143
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #10
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !117

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #10
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.76, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @z_erofs_decompress_pcluster(ptr noundef %sb, ptr noundef %pcl, ptr noundef %pagepool) unnamed_addr #0 align 64 {
entry:
  %pages_onstack = alloca [96 x ptr], align 4
  %.compoundliteral = alloca %struct.z_erofs_decompress_req, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %2 = ptrtoint ptr %pcl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i16 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i16, label %entry.z_erofs_pclusterpages.exit_crit_edge, label %if.end.i

entry.z_erofs_pclusterpages.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pclusterpages.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  %conv.i = zext i16 %6 to i32
  br label %z_erofs_pclusterpages.exit

z_erofs_pclusterpages.exit:                       ; preds = %if.end.i, %entry.z_erofs_pclusterpages.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ 1, %entry.z_erofs_pclusterpages.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %pages_onstack) #10
  %7 = call ptr @memset(ptr %pages_onstack, i32 255, i32 384)
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 834) #10
  %primary_collection = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 1
  %nr_pages8 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %nr_pages8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load volatile i16, ptr %nr_pages8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %do.body12, label %do.end19, !prof !95

do.body12:                                        ; preds = %z_erofs_pclusterpages.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 836, 0\0A.popsection", ""() #10, !srcloc !184
  unreachable

do.end19:                                         ; preds = %z_erofs_pclusterpages.exit
  tail call void @mutex_lock_nested(ptr noundef %primary_collection, i32 noundef 0) #10
  %10 = ptrtoint ptr %nr_pages8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nr_pages8, align 2
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 97, i16 %11)
  %cmp = icmp ult i16 %11, 97
  br i1 %cmp, label %if.end38, label %if.else

if.else:                                          ; preds = %do.end19
  call void @__sanitizer_cov_trace_const_cmp2(i16 2049, i16 %11)
  %cmp23 = icmp ult i16 %11, 2049
  br i1 %cmp23, label %land.lhs.true, label %if.else.kvmalloc_array.exit_crit_edge

if.else.kvmalloc_array.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %kvmalloc_array.exit

land.lhs.true:                                    ; preds = %if.else
  %call25 = tail call i32 @mutex_trylock(ptr noundef nonnull @z_pagemap_global_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.kvmalloc_array.exit_crit_edge, label %land.lhs.true.for.body.preheader_crit_edge

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

land.lhs.true.kvmalloc_array.exit_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %kvmalloc_array.exit

kvmalloc_array.exit:                              ; preds = %land.lhs.true.kvmalloc_array.exit_crit_edge, %if.else.kvmalloc_array.exit_crit_edge
  %12 = shl nuw nsw i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %11)
  %cmp29 = icmp ugt i16 %11, 2048
  %spec.select = select i1 %cmp29, i32 36032, i32 3264
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef %spec.select, i32 noundef -1) #13
  %tobool34.not = icmp eq ptr %call.i.i, null
  br i1 %tobool34.not, label %if.then35, label %kvmalloc_array.exit.for.body.preheader_crit_edge

kvmalloc_array.exit.for.body.preheader_crit_edge: ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.then35:                                        ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef nonnull @z_pagemap_global_lock, i32 noundef 0) #10
  br label %for.body.preheader

if.end38:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp39206.not = icmp eq i16 %11, 0
  br i1 %cmp39206.not, label %if.end38.z_erofs_pagevec_ctor_init.exit_crit_edge, label %if.end38.for.body.preheader_crit_edge

if.end38.for.body.preheader_crit_edge:            ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end38.z_erofs_pagevec_ctor_init.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_init.exit

for.body.preheader:                               ; preds = %if.end38.for.body.preheader_crit_edge, %if.then35, %kvmalloc_array.exit.for.body.preheader_crit_edge, %land.lhs.true.for.body.preheader_crit_edge
  %pages.1271 = phi ptr [ %pages_onstack, %if.end38.for.body.preheader_crit_edge ], [ @z_pagemap_global, %if.then35 ], [ %call.i.i, %kvmalloc_array.exit.for.body.preheader_crit_edge ], [ @z_pagemap_global, %land.lhs.true.for.body.preheader_crit_edge ]
  %13 = shl nuw nsw i32 %conv, 2
  %14 = call ptr @memset(ptr %pages.1271, i32 0, i32 %13)
  br label %z_erofs_pagevec_ctor_init.exit

z_erofs_pagevec_ctor_init.exit:                   ; preds = %for.body.preheader, %if.end38.z_erofs_pagevec_ctor_init.exit_crit_edge
  %cmp39206.not277 = phi i1 [ false, %for.body.preheader ], [ true, %if.end38.z_erofs_pagevec_ctor_init.exit_crit_edge ]
  %pages.1272 = phi ptr [ %pages.1271, %for.body.preheader ], [ %pages_onstack, %if.end38.z_erofs_pagevec_ctor_init.exit_crit_edge ]
  %vcnt = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %vcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp43208.not = icmp eq i32 %16, 0
  br i1 %cmp43208.not, label %z_erofs_pagevec_ctor_init.exit.z_erofs_pagevec_ctor_exit.exit_crit_edge, label %for.body45.preheader

z_erofs_pagevec_ctor_init.exit.z_erofs_pagevec_ctor_exit.exit_crit_edge: ; preds = %z_erofs_pagevec_ctor_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit

for.body45.preheader:                             ; preds = %z_erofs_pagevec_ctor_init.exit
  %17 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 1, i32 4
  br label %for.body45

for.body45:                                       ; preds = %cleanup.for.body45_crit_edge, %for.body45.preheader
  %i.1214 = phi i32 [ %inc130, %cleanup.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %ctor.sroa.0.0213 = phi ptr [ %ctor.sroa.0.1, %cleanup.for.body45_crit_edge ], [ null, %for.body45.preheader ]
  %ctor.sroa.7.0212 = phi ptr [ %spec.select131, %cleanup.for.body45_crit_edge ], [ null, %for.body45.preheader ]
  %ctor.sroa.14.0211 = phi ptr [ %ctor.sroa.14.1, %cleanup.for.body45_crit_edge ], [ %17, %for.body45.preheader ]
  %ctor.sroa.21.0210 = phi i32 [ %ctor.sroa.21.1, %cleanup.for.body45_crit_edge ], [ 3, %for.body45.preheader ]
  %ctor.sroa.26.0209 = phi i32 [ %inc.i, %cleanup.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ctor.sroa.26.0209, i32 %ctor.sroa.21.0210)
  %cmp.not.i = icmp ult i32 %ctor.sroa.26.0209, %ctor.sroa.21.0210
  br i1 %cmp.not.i, label %for.body45.if.end11.i_crit_edge, label %do.body.i

for.body45.if.end11.i_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.body.i:                                        ; preds = %for.body45
  %tobool.not.i22 = icmp eq ptr %ctor.sroa.7.0212, null
  br i1 %tobool.not.i22, label %do.body5.i, label %z_erofs_pagevec_ctor_next_page.exit.i.i, !prof !95

do.body5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zpvec.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !185
  unreachable

z_erofs_pagevec_ctor_next_page.exit.i.i:          ; preds = %do.body.i
  %tobool.not.i18.i.i = icmp eq ptr %ctor.sroa.0.0213, null
  br i1 %tobool.not.i18.i.i, label %z_erofs_pagevec_ctor_next_page.exit.i.i.z_erofs_pagevec_ctor_pagedown.exit.i_crit_edge, label %if.end.i.i.i

z_erofs_pagevec_ctor_next_page.exit.i.i.z_erofs_pagevec_ctor_pagedown.exit.i_crit_edge: ; preds = %z_erofs_pagevec_ctor_next_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_pagedown.exit.i

if.end.i.i.i:                                     ; preds = %z_erofs_pagevec_ctor_next_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kunmap_local_indexed(ptr noundef %ctor.sroa.14.0211) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !164
  %18 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i1.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = add i32 %23, -1
  store i32 %dec.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !165
  %24 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  br label %z_erofs_pagevec_ctor_pagedown.exit.i

z_erofs_pagevec_ctor_pagedown.exit.i:             ; preds = %if.end.i.i.i, %z_erofs_pagevec_ctor_next_page.exit.i.i.z_erofs_pagevec_ctor_pagedown.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %28 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %28, 512
  %29 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i20.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i20.i.i to ptr
  %preempt_count.i.i.i.i21.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i21.i.i, align 4
  %add.i.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i21.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !166
  %33 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i1.i.i22.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i.i22.i.i to ptr
  %task.i.i.i.i23.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i.i23.i.i, align 8
  %pagefault_disabled.i.i.i.i24.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i.i24.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i24.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !167
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %ctor.sroa.7.0212, i32 noundef %or.i.i.i) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %z_erofs_pagevec_ctor_pagedown.exit.i, %for.body45.if.end11.i_crit_edge
  %ctor.sroa.26.1 = phi i32 [ %ctor.sroa.26.0209, %for.body45.if.end11.i_crit_edge ], [ 0, %z_erofs_pagevec_ctor_pagedown.exit.i ]
  %ctor.sroa.21.1 = phi i32 [ %ctor.sroa.21.0210, %for.body45.if.end11.i_crit_edge ], [ 1024, %z_erofs_pagevec_ctor_pagedown.exit.i ]
  %ctor.sroa.14.1 = phi ptr [ %ctor.sroa.14.0211, %for.body45.if.end11.i_crit_edge ], [ %call.i.i.i.i, %z_erofs_pagevec_ctor_pagedown.exit.i ]
  %ctor.sroa.7.1 = phi ptr [ %ctor.sroa.7.0212, %for.body45.if.end11.i_crit_edge ], [ null, %z_erofs_pagevec_ctor_pagedown.exit.i ]
  %ctor.sroa.0.1 = phi ptr [ %ctor.sroa.0.0213, %for.body45.if.end11.i_crit_edge ], [ %ctor.sroa.7.0212, %z_erofs_pagevec_ctor_pagedown.exit.i ]
  %arrayidx.i = getelementptr %struct.__tagptr2, ptr %ctor.sroa.14.1, i32 %ctor.sroa.26.1
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %t.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %t.sroa.0.0.copyload.i, 3
  %40 = ptrtoint ptr %ctor.sroa.7.1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %40)
  %cmp14.i = icmp eq i32 %and.i, %40
  %and17.i = and i32 %t.sroa.0.0.copyload.i, -4
  %41 = inttoptr i32 %and17.i to ptr
  %spec.select131 = select i1 %cmp14.i, ptr %41, ptr %ctor.sroa.7.1
  %inc.i = add nuw i32 %ctor.sroa.26.1, 1
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool48.not = icmp eq i32 %and17.i, 0
  br i1 %tobool48.not, label %do.body58, label %do.body67, !prof !95

do.body58:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 875, 0\0A.popsection", ""() #10, !srcloc !186
  unreachable

do.body67:                                        ; preds = %if.end11.i
  %mapping.i = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mapping.i, align 4
  %tobool.not.i23 = icmp eq ptr %44, null
  br i1 %tobool.not.i23, label %z_erofs_page_is_invalidated.exit, label %do.body67.do.end84_crit_edge

do.body67.do.end84_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

z_erofs_page_is_invalidated.exit:                 ; preds = %do.body67
  %private.i.i = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %private.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %46)
  %cmp.not.i.i.not = icmp eq i32 %46, -4
  br i1 %cmp.not.i.i.not, label %z_erofs_page_is_invalidated.exit.do.end84_crit_edge, label %do.body76, !prof !97

z_erofs_page_is_invalidated.exit.do.end84_crit_edge: ; preds = %z_erofs_page_is_invalidated.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end84

do.body76:                                        ; preds = %z_erofs_page_is_invalidated.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 876, 0\0A.popsection", ""() #10, !srcloc !187
  unreachable

do.end84:                                         ; preds = %z_erofs_page_is_invalidated.exit.do.end84_crit_edge, %do.body67.do.end84_crit_edge
  %call85 = tail call fastcc zeroext i1 @z_erofs_put_shortlivedpage(ptr noundef %pagepool, ptr noundef nonnull %41)
  br i1 %call85, label %do.end84.cleanup_crit_edge, label %if.end87

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end87:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp88 = icmp eq i32 %and.i, 2
  br i1 %cmp88, label %if.end87.do.body94_crit_edge, label %if.else91

if.end87.do.body94_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body94

if.else91:                                        ; preds = %if.end87
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i.i = icmp eq i32 %48, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i24, label %PagePrivate.exit.i, !prof !95

if.then.i.i24:                                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #12
  %49 = inttoptr i32 %and17.i to ptr
  tail call void @dump_page(ptr noundef nonnull %49, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !159
  unreachable

PagePrivate.exit.i:                               ; preds = %if.else91
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %41, align 4
  %52 = and i32 %51, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i25 = icmp eq i32 %52, 0
  br i1 %tobool.not.i25, label %do.body4.i, label %z_erofs_onlinepage_index.exit, !prof !95

do.body4.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 137, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

z_erofs_onlinepage_index.exit:                    ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %private.i, i32 noundef 4) #10
  %53 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %private.i, align 4
  %shr.i = ashr i32 %54, 2
  br label %do.body94

do.body94:                                        ; preds = %z_erofs_onlinepage_index.exit, %if.end87.do.body94_crit_edge
  %pagenr.0 = phi i32 [ %shr.i, %z_erofs_onlinepage_index.exit ], [ 0, %if.end87.do.body94_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pagenr.0, i32 %conv)
  %cmp95.not = icmp ult i32 %pagenr.0, %conv
  br i1 %cmp95.not, label %do.end112, label %do.body104, !prof !97

do.body104:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 886, 0\0A.popsection", ""() #10, !srcloc !189
  unreachable

do.end112:                                        ; preds = %do.body94
  %arrayidx113 = getelementptr ptr, ptr %pages.1272, i32 %pagenr.0
  %55 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx113, align 4
  %tobool114.not = icmp eq ptr %56, null
  br i1 %tobool114.not, label %if.end127, label %do.body117

do.body117:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 893, 0\0A.popsection", ""() #10, !srcloc !190
  unreachable

if.end127:                                        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %41, ptr %arrayidx113, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %do.end84.cleanup_crit_edge
  %inc130 = add nuw i32 %i.1214, 1
  %58 = ptrtoint ptr %vcnt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vcnt, align 4
  %cmp43 = icmp ult i32 %inc130, %59
  br i1 %cmp43, label %cleanup.for.body45_crit_edge, label %for.end131

cleanup.for.body45_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45

for.end131:                                       ; preds = %cleanup
  %tobool.not.i26 = icmp eq ptr %ctor.sroa.0.1, null
  br i1 %tobool.not.i26, label %for.end131.z_erofs_pagevec_ctor_exit.exit_crit_edge, label %if.end.i27

for.end131.z_erofs_pagevec_ctor_exit.exit_crit_edge: ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %z_erofs_pagevec_ctor_exit.exit

if.end.i27:                                       ; preds = %for.end131
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kunmap_local_indexed(ptr noundef %ctor.sroa.14.1) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !164
  %60 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i1.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 213
  %64 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %65, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !165
  %66 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %z_erofs_pagevec_ctor_exit.exit

z_erofs_pagevec_ctor_exit.exit:                   ; preds = %if.end.i27, %for.end131.z_erofs_pagevec_ctor_exit.exit_crit_edge, %z_erofs_pagevec_ctor_init.exit.z_erofs_pagevec_ctor_exit.exit_crit_edge
  %compressed_pages132 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp135216.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp135216.not, label %z_erofs_pagevec_ctor_exit.exit.if.end262_crit_edge, label %for.body137.lr.ph

z_erofs_pagevec_ctor_exit.exit.if.end262_crit_edge: ; preds = %z_erofs_pagevec_ctor_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end262

for.body137.lr.ph:                                ; preds = %z_erofs_pagevec_ctor_exit.exit
  %managed_cache.i = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 6
  br label %for.body137

for.body137:                                      ; preds = %cleanup254.for.body137_crit_edge, %for.body137.lr.ph
  %err.0219 = phi i32 [ 0, %for.body137.lr.ph ], [ %err.4, %cleanup254.for.body137_crit_edge ]
  %overlapped.0.off0218 = phi i1 [ false, %for.body137.lr.ph ], [ %overlapped.2.off0, %cleanup254.for.body137_crit_edge ]
  %i.2217 = phi i32 [ 0, %for.body137.lr.ph ], [ %inc258, %cleanup254.for.body137_crit_edge ]
  %arrayidx139 = getelementptr ptr, ptr %compressed_pages132, i32 %i.2217
  %70 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx139, align 4
  %tobool141.not = icmp eq ptr %71, null
  br i1 %tobool141.not, label %do.body151, label %do.end159, !prof !95

do.body151:                                       ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 910, 0\0A.popsection", ""() #10, !srcloc !191
  unreachable

do.end159:                                        ; preds = %for.body137
  %72 = ptrtoint ptr %pcl to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pcl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i29 = icmp eq i32 %73, 0
  br i1 %tobool.not.i29, label %if.then161, label %do.body167

if.then161:                                       ; preds = %do.end159
  %74 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i30 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i31, label %if.end.i.i34, label %if.then.i.i33, !prof !97

if.then.i.i33:                                    ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i32 = add i32 %76, -1
  br label %_compound_head.exit.i36

if.end.i.i34:                                     ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %71 to i32
  br label %_compound_head.exit.i36

_compound_head.exit.i36:                          ; preds = %if.end.i.i34, %if.then.i.i33
  %retval.0.i.i35 = phi i32 [ %sub.i.i32, %if.then.i.i33 ], [ %77, %if.end.i.i34 ]
  %78 = inttoptr i32 %retval.0.i.i35 to ptr
  %79 = getelementptr inbounds %struct.page, ptr %78, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %and.i.i.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !97

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i36
  call void @__sanitizer_cov_trace_pc() #12
  %82 = inttoptr i32 %retval.0.i.i35 to ptr
  tail call void @dump_page(ptr noundef %82, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i36
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %78, align 4
  %85 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i.not.i = icmp eq i32 %85, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.cleanup254_crit_edge, label %do.end.i.i

folio_flags.exit.i.i.cleanup254_crit_edge:        ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup254

do.end.i.i:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  br label %cleanup254

do.body167:                                       ; preds = %do.end159
  %mapping.i37 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1, i32 0, i32 1
  %86 = ptrtoint ptr %mapping.i37 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mapping.i37, align 4
  %tobool.not.i38 = icmp eq ptr %87, null
  %private.i.i39 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1, i32 0, i32 3
  %88 = ptrtoint ptr %private.i.i39 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %private.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %89)
  %cmp.not.i.i40.not = icmp eq i32 %89, -4
  br i1 %tobool.not.i38, label %z_erofs_page_is_invalidated.exit42, label %do.end184.thread

z_erofs_page_is_invalidated.exit42:               ; preds = %do.body167
  br i1 %cmp.not.i.i40.not, label %do.end184, label %do.body176, !prof !97

do.body176:                                       ; preds = %z_erofs_page_is_invalidated.exit42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 918, 0\0A.popsection", ""() #10, !srcloc !192
  unreachable

do.end184:                                        ; preds = %z_erofs_page_is_invalidated.exit42
  %90 = ptrtoint ptr %private.i.i39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %private.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %91)
  %cmp.not.i44 = icmp eq i32 %91, -4
  br i1 %cmp.not.i44, label %do.end184.if.end230_crit_edge, label %do.end184.if.then186_crit_edge

do.end184.if.then186_crit_edge:                   ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then186

do.end184.if.end230_crit_edge:                    ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end230

do.end184.thread:                                 ; preds = %do.body167
  br i1 %cmp.not.i.i40.not, label %do.body4.i48, label %do.end184.thread.if.then186_crit_edge

do.end184.thread.if.then186_crit_edge:            ; preds = %do.end184.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then186

do.body4.i48:                                     ; preds = %do.end184.thread
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/compress.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

if.then186:                                       ; preds = %do.end184.thread.if.then186_crit_edge, %do.end184.if.then186_crit_edge
  %92 = ptrtoint ptr %managed_cache.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %managed_cache.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_mapping.i, align 8
  %cmp.i = icmp eq ptr %87, %95
  br i1 %cmp.i, label %if.then188, label %if.end193

if.then188:                                       ; preds = %if.then186
  %96 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  %and.i.i50 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.then.i.i53, !prof !97

if.then.i.i53:                                    ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i52 = add i32 %98, -1
  br label %_compound_head.exit.i58

if.end.i.i54:                                     ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %71 to i32
  br label %_compound_head.exit.i58

_compound_head.exit.i58:                          ; preds = %if.end.i.i54, %if.then.i.i53
  %retval.0.i.i55 = phi i32 [ %sub.i.i52, %if.then.i.i53 ], [ %99, %if.end.i.i54 ]
  %100 = inttoptr i32 %retval.0.i.i55 to ptr
  %101 = getelementptr inbounds %struct.page, ptr %100, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %and.i.i.i.i56 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i56)
  %tobool.not.i.i.i57 = icmp eq i32 %and.i.i.i.i56, 0
  br i1 %tobool.not.i.i.i57, label %folio_flags.exit.i.i61, label %if.then.i.i.i59, !prof !97

if.then.i.i.i59:                                  ; preds = %_compound_head.exit.i58
  call void @__sanitizer_cov_trace_pc() #12
  %104 = inttoptr i32 %retval.0.i.i55 to ptr
  tail call void @dump_page(ptr noundef %104, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i61:                           ; preds = %_compound_head.exit.i58
  %105 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %100, align 4
  %107 = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i.not.i60 = icmp eq i32 %107, 0
  br i1 %tobool.i.not.i60, label %folio_flags.exit.i.i61.cleanup254_crit_edge, label %do.end.i.i62

folio_flags.exit.i.i61.cleanup254_crit_edge:      ; preds = %folio_flags.exit.i.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup254

do.end.i.i62:                                     ; preds = %folio_flags.exit.i.i61
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  br label %cleanup254

if.end193:                                        ; preds = %if.then186
  %108 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp.i.not.i.i65 = icmp eq i32 %109, -1
  br i1 %cmp.i.not.i.i65, label %if.then.i.i66, label %PagePrivate.exit.i68, !prof !95

if.then.i.i66:                                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef nonnull %71, ptr noundef nonnull @.str.18) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !159
  unreachable

PagePrivate.exit.i68:                             ; preds = %if.end193
  %110 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %71, align 4
  %112 = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i67 = icmp eq i32 %112, 0
  br i1 %tobool.not.i67, label %do.body4.i69, label %z_erofs_onlinepage_index.exit73, !prof !95

do.body4.i69:                                     ; preds = %PagePrivate.exit.i68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 137, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

z_erofs_onlinepage_index.exit73:                  ; preds = %PagePrivate.exit.i68
  %call.i.i.i71 = tail call zeroext i1 @__kasan_check_read(ptr noundef %private.i.i39, i32 noundef 4) #10
  %113 = ptrtoint ptr %private.i.i39 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %private.i.i39, align 4
  %shr.i72 = ashr i32 %114, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i72, i32 %conv)
  %cmp196.not = icmp ult i32 %shr.i72, %conv
  br i1 %cmp196.not, label %do.end213, label %do.body205, !prof !97

do.body205:                                       ; preds = %z_erofs_onlinepage_index.exit73
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 932, 0\0A.popsection", ""() #10, !srcloc !193
  unreachable

do.end213:                                        ; preds = %z_erofs_onlinepage_index.exit73
  %arrayidx214 = getelementptr ptr, ptr %pages.1272, i32 %shr.i72
  %115 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx214, align 4
  %tobool215.not = icmp eq ptr %116, null
  br i1 %tobool215.not, label %if.end228, label %do.body218

do.body218:                                       ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 934, 0\0A.popsection", ""() #10, !srcloc !194
  unreachable

if.end228:                                        ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %71, ptr %arrayidx214, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.end228, %do.end184.if.end230_crit_edge
  %overlapped.1.off0 = phi i1 [ %overlapped.0.off0218, %do.end184.if.end230_crit_edge ], [ true, %if.end228 ]
  %118 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %118, align 4
  %and.i.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %120, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %71 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %121, %if.end.i.i ]
  %122 = inttoptr i32 %retval.0.i.i to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %cmp.i.not.i = icmp eq i32 %124, -1
  %125 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %118, align 4
  %and.i16.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !95

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !97

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %126, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %71 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %127, %if.end.i20.i ]
  %128 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %128, ptr noundef nonnull @.str.27) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !162
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !97

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %126, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %71 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %129, %if.end.i27.i ]
  %130 = inttoptr i32 %retval.0.i28.i to ptr
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %130, align 4
  %133 = and i32 %132, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool232.not = icmp eq i32 %133, 0
  br i1 %tobool232.not, label %PageError.exit.cleanup254_crit_edge, label %do.body234

PageError.exit.cleanup254_crit_edge:              ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup254

do.body234:                                       ; preds = %PageError.exit
  %134 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %118, align 4
  %and.i.i74 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool.not.i.i75 = icmp eq i32 %and.i.i74, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i78, label %if.then.i.i77, !prof !97

if.then.i.i77:                                    ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i76 = add i32 %135, -1
  br label %_compound_head.exit.i82

if.end.i.i78:                                     ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %71 to i32
  br label %_compound_head.exit.i82

_compound_head.exit.i82:                          ; preds = %if.end.i.i78, %if.then.i.i77
  %retval.0.i.i79 = phi i32 [ %sub.i.i76, %if.then.i.i77 ], [ %136, %if.end.i.i78 ]
  %137 = inttoptr i32 %retval.0.i.i79 to ptr
  %138 = getelementptr inbounds %struct.page, ptr %137, i32 0, i32 1
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %138, align 4
  %and.i.i.i.i80 = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i80)
  %tobool.not.i.i.i81 = icmp eq i32 %and.i.i.i.i80, 0
  br i1 %tobool.not.i.i.i81, label %folio_flags.exit.i.i85, label %if.then.i.i.i83, !prof !97

if.then.i.i.i83:                                  ; preds = %_compound_head.exit.i82
  call void @__sanitizer_cov_trace_pc() #12
  %141 = inttoptr i32 %retval.0.i.i79 to ptr
  tail call void @dump_page(ptr noundef %141, ptr noundef nonnull @.str.2) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !98
  unreachable

folio_flags.exit.i.i85:                           ; preds = %_compound_head.exit.i82
  %142 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %137, align 4
  %144 = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool.i.not.i84 = icmp eq i32 %144, 0
  br i1 %tobool.i.not.i84, label %folio_flags.exit.i.i85.cleanup254_crit_edge, label %PageUptodate.exit88

folio_flags.exit.i.i85.cleanup254_crit_edge:      ; preds = %folio_flags.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup254

PageUptodate.exit88:                              ; preds = %folio_flags.exit.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 946, 0\0A.popsection", ""() #10, !srcloc !195
  unreachable

cleanup254:                                       ; preds = %folio_flags.exit.i.i85.cleanup254_crit_edge, %PageError.exit.cleanup254_crit_edge, %do.end.i.i62, %folio_flags.exit.i.i61.cleanup254_crit_edge, %do.end.i.i, %folio_flags.exit.i.i.cleanup254_crit_edge
  %overlapped.2.off0 = phi i1 [ %overlapped.1.off0, %PageError.exit.cleanup254_crit_edge ], [ %overlapped.1.off0, %folio_flags.exit.i.i85.cleanup254_crit_edge ], [ %overlapped.0.off0218, %folio_flags.exit.i.i.cleanup254_crit_edge ], [ %overlapped.0.off0218, %do.end.i.i ], [ %overlapped.0.off0218, %folio_flags.exit.i.i61.cleanup254_crit_edge ], [ %overlapped.0.off0218, %do.end.i.i62 ]
  %err.4 = phi i32 [ %err.0219, %PageError.exit.cleanup254_crit_edge ], [ -5, %folio_flags.exit.i.i85.cleanup254_crit_edge ], [ -5, %folio_flags.exit.i.i.cleanup254_crit_edge ], [ %err.0219, %do.end.i.i ], [ -5, %folio_flags.exit.i.i61.cleanup254_crit_edge ], [ %err.0219, %do.end.i.i62 ]
  %inc258 = add nuw nsw i32 %i.2217, 1
  %exitcond.not = icmp eq i32 %inc258, %retval.0.i
  br i1 %exitcond.not, label %for.end259, label %cleanup254.for.body137_crit_edge

cleanup254.for.body137_crit_edge:                 ; preds = %cleanup254
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body137

for.end259:                                       ; preds = %cleanup254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool260.not = icmp eq i32 %err.4, 0
  br i1 %tobool260.not, label %for.end259.if.end262_crit_edge, label %for.end259.out292_crit_edge

for.end259.out292_crit_edge:                      ; preds = %for.end259
  call void @__sanitizer_cov_trace_pc() #12
  br label %out292

for.end259.if.end262_crit_edge:                   ; preds = %for.end259
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end262

if.end262:                                        ; preds = %for.end259.if.end262_crit_edge, %z_erofs_pagevec_ctor_exit.exit.if.end262_crit_edge
  %overlapped.0.off0.lcssa289 = phi i1 [ %overlapped.2.off0, %for.end259.if.end262_crit_edge ], [ false, %z_erofs_pagevec_ctor_exit.exit.if.end262_crit_edge ]
  %length = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 3
  %145 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %length, align 4
  %shr = lshr i32 %146, 1
  %shl = shl nuw nsw i32 %conv, 12
  %pageofs = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 1, i32 1
  %147 = ptrtoint ptr %pageofs to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %pageofs, align 4
  %conv263 = zext i16 %148 to i32
  %add = add nuw i32 %shr, %conv263
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %add)
  %cmp264.not = icmp ult i32 %shl, %add
  %and = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool268.not = icmp eq i32 %and, 0
  %sub = sub nsw i32 %shl, %conv263
  %outputsize.0 = select i1 %cmp264.not, i32 %sub, i32 %shr
  %partial.0.off0 = select i1 %cmp264.not, i1 true, i1 %tobool268.not
  %149 = ptrtoint ptr %pcl to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pcl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i89 = icmp eq i32 %150, 0
  br i1 %tobool.not.i89, label %if.then277, label %if.else279

if.then277:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #12
  %151 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 5
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %151, align 2
  %conv278 = zext i16 %153 to i32
  br label %if.end280

if.else279:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl nuw nsw i32 %retval.0.i, 12
  br label %if.end280

if.end280:                                        ; preds = %if.else279, %if.then277
  %inputsize.0 = phi i32 [ %conv278, %if.then277 ], [ %mul, %if.else279 ]
  %154 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %sb, ptr %.compoundliteral, align 4
  %in = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 1
  %155 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %compressed_pages132, ptr %in, align 4
  %out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 2
  %156 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %pages.1272, ptr %out, align 4
  %pageofs_in = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 3
  %pageofs_in282 = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 4
  %157 = ptrtoint ptr %pageofs_in282 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %pageofs_in282, align 4
  %159 = ptrtoint ptr %pageofs_in to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %158, ptr %pageofs_in, align 4
  %pageofs_out = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 4
  %160 = ptrtoint ptr %pageofs_out to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %148, ptr %pageofs_out, align 2
  %inputsize284 = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 5
  %161 = ptrtoint ptr %inputsize284 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %inputsize.0, ptr %inputsize284, align 4
  %outputsize285 = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 6
  %162 = ptrtoint ptr %outputsize285 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %outputsize.0, ptr %outputsize285, align 4
  %alg = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 7
  %algorithmformat = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 6
  %163 = ptrtoint ptr %algorithmformat to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %algorithmformat, align 4
  %conv286 = zext i8 %164 to i32
  %165 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %conv286, ptr %alg, align 4
  %inplace_io = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 8
  %frombool288 = zext i1 %overlapped.0.off0.lcssa289 to i8
  %166 = ptrtoint ptr %inplace_io to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %frombool288, ptr %inplace_io, align 4
  %partial_decoding = getelementptr inbounds %struct.z_erofs_decompress_req, ptr %.compoundliteral, i32 0, i32 9
  %frombool290 = zext i1 %partial.0.off0 to i8
  %167 = ptrtoint ptr %partial_decoding to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %frombool290, ptr %partial_decoding, align 1
  %call291 = call i32 @z_erofs_decompress(ptr noundef nonnull %.compoundliteral, ptr noundef %pagepool) #10
  br label %out292

out292:                                           ; preds = %if.end280, %for.end259.out292_crit_edge
  %err.5 = phi i32 [ %err.4, %for.end259.out292_crit_edge ], [ %call291, %if.end280 ]
  %168 = ptrtoint ptr %pcl to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %pcl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i90 = icmp eq i32 %169, 0
  br i1 %tobool.not.i90, label %if.then294, label %for.cond307.preheader

for.cond307.preheader:                            ; preds = %out292
  br i1 %cmp135216.not, label %for.cond307.preheader.if.end329_crit_edge, label %for.body310.lr.ph

for.cond307.preheader.if.end329_crit_edge:        ; preds = %for.cond307.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end329

for.body310.lr.ph:                                ; preds = %for.cond307.preheader
  %managed_cache.i99 = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 6
  br label %for.body310

if.then294:                                       ; preds = %out292
  %170 = ptrtoint ptr %compressed_pages132 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %compressed_pages132, align 4
  store volatile ptr null, ptr %compressed_pages132, align 4
  %172 = getelementptr inbounds %struct.page, ptr %171, i32 0, i32 1
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %172, align 4
  %and.i.i91 = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i91)
  %tobool.not.i.i92 = icmp eq i32 %and.i.i91, 0
  br i1 %tobool.not.i.i92, label %if.end.i.i95, label %if.then.i.i94, !prof !97

if.then.i.i94:                                    ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i93 = add i32 %174, -1
  br label %_compound_head.exit.i97

if.end.i.i95:                                     ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #12
  %175 = ptrtoint ptr %171 to i32
  br label %_compound_head.exit.i97

_compound_head.exit.i97:                          ; preds = %if.end.i.i95, %if.then.i.i94
  %retval.0.i.i96 = phi i32 [ %sub.i.i93, %if.then.i.i94 ], [ %175, %if.end.i.i95 ]
  %176 = inttoptr i32 %retval.0.i.i96 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %176, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %177 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i.i.i.i = icmp eq i32 %178, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !95

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i97
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %176, ptr noundef nonnull @.str.4) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i97
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %179 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %179, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@z_erofs_decompress_pcluster, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !117

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %176, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end329_crit_edge

folio_put_testzero.exit.i.i.if.end329_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end329

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %176) #10
  br label %if.end329

for.body310:                                      ; preds = %for.inc326.for.body310_crit_edge, %for.body310.lr.ph
  %i.3223 = phi i32 [ 0, %for.body310.lr.ph ], [ %inc327, %for.inc326.for.body310_crit_edge ]
  %arrayidx311 = getelementptr ptr, ptr %compressed_pages132, i32 %i.3223
  %180 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx311, align 4
  %mapping.i98 = getelementptr inbounds %struct.page, ptr %181, i32 0, i32 1, i32 0, i32 1
  %182 = ptrtoint ptr %mapping.i98 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mapping.i98, align 4
  %184 = ptrtoint ptr %managed_cache.i99 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %managed_cache.i99, align 8
  %i_mapping.i100 = getelementptr inbounds %struct.inode, ptr %185, i32 0, i32 9
  %186 = ptrtoint ptr %i_mapping.i100 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %i_mapping.i100, align 8
  %cmp.i101 = icmp eq ptr %183, %187
  br i1 %cmp.i101, label %for.body310.for.inc326_crit_edge, label %if.end314

for.body310.for.inc326_crit_edge:                 ; preds = %for.body310
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc326

if.end314:                                        ; preds = %for.body310
  call void @__sanitizer_cov_trace_pc() #12
  %call315 = call fastcc zeroext i1 @z_erofs_put_shortlivedpage(ptr noundef %pagepool, ptr noundef %181)
  %188 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr null, ptr %arrayidx311, align 4
  br label %for.inc326

for.inc326:                                       ; preds = %if.end314, %for.body310.for.inc326_crit_edge
  %inc327 = add nuw nsw i32 %i.3223, 1
  %exitcond267.not = icmp eq i32 %inc327, %retval.0.i
  br i1 %exitcond267.not, label %for.inc326.if.end329_crit_edge, label %for.inc326.for.body310_crit_edge

for.inc326.for.body310_crit_edge:                 ; preds = %for.inc326
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body310

for.inc326.if.end329_crit_edge:                   ; preds = %for.inc326
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end329

if.end329:                                        ; preds = %for.inc326.if.end329_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end329_crit_edge, %for.cond307.preheader.if.end329_crit_edge
  br i1 %cmp39206.not277, label %if.end329.for.end365_crit_edge, label %for.body333.lr.ph

if.end329.for.end365_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end365

for.body333.lr.ph:                                ; preds = %if.end329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %cmp359 = icmp slt i32 %err.5, 0
  br label %for.body333

for.body333:                                      ; preds = %for.inc363.for.body333_crit_edge, %for.body333.lr.ph
  %i.4225 = phi i32 [ 0, %for.body333.lr.ph ], [ %inc364, %for.inc363.for.body333_crit_edge ]
  %arrayidx334 = getelementptr ptr, ptr %pages.1272, i32 %i.4225
  %189 = ptrtoint ptr %arrayidx334 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx334, align 4
  %tobool335.not = icmp eq ptr %190, null
  br i1 %tobool335.not, label %for.body333.for.inc363_crit_edge, label %do.body338

for.body333.for.inc363_crit_edge:                 ; preds = %for.body333
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc363

do.body338:                                       ; preds = %for.body333
  %mapping.i102 = getelementptr inbounds %struct.page, ptr %190, i32 0, i32 1, i32 0, i32 1
  %191 = ptrtoint ptr %mapping.i102 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %mapping.i102, align 4
  %tobool.not.i103 = icmp eq ptr %192, null
  br i1 %tobool.not.i103, label %z_erofs_page_is_invalidated.exit107, label %do.body338.do.end355_crit_edge

do.body338.do.end355_crit_edge:                   ; preds = %do.body338
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end355

z_erofs_page_is_invalidated.exit107:              ; preds = %do.body338
  %private.i.i104 = getelementptr inbounds %struct.page, ptr %190, i32 0, i32 1, i32 0, i32 3
  %193 = ptrtoint ptr %private.i.i104 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %private.i.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %194)
  %cmp.not.i.i105.not = icmp eq i32 %194, -4
  br i1 %cmp.not.i.i105.not, label %z_erofs_page_is_invalidated.exit107.do.end355_crit_edge, label %do.body347, !prof !97

z_erofs_page_is_invalidated.exit107.do.end355_crit_edge: ; preds = %z_erofs_page_is_invalidated.exit107
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end355

do.body347:                                       ; preds = %z_erofs_page_is_invalidated.exit107
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/zdata.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1005, 0\0A.popsection", ""() #10, !srcloc !196
  unreachable

do.end355:                                        ; preds = %z_erofs_page_is_invalidated.exit107.do.end355_crit_edge, %do.body338.do.end355_crit_edge
  %call356 = call fastcc zeroext i1 @z_erofs_put_shortlivedpage(ptr noundef %pagepool, ptr noundef nonnull %190)
  br i1 %call356, label %do.end355.for.inc363_crit_edge, label %if.end358

do.end355.for.inc363_crit_edge:                   ; preds = %do.end355
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc363

if.end358:                                        ; preds = %do.end355
  br i1 %cmp359, label %if.then361, label %if.end358.if.end362_crit_edge

if.end358.if.end362_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end362

if.then361:                                       ; preds = %if.end358
  %195 = getelementptr inbounds %struct.page, ptr %190, i32 0, i32 1
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %195, align 4
  %and.i.i7 = and i32 %197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7)
  %tobool.not.i = icmp eq i32 %and.i.i7, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i8, !prof !97

if.then.i8:                                       ; preds = %if.then361
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef nonnull %190, ptr noundef nonnull @.str.28) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

do.body7.i:                                       ; preds = %if.then361
  %198 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %195, align 4
  %and.i31.i = and i32 %199, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i9 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i9, label %if.end.i.i12, label %if.then.i.i11, !prof !97

if.then.i.i11:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i10 = add i32 %199, -1
  br label %_compound_head.exit.i15

if.end.i.i12:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  %200 = ptrtoint ptr %190 to i32
  br label %_compound_head.exit.i15

_compound_head.exit.i15:                          ; preds = %if.end.i.i12, %if.then.i.i11
  %retval.0.i.i13 = phi i32 [ %sub.i.i10, %if.then.i.i11 ], [ %200, %if.end.i.i12 ]
  %201 = inttoptr i32 %retval.0.i.i13 to ptr
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %203)
  %cmp.i.not.i14 = icmp eq i32 %203, -1
  %204 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %195, align 4
  %and.i32.i = and i32 %205, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i14, label %if.then17.i, label %do.end24.i, !prof !95

if.then17.i:                                      ; preds = %_compound_head.exit.i15
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !97

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %205, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = ptrtoint ptr %190 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %206, %if.end.i36.i ]
  %207 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %207, ptr noundef nonnull @.str.27) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !148
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i15
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !97

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %205, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %208 = ptrtoint ptr %190 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %208, %if.end.i43.i ]
  %209 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %209) #10
  br label %if.end362

if.end362:                                        ; preds = %SetPageError.exit, %if.end358.if.end362_crit_edge
  call fastcc void @z_erofs_onlinepage_endio(ptr noundef nonnull %190)
  br label %for.inc363

for.inc363:                                       ; preds = %if.end362, %do.end355.for.inc363_crit_edge, %for.body333.for.inc363_crit_edge
  %inc364 = add nuw nsw i32 %i.4225, 1
  %exitcond268.not = icmp eq i32 %inc364, %conv
  br i1 %exitcond268.not, label %for.inc363.for.end365_crit_edge, label %for.inc363.for.body333_crit_edge

for.inc363.for.body333_crit_edge:                 ; preds = %for.inc363
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body333

for.inc363.for.end365_crit_edge:                  ; preds = %for.inc363
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end365

for.end365:                                       ; preds = %for.inc363.for.end365_crit_edge, %if.end329.for.end365_crit_edge
  %cmp366 = icmp eq ptr %pages.1272, @z_pagemap_global
  br i1 %cmp366, label %if.then368, label %if.else369

if.then368:                                       ; preds = %for.end365
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef nonnull @z_pagemap_global_lock) #10
  br label %if.end375

if.else369:                                       ; preds = %for.end365
  %cmp371.not = icmp eq ptr %pages.1272, %pages_onstack
  br i1 %cmp371.not, label %if.else369.if.end375_crit_edge, label %if.then373

if.else369.if.end375_crit_edge:                   ; preds = %if.else369
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end375

if.then373:                                       ; preds = %if.else369
  call void @__sanitizer_cov_trace_pc() #12
  call void @kvfree(ptr noundef %pages.1272) #10
  br label %if.end375

if.end375:                                        ; preds = %if.then373, %if.else369.if.end375_crit_edge, %if.then368
  %210 = ptrtoint ptr %nr_pages8 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %nr_pages8, align 2
  %211 = ptrtoint ptr %vcnt to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %vcnt, align 4
  %next = getelementptr inbounds %struct.z_erofs_pcluster, ptr %pcl, i32 0, i32 2
  %212 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr null, ptr %next, align 4
  call void @mutex_unlock(ptr noundef %primary_collection) #10
  %call.i = call i32 @erofs_workgroup_put(ptr noundef %pcl) #10
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %pages_onstack) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @z_erofs_put_shortlivedpage(ptr nocapture noundef %pagepool, ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -4
  br i1 %cmp.not.i, label %do.body.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body.i:                                        ; preds = %entry
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %do.body4.i, !prof !97

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/compress.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #10, !srcloc !168
  unreachable

if.end:                                           ; preds = %do.body.i
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #10
  %4 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !97

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !95

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@z_erofs_put_shortlivedpage, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !117

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.return_crit_edge

folio_put_testzero.exit.i.i.return_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %10) #10
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pagepool, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %private.i, align 4
  store ptr %page, ptr %pagepool, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then.i4.i, %folio_put_testzero.exit.i.i.return_crit_edge, %entry.return_crit_edge
  ret i1 %cmp.not.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @z_erofs_decompress(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_erofs_readpages(ptr noundef %inode, i32 noundef %start, i32 noundef %nrpage) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_readpages, i32 0, i32 1), ptr blockaddress(@trace_erofs_readpages, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !117

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !197
  %call43 = tail call i32 @__traceiter_erofs_readpages(ptr noundef null, ptr noundef %inode, i32 noundef %start, i32 noundef %nrpage, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end49.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end49.cpu_online.exit14_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end49
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !97

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end49.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end70_crit_edge, label %if.then53

cpu_online.exit14.if.end70_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_readpages, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_erofs_readpages, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_erofs_readpages.__warned, align 1
  br i1 %.b1, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_erofs_readpages.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 142, ptr noundef nonnull @.str.7) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !121
  %31 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit14.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_erofs_readpages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !75, !77, !79, !80, !82, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @z_erofs_aops, !1, !"z_erofs_aops", i1 false, i1 false}
!1 = !{!"../fs/erofs/zdata.c", i32 1578, i32 39}
!2 = !{ptr @z_erofs_workqueue, !3, !"z_erofs_workqueue", i1 false, i1 false}
!3 = !{!"../fs/erofs/zdata.c", i32 119, i32 33}
!4 = !{ptr @pcluster_pool, !5, !"pcluster_pool", i1 false, i1 false}
!5 = !{!"../fs/erofs/zdata.c", i32 24, i32 37}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/erofs/zdata.c", i32 51, i32 22}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/erofs/zdata.c", i32 135, i32 38}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/mm.h", i32 717, i32 2}
!16 = !{ptr @__func__.z_erofs_readpage, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/erofs/zdata.c", i32 1527, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/erofs.h", i32 81, i32 1}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__func__.z_erofs_pcluster_readmore, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/erofs/zdata.c", i32 1493, i32 4}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/erofs/zdata.c", i32 681, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @z_erofs_do_read_page.__UNIQUE_ID_ddebug313, !31, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!36 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/erofs/zdata.c", i32 707, i32 4}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/erofs/zdata.c", i32 788, i32 2}
!41 = !{ptr @z_erofs_do_read_page.__UNIQUE_ID_ddebug319, !40, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!45 = !{ptr @z_erofs_register_collection.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../fs/erofs/zdata.c", i32 498, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/erofs/zdata.h", i32 194, i32 2}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @z_erofs_onlinepage_endio.__UNIQUE_ID_ddebug288, !55, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!59 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @jobqueue_init.__key, !64, !"__key", i1 false, i1 false}
!64 = !{!"../fs/erofs/zdata.c", i32 1223, i32 3}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @jobqueue_init.__key.30, !67, !"__key", i1 false, i1 false}
!67 = !{!"../fs/erofs/zdata.c", i32 1227, i32 3}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/erofs/zdata.c", i32 228, i32 8}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @z_pagemap_global_lock, !72, !"z_pagemap_global_lock", i1 false, i1 false}
!75 = !{ptr @z_pagemap_global, !76, !"z_pagemap_global", i1 false, i1 false}
!76 = !{!"../fs/erofs/zdata.c", i32 227, i32 21}
!77 = !{ptr @__func__.z_erofs_readahead, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/erofs/zdata.c", i32 1564, i32 4}
!79 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/trace/events/erofs.h", i32 114, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/pagemap.h", i32 1096, i32 2}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2154794480, i64 2154794961, i64 2154794517, i64 2154794573, i64 2154794607, i64 2154794631, i64 2154794672, i64 2154794693, i64 2154794721, i64 2154794755}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2150623273, i64 2150623764, i64 2150623310, i64 2150623366, i64 2150623400, i64 2150623424, i64 2150623465, i64 2150623486, i64 2150623514, i64 2150623548}
!99 = !{i64 2148723386, i64 2148723418, i64 2148723447, i64 2148723481, i64 2148723512, i64 2148723535}
!100 = !{i64 2148812491}
!101 = !{i64 2154492735}
!102 = !{i64 2148816375}
!103 = !{i64 1200041, i64 1200065, i64 1200086, i64 1200103, i64 1200120}
!104 = !{i64 2148816601}
!105 = !{i64 2154492889}
!106 = !{i64 2154798542, i64 2154799023, i64 2154798579, i64 2154798635, i64 2154798669, i64 2154798693, i64 2154798734, i64 2154798755, i64 2154798783, i64 2154798817}
!107 = !{i64 2154493212}
!108 = !{i64 2154493355}
!109 = !{i64 2154784510, i64 2154784990, i64 2154784547, i64 2154784603, i64 2154784637, i64 2154784661, i64 2154784702, i64 2154784723, i64 2154784751, i64 2154784785}
!110 = !{i64 2153802565, i64 2153803054, i64 2153802602, i64 2153802658, i64 2153802692, i64 2153802716, i64 2153802757, i64 2153802778, i64 2153802806, i64 2153802840}
!111 = !{i64 2153804411, i64 2153804900, i64 2153804448, i64 2153804504, i64 2153804538, i64 2153804562, i64 2153804603, i64 2153804624, i64 2153804652, i64 2153804686}
!112 = !{i64 2151385998, i64 2151386489, i64 2151386035, i64 2151386091, i64 2151386125, i64 2151386149, i64 2151386190, i64 2151386211, i64 2151386239, i64 2151386273}
!113 = !{i64 2153173564, i64 2153174047, i64 2153173601, i64 2153173657, i64 2153173691, i64 2153173715, i64 2153173756, i64 2153173777, i64 2153173805, i64 2153173839}
!114 = !{i64 2148803004}
!115 = !{i64 2148717713, i64 2148717745, i64 2148717774, i64 2148717808, i64 2148717839, i64 2148717862}
!116 = !{i64 2148803233}
!117 = !{i64 2148539126, i64 2148539131, i64 2148539144, i64 2148539188, i64 2148539222, i64 2148539243}
!118 = !{i64 2154653524}
!119 = !{i64 2154653733}
!120 = !{i64 2149535533}
!121 = !{i64 2149536569}
!122 = !{i64 2151373165}
!123 = !{i64 2154524733}
!124 = !{i64 2151087230, i64 2151087403, i64 2151087418, i64 2151087470, i64 2151087529, i64 2151087553, i64 2151087594, i64 2151087615, i64 2151087643, i64 2151087675}
!125 = !{i64 2154826950, i64 2154827431, i64 2154826987, i64 2154827043, i64 2154827077, i64 2154827101, i64 2154827142, i64 2154827163, i64 2154827191, i64 2154827225}
!126 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!127 = !{i64 2154828591, i64 2154829072, i64 2154828628, i64 2154828684, i64 2154828718, i64 2154828742, i64 2154828783, i64 2154828804, i64 2154828832, i64 2154828866}
!128 = !{i64 2154830244, i64 2154830725, i64 2154830281, i64 2154830337, i64 2154830371, i64 2154830395, i64 2154830436, i64 2154830457, i64 2154830485, i64 2154830519}
!129 = !{i64 2154831905, i64 2154832386, i64 2154831942, i64 2154831998, i64 2154832032, i64 2154832056, i64 2154832097, i64 2154832118, i64 2154832146, i64 2154832180}
!130 = !{i64 2154818162, i64 2154818643, i64 2154818199, i64 2154818255, i64 2154818289, i64 2154818313, i64 2154818354, i64 2154818375, i64 2154818403, i64 2154818437}
!131 = !{i64 2154820032, i64 2154820513, i64 2154820069, i64 2154820125, i64 2154820159, i64 2154820183, i64 2154820224, i64 2154820245, i64 2154820273, i64 2154820307}
!132 = !{i64 2154807010, i64 2154807491, i64 2154807047, i64 2154807103, i64 2154807137, i64 2154807161, i64 2154807202, i64 2154807223, i64 2154807251, i64 2154807285}
!133 = !{i64 2154808646, i64 2154809127, i64 2154808683, i64 2154808739, i64 2154808773, i64 2154808797, i64 2154808838, i64 2154808859, i64 2154808887, i64 2154808921}
!134 = !{i64 2154813022, i64 2154813503, i64 2154813059, i64 2154813115, i64 2154813149, i64 2154813173, i64 2154813214, i64 2154813235, i64 2154813263, i64 2154813297}
!135 = !{i64 1224020, i64 1224041, i64 1224064, i64 1224083, i64 1224102}
!136 = !{i64 2154814961}
!137 = !{i64 2154814803}
!138 = !{i64 2154804676}
!139 = !{i64 2154805101}
!140 = !{i64 2154806211}
!141 = !{i64 2154806641}
!142 = !{i64 2154514823, i64 2154515303, i64 2154514860, i64 2154514916, i64 2154514950, i64 2154514974, i64 2154515015, i64 2154515036, i64 2154515064, i64 2154515098}
!143 = !{i64 2153197537, i64 2153198021, i64 2153197574, i64 2153197630, i64 2153197664, i64 2153197688, i64 2153197729, i64 2153197750, i64 2153197778, i64 2153197812}
!144 = !{i64 2148714528, i64 2148714554, i64 2148714583, i64 2148714617, i64 2148714648, i64 2148714671}
!145 = !{i8 0, i8 2}
!146 = !{i64 2154525310, i64 2154525791, i64 2154525347, i64 2154525403, i64 2154525437, i64 2154525461, i64 2154525502, i64 2154525523, i64 2154525551, i64 2154525585}
!147 = !{i64 2150684863, i64 2150685036, i64 2150685051, i64 2150685103, i64 2150685162, i64 2150685186, i64 2150685227, i64 2150685248, i64 2150685276, i64 2150685308}
!148 = !{i64 2150685738, i64 2150685911, i64 2150685926, i64 2150685978, i64 2150686037, i64 2150686061, i64 2150686102, i64 2150686123, i64 2150686151, i64 2150686183}
!149 = !{i64 2154938038, i64 2154938520, i64 2154938075, i64 2154938131, i64 2154938165, i64 2154938189, i64 2154938230, i64 2154938251, i64 2154938279, i64 2154938313}
!150 = !{i64 2154939672, i64 2154940154, i64 2154939709, i64 2154939765, i64 2154939799, i64 2154939823, i64 2154939864, i64 2154939885, i64 2154939913, i64 2154939947}
!151 = !{i64 2154947385}
!152 = !{i64 2154947824}
!153 = !{i64 2154925279, i64 2154925761, i64 2154925316, i64 2154925372, i64 2154925406, i64 2154925430, i64 2154925471, i64 2154925492, i64 2154925520, i64 2154925554}
!154 = !{!"branch_weights", i32 4000000, i32 4004001, i32 2001, i32 2000}
!155 = !{i64 2154891208, i64 2154891690, i64 2154891245, i64 2154891301, i64 2154891335, i64 2154891359, i64 2154891400, i64 2154891421, i64 2154891449, i64 2154891483}
!156 = !{i64 2154892832, i64 2154893314, i64 2154892869, i64 2154892925, i64 2154892959, i64 2154892983, i64 2154893024, i64 2154893045, i64 2154893073, i64 2154893107}
!157 = !{i64 2154803195}
!158 = !{i64 2154803609}
!159 = !{i64 2151081979, i64 2151082470, i64 2151082016, i64 2151082072, i64 2151082106, i64 2151082130, i64 2151082171, i64 2151082192, i64 2151082220, i64 2151082254}
!160 = !{i64 2154527148, i64 2154527629, i64 2154527185, i64 2154527241, i64 2154527275, i64 2154527299, i64 2154527340, i64 2154527361, i64 2154527389, i64 2154527423}
!161 = !{i64 2151091809, i64 2151091982, i64 2151091997, i64 2151092049, i64 2151092108, i64 2151092132, i64 2151092173, i64 2151092194, i64 2151092222, i64 2151092254}
!162 = !{i64 2150676305, i64 2150676796, i64 2150676342, i64 2150676398, i64 2150676432, i64 2150676456, i64 2150676497, i64 2150676518, i64 2150676546, i64 2150676580}
!163 = !{i64 2151374236}
!164 = !{i64 2152230031}
!165 = !{i64 2153739051}
!166 = !{i64 2153736280}
!167 = !{i64 2152229824}
!168 = !{i64 2154534373, i64 2154534856, i64 2154534410, i64 2154534466, i64 2154534500, i64 2154534524, i64 2154534565, i64 2154534586, i64 2154534614, i64 2154534648}
!169 = !{i64 2154912247, i64 2154912729, i64 2154912284, i64 2154912340, i64 2154912374, i64 2154912398, i64 2154912439, i64 2154912460, i64 2154912488, i64 2154912522}
!170 = !{i64 2150693665, i64 2150693838, i64 2150693853, i64 2150693905, i64 2150693964, i64 2150693988, i64 2150694029, i64 2150694050, i64 2150694078, i64 2150694110}
!171 = !{i64 2150694540, i64 2150694713, i64 2150694728, i64 2150694780, i64 2150694839, i64 2150694863, i64 2150694904, i64 2150694925, i64 2150694953, i64 2150694985}
!172 = !{i64 2154916243, i64 2154916725, i64 2154916280, i64 2154916336, i64 2154916370, i64 2154916394, i64 2154916435, i64 2154916456, i64 2154916484, i64 2154916518}
!173 = !{i64 2154917838, i64 2154918320, i64 2154917875, i64 2154917931, i64 2154917965, i64 2154917989, i64 2154918030, i64 2154918051, i64 2154918079, i64 2154918113}
!174 = !{i64 2154919415, i64 2154919897, i64 2154919452, i64 2154919508, i64 2154919542, i64 2154919566, i64 2154919607, i64 2154919628, i64 2154919656, i64 2154919690}
!175 = !{i64 2154921670}
!176 = !{i64 2154922080}
!177 = !{i64 2154934031, i64 2154934513, i64 2154934068, i64 2154934124, i64 2154934158, i64 2154934182, i64 2154934223, i64 2154934244, i64 2154934272, i64 2154934306}
!178 = !{i64 2154935654, i64 2154936136, i64 2154935691, i64 2154935747, i64 2154935781, i64 2154935805, i64 2154935846, i64 2154935867, i64 2154935895, i64 2154935929}
!179 = !{i64 2148799963}
!180 = !{i64 2148715248, i64 2148715280, i64 2148715309, i64 2148715343, i64 2148715374, i64 2148715397}
!181 = !{i64 2148800192}
!182 = !{i64 1121940}
!183 = !{i64 2154899741, i64 2154900223, i64 2154899778, i64 2154899834, i64 2154899868, i64 2154899892, i64 2154899933, i64 2154899954, i64 2154899982, i64 2154900016}
!184 = !{i64 2154859928, i64 2154860409, i64 2154859965, i64 2154860021, i64 2154860055, i64 2154860079, i64 2154860120, i64 2154860141, i64 2154860169, i64 2154860203}
!185 = !{i64 2154518156, i64 2154518637, i64 2154518193, i64 2154518249, i64 2154518283, i64 2154518307, i64 2154518348, i64 2154518369, i64 2154518397, i64 2154518431}
!186 = !{i64 2154864423, i64 2154864904, i64 2154864460, i64 2154864516, i64 2154864550, i64 2154864574, i64 2154864615, i64 2154864636, i64 2154864664, i64 2154864698}
!187 = !{i64 2154866043, i64 2154866524, i64 2154866080, i64 2154866136, i64 2154866170, i64 2154866194, i64 2154866235, i64 2154866256, i64 2154866284, i64 2154866318}
!188 = !{i64 2154523100, i64 2154523581, i64 2154523137, i64 2154523193, i64 2154523227, i64 2154523251, i64 2154523292, i64 2154523313, i64 2154523341, i64 2154523375}
!189 = !{i64 2154867633, i64 2154868114, i64 2154867670, i64 2154867726, i64 2154867760, i64 2154867784, i64 2154867825, i64 2154867846, i64 2154867874, i64 2154867908}
!190 = !{i64 2154869189, i64 2154869670, i64 2154869226, i64 2154869282, i64 2154869316, i64 2154869340, i64 2154869381, i64 2154869402, i64 2154869430, i64 2154869464}
!191 = !{i64 2154870765, i64 2154871246, i64 2154870802, i64 2154870858, i64 2154870892, i64 2154870916, i64 2154870957, i64 2154870978, i64 2154871006, i64 2154871040}
!192 = !{i64 2154872387, i64 2154872868, i64 2154872424, i64 2154872480, i64 2154872514, i64 2154872538, i64 2154872579, i64 2154872600, i64 2154872628, i64 2154872662}
!193 = !{i64 2154873979, i64 2154874460, i64 2154874016, i64 2154874072, i64 2154874106, i64 2154874130, i64 2154874171, i64 2154874192, i64 2154874220, i64 2154874254}
!194 = !{i64 2154875535, i64 2154876016, i64 2154875572, i64 2154875628, i64 2154875662, i64 2154875686, i64 2154875727, i64 2154875748, i64 2154875776, i64 2154875810}
!195 = !{i64 2154877137, i64 2154877618, i64 2154877174, i64 2154877230, i64 2154877264, i64 2154877288, i64 2154877329, i64 2154877350, i64 2154877378, i64 2154877412}
!196 = !{i64 2154887491, i64 2154887973, i64 2154887528, i64 2154887584, i64 2154887618, i64 2154887642, i64 2154887683, i64 2154887704, i64 2154887732, i64 2154887766}
!197 = !{i64 2154670489}
!198 = !{i64 2154670732}
