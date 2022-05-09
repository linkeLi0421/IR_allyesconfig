; ModuleID = '/llk/IR_all_yes/fs/hfs/bnode.c_pt.bc'
source_filename = "../fs/hfs/bnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.hfs_bnode_desc = type <{ i32, i32, i8, i8, i16, i16 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.78 = type { ptr }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }

@hfs_bnode_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017hfs_btree_del_level\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hfs_bnode_unlink\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/hfs/bnode.c\00", [17 x i8] zeroinitializer }, align 32
@hfs_bnode_unlink._entry_ptr = internal global ptr @hfs_bnode_unlink._entry, section ".printk_index", align 4
@hfs_bnode_findhash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013hfs: request for non-existent node %d in B*Tree\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfs_bnode_findhash\00", [45 x i8] zeroinitializer }, align 32
@hfs_bnode_findhash._entry_ptr = internal global ptr @hfs_bnode_findhash._entry, section ".printk_index", align 4
@hfs_bnode_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012hfs: new node %u already hashed?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hfs_bnode_create\00", [47 x i8] zeroinitializer }, align 32
@hfs_bnode_create._entry_ptr = internal global ptr @hfs_bnode_create._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__hfs_bnode_create._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.8, ptr @.str.2, i32 260, ptr null, ptr null }, align 1
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__hfs_bnode_create\00", [45 x i8] zeroinitializer }, align 32
@__hfs_bnode_create._entry_ptr = internal global ptr @__hfs_bnode_create._entry, section ".printk_index", align 4
@__hfs_bnode_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&node->lock_wq\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 217, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 238, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 430, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 44, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 260, i32 3 }
@___asan_gen_.67 = private constant [18 x i8] c"../fs/hfs/bnode.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 275, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 416, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 717, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__hfs_bnode_create._entry, ptr @__hfs_bnode_create._entry_ptr, ptr @hfs_bnode_create._entry, ptr @hfs_bnode_create._entry_ptr, ptr @hfs_bnode_findhash._entry, ptr @hfs_bnode_findhash._entry_ptr, ptr @hfs_bnode_unlink._entry, ptr @hfs_bnode_unlink._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_bnode_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_bnode_findhash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_bnode_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_read(ptr nocapture noundef readonly %node, ptr nocapture noundef writeonly %buf, i32 noundef %off, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp26 = icmp sgt i32 %len, 0
  br i1 %cmp26, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %off
  %and = and i32 %add, 4095
  %shr = ashr i32 %add, 12
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %off.addr.029 = phi i32 [ 0, %if.end.for.body_crit_edge ], [ %and, %for.body.preheader ]
  %bytes_read.028 = phi i32 [ %add9, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pagenum.027 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ %shr, %for.body.preheader ]
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_bnode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pagenum.027, i32 %5)
  %cmp1.not = icmp ult i32 %pagenum.027, %5
  br i1 %cmp1.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.hfs_bnode, ptr %node, i32 0, i32 13, i32 %pagenum.027
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %sub = sub i32 %len, %bytes_read.028
  %sub3 = sub nuw nsw i32 4096, %off.addr.029
  %8 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %sub3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %9 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %9, 512
  %10 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  %14 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i1.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 213
  %18 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %19, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !40
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %7, i32 noundef %or.i) #8
  %add.ptr = getelementptr i8, ptr %buf, i32 %bytes_read.028
  %add.ptr5 = getelementptr i8, ptr %call.i.i, i32 %off.addr.029
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr5, i32 %8)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  %21 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i1.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %26, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !42
  %27 = tail call i32 @llvm.read_register.i32(metadata !29) #8
  %and.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %inc = add nuw i32 %pagenum.027, 1
  %add9 = add i32 %8, %bytes_read.028
  %cmp = icmp slt i32 %add9, %len
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @hfs_bnode_read_u16(ptr nocapture noundef readonly %node, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !43
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %data, i32 noundef %off, i32 noundef 2)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i16 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @hfs_bnode_read_u8(ptr nocapture noundef readonly %node, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !43
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %data, i32 noundef %off, i32 noundef 1)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_read_key(ptr nocapture noundef readonly %node, ptr nocapture noundef writeonly %key, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attributes, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data.i, align 1, !annotation !43
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i, i32 noundef %off, i32 noundef 1) #8
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  %conv3 = zext i8 %8 to i32
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_key_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %key_len.0.in = phi i32 [ %conv3, %if.then ], [ %10, %if.else ]
  %key_len.0 = add i32 %key_len.0.in, 1
  tail call void @hfs_bnode_read(ptr noundef %node, ptr noundef %key, i32 noundef %off, i32 noundef %key_len.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_write(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %buf, i32 noundef %off, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %off
  %page1 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %2 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shr.i.i = lshr i32 %5, 30
  %6 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %7 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %3) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %3) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %add
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %shr.i.i7 = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i7, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i9
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9:                           ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i8 = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i8, label %is_highmem_idx.exit.i9.if.end.i_crit_edge, label %is_highmem_idx.exit.i9.kunmap.exit_crit_edge

is_highmem_idx.exit.i9.kunmap.exit_crit_edge:     ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9.if.end.i_crit_edge:        ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i9.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %3) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i9.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %call2 = tail call zeroext i1 @set_page_dirty(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_write_u16(ptr nocapture noundef readonly %node, i32 noundef %off, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %data, ptr %v, align 2
  call void @hfs_bnode_write(ptr noundef %node, ptr noundef nonnull %v, i32 noundef %off, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_write_u8(ptr nocapture noundef readonly %node, i32 noundef %off, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %data.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %data, ptr %data.addr, align 1
  call void @hfs_bnode_write(ptr noundef %node, ptr noundef nonnull %data.addr, i32 noundef %off, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_clear(ptr nocapture noundef readonly %node, i32 noundef %off, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %off
  %page1 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %2 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shr.i.i = lshr i32 %5, 30
  %6 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %7 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %3) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %3) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %add
  %8 = call ptr @memset(ptr %add.ptr, i32 0, i32 %len)
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %shr.i.i7 = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i7, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i9
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9:                           ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i8 = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i8, label %is_highmem_idx.exit.i9.if.end.i_crit_edge, label %is_highmem_idx.exit.i9.kunmap.exit_crit_edge

is_highmem_idx.exit.i9.kunmap.exit_crit_edge:     ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i9.if.end.i_crit_edge:        ; preds = %is_highmem_idx.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i9.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %3) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i9.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %call2 = tail call zeroext i1 @set_page_dirty(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_copy(ptr nocapture noundef readonly %dst_node, i32 noundef %dst, ptr nocapture noundef readonly %src_node, i32 noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %src_node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %src
  %page_offset1 = getelementptr inbounds %struct.hfs_bnode, ptr %dst_node, i32 0, i32 12
  %2 = ptrtoint ptr %page_offset1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_offset1, align 4
  %add2 = add i32 %3, %dst
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %src_node, i32 0, i32 13
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page, align 4
  %page3 = getelementptr inbounds %struct.hfs_bnode, ptr %dst_node, i32 0, i32 13
  %6 = ptrtoint ptr %page3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %shr.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i, label %if.end.if.then.i_crit_edge [
    i32 2, label %if.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %7) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %7) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %add2
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %shr.i.i17 = lshr i32 %13, 30
  %14 = zext i32 %shr.i.i17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i17, label %kmap.exit.if.then.i21_crit_edge [
    i32 2, label %kmap.exit.if.else.i23_crit_edge
    i32 3, label %is_highmem_idx.exit.i19
  ]

kmap.exit.if.else.i23_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i23

kmap.exit.if.then.i21_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

is_highmem_idx.exit.i19:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %15 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i.not.i18 = icmp eq i32 %15, 2
  br i1 %cmp2.i.not.i18, label %is_highmem_idx.exit.i19.if.else.i23_crit_edge, label %is_highmem_idx.exit.i19.if.then.i21_crit_edge

is_highmem_idx.exit.i19.if.then.i21_crit_edge:    ; preds = %is_highmem_idx.exit.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i21

is_highmem_idx.exit.i19.if.else.i23_crit_edge:    ; preds = %is_highmem_idx.exit.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i23

if.then.i21:                                      ; preds = %is_highmem_idx.exit.i19.if.then.i21_crit_edge, %kmap.exit.if.then.i21_crit_edge
  %call5.i20 = tail call ptr @page_address(ptr noundef %5) #8
  br label %kmap.exit25

if.else.i23:                                      ; preds = %is_highmem_idx.exit.i19.if.else.i23_crit_edge, %kmap.exit.if.else.i23_crit_edge
  %call6.i22 = tail call ptr @kmap_high(ptr noundef %5) #8
  br label %kmap.exit25

kmap.exit25:                                      ; preds = %if.else.i23, %if.then.i21
  %addr.0.i24 = phi ptr [ %call6.i22, %if.else.i23 ], [ %call5.i20, %if.then.i21 ]
  %add.ptr6 = getelementptr i8, ptr %addr.0.i24, i32 %add
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr6, i32 %len)
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %shr.i.i26 = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i26, label %kmap.exit25.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit25.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i28
  ]

kmap.exit25.if.end.i_crit_edge:                   ; preds = %kmap.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit25.kunmap.exit_crit_edge:                ; preds = %kmap.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i28:                          ; preds = %kmap.exit25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i27 = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i27, label %is_highmem_idx.exit.i28.if.end.i_crit_edge, label %is_highmem_idx.exit.i28.kunmap.exit_crit_edge

is_highmem_idx.exit.i28.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i28.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i28.if.end.i_crit_edge, %kmap.exit25.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %5) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i28.kunmap.exit_crit_edge, %kmap.exit25.kunmap.exit_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %7, align 4
  %shr.i.i29 = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr.i.i29, label %kunmap.exit.kunmap.exit33_crit_edge [
    i32 2, label %kunmap.exit.if.end.i32_crit_edge
    i32 3, label %is_highmem_idx.exit.i31
  ]

kunmap.exit.if.end.i32_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i32

kunmap.exit.kunmap.exit33_crit_edge:              ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit33

is_highmem_idx.exit.i31:                          ; preds = %kunmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i30 = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i30, label %is_highmem_idx.exit.i31.if.end.i32_crit_edge, label %is_highmem_idx.exit.i31.kunmap.exit33_crit_edge

is_highmem_idx.exit.i31.kunmap.exit33_crit_edge:  ; preds = %is_highmem_idx.exit.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit33

is_highmem_idx.exit.i31.if.end.i32_crit_edge:     ; preds = %is_highmem_idx.exit.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i32

if.end.i32:                                       ; preds = %is_highmem_idx.exit.i31.if.end.i32_crit_edge, %kunmap.exit.if.end.i32_crit_edge
  tail call void @kunmap_high(ptr noundef %7) #8
  br label %kunmap.exit33

kunmap.exit33:                                    ; preds = %if.end.i32, %is_highmem_idx.exit.i31.kunmap.exit33_crit_edge, %kunmap.exit.kunmap.exit33_crit_edge
  %call7 = tail call zeroext i1 @set_page_dirty(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit33, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_move(ptr nocapture noundef readonly %node, i32 noundef %dst, i32 noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %src
  %add2 = add i32 %1, %dst
  %page3 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %2 = ptrtoint ptr %page3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page3, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shr.i.i = lshr i32 %5, 30
  %6 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr.i.i, label %if.end.if.then.i_crit_edge [
    i32 2, label %if.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %7 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i.not.i = icmp eq i32 %7, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %3) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %3) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %add2
  %add.ptr4 = getelementptr i8, ptr %addr.0.i, i32 %add
  %8 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr4, i32 %len)
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %shr.i.i15 = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i15, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i17
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i17:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i16 = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i16, label %is_highmem_idx.exit.i17.if.end.i_crit_edge, label %is_highmem_idx.exit.i17.kunmap.exit_crit_edge

is_highmem_idx.exit.i17.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i17.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i17.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %3) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i17.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %call5 = tail call zeroext i1 @set_page_dirty(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_dump(ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  %data.i62 = alloca i8, align 1
  %data.i61 = alloca i8, align 1
  %data.i = alloca i16, align 2
  %desc = alloca %struct.hfs_bnode_desc, align 4
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %desc) #8
  %0 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #8
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %desc, i32 noundef 0, i32 noundef 14)
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node_size, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %off.06568 = add i32 %5, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %data.i, align 2, !annotation !43
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i, i32 noundef %off.06568, i32 noundef 2) #8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not70 = icmp eq i16 %7, 0
  br i1 %tobool.not70, label %entry.do.end45_crit_edge, label %land.lhs.true.lr.ph

entry.do.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

land.lhs.true.lr.ph:                              ; preds = %entry
  %conv = zext i16 %7 to i32
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %conv573.in = phi i16 [ %10, %land.lhs.true.lr.ph ], [ %26, %for.inc.land.lhs.true_crit_edge ]
  %off.06572 = phi i32 [ %off.06568, %land.lhs.true.lr.ph ], [ %off.065, %for.inc.land.lhs.true_crit_edge ]
  %i.06471 = phi i32 [ %conv, %land.lhs.true.lr.ph ], [ %dec, %for.inc.land.lhs.true_crit_edge ]
  %conv573 = zext i16 %conv573.in to i32
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %12, label %land.lhs.true.for.inc_crit_edge [
    i8 0, label %if.then
    i8 -1, label %if.then33
  ]

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attributes, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i61) #8
  %18 = ptrtoint ptr %data.i61 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %data.i61, align 1, !annotation !43
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i61, i32 noundef %conv573, i32 noundef 1) #8
  %19 = ptrtoint ptr %data.i61 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i61, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i61) #8
  %21 = or i8 %20, 1
  %or = zext i8 %21 to i32
  br label %do.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %15, i32 0, i32 13
  %22 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_key_len, align 4
  br label %do.end21

do.end21:                                         ; preds = %if.else, %if.then14
  %tmp.0.in = phi i32 [ %or, %if.then14 ], [ %23, %if.else ]
  %tmp.0 = add nuw nsw i32 %conv573, 1
  %add22 = add i32 %tmp.0, %tmp.0.in
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %cnid, i32 noundef %add22, i32 noundef 4)
  br label %for.inc

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i62) #8
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i62, i32 noundef %conv573, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i62) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %do.end21, %land.lhs.true.for.inc_crit_edge
  %dec = add nsw i32 %i.06471, -1
  %off.065 = add i32 %off.06572, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %data.i, align 2, !annotation !43
  call void @hfs_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i, i32 noundef %off.065, i32 noundef 2) #8
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.do.end45_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.inc.do.end45_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

do.end45:                                         ; preds = %for.inc.do.end45_crit_edge, %entry.do.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %desc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_unlink(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #8
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %prev = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @hfs_bnode_find(ptr noundef %1, i32 noundef %3)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next, align 4
  %next5 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %next5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %next5, align 4
  %7 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %cnid, align 4
  call void @hfs_bnode_write(ptr noundef %call, ptr noundef nonnull %cnid, i32 noundef 0, i32 noundef 4)
  tail call void @hfs_bnode_put(ptr noundef %call)
  br label %if.end11

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp = icmp eq i8 %9, -1
  br i1 %cmp, label %if.then8, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %next9 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 3
  %10 = ptrtoint ptr %next9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next9, align 4
  %leaf_head = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %leaf_head to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %leaf_head, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge, %if.end
  %next12 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 3
  %13 = ptrtoint ptr %next12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.else23, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call16 = tail call ptr @hfs_bnode_find(ptr noundef %1, i32 noundef %14)
  %cmp.i74 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then14.cleanup_crit_edge, label %if.end19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prev, align 4
  %prev21 = getelementptr inbounds %struct.hfs_bnode, ptr %call16, i32 0, i32 1
  %17 = ptrtoint ptr %prev21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %prev21, align 4
  %18 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %cnid, align 4
  call void @hfs_bnode_write(ptr noundef %call16, ptr noundef nonnull %cnid, i32 noundef 4, i32 noundef 4)
  tail call void @hfs_bnode_put(ptr noundef %call16)
  br label %if.end31

if.else23:                                        ; preds = %if.end11
  %type24 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %19 = ptrtoint ptr %type24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp26 = icmp eq i8 %20, -1
  br i1 %cmp26, label %if.then28, label %if.else23.if.end31_crit_edge

if.else23.if.end31_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prev, align 4
  %leaf_tail = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %leaf_tail, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.else23.if.end31_crit_edge, %if.end19
  %24 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool33.not = icmp eq i32 %25, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end31.if.end39_crit_edge

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end31
  %26 = ptrtoint ptr %next12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %next12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool35.not = icmp eq i32 %27, 0
  br i1 %tobool35.not, label %do.end, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %if.end39

if.end39:                                         ; preds = %do.end, %land.lhs.true.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %parent = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 4
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool40.not = icmp eq i32 %29, 0
  br i1 %tobool40.not, label %if.then41, label %if.end39.if.end42_crit_edge

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %root = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %root, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 14
  %31 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %depth, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfs_bnode_find(ptr noundef %tree, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %data.i203 = alloca i8, align 1
  %data.i202 = alloca i16, align 2
  %data.i = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #8
  %node_count.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %num)
  %cmp.not.i = icmp ugt i32 %1, %num
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %num) #11
  br label %if.end23

if.end.i:                                         ; preds = %entry
  %shr.i.i = lshr i32 %num, 16
  %add.i.i = add i32 %shr.i.i, %num
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.012.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not13.i = icmp eq ptr %node.012.i, null
  br i1 %tobool.not13.i, label %if.end.i.if.end23_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %node.014.i = phi ptr [ %node.0.i, %for.inc.i.for.body.i_crit_edge ], [ %node.012.i, %if.end.i.for.body.i_crit_edge ]
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 2
  %3 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %num)
  %cmp2.i = icmp eq i32 %4, %num
  br i1 %cmp2.i, label %hfs_bnode_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 8
  %5 = ptrtoint ptr %next_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %next_hash.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

hfs_bnode_get.exit:                               ; preds = %for.body.i
  %refcnt.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !44
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 339) #8
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %hfs_bnode_get.exit.do.end17_crit_edge, label %if.end

hfs_bnode_get.exit.do.end17_crit_edge:            ; preds = %hfs_bnode_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.end:                                           ; preds = %hfs_bnode_get.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %lock_wq = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 10
  %call9210 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not211 = icmp eq i32 %13, 0
  br i1 %tobool12.not211, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #8
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %lock_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end17

do.end17:                                         ; preds = %for.end, %hfs_bnode_get.exit.do.end17_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %and1.i189 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i189)
  %tobool20.not = icmp eq i32 %and1.i189, 0
  br i1 %tobool20.not, label %do.end17.cleanup120_crit_edge, label %do.end17.node_error_crit_edge

do.end17.node_error_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

do.end17.cleanup120_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup120

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %if.end.i.if.end23_crit_edge, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %call25 = tail call fastcc ptr @__hfs_bnode_create(ptr noundef %tree, i32 noundef %num)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.cleanup120_crit_edge, label %if.end29

if.end23.cleanup120_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup120

if.end29:                                         ; preds = %if.end23
  %flags30 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 9
  %19 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags30, align 4
  %and1.i190 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i190)
  %tobool32.not = icmp eq i32 %and1.i190, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.node_error_crit_edge

if.end29.node_error_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

if.end34:                                         ; preds = %if.end29
  %21 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags30, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool37.not = icmp eq i32 %23, 0
  br i1 %tobool37.not, label %if.end34.cleanup120_crit_edge, label %if.end39

if.end34.cleanup120_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup120

if.end39:                                         ; preds = %if.end34
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 13
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shr.i.i195 = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shr.i.i195, label %if.end39.if.then.i196_crit_edge [
    i32 2, label %if.end39.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end39.if.else.i_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end39.if.then.i196_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i196

is_highmem_idx.exit.i:                            ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i196_crit_edge

is_highmem_idx.exit.i.if.then.i196_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i196

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i196:                                     ; preds = %is_highmem_idx.exit.i.if.then.i196_crit_edge, %if.end39.if.then.i196_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %25) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end39.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %25) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i196
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i196 ]
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 12
  %30 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page_offset, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %31
  %prev = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 1
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %prev, align 1
  %prev41 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 1
  %34 = ptrtoint ptr %prev41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %prev41, align 4
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %add.ptr, align 1
  %next42 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 3
  %37 = ptrtoint ptr %next42 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %next42, align 4
  %num_recs = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 4
  %38 = ptrtoint ptr %num_recs to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %num_recs, align 1
  %num_recs43 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 5
  %40 = ptrtoint ptr %num_recs43 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %num_recs43, align 4
  %type = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 2
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %type, align 1
  %type44 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 6
  %43 = ptrtoint ptr %type44 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %type44, align 2
  %height = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 3
  %44 = ptrtoint ptr %height to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %height, align 1
  %height45 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 7
  %46 = ptrtoint ptr %height45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %height45, align 1
  %47 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %shr.i.i198 = lshr i32 %50, 30
  %51 = zext i32 %shr.i.i198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i198, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i201_crit_edge
    i32 3, label %is_highmem_idx.exit.i200
  ]

kmap.exit.if.end.i201_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i201

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i200:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %52 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp2.i.not.i199 = icmp eq i32 %52, 2
  br i1 %cmp2.i.not.i199, label %is_highmem_idx.exit.i200.if.end.i201_crit_edge, label %is_highmem_idx.exit.i200.kunmap.exit_crit_edge

is_highmem_idx.exit.i200.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i200.if.end.i201_crit_edge:   ; preds = %is_highmem_idx.exit.i200
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i201

if.end.i201:                                      ; preds = %is_highmem_idx.exit.i200.if.end.i201_crit_edge, %kmap.exit.if.end.i201_crit_edge
  tail call void @kunmap_high(ptr noundef %48) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i201, %is_highmem_idx.exit.i200.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %53 = ptrtoint ptr %type44 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type44, align 2
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %54, label %kunmap.exit.node_error_crit_edge [
    i8 1, label %kunmap.exit.sw.bb_crit_edge
    i8 2, label %kunmap.exit.sw.bb_crit_edge222
    i8 -1, label %sw.bb54
    i8 0, label %sw.bb61
  ]

kunmap.exit.sw.bb_crit_edge222:                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

kunmap.exit.sw.bb_crit_edge:                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

kunmap.exit.node_error_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.bb:                                            ; preds = %kunmap.exit.sw.bb_crit_edge, %kunmap.exit.sw.bb_crit_edge222
  %56 = ptrtoint ptr %height45 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %height45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp.not = icmp eq i8 %57, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.node_error_crit_edge

sw.bb.node_error_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb54:                                          ; preds = %kunmap.exit
  %58 = ptrtoint ptr %height45 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %height45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp57.not = icmp eq i8 %59, 1
  br i1 %cmp57.not, label %sw.bb54.sw.epilog_crit_edge, label %sw.bb54.node_error_crit_edge

sw.bb54.node_error_crit_edge:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb61:                                          ; preds = %kunmap.exit
  %60 = ptrtoint ptr %height45 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %height45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp64 = icmp ult i8 %61, 2
  br i1 %cmp64, label %sw.bb61.node_error_crit_edge, label %lor.lhs.false

sw.bb61.node_error_crit_edge:                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

lor.lhs.false:                                    ; preds = %sw.bb61
  %conv63 = zext i8 %61 to i32
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 14
  %62 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv63)
  %cmp68 = icmp ult i32 %63, %conv63
  br i1 %cmp68, label %lor.lhs.false.node_error_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.node_error_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.epilog:                                        ; preds = %lor.lhs.false.sw.epilog_crit_edge, %sw.bb54.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 11
  %64 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %node_size, align 4
  %sub = add i32 %65, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %data.i, align 2, !annotation !43
  call void @hfs_bnode_read(ptr noundef nonnull %call25, ptr noundef nonnull %data.i, i32 noundef %sub, i32 noundef 2) #8
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %68)
  %cmp74.not = icmp eq i16 %68, 14
  br i1 %cmp74.not, label %for.cond78.preheader, label %sw.epilog.node_error_crit_edge

sw.epilog.node_error_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

for.cond78.preheader:                             ; preds = %sw.epilog
  %69 = ptrtoint ptr %num_recs43 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_recs43, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp81.not213 = icmp eq i16 %70, 0
  br i1 %cmp81.not213, label %for.cond78.preheader.for.end113_crit_edge, label %for.cond78.preheader.for.body_crit_edge

for.cond78.preheader.for.body_crit_edge:          ; preds = %for.cond78.preheader
  br label %for.body

for.cond78.preheader.for.end113_crit_edge:        ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end113

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond78.preheader.for.body_crit_edge
  %off.0216 = phi i32 [ %conv85, %for.inc.for.body_crit_edge ], [ 14, %for.cond78.preheader.for.body_crit_edge ]
  %rec_off.0215 = phi i32 [ %sub83, %for.inc.for.body_crit_edge ], [ %sub, %for.cond78.preheader.for.body_crit_edge ]
  %i.0214 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond78.preheader.for.body_crit_edge ]
  %sub83 = add i32 %rec_off.0215, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i202) #8
  %71 = ptrtoint ptr %data.i202 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -1, ptr %data.i202, align 2, !annotation !43
  call void @hfs_bnode_read(ptr noundef %call25, ptr noundef nonnull %data.i202, i32 noundef %sub83, i32 noundef 2) #8
  %72 = ptrtoint ptr %data.i202 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %data.i202, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i202) #8
  %conv85 = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0216, i32 %conv85)
  %cmp86.not = icmp ult i32 %off.0216, %conv85
  br i1 %cmp86.not, label %lor.lhs.false88, label %for.body.node_error_crit_edge

for.body.node_error_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

lor.lhs.false88:                                  ; preds = %for.body
  %74 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %node_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %conv85)
  %cmp90 = icmp uge i32 %75, %conv85
  %and = and i32 %conv85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool93.not, %cmp90
  br i1 %or.cond, label %if.end95, label %lor.lhs.false88.node_error_crit_edge

lor.lhs.false88.node_error_crit_edge:             ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

if.end95:                                         ; preds = %lor.lhs.false88
  %76 = ptrtoint ptr %type44 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %type44, align 2
  %78 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %77, label %if.end95.for.inc_crit_edge [
    i8 0, label %if.end95.if.end106_crit_edge
    i8 -1, label %if.end95.if.end106_crit_edge223
  ]

if.end95.if.end106_crit_edge223:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end95.for.inc_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end106:                                        ; preds = %if.end95.if.end106_crit_edge, %if.end95.if.end106_crit_edge223
  %sub96 = sub nsw i32 %conv85, %off.0216
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i203) #8
  %79 = ptrtoint ptr %data.i203 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %data.i203, align 1, !annotation !43
  call void @hfs_bnode_read(ptr noundef %call25, ptr noundef nonnull %data.i203, i32 noundef %off.0216, i32 noundef 1) #8
  %80 = ptrtoint ptr %data.i203 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data.i203, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i203) #8
  %conv108 = zext i8 %81 to i32
  %add = add nuw nsw i32 %conv108, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub96)
  %cmp109.not = icmp slt i32 %add, %sub96
  br i1 %cmp109.not, label %if.end106.for.inc_crit_edge, label %if.end106.node_error_crit_edge

if.end106.node_error_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

if.end106.for.inc_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end106.for.inc_crit_edge, %if.end95.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0214, 1
  %82 = ptrtoint ptr %num_recs43 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %num_recs43, align 4
  %conv80 = zext i16 %83 to i32
  %cmp81.not.not = icmp ult i32 %i.0214, %conv80
  br i1 %cmp81.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end113_crit_edge

for.inc.for.end113_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end113

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end113:                                       ; preds = %for.inc.for.end113_crit_edge, %for.cond78.preheader.for.end113_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags30) #8
  %lock_wq115 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %lock_wq115, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup120

node_error:                                       ; preds = %if.end106.node_error_crit_edge, %lor.lhs.false88.node_error_crit_edge, %for.body.node_error_crit_edge, %sw.epilog.node_error_crit_edge, %lor.lhs.false.node_error_crit_edge, %sw.bb61.node_error_crit_edge, %sw.bb54.node_error_crit_edge, %sw.bb.node_error_crit_edge, %kunmap.exit.node_error_crit_edge, %if.end29.node_error_crit_edge, %do.end17.node_error_crit_edge
  %node.0 = phi ptr [ %node.014.i, %do.end17.node_error_crit_edge ], [ %call25, %if.end29.node_error_crit_edge ], [ %call25, %kunmap.exit.node_error_crit_edge ], [ %call25, %sw.bb61.node_error_crit_edge ], [ %call25, %lor.lhs.false.node_error_crit_edge ], [ %call25, %sw.epilog.node_error_crit_edge ], [ %call25, %sw.bb54.node_error_crit_edge ], [ %call25, %sw.bb.node_error_crit_edge ], [ %call25, %lor.lhs.false88.node_error_crit_edge ], [ %call25, %for.body.node_error_crit_edge ], [ %call25, %if.end106.node_error_crit_edge ]
  %flags116 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 9
  call void @_set_bit(i32 noundef 0, ptr noundef %flags116) #8
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags116) #8
  %lock_wq118 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 10
  call void @__wake_up(ptr noundef %lock_wq118, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @hfs_bnode_put(ptr noundef %node.0)
  br label %cleanup120

cleanup120:                                       ; preds = %node_error, %for.end113, %if.end34.cleanup120_crit_edge, %if.end23.cleanup120_crit_edge, %do.end17.cleanup120_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %node_error ], [ %call25, %for.end113 ], [ %node.014.i, %do.end17.cleanup120_crit_edge ], [ %call25, %if.end34.cleanup120_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end23.cleanup120_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_put(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %if.then

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.body8, label %do.end15, !prof !45

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/bnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 478, 0\0A.popsection", ""() #8, !srcloc !46
  unreachable

do.end15:                                         ; preds = %if.then
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 17
  %call17 = tail call i32 @_atomic_dec_and_lock(ptr noundef %refcnt, ptr noundef %hash_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end15.if.end33_crit_edge, label %for.cond.preheader

do.end15.if.end33_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.cond.preheader:                               ; preds = %do.end15
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_bnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp49.not = icmp eq i32 %5, 0
  br i1 %cmp49.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hfs_bnode, ptr %node, i32 0, i32 13, i32 %i.050
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_page_accessed(ptr noundef nonnull %7) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.050, 1
  %8 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pages_per_bnode, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %for.end
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 4
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 2
  %15 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this.i, align 4
  %shr.i.i = lshr i32 %16, 16
  %add.i.i = add i32 %shr.i.i, %16
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %14, i32 0, i32 18, i32 %and.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then28
  %p.0.i = phi ptr [ %arrayidx.i, %if.then28 ], [ %next_hash.i, %for.cond.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.0.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %cmp.not.i = icmp eq ptr %18, %node
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %18, i32 0, i32 8
  br i1 %or.cond.i, label %do.body1.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body1.i:                                       ; preds = %for.cond.i
  br i1 %tobool.not.i, label %do.body6.i, label %hfs_bnode_unhash.exit, !prof !45

do.body6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/bnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

hfs_bnode_unhash.exit:                            ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  %next_hash14.i = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 8
  %19 = ptrtoint ptr %next_hash14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_hash14.i, align 4
  %21 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %p.0.i, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node, align 4
  %node_hash_cnt.i = getelementptr inbounds %struct.hfs_btree, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %node_hash_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_hash_cnt.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %node_hash_cnt.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  tail call void @hfs_bmap_free(ptr noundef nonnull %node) #8
  tail call void @hfs_bnode_free(ptr noundef nonnull %node)
  br label %if.end33

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %hfs_bnode_unhash.exit, %do.end15.if.end33_crit_edge, %entry.if.end33_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfs_bnode_findhash(ptr nocapture noundef readonly %tree, i32 noundef %cnid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cnid)
  %cmp.not = icmp ugt i32 %1, %cnid
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cnid) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i32 %cnid, 16
  %add.i = add i32 %shr.i, %cnid
  %shr1.i = lshr i32 %add.i, 8
  %add2.i = add i32 %shr1.i, %add.i
  %and.i = and i32 %add2.i, 255
  %arrayidx = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.012 = load ptr, ptr %arrayidx, align 4
  %tobool.not13 = icmp eq ptr %node.012, null
  br i1 %tobool.not13, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.014 = phi ptr [ %node.0, %for.inc.for.body_crit_edge ], [ %node.012, %if.end.for.body_crit_edge ]
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %node.014, i32 0, i32 2
  %3 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cnid)
  %cmp2 = icmp eq i32 %4, %cnid
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next_hash = getelementptr inbounds %struct.hfs_bnode, ptr %node.014, i32 0, i32 8
  %5 = ptrtoint ptr %next_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0 = load ptr, ptr %next_hash, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ %node.014, %for.body.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_unhash(ptr noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %this, align 4
  %shr.i = lshr i32 %3, 16
  %add.i = add i32 %shr.i, %3
  %shr1.i = lshr i32 %add.i, 8
  %add2.i = add i32 %shr1.i, %add.i
  %and.i = and i32 %add2.i, 255
  %arrayidx = getelementptr %struct.hfs_btree, ptr %1, i32 0, i32 18, i32 %and.i
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %p.0 = phi ptr [ %arrayidx, %entry ], [ %next_hash, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.0, align 4
  %tobool.not = icmp eq ptr %5, null
  %cmp.not = icmp eq ptr %5, %node
  %or.cond = or i1 %tobool.not, %cmp.not
  %next_hash = getelementptr inbounds %struct.hfs_bnode, ptr %5, i32 0, i32 8
  br i1 %or.cond, label %do.body1, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body1:                                         ; preds = %for.cond
  br i1 %tobool.not, label %do.body6, label %do.end13, !prof !45

do.body6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/bnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 321, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.end13:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %next_hash14 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 8
  %6 = ptrtoint ptr %next_hash14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_hash14, align 4
  %8 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %p.0, align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %node_hash_cnt = getelementptr inbounds %struct.hfs_btree, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %node_hash_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %node_hash_cnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %node_hash_cnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_get(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__hfs_bnode_create(ptr noundef %tree, i32 noundef %cnid) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cnid)
  %cmp.not = icmp ugt i32 %1, %cnid
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cnid) #11
  br label %cleanup65

if.end:                                           ; preds = %entry
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 16
  %2 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pages_per_bnode, align 4
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 92
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup65_crit_edge, label %if.end3

if.end.cleanup65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tree, ptr %call9.i.i, align 128
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cnid, ptr %this, align 8
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcnt, align 4
  %lock_wq = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %lock_wq, ptr noundef nonnull @.str.9, ptr noundef nonnull @__hfs_bnode_create.__key) #8
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #8
  %7 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cnid)
  %cmp.not.i = icmp ugt i32 %8, %cnid
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %cnid) #11
  %.pre = lshr i32 %cnid, 16
  %.pre162 = add i32 %.pre, %cnid
  %.pre163 = lshr i32 %.pre162, 8
  %.pre164 = add i32 %.pre163, %.pre162
  %.pre165 = and i32 %.pre164, 255
  br label %if.then13

if.end.i:                                         ; preds = %if.end3
  %shr.i.i120 = lshr i32 %cnid, 16
  %add.i.i = add i32 %shr.i.i120, %cnid
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i121 = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.i121
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.012.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not13.i = icmp eq ptr %node.012.i, null
  br i1 %tobool.not13.i, label %if.end.i.if.then13_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %node.014.i = phi ptr [ %node.0.i, %for.inc.i.for.body.i_crit_edge ], [ %node.012.i, %if.end.i.for.body.i_crit_edge ]
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 2
  %10 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cnid)
  %cmp2.i = icmp eq i32 %11, %cnid
  br i1 %cmp2.i, label %if.else, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 8
  %12 = ptrtoint ptr %next_hash.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i = load ptr, ptr %next_hash.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.then13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then13_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %for.inc.i.if.then13_crit_edge, %if.end.i.if.then13_crit_edge, %do.end.i
  %and.i.pre-phi = phi i32 [ %.pre165, %do.end.i ], [ %and.i.i121, %if.end.i.if.then13_crit_edge ], [ %and.i.i121, %for.inc.i.if.then13_crit_edge ]
  %arrayidx = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.pre-phi
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %next_hash = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %next_hash to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %next_hash, align 8
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %node_hash_cnt = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 19
  %16 = ptrtoint ptr %node_hash_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_hash_cnt, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %node_hash_cnt, align 4
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_mapping, align 8
  %conv = zext i32 %cnid to i64
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 11
  %22 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_size, align 4
  %conv43 = zext i32 %23 to i64
  %mul44 = mul nuw i64 %conv43, %conv
  %24 = trunc i64 %mul44 to i32
  %conv46 = and i32 %24, 4095
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv46, ptr %page_offset, align 8
  %26 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pages_per_bnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp49148.not = icmp eq i32 %27, 0
  br i1 %cmp49148.not, label %if.then13.cleanup65_crit_edge, label %for.body.preheader

if.then13.cleanup65_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

for.body.preheader:                               ; preds = %if.then13
  %28 = lshr i64 %mul44, 12
  %conv45 = trunc i64 %28 to i32
  br label %for.body

if.else:                                          ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 286) #8
  %flags25 = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 9
  %29 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags25, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool27.not = icmp eq i32 %31, 0
  br i1 %tobool27.not, label %if.else.cleanup65_crit_edge, label %if.end29

if.else.cleanup65_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end29:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %32 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %lock_wq30 = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 10
  %call31146 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq30, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %33 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags25, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool34.not147 = icmp eq i32 %35, 0
  br i1 %tobool34.not147, label %if.end29.for.end_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  br label %cleanup

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  call void @schedule() #8
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq30, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %36 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags25, align 4
  %38 = and i32 %37, 2
  %tobool34.not = icmp eq i32 %38, 0
  br i1 %tobool34.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end29.for.end_crit_edge
  call void @finish_wait(ptr noundef %lock_wq30, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup65

for.body:                                         ; preds = %if.end59.for.body_crit_edge, %for.body.preheader
  %i.0150 = phi i32 [ %inc62, %if.end59.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %block.0149 = phi i32 [ %inc51, %if.end59.for.body_crit_edge ], [ %conv45, %for.body.preheader ]
  %inc51 = add i32 %block.0149, 1
  %call.i123 = tail call ptr @read_cache_page(ptr noundef %21, i32 noundef %block.0149, ptr noundef null, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call.i123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.fail_crit_edge, label %if.end55

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end55:                                         ; preds = %for.body
  %39 = getelementptr inbounds %struct.page, ptr %call.i123, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !48

if.then.i.i:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %41, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call.i123 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %42, %if.end.i.i ]
  %43 = inttoptr i32 %retval.0.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i = icmp eq i32 %45, -1
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %39, align 4
  %and.i16.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !45

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !48

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %47, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call.i123 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %48, %if.end.i20.i ]
  %49 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.10) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !49
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !48

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %47, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %call.i123 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %50, %if.end.i27.i ]
  %51 = inttoptr i32 %retval.0.i28.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool57.not = icmp eq i32 %54, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %PageError.exit
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %39, align 4
  %and.i.i124 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i128, label %if.then.i.i127, !prof !48

if.then.i.i127:                                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i126 = add i32 %56, -1
  br label %_compound_head.exit.i130

if.end.i.i128:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %call.i123 to i32
  br label %_compound_head.exit.i130

_compound_head.exit.i130:                         ; preds = %if.end.i.i128, %if.then.i.i127
  %retval.0.i.i129 = phi i32 [ %sub.i.i126, %if.then.i.i127 ], [ %57, %if.end.i.i128 ]
  %58 = inttoptr i32 %retval.0.i.i129 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %59 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !45

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.11) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !50
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i130
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__hfs_bnode_create, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !54

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %58, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.fail_crit_edge

folio_put_testzero.exit.i.i.fail_crit_edge:       ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %58) #8
  br label %fail

if.end59:                                         ; preds = %PageError.exit
  %arrayidx61 = getelementptr %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 13, i32 %i.0150
  %62 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i123, ptr %arrayidx61, align 4
  %inc62 = add nuw i32 %i.0150, 1
  %63 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pages_per_bnode, align 4
  %cmp49 = icmp ult i32 %inc62, %64
  br i1 %cmp49, label %if.end59.for.body_crit_edge, label %if.end59.cleanup65_crit_edge

if.end59.cleanup65_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup65

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

fail:                                             ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.fail_crit_edge, %for.body.fail_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  br label %cleanup65

cleanup65:                                        ; preds = %fail, %if.end59.cleanup65_crit_edge, %for.end, %if.else.cleanup65_crit_edge, %if.then13.cleanup65_crit_edge, %if.end.cleanup65_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call9.i.i, %fail ], [ null, %if.end.cleanup65_crit_edge ], [ %node.014.i, %if.else.cleanup65_crit_edge ], [ %node.014.i, %for.end ], [ %call9.i.i, %if.then13.cleanup65_crit_edge ], [ %call9.i.i, %if.end59.cleanup65_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bnode_free(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %pages_per_bnode9 = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pages_per_bnode9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pages_per_bnode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hfs_bnode, ptr %node, i32 0, i32 13, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !48

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !45

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.11) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !50
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@hfs_bnode_free, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !54

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %10) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node, align 4
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pages_per_bnode, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %node) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfs_bnode_create(ptr noundef %tree, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #8
  %node_count.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %num)
  %cmp.not.i = icmp ugt i32 %1, %num
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %num) #11
  br label %if.end23

if.end.i:                                         ; preds = %entry
  %shr.i.i = lshr i32 %num, 16
  %add.i.i = add i32 %shr.i.i, %num
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.012.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not13.i = icmp eq ptr %node.012.i, null
  br i1 %tobool.not13.i, label %if.end.i.if.end23_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %node.014.i = phi ptr [ %node.0.i, %for.inc.i.for.body.i_crit_edge ], [ %node.012.i, %if.end.i.for.body.i_crit_edge ]
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 2
  %3 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %num)
  %cmp2.i = icmp eq i32 %4, %num
  br i1 %cmp2.i, label %do.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 8
  %5 = ptrtoint ptr %next_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %next_hash.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %num) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %if.end.i.if.end23_crit_edge, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %call24 = tail call fastcc ptr @__hfs_bnode_create(ptr noundef %tree, i32 noundef %num)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool30.not = icmp eq i32 %and1.i, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hfs_bnode_put(ptr noundef nonnull %call24)
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 13
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %shr.i.i68 = lshr i32 %11, 30
  %12 = zext i32 %shr.i.i68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i68, label %if.end33.if.then.i_crit_edge [
    i32 2, label %if.end33.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end33.if.else.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end33.if.then.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not.i = icmp eq i32 %13, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end33.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %9) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end33.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %9) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 12
  %14 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %page_offset, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %15
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 11
  %16 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_size, align 4
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 4096)
  %19 = call ptr @memset(ptr %add.ptr, i32 0, i32 %18)
  %20 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %page, align 4
  %call36 = tail call zeroext i1 @set_page_dirty(ptr noundef %21) #8
  %22 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %shr.i.i70 = lshr i32 %25, 30
  %26 = zext i32 %shr.i.i70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i70, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i73_crit_edge
    i32 3, label %is_highmem_idx.exit.i72
  ]

kmap.exit.if.end.i73_crit_edge:                   ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i73

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i72:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %27 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp2.i.not.i71 = icmp eq i32 %27, 2
  br i1 %cmp2.i.not.i71, label %is_highmem_idx.exit.i72.if.end.i73_crit_edge, label %is_highmem_idx.exit.i72.kunmap.exit_crit_edge

is_highmem_idx.exit.i72.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i72.if.end.i73_crit_edge:     ; preds = %is_highmem_idx.exit.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i73

if.end.i73:                                       ; preds = %is_highmem_idx.exit.i72.if.end.i73_crit_edge, %kmap.exit.if.end.i73_crit_edge
  tail call void @kunmap_high(ptr noundef %23) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i73, %is_highmem_idx.exit.i72.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 16
  %28 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pages_per_bnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp3792 = icmp ugt i32 %29, 1
  br i1 %cmp3792, label %kunmap.exit.for.body_crit_edge, label %kunmap.exit.for.end_crit_edge

kunmap.exit.for.end_crit_edge:                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

kunmap.exit.for.body_crit_edge:                   ; preds = %kunmap.exit
  br label %for.body

for.body:                                         ; preds = %kunmap.exit88.for.body_crit_edge, %kunmap.exit.for.body_crit_edge
  %pagep.094 = phi ptr [ %incdec.ptr, %kunmap.exit88.for.body_crit_edge ], [ %page, %kunmap.exit.for.body_crit_edge ]
  %i.093 = phi i32 [ %inc, %kunmap.exit88.for.body_crit_edge ], [ 1, %kunmap.exit.for.body_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %pagep.094, i32 1
  %30 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %shr.i.i74 = lshr i32 %33, 30
  %34 = zext i32 %shr.i.i74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %shr.i.i74, label %for.body.if.then.i78_crit_edge [
    i32 2, label %for.body.if.else.i80_crit_edge
    i32 3, label %is_highmem_idx.exit.i76
  ]

for.body.if.else.i80_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i80

for.body.if.then.i78_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

is_highmem_idx.exit.i76:                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %35 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2.i.not.i75 = icmp eq i32 %35, 2
  br i1 %cmp2.i.not.i75, label %is_highmem_idx.exit.i76.if.else.i80_crit_edge, label %is_highmem_idx.exit.i76.if.then.i78_crit_edge

is_highmem_idx.exit.i76.if.then.i78_crit_edge:    ; preds = %is_highmem_idx.exit.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

is_highmem_idx.exit.i76.if.else.i80_crit_edge:    ; preds = %is_highmem_idx.exit.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i80

if.then.i78:                                      ; preds = %is_highmem_idx.exit.i76.if.then.i78_crit_edge, %for.body.if.then.i78_crit_edge
  %call5.i77 = tail call ptr @page_address(ptr noundef %31) #8
  br label %kmap.exit83

if.else.i80:                                      ; preds = %is_highmem_idx.exit.i76.if.else.i80_crit_edge, %for.body.if.else.i80_crit_edge
  %call6.i79 = tail call ptr @kmap_high(ptr noundef %31) #8
  br label %kmap.exit83

kmap.exit83:                                      ; preds = %if.else.i80, %if.then.i78
  %addr.0.i81 = phi ptr [ %call6.i79, %if.else.i80 ], [ %call5.i77, %if.then.i78 ]
  %36 = call ptr @memset(ptr %addr.0.i81, i32 0, i32 4096)
  %37 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %incdec.ptr, align 4
  %call39 = tail call zeroext i1 @set_page_dirty(ptr noundef %38) #8
  %39 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %shr.i.i84 = lshr i32 %42, 30
  %43 = zext i32 %shr.i.i84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i.i84, label %kmap.exit83.kunmap.exit88_crit_edge [
    i32 2, label %kmap.exit83.if.end.i87_crit_edge
    i32 3, label %is_highmem_idx.exit.i86
  ]

kmap.exit83.if.end.i87_crit_edge:                 ; preds = %kmap.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i87

kmap.exit83.kunmap.exit88_crit_edge:              ; preds = %kmap.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit88

is_highmem_idx.exit.i86:                          ; preds = %kmap.exit83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %44 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i.not.i85 = icmp eq i32 %44, 2
  br i1 %cmp2.i.not.i85, label %is_highmem_idx.exit.i86.if.end.i87_crit_edge, label %is_highmem_idx.exit.i86.kunmap.exit88_crit_edge

is_highmem_idx.exit.i86.kunmap.exit88_crit_edge:  ; preds = %is_highmem_idx.exit.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit88

is_highmem_idx.exit.i86.if.end.i87_crit_edge:     ; preds = %is_highmem_idx.exit.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i87

if.end.i87:                                       ; preds = %is_highmem_idx.exit.i86.if.end.i87_crit_edge, %kmap.exit83.if.end.i87_crit_edge
  tail call void @kunmap_high(ptr noundef %40) #8
  br label %kunmap.exit88

kunmap.exit88:                                    ; preds = %if.end.i87, %is_highmem_idx.exit.i86.kunmap.exit88_crit_edge, %kmap.exit83.kunmap.exit88_crit_edge
  %inc = add nuw i32 %i.093, 1
  %45 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pages_per_bnode, align 4
  %cmp37 = icmp ult i32 %inc, %46
  br i1 %cmp37, label %kunmap.exit88.for.body_crit_edge, label %kunmap.exit88.for.end_crit_edge

kunmap.exit88.for.end_crit_edge:                  ; preds = %kunmap.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

kunmap.exit88.for.body_crit_edge:                 ; preds = %kunmap.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %kunmap.exit88.for.end_crit_edge, %kunmap.exit.for.end_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  %lock_wq = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %lock_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then31, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %node.014.i, %do.end ], [ inttoptr (i32 -5 to ptr), %if.then31 ], [ %call24, %for.end ], [ inttoptr (i32 -12 to ptr), %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !24, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfs/bnode.c", i32 217, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfs_bnode_unlink._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfs_bnode_unlink._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfs/bnode.c", i32 238, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hfs_bnode_findhash._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @hfs_bnode_findhash._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/hfs/bnode.c", i32 430, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hfs_bnode_create._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @hfs_bnode_create._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/hfs/bnode.c", i32 260, i32 3}
!20 = !{ptr @__hfs_bnode_create._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @__hfs_bnode_create._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__hfs_bnode_create.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/hfs/bnode.c", i32 275, i32 2}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/mm.h", i32 717, i32 2}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2153683891}
!40 = !{i64 2152777006}
!41 = !{i64 2152777213}
!42 = !{i64 2153686662}
!43 = !{!"auto-init"}
!44 = !{i64 2148713959, i64 2148713985, i64 2148714014, i64 2148714048, i64 2148714079, i64 2148714102}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2154908939, i64 2154909418, i64 2154908976, i64 2154909032, i64 2154909066, i64 2154909090, i64 2154909131, i64 2154909152, i64 2154909180, i64 2154909214}
!47 = !{i64 2154897280, i64 2154897759, i64 2154897317, i64 2154897373, i64 2154897407, i64 2154897431, i64 2154897472, i64 2154897493, i64 2154897521, i64 2154897555}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2150326050, i64 2150326541, i64 2150326087, i64 2150326143, i64 2150326177, i64 2150326201, i64 2150326242, i64 2150326263, i64 2150326291, i64 2150326325}
!50 = !{i64 2153159955, i64 2153160438, i64 2153159992, i64 2153160048, i64 2153160082, i64 2153160106, i64 2153160147, i64 2153160168, i64 2153160196, i64 2153160230}
!51 = !{i64 2148802435}
!52 = !{i64 2148717144, i64 2148717176, i64 2148717205, i64 2148717239, i64 2148717270, i64 2148717293}
!53 = !{i64 2148802664}
!54 = !{i64 2148314636, i64 2148314641, i64 2148314654, i64 2148314698, i64 2148314732, i64 2148314753}
