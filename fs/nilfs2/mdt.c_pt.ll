; ModuleID = '/llk/IR_all_yes/fs/nilfs2/mdt.c_pt.bc'
source_filename = "../fs/nilfs2/mdt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
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
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.page = type { i32, %union.anon.6, %union.anon.72, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.72 = type { %struct.atomic_t }
%struct.nilfs_mdt_info = type { %struct.rw_semaphore, ptr, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.nilfs_shadow_map = type { %struct.nilfs_bmap_store, %struct.address_space, %struct.address_space, %struct.list_head }
%struct.nilfs_bmap_store = type { [7 x i64], i64, i64, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }

@nilfs_mdt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mi->mi_sem\00", [20 x i8] zeroinitializer }, align 32
@def_mdt_iops = internal constant %struct.inode_operations zeroinitializer, align 128
@def_mdt_fops = internal constant { %struct.file_operations, [32 x i8] } zeroinitializer, align 32
@def_mdt_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @nilfs_mdt_write_page, ptr null, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013I/O error reading meta-data file (ino=%lu, block-offset=%lu)\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__tracepoint_nilfs2_mdt_submit_block = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/nilfs2.h\00", [34 x i8] zeroinitializer }, align 32
@trace_nilfs2_mdt_submit_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_nilfs2_mdt_insert_new_block = external dso_local global %struct.tracepoint, align 4
@trace_nilfs2_mdt_insert_new_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967279, i64 4294967280]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 453, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"def_mdt_fops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 442, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"def_mdt_aops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 436, i32 46 }
@___asan_gen_.25 = private constant [19 x i8] c"../fs/nilfs2/mdt.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 202, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 366, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [33 x i8] c"../include/trace/events/nilfs2.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 191, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 108, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 452, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 420, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 717, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nilfs_mdt_init.__key, ptr @.str, ptr @def_mdt_fops, ptr @def_mdt_aops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_mdt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_mdt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_mdt_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_get_block(ptr noundef %inode, i32 noundef %blkoff, i32 noundef %create, ptr noundef %init_block, ptr nocapture noundef writeonly %out_bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %tobool.not.not = xor i1 %tobool.not, true
  br label %retry

retry:                                            ; preds = %if.end.retry_crit_edge, %entry
  %call = tail call fastcc i32 @nilfs_mdt_read_block(ptr noundef %inode, i32 noundef %blkoff, i32 noundef %lnot.ext, ptr noundef %out_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp.not = icmp eq i32 %call, -2
  %or.cond = select i1 %tobool.not.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %retry
  %call2 = tail call fastcc i32 @nilfs_mdt_create_block(ptr noundef %inode, i32 noundef %blkoff, ptr noundef %out_bh, ptr noundef %init_block)
  %cmp3 = icmp eq i32 %call2, -17
  br i1 %cmp3, label %if.end.retry_crit_edge, label %if.end.cleanup_crit_edge, !prof !40

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.retry_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %retry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %retry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_mdt_read_block(ptr noundef %inode, i32 noundef %block, i32 noundef %readahead, ptr nocapture noundef writeonly %out_bh) unnamed_addr #0 align 64 {
entry:
  %first_bh = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_bh) #9
  %0 = ptrtoint ptr %first_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %first_bh, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #9
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !41
  %call = call fastcc i32 @nilfs_mdt_submit_block(ptr noundef %inode, i32 noundef %block, i32 noundef 0, ptr noundef nonnull %first_bh)
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 -17, label %entry.out_crit_edge
    i32 0, label %if.end4
  ], !prof !42

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %readahead)
  %tobool5.not = icmp eq i32 %readahead, 0
  br i1 %tobool5.not, label %if.end4.if.end27_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.if.end27_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.cond:                                         ; preds = %if.end21
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.cond.if.end27_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end27_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end4.for.body_crit_edge
  %blkoff.057.in = phi i32 [ %blkoff.057, %for.cond.for.body_crit_edge ], [ %block, %if.end4.for.body_crit_edge ]
  %i.056 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %blkoff.057 = add i32 %blkoff.057.in, 1
  %call8 = call fastcc i32 @nilfs_mdt_submit_block(ptr noundef %inode, i32 noundef %blkoff.057, i32 noundef 524288, ptr noundef nonnull %bh)
  %3 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call8, label %for.body.if.end27_crit_edge [
    i32 -17, label %for.body.if.then17_crit_edge
    i32 0, label %for.body.if.then17_crit_edge58
    i32 -16, label %for.body.if.end21_crit_edge
  ]

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body.if.then17_crit_edge58:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

for.body.if.then17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then17:                                        ; preds = %for.body.if.then17_crit_edge, %for.body.if.then17_crit_edge58
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then17.if.end21_crit_edge, label %if.then.i

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %5) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %if.then17.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %6 = ptrtoint ptr %first_bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %first_bh, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %if.end21.out_no_wait_crit_edge, label %for.cond

if.end21.out_no_wait_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_wait

if.end27:                                         ; preds = %for.body.if.end27_crit_edge, %for.cond.if.end27_crit_edge, %if.end4.if.end27_crit_edge
  %11 = ptrtoint ptr %first_bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %first_bh, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 354) #9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i50 = icmp eq i32 %15, 0
  br i1 %tobool.not.i50, label %if.end27.out_no_wait_crit_edge, label %if.then.i51

if.end27.out_no_wait_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_no_wait

if.then.i51:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wait_on_buffer(ptr noundef %12) #9
  %16 = ptrtoint ptr %first_bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %first_bh, align 4
  br label %out_no_wait

out_no_wait:                                      ; preds = %if.then.i51, %if.end27.out_no_wait_crit_edge, %if.end21.out_no_wait_crit_edge
  %17 = phi ptr [ %.pr, %if.then.i51 ], [ %12, %if.end27.out_no_wait_crit_edge ], [ %7, %if.end21.out_no_wait_crit_edge ]
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and1.i.i49 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i49)
  %tobool29.not = icmp eq i32 %and1.i.i49, 0
  br i1 %tobool29.not, label %if.then30, label %out_no_wait.out_crit_edge

out_no_wait.out_crit_edge:                        ; preds = %out_no_wait
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then30:                                        ; preds = %out_no_wait
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %22 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %21, ptr noundef nonnull @.str.1, i32 noundef %23, i32 noundef %block) #9
  %tobool.not.i52 = icmp eq ptr %17, null
  br i1 %tobool.not.i52, label %if.then30.cleanup_crit_edge, label %if.then.i53

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i53:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %17) #9
  br label %cleanup

out:                                              ; preds = %out_no_wait.out_crit_edge, %entry.out_crit_edge
  %24 = ptrtoint ptr %first_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %first_bh, align 4
  %26 = ptrtoint ptr %out_bh to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %out_bh, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i53, %if.then30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.then30.cleanup_crit_edge ], [ -5, %if.then.i53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_bh) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_mdt_create_block(ptr noundef %inode, i32 noundef %block, ptr nocapture noundef writeonly %out_bh, ptr noundef readonly %init_block) unnamed_addr #0 align 64 {
entry:
  %ti = alloca %struct.nilfs_transaction_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ti) #9
  %2 = call ptr @memset(ptr %ti, i32 255, i32 12)
  %call = call i32 @nilfs_transaction_begin(ptr noundef %1, ptr noundef nonnull %ti, i32 noundef 0) #9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  %call1 = call ptr @nilfs_grab_buffer(ptr noundef %inode, ptr noundef %4, i32 noundef %block, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %if.end, !prof !40

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %call1, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.failed_bh_crit_edge

if.end.failed_bh_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_bh

if.end8:                                          ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 354) #9
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %call1, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end8.wait_on_buffer.exit_crit_edge, label %if.then.i

if.end8.wait_on_buffer.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wait_on_buffer(ptr noundef nonnull %call1) #9
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %if.end8.wait_on_buffer.exit_crit_edge
  %10 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call1, align 4
  %and1.i.i57 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i57)
  %tobool10.not = icmp eq i32 %and1.i.i57, 0
  br i1 %tobool10.not, label %if.end12, label %wait_on_buffer.exit.failed_bh_crit_edge

wait_on_buffer.exit.failed_bh_crit_edge:          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_bh

if.end12:                                         ; preds = %wait_on_buffer.exit
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 6
  %14 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %b_bdev, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 3
  %15 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %b_blocknr.i, align 8
  %i_bmap.i = getelementptr i8, ptr %inode, i32 -584
  %16 = ptrtoint ptr %i_bmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_bmap.i, align 8
  %conv.i = zext i32 %block to i64
  %18 = ptrtoint ptr %call1 to i32
  %call1.i = call i32 @nilfs_bmap_insert(ptr noundef %17, i64 noundef %conv.i, i32 noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i58 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i58, label %if.end.i, label %if.end12.failed_bh_crit_edge, !prof !43

if.end12.failed_bh_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_bh

if.end.i:                                         ; preds = %if.end12
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call1, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.set_buffer_mapped.exit.i_crit_edge

if.end.i.set_buffer_mapped.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_mapped.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 4, ptr noundef nonnull %call1) #9
  br label %set_buffer_mapped.exit.i

set_buffer_mapped.exit.i:                         ; preds = %if.then.i.i, %if.end.i.set_buffer_mapped.exit.i_crit_edge
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 2
  %22 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %24 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %24, 512
  %25 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %29 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i1.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %23, i32 noundef %or.i.i) #9
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 5
  %35 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data.i, align 4
  %37 = ptrtoint ptr %36 to i32
  %and.i = and i32 %37, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %38 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %39 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %40 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %shl.i.i)
  %tobool6.not.i = icmp eq ptr %init_block, null
  br i1 %tobool6.not.i, label %set_buffer_mapped.exit.i.if.end8.i_crit_edge, label %if.then7.i

set_buffer_mapped.exit.i.if.end8.i_crit_edge:     ; preds = %set_buffer_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then7.i:                                       ; preds = %set_buffer_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %init_block(ptr noundef %inode, ptr noundef nonnull %call1, ptr noundef %call.i.i.i) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %set_buffer_mapped.exit.i.if.end8.i_crit_edge
  %41 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_page.i, align 8
  call void @flush_dcache_page(ptr noundef %42) #9
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !46
  %43 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i1.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 213
  %47 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %48, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %49 = call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %53 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %call1, align 4
  %and1.i.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i33.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i33.i, label %if.then.i34.i, label %if.end8.i.set_buffer_uptodate.exit.i_crit_edge

if.end8.i.set_buffer_uptodate.exit.i_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_buffer_uptodate.exit.i

if.then.i34.i:                                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call1) #9
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i34.i, %if.end8.i.set_buffer_uptodate.exit.i_crit_edge
  call void @mark_buffer_dirty(ptr noundef nonnull %call1) #9
  %i_state.i.i = getelementptr i8, ptr %inode, i32 -588
  %55 = ptrtoint ptr %i_state.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %i_state.i.i, align 4
  %57 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i35.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i35.i, label %if.then.i36.i, label %set_buffer_uptodate.exit.i.if.then23_crit_edge

set_buffer_uptodate.exit.i.if.then23_crit_edge:   ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then.i36.i:                                    ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i.i) #9
  br label %if.then23

if.then23:                                        ; preds = %if.then.i36.i, %set_buffer_uptodate.exit.i.if.then23_crit_edge
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %58 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %i_ino.i, align 8
  call fastcc void @trace_nilfs2_mdt_insert_new_block(ptr noundef %inode, i32 noundef %59, i32 noundef %block) #9
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 11
  %call.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %60 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !48
  %61 = ptrtoint ptr %out_bh to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call1, ptr %out_bh, align 4
  br label %failed_bh

failed_bh:                                        ; preds = %if.then23, %if.end12.failed_bh_crit_edge, %wait_on_buffer.exit.failed_bh_crit_edge, %if.end.failed_bh_crit_edge
  %err.0 = phi i32 [ -17, %if.end.failed_bh_crit_edge ], [ -17, %wait_on_buffer.exit.failed_bh_crit_edge ], [ 0, %if.then23 ], [ %call1.i, %if.end12.failed_bh_crit_edge ]
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 2
  %62 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_page, align 8
  call void @unlock_page(ptr noundef %63) #9
  %64 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_page, align 8
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i60 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i60, label %if.end.i.i, label %if.then.i.i61, !prof !43

if.then.i.i61:                                    ; preds = %failed_bh
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %68, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %failed_bh
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %65 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i61
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i61 ], [ %69, %if.end.i.i ]
  %70 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %70, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %71 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i.i.i.i = icmp eq i32 %72, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %70, ptr noundef nonnull @.str.8) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %73 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !51
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %73, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_mdt_create_block, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !53

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %70, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.failed_unlock_crit_edge

folio_put_testzero.exit.i.i.failed_unlock_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_unlock

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %70) #9
  br label %failed_unlock

failed_unlock:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.failed_unlock_crit_edge
  call void @__brelse(ptr noundef nonnull %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool26.not = icmp eq i32 %err.0, 0
  br i1 %tobool26.not, label %if.then35, label %failed_unlock.if.else_crit_edge, !prof !43

failed_unlock.if.else_crit_edge:                  ; preds = %failed_unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then35:                                        ; preds = %failed_unlock
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = call i32 @nilfs_transaction_commit(ptr noundef %1) #9
  br label %if.end37

if.else:                                          ; preds = %failed_unlock.if.else_crit_edge, %entry.if.else_crit_edge
  %err.167 = phi i32 [ %err.0, %failed_unlock.if.else_crit_edge ], [ -12, %entry.if.else_crit_edge ]
  call void @nilfs_transaction_abort(ptr noundef %1) #9
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then35
  %err.2 = phi i32 [ %call36, %if.then35 ], [ %err.167, %if.else ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ti) #9
  ret i32 %err.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_find_block(ptr noundef %inode, i32 noundef %start, i32 noundef %end, ptr nocapture noundef writeonly %blkoff, ptr nocapture noundef writeonly %out_bh) local_unnamed_addr #0 align 64 {
entry:
  %next = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next) #9
  %0 = ptrtoint ptr %next to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %next, align 8, !annotation !41
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp = icmp ugt i32 %start, %end
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !40

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @nilfs_mdt_read_block(ptr noundef %inode, i32 noundef %start, i32 noundef 1, ptr noundef %out_bh)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.cleanup.sink.split_crit_edge
    i32 -2, label %lor.rhs
  ], !prof !42

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %start)
  %cmp6 = icmp eq i32 %start, -1
  br i1 %cmp6, label %lor.rhs.cleanup_crit_edge, label %if.end14, !prof !40

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %lor.rhs
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %2 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_bmap, align 8
  %add = add nuw i32 %start, 1
  %conv = zext i32 %add to i64
  %call16 = call i32 @nilfs_bmap_seek_key(ptr noundef %3, i64 noundef %conv, ptr noundef nonnull %next) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end14
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %next, align 8
  %conv19 = zext i32 %end to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv19)
  %cmp20.not = icmp ugt i64 %5, %conv19
  br i1 %cmp20.not, label %if.then18.cleanup_crit_edge, label %if.then22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %if.then18
  %conv23 = trunc i64 %5 to i32
  %call24 = call fastcc i32 @nilfs_mdt_read_block(ptr noundef %inode, i32 noundef %conv23, i32 noundef 1, ptr noundef %out_bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %next, align 8
  %conv27 = trunc i64 %7 to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then26, %if.end.cleanup.sink.split_crit_edge
  %start.sink = phi i32 [ %conv27, %if.then26 ], [ %start, %if.end.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %blkoff to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %start.sink, ptr %blkoff, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then22.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %lor.rhs.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call24, %if.then22.cleanup_crit_edge ], [ -2, %if.then18.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_seek_key(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_delete_block(ptr noundef %inode, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %0 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_bmap, align 8
  %conv = zext i32 %block to i64
  %call1 = tail call i32 @nilfs_bmap_delete(ptr noundef %1, i64 noundef %conv) #9
  %2 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call1, label %entry.if.end_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 -2, label %entry.if.then_crit_edge9
  ]

entry.if.then_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge9
  %i_state.i = getelementptr i8, ptr %inode, i32 -588
  %3 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %i_state.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.nilfs_mdt_mark_dirty.exit_crit_edge

if.then.nilfs_mdt_mark_dirty.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_mdt_mark_dirty.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state.i) #9
  br label %nilfs_mdt_mark_dirty.exit

nilfs_mdt_mark_dirty.exit:                        ; preds = %if.then.i, %if.then.nilfs_mdt_mark_dirty.exit_crit_edge
  %call3 = tail call i32 @nilfs_mdt_forget_block(ptr noundef %inode, i32 noundef %block)
  br label %if.end

if.end:                                           ; preds = %nilfs_mdt_mark_dirty.exit, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_delete(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_forget_block(ptr nocapture noundef readonly %inode, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %sub = sub nsw i32 12, %conv
  %shr = lshr i32 %block, %sub
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef %shr, i32 noundef 2, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @wait_on_page_writeback(ptr noundef nonnull %call.i) #9
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !40

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %call.i, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %PagePrivate.exit.if.end9_crit_edge, label %if.then6

PagePrivate.exit.if.end9_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then6:                                         ; preds = %PagePrivate.exit
  %conv2 = zext i8 %5 to i32
  %sub3 = sub nsw i32 12, %conv2
  %shl = shl i32 %shr, %sub3
  %sub7 = sub i32 %block, %shl
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i38, label %PagePrivate.exit.i, !prof !40

if.then.i.i38:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

PagePrivate.exit.i:                               ; preds = %if.then6
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call.i, align 4
  %15 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !40

do.body4.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.end9.i:                                        ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private.i, align 4
  %18 = inttoptr i32 %17 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp.not13.i = icmp eq i32 %sub7, 0
  br i1 %cmp.not13.i, label %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge, label %do.end9.i.while.body.i_crit_edge

do.end9.i.while.body.i_crit_edge:                 ; preds = %do.end9.i
  br label %while.body.i

do.end9.i.nilfs_page_get_nth_block.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_page_get_nth_block.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end9.i.while.body.i_crit_edge
  %count.addr.015.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %sub7, %do.end9.i.while.body.i_crit_edge ]
  %bh.014.i = phi ptr [ %20, %while.body.i.while.body.i_crit_edge ], [ %18, %do.end9.i.while.body.i_crit_edge ]
  %dec.i = add i32 %count.addr.015.i, -1
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.014.i, i32 0, i32 1
  %19 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_this_page.i, align 4
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.body.i.nilfs_page_get_nth_block.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nilfs_page_get_nth_block.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_page_get_nth_block.exit

nilfs_page_get_nth_block.exit:                    ; preds = %while.body.i.nilfs_page_get_nth_block.exit_crit_edge, %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge
  %bh.0.lcssa.i = phi ptr [ %18, %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge ], [ %20, %while.body.i.nilfs_page_get_nth_block.exit_crit_edge ]
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #9, !srcloc !48
  tail call void @nilfs_forget_buffer(ptr noundef %bh.0.lcssa.i) #9
  br label %if.end9

if.end9:                                          ; preds = %nilfs_page_get_nth_block.exit, %PagePrivate.exit.if.end9_crit_edge
  %22 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !43

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i34 = icmp eq i32 %28, -1
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %22, align 4
  %and.i13.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i34, label %if.then.i35, label %do.end8.i, !prof !40

if.then.i35:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !43

if.then.i16.i:                                    ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i15.i = add i32 %30, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %31, %if.end.i17.i ]
  %32 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !56
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !43

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i22.i = add i32 %30, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call.i to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %33, %if.end.i24.i ]
  %34 = inttoptr i32 %retval.0.i25.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void @unlock_page(ptr noundef nonnull %call.i) #9
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %22, align 4
  %and.i.i39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.not.i.i40, label %if.end.i.i43, label %if.then.i.i42, !prof !43

if.then.i.i42:                                    ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i41 = add i32 %38, -1
  br label %_compound_head.exit.i45

if.end.i.i43:                                     ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i45

_compound_head.exit.i45:                          ; preds = %if.end.i.i43, %if.then.i.i42
  %retval.0.i.i44 = phi i32 [ %sub.i.i41, %if.then.i.i42 ], [ %39, %if.end.i.i43 ]
  %40 = inttoptr i32 %retval.0.i.i44 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %41 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.8) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i45
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !51
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_mdt_forget_block, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !53

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %40, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %40) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %44 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool11.not = icmp eq i32 %44, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %put_page.exit.if.then15_crit_edge

put_page.exit.if.then15_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

lor.lhs.false:                                    ; preds = %put_page.exit
  %45 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_mapping, align 8
  %call13 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %46, i32 noundef %shr, i32 noundef %shr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 0
  br i1 %cmp.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %put_page.exit.if.then15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -16, %if.then15 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_forget_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_fetch_dirty(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %0 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_bmap, align 8
  %call1 = tail call i32 @nilfs_bmap_test_and_clear_dirty(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %i_state2 = getelementptr i8, ptr %inode, i32 -588
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %i_state2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %i_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %i_state2, align 4
  %shr.i = lshr i32 %3, 1
  %and1.i = and i32 %shr.i, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %and1.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_test_and_clear_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_init(ptr nocapture noundef %inode, i32 noundef %gfp_mask, i32 noundef %objsz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %objsz, i32 128)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3392) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__init_rwsem(ptr noundef nonnull %call9.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @nilfs_mdt_init.__key) #9
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %1 = ptrtoint ptr %i_private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9.i.i, ptr %i_private, align 4
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -32768, ptr %inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %gfp_mask, ptr %gfp_mask.i, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %6 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @def_mdt_iops, ptr %i_op, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @def_mdt_fops, ptr %7, align 8
  %9 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @def_mdt_aops, ptr %a_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_mdt_clear(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_palloc_cache = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mi_palloc_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_palloc_cache, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nilfs_palloc_destroy_cache(ptr noundef %inode) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_destroy_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_mdt_destroy(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_bgl = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mi_bgl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_bgl, align 4
  tail call void @kfree(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_mdt_set_entry_size(ptr nocapture noundef readonly %inode, i32 noundef %entry_size, i32 noundef %header_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_entry_size = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mi_entry_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %entry_size, ptr %mi_entry_size, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %3 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %div = udiv i32 %shl.i, %entry_size
  %mi_entries_per_block = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %mi_entries_per_block to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %mi_entries_per_block, align 4
  %add = add i32 %entry_size, -1
  %sub = add i32 %add, %header_size
  %div2 = udiv i32 %sub, %entry_size
  %mi_first_entry_offset = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mi_first_entry_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div2, ptr %mi_first_entry_offset, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_setup_shadow_map(ptr noundef %inode, ptr noundef %shadow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %frozen_buffers = getelementptr inbounds %struct.nilfs_shadow_map, ptr %shadow, i32 0, i32 3
  %2 = ptrtoint ptr %frozen_buffers to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %frozen_buffers, ptr %frozen_buffers, align 4
  %prev.i = getelementptr inbounds %struct.nilfs_shadow_map, ptr %shadow, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %frozen_buffers, ptr %prev.i, align 4
  %frozen_data = getelementptr inbounds %struct.nilfs_shadow_map, ptr %shadow, i32 0, i32 1
  tail call void @address_space_init_once(ptr noundef %frozen_data) #9
  tail call void @nilfs_mapping_init(ptr noundef %frozen_data, ptr noundef %inode) #9
  %frozen_btnodes = getelementptr inbounds %struct.nilfs_shadow_map, ptr %shadow, i32 0, i32 2
  tail call void @address_space_init_once(ptr noundef %frozen_btnodes) #9
  tail call void @nilfs_mapping_init(ptr noundef %frozen_btnodes, ptr noundef %inode) #9
  %mi_shadow = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %mi_shadow to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %shadow, ptr %mi_shadow, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @address_space_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_mapping_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_save_to_shadow_map(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_shadow = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mi_shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_shadow, align 4
  %frozen_data = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 1
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %call2 = tail call i32 @nilfs_copy_dirty_pages(ptr noundef %frozen_data, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %frozen_btnodes = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 2
  %i_btnode_cache = getelementptr i8, ptr %inode, i32 -360
  %call3 = tail call i32 @nilfs_copy_dirty_pages(ptr noundef %frozen_btnodes, ptr noundef %i_btnode_cache) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %6 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_bmap, align 8
  tail call void @nilfs_bmap_save(ptr noundef %7, ptr noundef %3) #9
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call3, %if.end.out_crit_edge ], [ 0, %if.end6 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_copy_dirty_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_bmap_save(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_mdt_freeze_buffer(ptr nocapture noundef readonly %inode, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_shadow = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mi_shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_shadow, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %4 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %5 to i32
  %frozen_data = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 1
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %6 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_page, align 8
  %index = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %frozen_data, i32 noundef %9, i32 noundef 7, i32 noundef %11) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !40

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call.i.i, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %if.then4, label %PagePrivate.exit.if.end5_crit_edge

PagePrivate.exit.if.end5_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %conv
  tail call void @create_empty_buffers(ptr noundef nonnull %call.i.i, i32 noundef %shl, i32 noundef 0) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %PagePrivate.exit.if.end5_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %19 = ptrtoint ptr %18 to i32
  %and = and i32 %19, 4095
  %shr = lshr i32 %and, %conv
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !40

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end5
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call.i.i, align 4
  %24 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i36 = icmp eq i32 %24, 0
  br i1 %tobool.not.i36, label %do.body4.i, label %do.end9.i, !prof !40

do.body4.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.end9.i:                                        ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %private.i, align 4
  %27 = inttoptr i32 %26 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp.not13.i = icmp eq i32 %shr, 0
  br i1 %cmp.not13.i, label %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge, label %do.end9.i.while.body.i_crit_edge

do.end9.i.while.body.i_crit_edge:                 ; preds = %do.end9.i
  br label %while.body.i

do.end9.i.nilfs_page_get_nth_block.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_page_get_nth_block.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end9.i.while.body.i_crit_edge
  %count.addr.015.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %shr, %do.end9.i.while.body.i_crit_edge ]
  %bh.014.i = phi ptr [ %29, %while.body.i.while.body.i_crit_edge ], [ %27, %do.end9.i.while.body.i_crit_edge ]
  %dec.i = add i32 %count.addr.015.i, -1
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.014.i, i32 0, i32 1
  %28 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_this_page.i, align 4
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.body.i.nilfs_page_get_nth_block.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nilfs_page_get_nth_block.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_page_get_nth_block.exit

nilfs_page_get_nth_block.exit:                    ; preds = %while.body.i.nilfs_page_get_nth_block.exit_crit_edge, %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge
  %bh.0.lcssa.i = phi ptr [ %27, %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge ], [ %29, %while.body.i.nilfs_page_get_nth_block.exit_crit_edge ]
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #9, !srcloc !48
  %31 = ptrtoint ptr %bh.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %bh.0.lcssa.i, align 4
  %and1.i.i34 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i34)
  %tobool8.not = icmp eq i32 %and1.i.i34, 0
  br i1 %tobool8.not, label %if.then9, label %nilfs_page_get_nth_block.exit.if.end10_crit_edge

nilfs_page_get_nth_block.exit.if.end10_crit_edge: ; preds = %nilfs_page_get_nth_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %nilfs_page_get_nth_block.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nilfs_copy_buffer(ptr noundef %bh.0.lcssa.i, ptr noundef %bh) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %nilfs_page_get_nth_block.exit.if.end10_crit_edge
  %b_assoc_buffers = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 9
  %33 = ptrtoint ptr %b_assoc_buffers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %b_assoc_buffers, align 4
  %cmp.i.not = icmp eq ptr %34, %b_assoc_buffers
  br i1 %cmp.i.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %frozen_buffers = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i37 = tail call zeroext i1 @__list_add_valid(ptr noundef %b_assoc_buffers, ptr noundef %36, ptr noundef %frozen_buffers) #9
  br i1 %call.i.i37, label %if.end.i.i, label %if.then13.list_add_tail.exit_crit_edge

if.then13.list_add_tail.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b_assoc_buffers, ptr %prev.i, align 4
  %38 = ptrtoint ptr %b_assoc_buffers to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %frozen_buffers, ptr %b_assoc_buffers, align 4
  %prev3.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 9, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %b_assoc_buffers, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then13.list_add_tail.exit_crit_edge
  %41 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %bh, align 4
  %43 = and i32 %42, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %if.then.i35, label %list_add_tail.exit.if.end15_crit_edge

list_add_tail.exit.if.end15_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then.i35:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 20, ptr noundef %bh) #9
  br label %if.end15

if.else:                                          ; preds = %if.end10
  %tobool.not.i38 = icmp eq ptr %bh.0.lcssa.i, null
  br i1 %tobool.not.i38, label %if.else.if.end15_crit_edge, label %if.then.i39

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then.i39:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %bh.0.lcssa.i) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then.i39, %if.else.if.end15_crit_edge, %if.then.i35, %list_add_tail.exit.if.end15_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #9
  %44 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i41, label %if.then.i.i40, !prof !43

if.then.i.i40:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %46, -1
  br label %_compound_head.exit.i

if.end.i.i41:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i41, %if.then.i.i40
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i40 ], [ %47, %if.end.i.i41 ]
  %48 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %49 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i.i.i = icmp eq i32 %50, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.8) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !51
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_mdt_freeze_buffer, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !53

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %48, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %48) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_copy_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_mdt_get_frozen_buffer(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_shadow = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mi_shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_shadow, align 4
  %frozen_data = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 1
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %4 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_page, align 8
  %index = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %frozen_data, i32 noundef %7, i32 noundef 2, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !40

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

PagePrivate.exit:                                 ; preds = %if.then
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i, align 4
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %PagePrivate.exit.if.end_crit_edge, label %if.then4

PagePrivate.exit.if.end_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4:                                         ; preds = %PagePrivate.exit
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %15 = ptrtoint ptr %14 to i32
  %and = and i32 %15, 4095
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %16 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %17 to i32
  %shr = lshr i32 %and, %conv
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i.i = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !40

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #9, !srcloc !54
  unreachable

PagePrivate.exit.i:                               ; preds = %if.then4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call.i, align 4
  %22 = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !40

do.body4.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/page.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 59, 0\0A.popsection", ""() #9, !srcloc !55
  unreachable

do.end9.i:                                        ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %private.i, align 4
  %25 = inttoptr i32 %24 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp.not13.i = icmp eq i32 %shr, 0
  br i1 %cmp.not13.i, label %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge, label %do.end9.i.while.body.i_crit_edge

do.end9.i.while.body.i_crit_edge:                 ; preds = %do.end9.i
  br label %while.body.i

do.end9.i.nilfs_page_get_nth_block.exit_crit_edge: ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_page_get_nth_block.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end9.i.while.body.i_crit_edge
  %count.addr.015.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %shr, %do.end9.i.while.body.i_crit_edge ]
  %bh.014.i = phi ptr [ %27, %while.body.i.while.body.i_crit_edge ], [ %25, %do.end9.i.while.body.i_crit_edge ]
  %dec.i = add i32 %count.addr.015.i, -1
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.014.i, i32 0, i32 1
  %26 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_this_page.i, align 4
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.body.i.nilfs_page_get_nth_block.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.nilfs_page_get_nth_block.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_page_get_nth_block.exit

nilfs_page_get_nth_block.exit:                    ; preds = %while.body.i.nilfs_page_get_nth_block.exit_crit_edge, %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge
  %bh.0.lcssa.i = phi ptr [ %25, %do.end9.i.nilfs_page_get_nth_block.exit_crit_edge ], [ %27, %while.body.i.nilfs_page_get_nth_block.exit_crit_edge ]
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #9, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %nilfs_page_get_nth_block.exit, %PagePrivate.exit.if.end_crit_edge
  %bh_frozen.0 = phi ptr [ %bh.0.lcssa.i, %nilfs_page_get_nth_block.exit ], [ null, %PagePrivate.exit.if.end_crit_edge ]
  tail call void @unlock_page(ptr noundef nonnull %call.i) #9
  %29 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i13, !prof !43

if.then.i.i13:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i13
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i13 ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.8) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !51
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_mdt_get_frozen_buffer, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !53

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %33, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end6_crit_edge

folio_put_testzero.exit.i.i.if.end6_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %33) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %bh_frozen.1 = phi ptr [ null, %entry.if.end6_crit_edge ], [ %bh_frozen.0, %folio_put_testzero.exit.i.i.if.end6_crit_edge ], [ %bh_frozen.0, %if.then.i4.i ]
  ret ptr %bh_frozen.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_mdt_restore_from_shadow_map(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_shadow = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mi_shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_shadow, align 4
  tail call void @down_write(ptr noundef %1) #9
  %mi_palloc_cache = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %mi_palloc_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mi_palloc_cache, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nilfs_palloc_clear_cache(ptr noundef %inode) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  tail call void @nilfs_clear_dirty_pages(ptr noundef %7, i1 noundef zeroext true) #9
  %8 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping, align 8
  %frozen_data = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 1
  tail call void @nilfs_copy_back_pages(ptr noundef %9, ptr noundef %frozen_data) #9
  %i_btnode_cache = getelementptr i8, ptr %inode, i32 -360
  tail call void @nilfs_clear_dirty_pages(ptr noundef %i_btnode_cache, i1 noundef zeroext true) #9
  %frozen_btnodes = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 2
  tail call void @nilfs_copy_back_pages(ptr noundef %i_btnode_cache, ptr noundef %frozen_btnodes) #9
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %10 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_bmap, align 8
  tail call void @nilfs_bmap_restore(ptr noundef %11, ptr noundef %3) #9
  tail call void @up_write(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_palloc_clear_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_clear_dirty_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_copy_back_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_bmap_restore(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_mdt_clear_shadow_map(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %mi_shadow = getelementptr inbounds %struct.nilfs_mdt_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mi_shadow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mi_shadow, align 4
  tail call void @down_write(ptr noundef %1) #9
  %frozen_buffers.i = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %frozen_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %frozen_buffers.i, align 4
  %cmp.i.not3.i = icmp eq ptr %5, %frozen_buffers.i
  br i1 %cmp.i.not3.i, label %entry.nilfs_release_frozen_buffers.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.nilfs_release_frozen_buffers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_release_frozen_buffers.exit

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %6 = phi ptr [ %16, %brelse.exit.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -44
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.brelse.exit.i_crit_edge, label %if.then.i.i

list_del_init.exit.i.brelse.exit.i_crit_edge:     ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %add.ptr.i) #9
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %list_del_init.exit.i.brelse.exit.i_crit_edge
  %15 = ptrtoint ptr %frozen_buffers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %frozen_buffers.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %frozen_buffers.i
  br i1 %cmp.i.not.i, label %brelse.exit.i.nilfs_release_frozen_buffers.exit_crit_edge, label %brelse.exit.i.while.body.i_crit_edge

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

brelse.exit.i.nilfs_release_frozen_buffers.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nilfs_release_frozen_buffers.exit

nilfs_release_frozen_buffers.exit:                ; preds = %brelse.exit.i.nilfs_release_frozen_buffers.exit_crit_edge, %entry.nilfs_release_frozen_buffers.exit_crit_edge
  %frozen_data = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 1
  tail call void @truncate_inode_pages(ptr noundef %frozen_data, i64 noundef 0) #9
  %frozen_btnodes = getelementptr inbounds %struct.nilfs_shadow_map, ptr %3, i32 0, i32 2
  tail call void @truncate_inode_pages(ptr noundef %frozen_btnodes, i64 noundef 0) #9
  tail call void @up_write(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_mdt_submit_block(ptr noundef %inode, i32 noundef %blkoff, i32 noundef %mode_flags, ptr nocapture noundef writeonly %out_bh) unnamed_addr #0 align 64 {
entry:
  %blknum = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blknum) #9
  %0 = ptrtoint ptr %blknum to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %blknum, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %call = tail call ptr @nilfs_grab_buffer(ptr noundef %inode, ptr noundef %2, i32 noundef %blkoff, i32 noundef 0) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.failed_crit_edge, label %if.end, !prof !40

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %call, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end
  %5 = and i32 %mode_flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #9
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call, align 4
  %and.i.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %if.then9.failed_bh_crit_edge

if.then9.failed_bh_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_bh

trylock_buffer.exit:                              ; preds = %if.then9
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 4, ptr nonnull elementtype(i32) %call) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %9 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not.not = icmp eq i32 %9, 0
  br i1 %tobool11.not.not, label %trylock_buffer.exit.if.end14_crit_edge, label %trylock_buffer.exit.failed_bh_crit_edge

trylock_buffer.exit.failed_bh_crit_edge:          ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_bh

trylock_buffer.exit.if.end14_crit_edge:           ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.else:                                          ; preds = %if.end7
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 366) #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #9
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call, align 4
  %and.i.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.else.if.then.i_crit_edge

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.else
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 4, ptr nonnull elementtype(i32) %call) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.if.end14_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

trylock_buffer.exit.i.if.end14_crit_edge:         ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.else.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %trylock_buffer.exit.i.if.end14_crit_edge, %trylock_buffer.exit.if.end14_crit_edge
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call, align 4
  %and1.i.i1 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1)
  %tobool16.not = icmp eq i32 %and1.i.i1, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_buffer(ptr noundef nonnull %call) #9
  br label %out

if.end18:                                         ; preds = %if.end14
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %16 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_bmap, align 8
  %conv20 = zext i32 %blkoff to i64
  %call.i = call i32 @nilfs_bmap_lookup_at_level(ptr noundef %17, i64 noundef %conv20, i32 noundef 1, ptr noundef nonnull %blknum) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool22.not = icmp eq i32 %call.i, 0
  br i1 %tobool22.not, label %if.end30, label %if.then29, !prof !43

if.then29:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_buffer(ptr noundef nonnull %call) #9
  br label %failed_bh

if.end30:                                         ; preds = %if.end18
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb, align 4
  %20 = ptrtoint ptr %blknum to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %blknum, align 8
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call, align 4
  %24 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end30.map_bh.exit_crit_edge

if.end30.map_bh.exit_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 4, ptr noundef nonnull %call) #9
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.end30.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 26
  %25 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 6
  %27 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 3
  %28 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %21, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %29 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 4
  %31 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %b_size.i, align 8
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 7
  %32 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i2 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %33 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !48
  %call31 = call i32 @submit_bh(i32 noundef 0, i32 noundef %mode_flags, ptr noundef nonnull %call) #9
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %34 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_ino, align 8
  call fastcc void @trace_nilfs2_mdt_submit_block(ptr noundef %inode, i32 noundef %35, i32 noundef %blkoff)
  br label %out

out:                                              ; preds = %map_bh.exit, %if.then17, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -17, %if.end.out_crit_edge ], [ -17, %if.then17 ], [ 0, %map_bh.exit ]
  %b_count.i3 = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i4 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i3, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %b_count.i3, i32 1, i32 3, i32 1) #9
  %36 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i3, ptr %b_count.i3, i32 1, ptr elementtype(i32) %b_count.i3) #9, !srcloc !48
  %37 = ptrtoint ptr %out_bh to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call, ptr %out_bh, align 4
  br label %failed_bh

failed_bh:                                        ; preds = %out, %if.then29, %trylock_buffer.exit.failed_bh_crit_edge, %if.then9.failed_bh_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out ], [ %call.i, %if.then29 ], [ -16, %trylock_buffer.exit.failed_bh_crit_edge ], [ -16, %if.then9.failed_bh_crit_edge ]
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 2
  %38 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %b_page, align 8
  call void @unlock_page(ptr noundef %39) #9
  %40 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_page, align 8
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i, label %if.then.i.i6, !prof !43

if.then.i.i6:                                     ; preds = %failed_bh
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %44, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %failed_bh
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %41 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i6
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i6 ], [ %45, %if.end.i.i ]
  %46 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %47 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i.i.i.i = icmp eq i32 %48, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.8) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !49
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !50
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !51
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %49, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_mdt_submit_block, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !53

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %46, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.brelse.exit_crit_edge

folio_put_testzero.exit.i.i.brelse.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %46) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.brelse.exit_crit_edge
  call void @__brelse(ptr noundef nonnull %call) #9
  br label %failed

failed:                                           ; preds = %brelse.exit, %entry.failed_crit_edge
  %ret.2 = phi i32 [ -12, %entry.failed_crit_edge ], [ %ret.1, %brelse.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blknum) #9
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_grab_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nilfs2_mdt_submit_block(ptr noundef %inode, i32 noundef %ino, i32 noundef %blkoff) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_mdt_submit_block, i32 0, i32 1), ptr blockaddress(@trace_nilfs2_mdt_submit_block, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !53

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %call42 = tail call i32 @__traceiter_nilfs2_mdt_submit_block(ptr noundef null, ptr noundef %inode, i32 noundef %ino, i32 noundef %blkoff, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !43

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
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
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_mdt_submit_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_mdt_submit_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_nilfs2_mdt_submit_block.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nilfs2_mdt_submit_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 218, ptr noundef nonnull @.str.4) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #9
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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_lookup_at_level(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nilfs2_mdt_submit_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_begin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_transaction_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_transaction_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_bmap_insert(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_nilfs2_mdt_insert_new_block(ptr noundef %inode, i32 noundef %ino, i32 noundef %block) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_mdt_insert_new_block, i32 0, i32 1), ptr blockaddress(@trace_nilfs2_mdt_insert_new_block, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !53

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !30) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  %call42 = tail call i32 @__traceiter_nilfs2_mdt_insert_new_block(ptr noundef null, ptr noundef %inode, i32 noundef %ino, i32 noundef %block) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %13 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_mdt_insert_new_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nilfs2_mdt_insert_new_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_nilfs2_mdt_insert_new_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_nilfs2_mdt_insert_new_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 189, ptr noundef nonnull @.str.4) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %31 = tail call i32 @llvm.read_register.i32(metadata !30) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nilfs2_mdt_insert_new_block(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_mdt_write_page(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then3.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4.critedge, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nilfs_clear_dirty_page(ptr noundef %page, i1 noundef zeroext false) #9
  tail call void @unlock_page(ptr noundef %page) #9
  br label %cleanup

if.then3.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.c25 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #9
  tail call void @unlock_page(ptr noundef %page) #9
  br label %cleanup

if.end4.critedge:                                 ; preds = %land.lhs.true
  %call1.c = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #9
  tail call void @unlock_page(ptr noundef %page) #9
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %10 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @nilfs_construct_segment(ptr noundef %9) #9
  br label %cleanup

if.else:                                          ; preds = %if.end4.critedge
  %for_reclaim = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %12 = ptrtoint ptr %for_reclaim to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %for_reclaim, align 4
  %13 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not = icmp eq i16 %13, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  tail call void @nilfs_flush_segment(ptr noundef %9, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else.cleanup_crit_edge, %if.then6, %if.then3.critedge, %if.then
  %retval.0 = phi i32 [ -30, %if.then ], [ 0, %if.then3.critedge ], [ %call7, %if.then6 ], [ 0, %if.then9 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_clear_dirty_page(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_construct_segment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_flush_segment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !26, !28}
!llvm.named.register.sp = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @nilfs_mdt_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/mdt.c", i32 453, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @def_mdt_iops, !4, !"def_mdt_iops", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/mdt.c", i32 441, i32 38}
!5 = !{ptr @def_mdt_fops, !6, !"def_mdt_fops", i1 false, i1 false}
!6 = !{!"../fs/nilfs2/mdt.c", i32 442, i32 37}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nilfs2/mdt.c", i32 202, i32 3}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/trace/events/nilfs2.h", i32 191, i32 1}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/nilfs2.h", i32 166, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/mm.h", i32 717, i32 2}
!28 = !{ptr @def_mdt_aops, !29, !"def_mdt_aops", i1 false, i1 false}
!29 = !{!"../fs/nilfs2/mdt.c", i32 436, i32 46}
!30 = !{!"sp"}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{!"auto-init"}
!42 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2153701842}
!45 = !{i64 2152195386}
!46 = !{i64 2152195593}
!47 = !{i64 2153704613}
!48 = !{i64 2148680090, i64 2148680116, i64 2148680145, i64 2148680179, i64 2148680210, i64 2148680233}
!49 = !{i64 2153177906, i64 2153178389, i64 2153177943, i64 2153177999, i64 2153178033, i64 2153178057, i64 2153178098, i64 2153178119, i64 2153178147, i64 2153178181}
!50 = !{i64 2148768566}
!51 = !{i64 2148683275, i64 2148683307, i64 2148683336, i64 2148683370, i64 2148683401, i64 2148683424}
!52 = !{i64 2148768795}
!53 = !{i64 2148504688, i64 2148504693, i64 2148504706, i64 2148504750, i64 2148504784, i64 2148504805}
!54 = !{i64 2151047541, i64 2151048032, i64 2151047578, i64 2151047634, i64 2151047668, i64 2151047692, i64 2151047733, i64 2151047754, i64 2151047782, i64 2151047816}
!55 = !{i64 2155131180, i64 2155131660, i64 2155131217, i64 2155131273, i64 2155131307, i64 2155131331, i64 2155131372, i64 2155131393, i64 2155131421, i64 2155131455}
!56 = !{i64 2150698744, i64 2150699235, i64 2150698781, i64 2150698837, i64 2150698871, i64 2150698895, i64 2150698936, i64 2150698957, i64 2150698985, i64 2150699019}
!57 = !{i64 2148688948, i64 2148688980, i64 2148689009, i64 2148689043, i64 2148689074, i64 2148689097}
!58 = !{i64 2148778053}
!59 = !{i64 2155331929}
!60 = !{i64 2155332186}
!61 = !{i64 2149501095}
!62 = !{i64 2149502131}
!63 = !{i64 2155313570}
!64 = !{i64 2155313821}
