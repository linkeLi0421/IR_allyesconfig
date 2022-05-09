; ModuleID = '/llk/IR_all_yes/fs/squashfs/file.c_pt.bc'
source_filename = "../fs/squashfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.25 }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon, %union.anon.63, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.67 = type { ptr }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_cache_entry = type { i64, i32, i32, i64, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr }
%struct.meta_index = type { i32, i32, i16, i16, i16, i16, [127 x %struct.meta_entry] }
%struct.meta_entry = type { i64, i32, i16, i16 }

@squashfs_copy_cache.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"squashfs_copy_cache\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/squashfs/file.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SQUASHFS: bytes %d, i %d, available_bytes %d\0A\00", [50 x i8] zeroinitializer }, align 32
@squashfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @squashfs_readpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@squashfs_readpage.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"squashfs_readpage\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"SQUASHFS: Entered squashfs_readpage, page index %lx, start block %llx\0A\00", [57 x i8] zeroinitializer }, align 32
@read_blocklist.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"read_blocklist\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"SQUASHFS: read_blocklist: res %d, index %d, start 0x%llx, offset 0x%x, block 0x%llx\0A\00", [43 x i8] zeroinitializer }, align 32
@fill_meta_index.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fill_meta_index\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"SQUASHFS: get_meta_index: offset %d, meta->offset %d, meta->entries %d\0A\00", [56 x i8] zeroinitializer }, align 32
@fill_meta_index.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"SQUASHFS: get_meta_index: index_block 0x%llx, offset 0x%x data_block 0x%llx\0A\00", [51 x i8] zeroinitializer }, align 32
@fill_meta_index.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"SQUASHFS: get_meta_index: meta->offset %d, meta->entries %d\0A\00", [35 x i8] zeroinitializer }, align 32
@locate_meta_index.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"locate_meta_index\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SQUASHFS: locate_meta_index: index %d, offset %d\0A\00", [46 x i8] zeroinitializer }, align 32
@locate_meta_index.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SQUASHFS: locate_meta_index: entry %d, offset %d\0A\00", [46 x i8] zeroinitializer }, align 32
@empty_meta_index.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"empty_meta_index\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SQUASHFS: empty_meta_index: offset %d, skip %d\0A\00", [48 x i8] zeroinitializer }, align 32
@empty_meta_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013SQUASHFS error: Failed to allocate meta_index\0A\00", [47 x i8] zeroinitializer }, align 32
@empty_meta_index._entry_ptr = internal global ptr @empty_meta_index._entry, section ".printk_index", align 4
@empty_meta_index.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SQUASHFS: empty_meta_index: failed!\0A\00", [59 x i8] zeroinitializer }, align 32
@empty_meta_index.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.24, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"SQUASHFS: empty_meta_index: returned meta entry %d, %p\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@read_indexes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013SQUASHFS error: read_indexes: Failed to allocate block_list\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_indexes\00", [19 x i8] zeroinitializer }, align 32
@read_indexes._entry_ptr = internal global ptr @read_indexes._entry, section ".printk_index", align 4
@read_indexes._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013SQUASHFS error: read_indexes: reading block [%llx:%x]\0A\00", [39 x i8] zeroinitializer }, align 32
@read_indexes._entry_ptr.29 = internal global ptr @read_indexes._entry.27, section ".printk_index", align 4
@squashfs_readpage_fragment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013SQUASHFS error: Unable to read page, block %llx, size %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"squashfs_readpage_fragment\00", [37 x i8] zeroinitializer }, align 32
@squashfs_readpage_fragment._entry_ptr = internal global ptr @squashfs_readpage_fragment._entry, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 401, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"squashfs_aops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 498, i32 39 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 260, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 416, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 717, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 459, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 334, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 260, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 263, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 300, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 56, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 66, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 95, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 107, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 123, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 127, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 168, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 178, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [22 x i8] c"../fs/squashfs/file.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 430, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @empty_meta_index._entry, ptr @empty_meta_index._entry_ptr, ptr @read_indexes._entry, ptr @read_indexes._entry.27, ptr @read_indexes._entry_ptr, ptr @read_indexes._entry_ptr.29, ptr @squashfs_readpage_fragment._entry, ptr @squashfs_readpage_fragment._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @squashfs_aops, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_meta_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_indexes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_indexes._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_readpage_fragment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @squashfs_fill_page(ptr noundef %page, ptr noundef %buffer, i32 noundef %offset, i32 noundef %avail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %5 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #11
  %call1 = tail call i32 @squashfs_copy_data(ptr noundef %call.i.i, ptr noundef %buffer, i32 noundef %offset, i32 noundef %avail) #11
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %call1
  %sub = sub i32 4096, %call1
  %11 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %12 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i1.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %17, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  %18 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i13 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i13 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i14 = add i32 %21, -1
  store volatile i32 %sub.i.i14, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %page) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %avail)
  %cmp = icmp eq i32 %call1, %avail
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  %22 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !85

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !86
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !87
  unreachable

do.body7.i:                                       ; preds = %if.else
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %25, align 4
  %and.i31.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !85

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %page to i32
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
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !88

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !85

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i = add i32 %35, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %36, %if.end.i36.i ]
  %37 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !85

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i = add i32 %35, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %38, %if.end.i43.i ]
  %39 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %39) #11
  br label %if.end

if.end:                                           ; preds = %SetPageError.exit, %SetPageUptodate.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_copy_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @squashfs_copy_cache(ptr noundef %page, ptr noundef %buffer, i32 noundef %bytes, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %block_log = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %block_log to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %block_log, align 4
  %conv = zext i16 %9 to i32
  %sub = add nsw i32 %conv, -12
  %notmask = shl nsw i32 -1, %sub
  %sub1 = xor i32 %notmask, -1
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %and = and i32 %notmask, %11
  %or = or i32 %11, %sub1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %or)
  %cmp.not74 = icmp sle i32 %and, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp375 = icmp sgt i32 %bytes, 0
  %or.cond76 = and i1 %cmp.not74, %cmp375
  br i1 %or.cond76, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %buffer, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %bytes.addr.083 = phi i32 [ %bytes, %for.body.lr.ph ], [ %sub37, %cleanup.for.body_crit_edge ]
  %offset.addr.080 = phi i32 [ %offset, %for.body.lr.ph ], [ %add, %cleanup.for.body_crit_edge ]
  %i.077 = phi i32 [ %and, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.083, i32 4096)
  %cond10 = select i1 %tobool.not, i32 0, i32 %12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_copy_cache.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_copy_cache, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_copy_cache.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.3, i32 noundef %bytes.addr.083, i32 noundef %i.077, i32 noundef %cond10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %14)
  %cmp16 = icmp eq i32 %i.077, %14
  br i1 %cmp16, label %do.end.cond.end22_crit_edge, label %cond.false19

do.end.cond.end22_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end22

cond.false19:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping, align 4
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @pagecache_get_page(ptr noundef %16, i32 noundef %i.077, i32 noundef 54, i32 noundef %18) #11
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false19, %do.end.cond.end22_crit_edge
  %cond23 = phi ptr [ %call1.i, %cond.false19 ], [ %page, %do.end.cond.end22_crit_edge ]
  %tobool24.not = icmp eq ptr %cond23, null
  br i1 %tobool24.not, label %cond.end22.cleanup_crit_edge, label %if.end26

cond.end22.cleanup_crit_edge:                     ; preds = %cond.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %cond.end22
  %19 = getelementptr inbounds %struct.page, ptr %cond23, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !85

if.then.i.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %21, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %cond23 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %22, %if.end.i.i ]
  %23 = inttoptr i32 %retval.0.i.i to ptr
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !85

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.4) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !86
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %23, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %if.end30, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !91
  br label %skip_page

if.end30:                                         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @squashfs_fill_page(ptr noundef nonnull %cond23, ptr noundef %buffer, i32 noundef %offset.addr.080, i32 noundef %cond10)
  br label %skip_page

skip_page:                                        ; preds = %if.end30, %PageUptodate.exit
  tail call void @unlock_page(ptr noundef nonnull %cond23) #11
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.077, i32 %32)
  %cmp32.not = icmp eq i32 %i.077, %32
  br i1 %cmp32.not, label %skip_page.cleanup_crit_edge, label %if.then34

skip_page.cleanup_crit_edge:                      ; preds = %skip_page
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then34:                                        ; preds = %skip_page
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %19, align 4
  %and.i.i62 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %and.i.i62, 0
  br i1 %tobool.not.i.i63, label %if.end.i.i66, label %if.then.i.i65, !prof !85

if.then.i.i65:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i64 = add i32 %34, -1
  br label %_compound_head.exit.i68

if.end.i.i66:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %cond23 to i32
  br label %_compound_head.exit.i68

_compound_head.exit.i68:                          ; preds = %if.end.i.i66, %if.then.i.i65
  %retval.0.i.i67 = phi i32 [ %sub.i.i64, %if.then.i.i65 ], [ %35, %if.end.i.i66 ]
  %36 = inttoptr i32 %retval.0.i.i67 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !88

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i68
  call void @__sanitizer_cov_trace_pc() #13
  %39 = inttoptr i32 %retval.0.i.i67 to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.8) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !92
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i68
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !94
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@squashfs_copy_cache, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !90

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %36) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %skip_page.cleanup_crit_edge, %cond.end22.cleanup_crit_edge
  %inc = add i32 %i.077, 1
  %sub37 = add nsw i32 %bytes.addr.083, -4096
  %add = add i32 %offset.addr.080, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %or)
  %cmp.not = icmp sle i32 %inc, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %bytes.addr.083)
  %cmp3 = icmp sgt i32 %bytes.addr.083, 4096
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @squashfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  %block = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
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
  %index1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index1, align 4
  %block_log = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 18
  %10 = ptrtoint ptr %block_log to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %block_log, align 4
  %conv = zext i16 %11 to i32
  %sub = add nsw i32 %conv, -12
  %shr = lshr i32 %9, %sub
  %call = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %12 = ptrtoint ptr %block_log to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %block_log, align 4
  %sh_prom = zext i16 %13 to i64
  %shr4 = ashr i64 %call, %sh_prom
  %conv5 = trunc i64 %shr4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv5)
  %cmp = icmp eq i32 %shr, %conv5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %block_size = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 17
  %14 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_size, align 8
  %sub8 = add i32 %15, -1
  %16 = trunc i64 %call7 to i32
  %extract.t = and i32 %sub8, %16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %block_size10 = getelementptr inbounds %struct.squashfs_sb_info, ptr %7, i32 0, i32 17
  %17 = ptrtoint ptr %block_size10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %block_size10, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.off0 = phi i32 [ %extract.t, %cond.true ], [ %18, %cond.false ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_readpage.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_readpage, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -56
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_readpage.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.10, i32 noundef %20, i64 noundef %22) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %23 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index1, align 4
  %conv19 = zext i32 %24 to i64
  %call20 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %sub21 = add i64 %call20, 4095
  %shr22 = ashr i64 %sub21, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr22, i64 %conv19)
  %cmp23.not = icmp sgt i64 %shr22, %conv19
  br i1 %cmp23.not, label %if.end26, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv5)
  %cmp27 = icmp slt i32 %shr, %conv5
  br i1 %cmp27, label %if.end26.if.then32_crit_edge, label %lor.lhs.false

if.end26.if.then32_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

lor.lhs.false:                                    ; preds = %if.end26
  %25 = getelementptr i8, ptr %3, i32 -24
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %27)
  %cmp30 = icmp eq i64 %27, -1
  br i1 %cmp30, label %lor.lhs.false.if.then32_crit_edge, label %if.else45

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false.if.then32_crit_edge, %if.end26.if.then32_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #11
  %28 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %block, align 8
  %call33 = call fastcc i32 @read_blocklist(ptr noundef %3, i32 noundef %shr, ptr noundef nonnull %block)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp38 = icmp eq i32 %call33, 0
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @squashfs_copy_cache(ptr noundef %page, ptr noundef null, i32 noundef %cond.off0, i32 noundef 0) #11
  br label %cleanup.thread

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %block, align 8
  %call42 = tail call i32 @squashfs_readpage_block(ptr noundef %page, i64 noundef %30, i32 noundef %call33, i32 noundef %cond.off0) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else, %if.then40
  %res.1.ph = phi i32 [ %call42, %if.else ], [ 0, %if.then40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #11
  br label %if.end47

cleanup:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #11
  br label %error_out

if.else45:                                        ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mapping, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i, align 4
  %37 = getelementptr i8, ptr %34, i32 -24
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %37, align 8
  %fragment_size.i = getelementptr i8, ptr %34, i32 -16
  %40 = ptrtoint ptr %fragment_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fragment_size.i, align 8
  %call2.i = tail call ptr @squashfs_get_fragment(ptr noundef %36, i64 noundef %39, i32 noundef %41) #11
  %error.i = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call2.i, i32 0, i32 5
  %42 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i109 = icmp eq i32 %43, 0
  br i1 %tobool.not.i109, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %37, align 8
  %46 = ptrtoint ptr %fragment_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fragment_size.i, align 8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %45, i32 noundef %47) #14
  br label %squashfs_readpage_fragment.exit

if.else.i:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  %fragment_offset.i = getelementptr i8, ptr %34, i32 -12
  %48 = ptrtoint ptr %fragment_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fragment_offset.i, align 4
  tail call void @squashfs_copy_cache(ptr noundef %page, ptr noundef %call2.i, i32 noundef %cond.off0, i32 noundef %49) #11
  br label %squashfs_readpage_fragment.exit

squashfs_readpage_fragment.exit:                  ; preds = %if.else.i, %do.end.i
  tail call void @squashfs_cache_put(ptr noundef %call2.i) #11
  br label %if.end47

if.end47:                                         ; preds = %squashfs_readpage_fragment.exit, %cleanup.thread
  %res.2 = phi i32 [ %43, %squashfs_readpage_fragment.exit ], [ %res.1.ph, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.2)
  %tobool48.not = icmp eq i32 %res.2, 0
  br i1 %tobool48.not, label %if.end47.cleanup62_crit_edge, label %if.end47.error_out_crit_edge

if.end47.error_out_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_out

if.end47.cleanup62_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup62

error_out:                                        ; preds = %if.end47.error_out_crit_edge, %cleanup
  %50 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %and.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !85

if.then.i:                                        ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !87
  unreachable

do.body7.i:                                       ; preds = %error_out
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %50, align 4
  %and.i31.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !85

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %54, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %55, %if.end.i.i ]
  %56 = inttoptr i32 %retval.0.i.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.not.i = icmp eq i32 %58, -1
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %50, align 4
  %and.i32.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !88

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !85

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i34.i = add i32 %60, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %61, %if.end.i36.i ]
  %62 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !85

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i41.i = add i32 %60, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %63, %if.end.i43.i ]
  %64 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %64) #11
  br label %out

out:                                              ; preds = %SetPageError.exit, %do.end.out_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %65 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %65, 512
  %66 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %69, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %70 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i1.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 213
  %74 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %75, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !81
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #11
  %76 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !82
  %77 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i1.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 213
  %81 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %82, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !83
  %83 = tail call i32 @llvm.read_register.i32(metadata !70) #11
  %and.i.i.i.i110 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i110 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i111 = add i32 %86, -1
  store volatile i32 %sub.i.i111, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %page) #11
  %87 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %and.i.i99 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i99)
  %tobool.not.i.i100 = icmp eq i32 %and.i.i99, 0
  br i1 %tobool.not.i.i100, label %if.end.i.i103, label %if.then.i.i102, !prof !85

if.then.i.i102:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i101 = add i32 %89, -1
  br label %_compound_head.exit.i106

if.end.i.i103:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i106

_compound_head.exit.i106:                         ; preds = %if.end.i.i103, %if.then.i.i102
  %retval.0.i.i104 = phi i32 [ %sub.i.i101, %if.then.i.i102 ], [ %90, %if.end.i.i103 ]
  %91 = inttoptr i32 %retval.0.i.i104 to ptr
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %cmp.i.not.i105 = icmp eq i32 %93, -1
  %94 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %87, align 4
  %and.i16.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i105, label %if.then.i107, label %do.end10.i, !prof !88

if.then.i107:                                     ; preds = %_compound_head.exit.i106
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !85

if.then.i19.i:                                    ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %95, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %96, %if.end.i20.i ]
  %97 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %97, ptr noundef nonnull @.str.7) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !96
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i106
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !85

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %95, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %page to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %98, %if.end.i27.i ]
  %99 = inttoptr i32 %retval.0.i28.i to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  %102 = and i32 %101, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool59.not = icmp eq i32 %102, 0
  br i1 %tobool59.not, label %if.then60, label %PageError.exit.if.end61_crit_edge

PageError.exit.if.end61_crit_edge:                ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then60:                                        ; preds = %PageError.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !84
  %103 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %87, align 4
  %and.i.i.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !85

if.then.i.i.i:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !86
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %if.end61

if.end61:                                         ; preds = %SetPageUptodate.exit, %PageError.exit.if.end61_crit_edge
  tail call void @unlock_page(ptr noundef %page) #11
  br label %cleanup62

cleanup62:                                        ; preds = %if.end61, %if.end47.cleanup62_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !97
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !98
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !88

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !99
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !101
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !102
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !103
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_blocklist(ptr noundef %inode, i32 noundef %index, ptr nocapture noundef %block) unnamed_addr #0 align 64 {
entry:
  %start = alloca i64, align 8
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #11
  %0 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %start, align 8, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #11
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %offset, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #11
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !104
  %call = call fastcc i32 @fill_meta_index(ptr noundef %inode, i32 noundef %index, ptr noundef nonnull %start, ptr noundef nonnull %offset, ptr noundef %block)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_blocklist.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_blocklist, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start, align 8
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %7 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %block, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_blocklist.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.12, i32 noundef %call, i32 noundef %index, i64 noundef %4, i32 noundef %6, i64 noundef %8) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %index)
  %cmp6 = icmp slt i32 %call, %index
  br i1 %cmp6, label %if.then7, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %sub = sub i32 %index, %call
  %call8 = call fastcc i64 @read_indexes(ptr noundef %10, i32 noundef %sub, ptr noundef nonnull %start, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call8)
  %cmp9 = icmp slt i64 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i64 %call8 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %block, align 8
  %add = add i64 %12, %call8
  store i64 %add, ptr %block, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end5.if.end12_crit_edge
  %i_sb13 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb13, align 4
  %call14 = call i32 @squashfs_read_metadata(ptr noundef %14, ptr noundef nonnull %size, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %17)
  %tobool.not.i = icmp ult i32 %17, 33554432
  %spec.select.i = select i1 %tobool.not.i, i32 %17, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end12.cleanup_crit_edge, %if.then10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then10 ], [ %spec.select.i, %if.end18 ], [ %call, %do.end.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_readpage_block(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_meta_index(ptr noundef %inode, i32 noundef %index, ptr nocapture noundef writeonly %index_block, ptr nocapture noundef writeonly %index_offset, ptr nocapture noundef writeonly %data_block) unnamed_addr #0 align 64 {
entry:
  %cur_index_block = alloca i64, align 8
  %cur_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %call = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %block_log = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %block_log to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %block_log, align 4
  %sh_prom = zext i16 %5 to i64
  %shr = ashr i64 %call, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 1835007, i64 %shr)
  %cmp.i = icmp ugt i64 %shr, 1835007
  %div3.i = lshr i64 %shr, 18
  %6 = trunc i64 %div3.i to i32
  %extract.t.i = add i32 %6, 1
  %cond.off0.i = select i1 %cmp.i, i32 7, i32 %extract.t.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur_index_block) #11
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -56
  %block_list_start = getelementptr i8, ptr %inode, i32 -8
  %7 = ptrtoint ptr %block_list_start to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %block_list_start, align 8
  %9 = ptrtoint ptr %cur_index_block to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %cur_index_block, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_offset) #11
  %offset4 = getelementptr i8, ptr %inode, i32 -48
  %10 = ptrtoint ptr %offset4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset4, align 8
  %12 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cur_offset, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.i, align 8
  %mul = shl i32 %cond.off0.i, 11
  %div = udiv i32 %index, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp221 = icmp sgt i32 %div, 0
  br i1 %cmp221, label %while.body.lr.ph, label %entry.all_done_crit_edge

entry.all_done_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %all_done

while.body.lr.ph:                                 ; preds = %entry
  %inode_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %do.end116.while.body_crit_edge, %while.body.lr.ph
  %offset.0223 = phi i32 [ 0, %while.body.lr.ph ], [ %offset.2.lcssa, %do.end116.while.body_crit_edge ]
  %cur_data_block.0222 = phi i64 [ %14, %while.body.lr.ph ], [ %cur_data_block.2.lcssa, %do.end116.while.body_crit_edge ]
  %add = add nsw i32 %offset.0223, 1
  %call7 = call fastcc ptr @locate_meta_index(ptr noundef %inode, i32 noundef %add, i32 noundef %div)
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call11 = call fastcc ptr @empty_meta_index(ptr noundef %inode, i32 noundef %add, i32 noundef %cond.off0.i)
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.then.all_done_crit_edge, label %if.then.if.end57_crit_edge

if.then.if.end57_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then.all_done_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %all_done

if.else:                                          ; preds = %while.body
  %offset15 = getelementptr inbounds %struct.meta_index, ptr %call7, i32 0, i32 1
  %15 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset15, align 4
  %entries = getelementptr inbounds %struct.meta_index, ptr %call7, i32 0, i32 2
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %entries, align 8
  %conv16 = zext i16 %18 to i32
  %add17 = add i32 %16, %conv16
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add17)
  %cmp18 = icmp ult i32 %div, %add17
  %sub = add i32 %add17, -1
  %cond = select i1 %cmp18, i32 %div, i32 %sub
  %sub26 = sub i32 %cond, %16
  %arrayidx = getelementptr %struct.meta_index, ptr %call7, i32 0, i32 6, i32 %sub26
  %index_block27 = getelementptr %struct.meta_index, ptr %call7, i32 0, i32 6, i32 %sub26, i32 1
  %19 = ptrtoint ptr %index_block27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index_block27, align 8
  %conv28 = zext i32 %20 to i64
  %21 = ptrtoint ptr %inode_table to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %inode_table, align 8
  %add29 = add i64 %22, %conv28
  %23 = ptrtoint ptr %cur_index_block to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %add29, ptr %cur_index_block, align 8
  %offset30 = getelementptr %struct.meta_index, ptr %call7, i32 0, i32 6, i32 %sub26, i32 2
  %24 = ptrtoint ptr %offset30 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %offset30, align 4
  %conv31 = zext i16 %25 to i32
  %26 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv31, ptr %cur_offset, align 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_meta_index.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_meta_index, %if.then36)) #11
          to label %do.body41 [label %if.then36], !srcloc !90

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset15, align 4
  %31 = ptrtoint ptr %entries to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %entries, align 8
  %conv39 = zext i16 %32 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_meta_index.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.14, i32 noundef %cond, i32 noundef %30, i32 noundef %conv39) #11
  br label %do.body41

do.body41:                                        ; preds = %if.then36, %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_meta_index.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_meta_index, %if.then53)) #11
          to label %if.end57 [label %if.then53], !srcloc !90

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %cur_index_block to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %cur_index_block, align 8
  %35 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur_offset, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_meta_index.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.15, i64 noundef %34, i32 noundef %36, i64 noundef %28) #11
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %do.body41, %if.then.if.end57_crit_edge
  %cur_data_block.1 = phi i64 [ %cur_data_block.0222, %if.then.if.end57_crit_edge ], [ %28, %if.then53 ], [ %28, %do.body41 ]
  %meta.0 = phi ptr [ %call11, %if.then.if.end57_crit_edge ], [ %call7, %if.then53 ], [ %call7, %do.body41 ]
  %offset.1 = phi i32 [ %offset.0223, %if.then.if.end57_crit_edge ], [ %cond, %if.then53 ], [ %cond, %do.body41 ]
  %offset58 = getelementptr inbounds %struct.meta_index, ptr %meta.0, i32 0, i32 1
  %37 = ptrtoint ptr %offset58 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset58, align 4
  %entries59 = getelementptr inbounds %struct.meta_index, ptr %meta.0, i32 0, i32 2
  %39 = ptrtoint ptr %entries59 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %entries59, align 8
  %conv60 = zext i16 %40 to i32
  %add61 = add i32 %38, %conv60
  call void @__sanitizer_cov_trace_cmp4(i32 %add61, i32 %div)
  %cmp62.not214 = icmp sgt i32 %add61, %div
  br i1 %cmp62.not214, label %if.end57.do.body98_crit_edge, label %if.end57.land.rhs_crit_edge

if.end57.land.rhs_crit_edge:                      ; preds = %if.end57
  br label %land.rhs

if.end57.do.body98_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body98

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end57.land.rhs_crit_edge
  %offset.2217 = phi i32 [ %inc95, %for.inc.land.rhs_crit_edge ], [ %offset.1, %if.end57.land.rhs_crit_edge ]
  %i.0216 = phi i32 [ %inc97, %for.inc.land.rhs_crit_edge ], [ %add61, %if.end57.land.rhs_crit_edge ]
  %cur_data_block.2215 = phi i64 [ %add82, %for.inc.land.rhs_crit_edge ], [ %cur_data_block.1, %if.end57.land.rhs_crit_edge ]
  %41 = ptrtoint ptr %offset58 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %offset58, align 4
  %add65 = add i32 %42, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0216, i32 %add65)
  %cmp66 = icmp ult i32 %i.0216, %add65
  br i1 %cmp66, label %for.body, label %land.rhs.do.body98_crit_edge

land.rhs.do.body98_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body98

for.body:                                         ; preds = %land.rhs
  %43 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb, align 4
  %call70 = call fastcc i64 @read_indexes(ptr noundef %44, i32 noundef %mul, ptr noundef nonnull %cur_index_block, ptr noundef nonnull %cur_offset)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call70)
  %cmp71 = icmp slt i64 %call70, 0
  br i1 %cmp71, label %if.then73, label %for.inc

if.then73:                                        ; preds = %for.body
  %45 = ptrtoint ptr %entries59 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %entries59, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp76 = icmp eq i16 %46, 0
  br i1 %cmp76, label %if.then78, label %if.then73.failed_crit_edge

if.then73.failed_crit_edge:                       ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %failed

if.then78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %meta.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %meta.0, align 8
  br label %failed

for.inc:                                          ; preds = %for.body
  %add82 = add i64 %call70, %cur_data_block.2215
  %48 = ptrtoint ptr %offset58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset58, align 4
  %sub85 = sub i32 %i.0216, %49
  %arrayidx86 = getelementptr %struct.meta_index, ptr %meta.0, i32 0, i32 6, i32 %sub85
  %50 = ptrtoint ptr %cur_index_block to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cur_index_block, align 8
  %52 = ptrtoint ptr %inode_table to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %inode_table, align 8
  %sub88 = sub i64 %51, %53
  %conv89 = trunc i64 %sub88 to i32
  %index_block90 = getelementptr %struct.meta_index, ptr %meta.0, i32 0, i32 6, i32 %sub85, i32 1
  %54 = ptrtoint ptr %index_block90 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv89, ptr %index_block90, align 8
  %55 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_offset, align 4
  %conv91 = trunc i32 %56 to i16
  %offset92 = getelementptr %struct.meta_index, ptr %meta.0, i32 0, i32 6, i32 %sub85, i32 2
  %57 = ptrtoint ptr %offset92 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv91, ptr %offset92, align 4
  %58 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add82, ptr %arrayidx86, align 8
  %59 = ptrtoint ptr %entries59 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %entries59, align 8
  %inc = add i16 %60, 1
  store i16 %inc, ptr %entries59, align 8
  %inc95 = add i32 %offset.2217, 1
  %inc97 = add nuw i32 %i.0216, 1
  %cmp62.not = icmp sgt i32 %inc97, %div
  br i1 %cmp62.not, label %for.inc.do.body98_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.inc.do.body98_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body98

do.body98:                                        ; preds = %for.inc.do.body98_crit_edge, %land.rhs.do.body98_crit_edge, %if.end57.do.body98_crit_edge
  %cur_data_block.2.lcssa = phi i64 [ %cur_data_block.1, %if.end57.do.body98_crit_edge ], [ %cur_data_block.2215, %land.rhs.do.body98_crit_edge ], [ %add82, %for.inc.do.body98_crit_edge ]
  %offset.2.lcssa = phi i32 [ %offset.1, %if.end57.do.body98_crit_edge ], [ %offset.2217, %land.rhs.do.body98_crit_edge ], [ %inc95, %for.inc.do.body98_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_meta_index.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_meta_index, %if.then110)) #11
          to label %do.end116 [label %if.then110], !srcloc !90

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %offset58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset58, align 4
  %63 = ptrtoint ptr %entries59 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %entries59, align 8
  %conv113 = zext i16 %64 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_meta_index.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.16, i32 noundef %62, i32 noundef %conv113) #11
  br label %do.end116

do.end116:                                        ; preds = %if.then110, %do.body98
  %65 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 33
  %67 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i, align 16
  %meta_index_mutex.i = getelementptr inbounds %struct.squashfs_sb_info, ptr %68, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %meta_index_mutex.i, i32 noundef 0) #11
  %locked.i = getelementptr inbounds %struct.meta_index, ptr %meta.0, i32 0, i32 4
  %69 = ptrtoint ptr %locked.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %locked.i, align 4
  call void @mutex_unlock(ptr noundef %meta_index_mutex.i) #11
  %cmp = icmp slt i32 %offset.2.lcssa, %div
  br i1 %cmp, label %do.end116.while.body_crit_edge, label %do.end116.all_done_crit_edge

do.end116.all_done_crit_edge:                     ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %all_done

do.end116.while.body_crit_edge:                   ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

all_done:                                         ; preds = %do.end116.all_done_crit_edge, %if.then.all_done_crit_edge, %entry.all_done_crit_edge
  %cur_data_block.0.lcssa = phi i64 [ %14, %entry.all_done_crit_edge ], [ %cur_data_block.2.lcssa, %do.end116.all_done_crit_edge ], [ %cur_data_block.0222, %if.then.all_done_crit_edge ]
  %offset.0.lcssa = phi i32 [ 0, %entry.all_done_crit_edge ], [ %offset.2.lcssa, %do.end116.all_done_crit_edge ], [ %offset.0223, %if.then.all_done_crit_edge ]
  %70 = ptrtoint ptr %cur_index_block to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %cur_index_block, align 8
  %72 = ptrtoint ptr %index_block to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %index_block, align 8
  %73 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cur_offset, align 4
  %75 = ptrtoint ptr %index_offset to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %index_offset, align 4
  %76 = ptrtoint ptr %data_block to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %cur_data_block.0.lcssa, ptr %data_block, align 8
  %mul118 = mul i32 %mul, %offset.0.lcssa
  br label %cleanup119

failed:                                           ; preds = %if.then78, %if.then73.failed_crit_edge
  %conv80 = trunc i64 %call70 to i32
  %77 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i197 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 33
  %79 = ptrtoint ptr %s_fs_info.i197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %s_fs_info.i197, align 16
  %meta_index_mutex.i198 = getelementptr inbounds %struct.squashfs_sb_info, ptr %80, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %meta_index_mutex.i198, i32 noundef 0) #11
  %locked.i199 = getelementptr inbounds %struct.meta_index, ptr %meta.0, i32 0, i32 4
  %81 = ptrtoint ptr %locked.i199 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %locked.i199, align 4
  call void @mutex_unlock(ptr noundef %meta_index_mutex.i198) #11
  br label %cleanup119

cleanup119:                                       ; preds = %failed, %all_done
  %retval.0 = phi i32 [ %mul118, %all_done ], [ %conv80, %failed ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_offset) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur_index_block) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @read_indexes(ptr noundef %sb, i32 noundef %n, ptr noundef %start_block, ptr noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #15
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %do.end, label %entry.while.cond.outer_crit_edge

entry.while.cond.outer_crit_edge:                 ; preds = %entry
  br label %while.cond.outer

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %cleanup22

while.cond:                                       ; preds = %cleanup18.while.cond_crit_edge, %while.cond.outer
  %block.0 = phi i64 [ %block.162.lcssa, %cleanup18.while.cond_crit_edge ], [ %block.0.ph, %while.cond.outer ]
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call4 = tail call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef nonnull %call7.i, ptr noundef %start_block, ptr noundef %offset, i32 noundef %shl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %cleanup18.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp1360, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call7.i, align 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %3)
  %tobool.not.i104 = icmp ult i32 %3, 33554432
  %spec.select.i105 = select i1 %tobool.not.i104, i32 %3, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i105)
  %cmp15106 = icmp slt i32 %spec.select.i105, 0
  br i1 %cmp15106, label %for.body.preheader.cleanup18_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.cleanup18_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup18

cleanup18.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %start_block to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start_block, align 8
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i64 noundef %5, i32 noundef %7) #14
  br label %failure

for.body:                                         ; preds = %for.inc
  %arrayidx = getelementptr i32, ptr %call7.i, i32 %inc
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %10)
  %tobool.not.i = icmp ult i32 %10, 33554432
  %spec.select.i = select i1 %tobool.not.i, i32 %10, i32 -5
  %cmp15 = icmp slt i32 %spec.select.i, 0
  br i1 %cmp15, label %cleanup18.loopexit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %spec.select.i109 = phi i32 [ %spec.select.i, %for.body.for.inc_crit_edge ], [ %spec.select.i105, %for.body.preheader.for.inc_crit_edge ]
  %i.061108 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ 0, %for.body.preheader.for.inc_crit_edge ]
  %block.162107 = phi i64 [ %add, %for.body.for.inc_crit_edge ], [ %block.0, %for.body.preheader.for.inc_crit_edge ]
  %and = and i32 %spec.select.i109, -16777217
  %11 = zext i32 %and to i64
  %add = add i64 %block.162107, %11
  %inc = add nuw nsw i32 %i.061108, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %smax)
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %12)
  %cmp13.le138 = icmp slt i32 %inc, %12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %block.1.lcssa = phi i64 [ %add, %for.end.loopexit ], [ %block.0, %for.cond.preheader.for.end_crit_edge ]
  %cmp13.lcssa = phi i1 [ %cmp13.le138, %for.end.loopexit ], [ false, %for.cond.preheader.for.end_crit_edge ]
  %sub = sub i32 %n.addr.0.ph, %12
  br i1 %cmp13.lcssa, label %for.end.failure_crit_edge, label %for.end.while.cond.outer_crit_edge

for.end.while.cond.outer_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer

for.end.failure_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %failure

while.cond.outer:                                 ; preds = %for.end.while.cond.outer_crit_edge, %entry.while.cond.outer_crit_edge
  %block.0.ph = phi i64 [ %block.1.lcssa, %for.end.while.cond.outer_crit_edge ], [ 0, %entry.while.cond.outer_crit_edge ]
  %n.addr.0.ph = phi i32 [ %sub, %for.end.while.cond.outer_crit_edge ], [ %n, %entry.while.cond.outer_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.ph)
  %tobool.not = icmp eq i32 %n.addr.0.ph, 0
  %12 = tail call i32 @llvm.smin.i32(i32 %n.addr.0.ph, i32 1024)
  %shl = shl i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.ph)
  %cmp1360 = icmp sgt i32 %n.addr.0.ph, 0
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 1)
  br label %while.cond

cleanup18.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %12)
  %cmp13.le = icmp slt i32 %inc, %12
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup18.loopexit, %for.body.preheader.cleanup18_crit_edge
  %cmp1363.lcssa = phi i1 [ true, %for.body.preheader.cleanup18_crit_edge ], [ %cmp13.le, %cleanup18.loopexit ]
  %block.162.lcssa = phi i64 [ %block.0, %for.body.preheader.cleanup18_crit_edge ], [ %add, %cleanup18.loopexit ]
  %spec.select.i.lcssa = phi i32 [ %spec.select.i105, %for.body.preheader.cleanup18_crit_edge ], [ %spec.select.i, %cleanup18.loopexit ]
  br i1 %cmp1363.lcssa, label %cleanup18.failure_crit_edge, label %cleanup18.while.cond_crit_edge

cleanup18.while.cond_crit_edge:                   ; preds = %cleanup18
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

cleanup18.failure_crit_edge:                      ; preds = %cleanup18
  call void @__sanitizer_cov_trace_pc() #13
  br label %failure

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup22

failure:                                          ; preds = %cleanup18.failure_crit_edge, %for.end.failure_crit_edge, %cleanup18.thread
  %err.252 = phi i32 [ %call4, %cleanup18.thread ], [ %spec.select.i.lcssa, %cleanup18.failure_crit_edge ], [ %call4, %for.end.failure_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  %conv21 = sext i32 %err.252 to i64
  br label %cleanup22

cleanup22:                                        ; preds = %failure, %while.end, %do.end
  %retval.0 = phi i64 [ -12, %do.end ], [ %conv21, %failure ], [ %block.0, %while.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @locate_meta_index(ptr nocapture noundef readonly %inode, i32 noundef %offset, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %meta_index_mutex = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %meta_index_mutex, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @locate_meta_index.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@locate_meta_index, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @locate_meta_index.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.18, i32 noundef %index, i32 noundef %offset) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %meta_index = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %meta_index, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end.not_allocated_crit_edge, label %for.cond.preheader

do.end.not_allocated_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_allocated

for.cond.preheader:                               ; preds = %do.end
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %offset.addr.082 = phi i32 [ %offset, %for.cond.preheader ], [ %offset.addr.1, %for.inc.for.body_crit_edge ]
  %meta.081 = phi ptr [ null, %for.cond.preheader ], [ %meta.1, %for.inc.for.body_crit_edge ]
  %i.078 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %meta_index, align 4
  %arrayidx = getelementptr %struct.meta_index, ptr %7, i32 %i.078
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp7 = icmp eq i32 %9, %11
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %offset10 = getelementptr %struct.meta_index, ptr %7, i32 %i.078, i32 1
  %12 = ptrtoint ptr %offset10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %offset.addr.082)
  %cmp11.not = icmp ult i32 %13, %offset.addr.082
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %index)
  %cmp16.not = icmp ugt i32 %13, %index
  %or.cond = or i1 %cmp11.not, %cmp16.not
  br i1 %or.cond, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %locked = getelementptr %struct.meta_index, ptr %7, i32 %i.078, i32 4
  %14 = ptrtoint ptr %locked to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %locked, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp20 = icmp eq i16 %15, 0
  br i1 %cmp20, label %do.body23, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body23:                                        ; preds = %land.lhs.true17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @locate_meta_index.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@locate_meta_index, %if.then35)) #11
          to label %do.end41 [label %if.then35], !srcloc !90

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %meta_index, align 4
  %offset38 = getelementptr %struct.meta_index, ptr %17, i32 %i.078, i32 1
  %18 = ptrtoint ptr %offset38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset38, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @locate_meta_index.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.19, i32 noundef %i.078, i32 noundef %19) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %do.body23
  %20 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %meta_index, align 4
  %arrayidx43 = getelementptr %struct.meta_index, ptr %21, i32 %i.078
  %offset44 = getelementptr %struct.meta_index, ptr %21, i32 %i.078, i32 1
  %22 = ptrtoint ptr %offset44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset44, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end41, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %meta.1 = phi ptr [ %arrayidx43, %do.end41 ], [ %meta.081, %land.lhs.true17.for.inc_crit_edge ], [ %meta.081, %land.lhs.true.for.inc_crit_edge ], [ %meta.081, %for.body.for.inc_crit_edge ]
  %offset.addr.1 = phi i32 [ %23, %do.end41 ], [ %offset.addr.082, %land.lhs.true17.for.inc_crit_edge ], [ %offset.addr.082, %land.lhs.true.for.inc_crit_edge ], [ %offset.addr.082, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool46.not = icmp eq ptr %meta.1, null
  br i1 %tobool46.not, label %for.end.not_allocated_crit_edge, label %if.then47

for.end.not_allocated_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %not_allocated

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %locked48 = getelementptr inbounds %struct.meta_index, ptr %meta.1, i32 0, i32 4
  %24 = ptrtoint ptr %locked48 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %locked48, align 4
  br label %not_allocated

not_allocated:                                    ; preds = %if.then47, %for.end.not_allocated_crit_edge, %do.end.not_allocated_crit_edge
  %meta.2 = phi ptr [ null, %do.end.not_allocated_crit_edge ], [ %meta.1, %if.then47 ], [ null, %for.end.not_allocated_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %meta_index_mutex) #11
  ret ptr %meta.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @empty_meta_index(ptr nocapture noundef readonly %inode, i32 noundef %offset, i32 noundef %skip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %meta_index_mutex = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %meta_index_mutex, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @empty_meta_index.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@empty_meta_index, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !90

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @empty_meta_index.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.21, i32 noundef %offset, i32 noundef %skip) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %meta_index = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %meta_index, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then3, label %do.end.if.end19_crit_edge

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then3:                                         ; preds = %do.end
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #16
  %6 = ptrtoint ptr %meta_index to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i.i.i.i, ptr %meta_index, align 4
  %cmp7 = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp7, label %do.end11, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %meta_index, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 8
  %10 = load ptr, ptr %meta_index, align 4
  %locked = getelementptr %struct.meta_index, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %locked to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %locked, align 4
  %12 = load ptr, ptr %meta_index, align 4
  %arrayidx.1 = getelementptr %struct.meta_index, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx.1, align 8
  %14 = load ptr, ptr %meta_index, align 4
  %locked.1 = getelementptr %struct.meta_index, ptr %14, i32 1, i32 4
  %15 = ptrtoint ptr %locked.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %locked.1, align 4
  %16 = load ptr, ptr %meta_index, align 4
  %arrayidx.2 = getelementptr %struct.meta_index, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx.2, align 8
  %18 = load ptr, ptr %meta_index, align 4
  %locked.2 = getelementptr %struct.meta_index, ptr %18, i32 2, i32 4
  %19 = ptrtoint ptr %locked.2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %locked.2, align 4
  %20 = load ptr, ptr %meta_index, align 4
  %arrayidx.3 = getelementptr %struct.meta_index, ptr %20, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx.3, align 8
  %22 = load ptr, ptr %meta_index, align 4
  %locked.3 = getelementptr %struct.meta_index, ptr %22, i32 3, i32 4
  %23 = ptrtoint ptr %locked.3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %locked.3, align 4
  %24 = load ptr, ptr %meta_index, align 4
  %arrayidx.4 = getelementptr %struct.meta_index, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %arrayidx.4, align 8
  %26 = load ptr, ptr %meta_index, align 4
  %locked.4 = getelementptr %struct.meta_index, ptr %26, i32 4, i32 4
  %27 = ptrtoint ptr %locked.4 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %locked.4, align 4
  %28 = load ptr, ptr %meta_index, align 4
  %arrayidx.5 = getelementptr %struct.meta_index, ptr %28, i32 5
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx.5, align 8
  %30 = load ptr, ptr %meta_index, align 4
  %locked.5 = getelementptr %struct.meta_index, ptr %30, i32 5, i32 4
  %31 = ptrtoint ptr %locked.5 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %locked.5, align 4
  %32 = load ptr, ptr %meta_index, align 4
  %arrayidx.6 = getelementptr %struct.meta_index, ptr %32, i32 6
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx.6, align 8
  %34 = load ptr, ptr %meta_index, align 4
  %locked.6 = getelementptr %struct.meta_index, ptr %34, i32 6, i32 4
  %35 = ptrtoint ptr %locked.6 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %locked.6, align 4
  %36 = load ptr, ptr %meta_index, align 4
  %arrayidx.7 = getelementptr %struct.meta_index, ptr %36, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx.7, align 8
  %38 = load ptr, ptr %meta_index, align 4
  %locked.7 = getelementptr %struct.meta_index, ptr %38, i32 7, i32 4
  %39 = ptrtoint ptr %locked.7 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %locked.7, align 4
  %next_meta_index = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %next_meta_index to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %next_meta_index, align 8
  br label %if.end19

do.end11:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %failed

if.end19:                                         ; preds = %for.body.preheader, %do.end.if.end19_crit_edge
  %next_meta_index23 = getelementptr inbounds %struct.squashfs_sb_info, ptr %3, i32 0, i32 6
  %41 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %meta_index, align 4
  %43 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %next_meta_index23, align 8
  %locked25 = getelementptr %struct.meta_index, ptr %42, i32 %44, i32 4
  %45 = ptrtoint ptr %locked25 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %locked25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool26.not = icmp eq i16 %46, 0
  br i1 %tobool26.not, label %if.end19.do.body52_crit_edge, label %for.body27

if.end19.do.body52_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27:                                       ; preds = %if.end19
  %add = add i32 %44, 1
  %rem = srem i32 %add, 8
  %47 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %rem, ptr %next_meta_index23, align 8
  %48 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %meta_index, align 4
  %locked25.1 = getelementptr %struct.meta_index, ptr %49, i32 %rem, i32 4
  %50 = ptrtoint ptr %locked25.1 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %locked25.1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool26.not.1 = icmp eq i16 %51, 0
  br i1 %tobool26.not.1, label %for.body27.do.body52_crit_edge, label %for.body27.1

for.body27.do.body52_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27.1:                                     ; preds = %for.body27
  %52 = trunc i32 %rem to i8
  %rem.1.lhs.trunc = add i8 %52, 1
  %rem.1128 = srem i8 %rem.1.lhs.trunc, 8
  %rem.1.sext = sext i8 %rem.1128 to i32
  %53 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %rem.1.sext, ptr %next_meta_index23, align 8
  %54 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %meta_index, align 4
  %locked25.2 = getelementptr %struct.meta_index, ptr %55, i32 %rem.1.sext, i32 4
  %56 = ptrtoint ptr %locked25.2 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %locked25.2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool26.not.2 = icmp eq i16 %57, 0
  br i1 %tobool26.not.2, label %for.body27.1.do.body52_crit_edge, label %for.body27.2

for.body27.1.do.body52_crit_edge:                 ; preds = %for.body27.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27.2:                                     ; preds = %for.body27.1
  %add.2 = add nsw i8 %rem.1128, 1
  %rem.2129 = srem i8 %add.2, 8
  %rem.2.sext = sext i8 %rem.2129 to i32
  %58 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %rem.2.sext, ptr %next_meta_index23, align 8
  %59 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %meta_index, align 4
  %locked25.3 = getelementptr %struct.meta_index, ptr %60, i32 %rem.2.sext, i32 4
  %61 = ptrtoint ptr %locked25.3 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %locked25.3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool26.not.3 = icmp eq i16 %62, 0
  br i1 %tobool26.not.3, label %for.body27.2.do.body52_crit_edge, label %for.body27.3

for.body27.2.do.body52_crit_edge:                 ; preds = %for.body27.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27.3:                                     ; preds = %for.body27.2
  %add.3 = add nsw i8 %rem.2129, 1
  %rem.3130 = srem i8 %add.3, 8
  %rem.3.sext = sext i8 %rem.3130 to i32
  %63 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %rem.3.sext, ptr %next_meta_index23, align 8
  %64 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %meta_index, align 4
  %locked25.4 = getelementptr %struct.meta_index, ptr %65, i32 %rem.3.sext, i32 4
  %66 = ptrtoint ptr %locked25.4 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %locked25.4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool26.not.4 = icmp eq i16 %67, 0
  br i1 %tobool26.not.4, label %for.body27.3.do.body52_crit_edge, label %for.body27.4

for.body27.3.do.body52_crit_edge:                 ; preds = %for.body27.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27.4:                                     ; preds = %for.body27.3
  %add.4 = add nsw i8 %rem.3130, 1
  %rem.4131 = srem i8 %add.4, 8
  %rem.4.sext = sext i8 %rem.4131 to i32
  %68 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %rem.4.sext, ptr %next_meta_index23, align 8
  %69 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %meta_index, align 4
  %locked25.5 = getelementptr %struct.meta_index, ptr %70, i32 %rem.4.sext, i32 4
  %71 = ptrtoint ptr %locked25.5 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %locked25.5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool26.not.5 = icmp eq i16 %72, 0
  br i1 %tobool26.not.5, label %for.body27.4.do.body52_crit_edge, label %for.body27.5

for.body27.4.do.body52_crit_edge:                 ; preds = %for.body27.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27.5:                                     ; preds = %for.body27.4
  %add.5 = add nsw i8 %rem.4131, 1
  %rem.5132 = srem i8 %add.5, 8
  %rem.5.sext = sext i8 %rem.5132 to i32
  %73 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %rem.5.sext, ptr %next_meta_index23, align 8
  %74 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %meta_index, align 4
  %locked25.6 = getelementptr %struct.meta_index, ptr %75, i32 %rem.5.sext, i32 4
  %76 = ptrtoint ptr %locked25.6 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %locked25.6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool26.not.6 = icmp eq i16 %77, 0
  br i1 %tobool26.not.6, label %for.body27.5.do.body52_crit_edge, label %for.body27.6

for.body27.5.do.body52_crit_edge:                 ; preds = %for.body27.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27.6:                                     ; preds = %for.body27.5
  %add.6 = add nsw i8 %rem.5132, 1
  %rem.6133 = srem i8 %add.6, 8
  %rem.6.sext = sext i8 %rem.6133 to i32
  %78 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %rem.6.sext, ptr %next_meta_index23, align 8
  %79 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %meta_index, align 4
  %locked25.7 = getelementptr %struct.meta_index, ptr %80, i32 %rem.6.sext, i32 4
  %81 = ptrtoint ptr %locked25.7 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %locked25.7, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool26.not.7 = icmp eq i16 %82, 0
  br i1 %tobool26.not.7, label %for.body27.6.do.body52_crit_edge, label %for.body27.7

for.body27.6.do.body52_crit_edge:                 ; preds = %for.body27.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

for.body27.7:                                     ; preds = %for.body27.6
  call void @__sanitizer_cov_trace_pc() #13
  %add.7 = add nsw i8 %rem.6133, 1
  %rem.7134135 = and i8 %add.7, 7
  %rem.7134.zext = zext i8 %rem.7134135 to i32
  %83 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %rem.7134.zext, ptr %next_meta_index23, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @empty_meta_index.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@empty_meta_index, %if.then47)) #11
          to label %failed [label %if.then47], !srcloc !90

if.then47:                                        ; preds = %for.body27.7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @empty_meta_index.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.23) #11
  br label %failed

do.body52:                                        ; preds = %for.body27.6.do.body52_crit_edge, %for.body27.5.do.body52_crit_edge, %for.body27.4.do.body52_crit_edge, %for.body27.3.do.body52_crit_edge, %for.body27.2.do.body52_crit_edge, %for.body27.1.do.body52_crit_edge, %for.body27.do.body52_crit_edge, %if.end19.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @empty_meta_index.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@empty_meta_index, %if.then64)) #11
          to label %do.end71 [label %if.then64], !srcloc !90

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %next_meta_index23, align 8
  %86 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %meta_index, align 4
  %arrayidx68 = getelementptr %struct.meta_index, ptr %87, i32 %85
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @empty_meta_index.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.24, i32 noundef %85, ptr noundef %arrayidx68) #11
  br label %do.end71

do.end71:                                         ; preds = %if.then64, %do.body52
  %88 = ptrtoint ptr %meta_index to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %meta_index, align 4
  %90 = ptrtoint ptr %next_meta_index23 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %next_meta_index23, align 8
  %arrayidx74 = getelementptr %struct.meta_index, ptr %89, i32 %91
  %add76 = add i32 %91, 1
  %rem77 = srem i32 %add76, 8
  store i32 %rem77, ptr %next_meta_index23, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %92 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %i_ino, align 8
  %94 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx74, align 8
  %offset80 = getelementptr %struct.meta_index, ptr %89, i32 %91, i32 1
  %95 = ptrtoint ptr %offset80 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %offset, ptr %offset80, align 4
  %conv81 = trunc i32 %skip to i16
  %skip82 = getelementptr %struct.meta_index, ptr %89, i32 %91, i32 3
  %96 = ptrtoint ptr %skip82 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv81, ptr %skip82, align 2
  %entries = getelementptr %struct.meta_index, ptr %89, i32 %91, i32 2
  %97 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %entries, align 8
  %locked83 = getelementptr %struct.meta_index, ptr %89, i32 %91, i32 4
  %98 = ptrtoint ptr %locked83 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %locked83, align 4
  br label %failed

failed:                                           ; preds = %do.end71, %if.then47, %for.body27.7, %do.end11
  %meta.0 = phi ptr [ null, %do.end11 ], [ null, %if.then47 ], [ %arrayidx74, %do.end71 ], [ null, %for.body27.7 ]
  tail call void @mutex_unlock(ptr noundef %meta_index_mutex) #11
  ret ptr %meta.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_get_fragment(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @squashfs_cache_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/file.c", i32 401, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @squashfs_copy_cache.__UNIQUE_ID_ddebug250, !1, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!6 = !{ptr @squashfs_aops, !7, !"squashfs_aops", i1 false, i1 false}
!7 = !{!"../fs/squashfs/file.c", i32 498, i32 39}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 717, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/squashfs/file.c", i32 459, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @squashfs_readpage.__UNIQUE_ID_ddebug251, !18, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/squashfs/file.c", i32 334, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @read_blocklist.__UNIQUE_ID_ddebug246, !22, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/squashfs/file.c", i32 260, i32 4}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fill_meta_index.__UNIQUE_ID_ddebug243, !26, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/squashfs/file.c", i32 263, i32 4}
!31 = !{ptr @fill_meta_index.__UNIQUE_ID_ddebug244, !30, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/squashfs/file.c", i32 300, i32 3}
!34 = !{ptr @fill_meta_index.__UNIQUE_ID_ddebug245, !33, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/squashfs/file.c", i32 56, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @locate_meta_index.__UNIQUE_ID_ddebug234, !36, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/squashfs/file.c", i32 66, i32 4}
!41 = !{ptr @locate_meta_index.__UNIQUE_ID_ddebug235, !40, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/squashfs/file.c", i32 95, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @empty_meta_index.__UNIQUE_ID_ddebug236, !43, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/squashfs/file.c", i32 107, i32 4}
!48 = !{ptr @empty_meta_index._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @empty_meta_index._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/squashfs/file.c", i32 123, i32 3}
!52 = !{ptr @empty_meta_index.__UNIQUE_ID_ddebug237, !51, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/squashfs/file.c", i32 127, i32 2}
!55 = !{ptr @empty_meta_index.__UNIQUE_ID_ddebug238, !54, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/squashfs/file.c", i32 168, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @read_indexes._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @read_indexes._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/squashfs/file.c", i32 178, i32 4}
!63 = !{ptr @read_indexes._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @read_indexes._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/squashfs/file.c", i32 430, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @squashfs_readpage_fragment._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @squashfs_readpage_fragment._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2153690826}
!81 = !{i64 2152179468}
!82 = !{i64 2152179675}
!83 = !{i64 2153693597}
!84 = !{i64 2151323880}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2150572917, i64 2150573408, i64 2150572954, i64 2150573010, i64 2150573044, i64 2150573068, i64 2150573109, i64 2150573130, i64 2150573158, i64 2150573192}
!87 = !{i64 2150634507, i64 2150634680, i64 2150634695, i64 2150634747, i64 2150634806, i64 2150634830, i64 2150634871, i64 2150634892, i64 2150634920, i64 2150634952}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2150635382, i64 2150635555, i64 2150635570, i64 2150635622, i64 2150635681, i64 2150635705, i64 2150635746, i64 2150635767, i64 2150635795, i64 2150635827}
!90 = !{i64 2148488770, i64 2148488775, i64 2148488788, i64 2148488832, i64 2148488866, i64 2148488887}
!91 = !{i64 2151322809}
!92 = !{i64 2153212439, i64 2153212922, i64 2153212476, i64 2153212532, i64 2153212566, i64 2153212590, i64 2153212631, i64 2153212652, i64 2153212680, i64 2153212714}
!93 = !{i64 2148752648}
!94 = !{i64 2148667357, i64 2148667389, i64 2148667418, i64 2148667452, i64 2148667483, i64 2148667506}
!95 = !{i64 2148752877}
!96 = !{i64 2150625949, i64 2150626440, i64 2150625986, i64 2150626042, i64 2150626076, i64 2150626100, i64 2150626141, i64 2150626162, i64 2150626190, i64 2150626224}
!97 = !{i64 1068852, i64 1068913}
!98 = !{i64 1071584}
!99 = !{i64 1071869}
!100 = !{i64 2152507003}
!101 = !{i64 2152506845}
!102 = !{i64 2152507173}
!103 = !{i64 2150092987}
!104 = !{!"auto-init"}
