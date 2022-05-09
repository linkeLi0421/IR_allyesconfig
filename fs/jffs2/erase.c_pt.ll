; ModuleID = '/llk/IR_all_yes/fs/jffs2/erase.c_pt.bc'
source_filename = "../fs/jffs2/erase.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.jffs2_unknown_node = type { %struct.jint16_t, %struct.jint16_t, %struct.jint32_t, %struct.jint32_t }
%struct.jint16_t = type { i16 }
%struct.jint32_t = type { i32 }
%struct.jffs2_sb_info = type { ptr, i32, i32, i32, ptr, %struct.completion, %struct.completion, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, i32, ptr, %struct.spinlock, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, %struct.rw_semaphore, %struct.delayed_work, ptr, i32, ptr, %struct.jffs2_mount_opts, i32, i32, [57 x %struct.list_head], %struct.list_head, %struct.list_head, ptr, ptr, %struct.rw_semaphore, i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.jffs2_mount_opts = type { i8, i32, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.jffs2_eraseblock = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.jffs2_raw_node_ref = type { ptr, i32 }
%struct.jffs2_inode_cache = type { ptr, ptr, i8, i8, i16, i32, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.33 }
%struct.llist_node = type { ptr }
%union.anon.33 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/jffs2/erase.c\00", [47 x i8] zeroinitializer }, align 32
@jffs2_erase_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\014jffs2: kmalloc for struct erase_info in jffs2_erase_block failed. Refiling block for later\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jffs2_erase_block\00", [46 x i8] zeroinitializer }, align 32
@jffs2_erase_block._entry_ptr = internal global ptr @jffs2_erase_block._entry, section ".printk_index", align 4
@jffs2_erase_block._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014jffs2: Erase at 0x%08x failed immediately: -EROFS. Is the sector locked?\0A\00", [52 x i8] zeroinitializer }, align 32
@jffs2_erase_block._entry_ptr.5 = internal global ptr @jffs2_erase_block._entry.3, section ".printk_index", align 4
@jffs2_erase_block._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014jffs2: Erase at 0x%08x failed immediately: errno %d\0A\00", [41 x i8] zeroinitializer }, align 32
@jffs2_erase_block._entry_ptr.8 = internal global ptr @jffs2_erase_block._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jffs2_remove_node_refs_from_ino_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\014jffs2: warning: (%d) %s: inode_cache/xattr_datum/xattr_ref not found in remove_node_refs()!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"jffs2_remove_node_refs_from_ino_list\00", [59 x i8] zeroinitializer }, align 32
@jffs2_remove_node_refs_from_ino_list._entry_ptr = internal global ptr @jffs2_remove_node_refs_from_ino_list._entry, section ".printk_index", align 4
@jffs2_mark_erased_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014jffs2: Write clean marker to block at 0x%08x failed: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jffs2_mark_erased_block\00", [40 x i8] zeroinitializer }, align 32
@jffs2_mark_erased_block._entry_ptr = internal global ptr @jffs2_mark_erased_block._entry, section ".printk_index", align 4
@jffs2_mark_erased_block._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014jffs2: Short write to newly-erased block at 0x%08x: Wanted %zd, got %zd\0A\00", [53 x i8] zeroinitializer }, align 32
@jffs2_mark_erased_block._entry_ptr.15 = internal global ptr @jffs2_mark_erased_block._entry.13, section ".printk_index", align 4
@jffs2_block_check_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014jffs2: Newly-erased block contained word 0x%lx at offset 0x%08tx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"jffs2_block_check_erase\00", [40 x i8] zeroinitializer }, align 32
@jffs2_block_check_erase._entry_ptr = internal global ptr @jffs2_block_check_erase._entry, section ".printk_index", align 4
@jffs2_block_check_erase._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014jffs2: Failed to allocate page buffer for verifying erase at 0x%08x. Refiling\0A\00", [47 x i8] zeroinitializer }, align 32
@jffs2_block_check_erase._entry_ptr.20 = internal global ptr @jffs2_block_check_erase._entry.18, section ".printk_index", align 4
@jffs2_block_check_erase._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014jffs2: Read of newly-erased block at 0x%08x failed: %d. Putting on bad_list\0A\00", [49 x i8] zeroinitializer }, align 32
@jffs2_block_check_erase._entry_ptr.23 = internal global ptr @jffs2_block_check_erase._entry.21, section ".printk_index", align 4
@jffs2_block_check_erase._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014jffs2: Short read from newly-erased block at 0x%08x. Wanted %d, got %zd\0A\00", [53 x i8] zeroinitializer }, align 32
@jffs2_block_check_erase._entry_ptr.26 = internal global ptr @jffs2_block_check_erase._entry.24, section ".printk_index", align 4
@jffs2_block_check_erase._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\014jffs2: Newly-erased block contained word 0x%lx at offset 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@jffs2_block_check_erase._entry_ptr.29 = internal global ptr @jffs2_block_check_erase._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967266, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 149, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 48, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 92, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 95, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 246, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 441, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 444, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 343, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 354, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 369, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 375, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [20 x i8] c"../fs/jffs2/erase.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 385, i32 5 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @jffs2_block_check_erase._entry, ptr @jffs2_block_check_erase._entry.18, ptr @jffs2_block_check_erase._entry.21, ptr @jffs2_block_check_erase._entry.24, ptr @jffs2_block_check_erase._entry.27, ptr @jffs2_block_check_erase._entry_ptr, ptr @jffs2_block_check_erase._entry_ptr.20, ptr @jffs2_block_check_erase._entry_ptr.23, ptr @jffs2_block_check_erase._entry_ptr.26, ptr @jffs2_block_check_erase._entry_ptr.29, ptr @jffs2_erase_block._entry, ptr @jffs2_erase_block._entry.3, ptr @jffs2_erase_block._entry.6, ptr @jffs2_erase_block._entry_ptr, ptr @jffs2_erase_block._entry_ptr.5, ptr @jffs2_erase_block._entry_ptr.8, ptr @jffs2_mark_erased_block._entry, ptr @jffs2_mark_erased_block._entry.13, ptr @jffs2_mark_erased_block._entry_ptr, ptr @jffs2_mark_erased_block._entry_ptr.15, ptr @jffs2_remove_node_refs_from_ino_list._entry, ptr @jffs2_remove_node_refs_from_ino_list._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_erase_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_erase_block._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_erase_block._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_remove_node_refs_from_ino_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_mark_erased_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_mark_erased_block._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_block_check_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_block_check_erase._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_block_check_erase._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_block_check_erase._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jffs2_block_check_erase._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @jffs2_erase_pending_blocks(ptr noundef %c, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %ebuf.i.i = alloca ptr, align 4
  %retlen.i.i = alloca i32, align 4
  %retlen.i = alloca i32, align 4
  %vecs.i = alloca [1 x %struct.kvec], align 4
  %marker.i = alloca %struct.jffs2_unknown_node, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %erase_free_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  %erase_complete_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 39
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %erase_checking_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 37
  %sector_size.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %cleanmarker_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 8
  %0 = getelementptr inbounds %struct.kvec, ptr %vecs.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %marker.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %marker.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.jffs2_unknown_node, ptr %marker.i, i32 0, i32 3
  %erasing_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 14
  %free_size49.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 13
  %free_list.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40
  %prev.i2.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 40, i32 1
  %nr_erasing_blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %nr_free_blocks.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 18
  %erase_wait.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 44
  %wasted_size24 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 12
  %used_size27 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 10
  %dirty_size29 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %erasing_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 36
  %prev.i2.i.i.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 39, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %entry
  %work_done.0 = phi i32 [ 0, %entry ], [ %work_done.1, %if.end46 ]
  %count.addr.0 = phi i32 [ %count, %entry ], [ %count.addr.1, %if.end46 ]
  %4 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %erase_complete_list, align 4
  %cmp.i.not = icmp eq ptr %5, %erase_complete_list
  br i1 %cmp.i.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %6 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %erase_pending_list, align 4
  %cmp.i96.not = icmp eq ptr %7, %erase_pending_list
  br i1 %cmp.i96.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %8 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %erase_complete_list, align 4
  %cmp.i98.not = icmp eq ptr %9, %erase_complete_list
  br i1 %cmp.i98.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %16 = ptrtoint ptr %erase_checking_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %erase_checking_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %erase_checking_list, ptr noundef %17) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %prev1.i.i2.i, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %9, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %erase_checking_list, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %erase_checking_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %9, ptr %erase_checking_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i) #8
  %22 = ptrtoint ptr %retlen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %retlen.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ebuf.i.i) #8
  %23 = ptrtoint ptr %ebuf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %ebuf.i.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retlen.i.i) #8
  %24 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %retlen.i.i, align 4, !annotation !60
  %25 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %c, align 4
  %offset.i.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %9, i32 0, i32 2
  %27 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset.i.i, align 4
  %conv.i.i = zext i32 %28 to i64
  %29 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sector_size.i.i, align 4
  %call.i.i100 = call i32 @mtd_point(ptr noundef %26, i64 noundef %conv.i.i, i32 noundef %30, ptr noundef nonnull %retlen.i.i, ptr noundef nonnull %ebuf.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %cond.i.i = icmp eq i32 %call.i.i100, 0
  br i1 %cond.i.i, label %if.end.i.i101, label %list_move.exit.do_flash_read.i.i_crit_edge

list_move.exit.do_flash_read.i.i_crit_edge:       ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_flash_read.i.i

if.end.i.i101:                                    ; preds = %list_move.exit
  %31 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %retlen.i.i, align 4
  %33 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sector_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp4.i.i = icmp ult i32 %32, %34
  br i1 %cmp4.i.i, label %do.end9.i.i, label %if.end14.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %c, align 4
  %37 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset.i.i, align 4
  %conv12.i.i = zext i32 %38 to i64
  %call13.i.i = call i32 @mtd_unpoint(ptr noundef %36, i64 noundef %conv12.i.i, i32 noundef %32) #8
  br label %do_flash_read.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i101
  %39 = ptrtoint ptr %ebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ebuf.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 -4
  %div156.i.i = lshr i32 %32, 2
  %41 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div156.i.i, ptr %retlen.i.i, align 4
  br label %do.body15.i.i

do.body15.i.i:                                    ; preds = %do.cond20.i.i.do.body15.i.i_crit_edge, %if.end14.i.i
  %wordebuf.0.i.i = phi ptr [ %add.ptr.i.i, %if.end14.i.i ], [ %incdec.ptr.i.i, %do.cond20.i.i.do.body15.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i32, ptr %wordebuf.0.i.i, i32 1
  %42 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp16.not.i.i = icmp eq i32 %43, -1
  br i1 %cmp16.not.i.i, label %do.cond20.i.i, label %do.body15.i.i.do.end22.i.i_crit_edge

do.body15.i.i.do.end22.i.i_crit_edge:             ; preds = %do.body15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i.i

do.cond20.i.i:                                    ; preds = %do.body15.i.i
  %44 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %retlen.i.i, align 4
  %dec.i.i = add i32 %45, -1
  store i32 %dec.i.i, ptr %retlen.i.i, align 4
  %tobool21.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool21.not.i.i, label %do.cond20.i.i.do.end22.i.i_crit_edge, label %do.cond20.i.i.do.body15.i.i_crit_edge

do.cond20.i.i.do.body15.i.i_crit_edge:            ; preds = %do.cond20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15.i.i

do.cond20.i.i.do.end22.i.i_crit_edge:             ; preds = %do.cond20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %do.cond20.i.i.do.end22.i.i_crit_edge, %do.body15.i.i.do.end22.i.i_crit_edge
  %46 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %c, align 4
  %48 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i.i, align 4
  %conv25.i.i = zext i32 %49 to i64
  %call27.i.i = call i32 @mtd_unpoint(ptr noundef %47, i64 noundef %conv25.i.i, i32 noundef %34) #8
  %50 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool28.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool28.not.i.i, label %jffs2_block_check_erase.exit.thread.i, label %jffs2_block_check_erase.exit.thread135.i

jffs2_block_check_erase.exit.thread.i:            ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ebuf.i.i) #8
  br label %do.end.i

jffs2_block_check_erase.exit.thread135.i:         ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %incdec.ptr.i.i, align 4
  %54 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i.i, align 4
  %56 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sector_size.i.i, align 4
  %mul.neg.i.i = mul i32 %51, -4
  %add.i.i = add i32 %55, %mul.neg.i.i
  %sub.i.i = add i32 %add.i.i, %57
  %call35.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %53, i32 noundef %sub.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ebuf.i.i) #8
  br label %filebad.i

do_flash_read.i.i:                                ; preds = %do.end9.i.i, %list_move.exit.do_flash_read.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3264, i32 noundef 4096) #12
  %59 = ptrtoint ptr %ebuf.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %ebuf.i.i, align 4
  %tobool39.not.i.i = icmp eq ptr %call7.i.i.i, null
  %60 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset.i.i, align 4
  br i1 %tobool39.not.i.i, label %refile.i, label %do.end50.i.i

do.end50.i.i:                                     ; preds = %do_flash_read.i.i
  %62 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sector_size.i.i, align 4
  %add54175.i.i = add i32 %63, %61
  call void @__sanitizer_cov_trace_cmp4(i32 %add54175.i.i, i32 %61)
  %cmp55176.i.i = icmp ugt i32 %add54175.i.i, %61
  br i1 %cmp55176.i.i, label %do.end50.i.i.for.body.i.i_crit_edge, label %do.end50.i.i.jffs2_block_check_erase.exit.i_crit_edge

do.end50.i.i.jffs2_block_check_erase.exit.i_crit_edge: ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jffs2_block_check_erase.exit.i

do.end50.i.i.for.body.i.i_crit_edge:              ; preds = %do.end50.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup103.i.i.for.body.i.i_crit_edge, %do.end50.i.i.for.body.i.i_crit_edge
  %add54178.i.i = phi i32 [ %add54.i.i, %cleanup103.i.i.for.body.i.i_crit_edge ], [ %add54175.i.i, %do.end50.i.i.for.body.i.i_crit_edge ]
  %ofs.0177.i.i = phi i32 [ %add100.i.i, %cleanup103.i.i.for.body.i.i_crit_edge ], [ %61, %do.end50.i.i.for.body.i.i_crit_edge ]
  %sub60.i.i = sub i32 %add54178.i.i, %ofs.0177.i.i
  %64 = call i32 @llvm.umin.i32(i32 %sub60.i.i, i32 4096) #8
  %65 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %c, align 4
  %conv65.i.i = zext i32 %ofs.0177.i.i to i64
  %67 = ptrtoint ptr %ebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ebuf.i.i, align 4
  %call66.i.i = call i32 @mtd_read(ptr noundef %66, i64 noundef %conv65.i.i, i32 noundef %64, ptr noundef nonnull %retlen.i.i, ptr noundef %68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i.i)
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.end74.i.i, label %do.end71.i.i

do.end71.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call73.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %ofs.0177.i.i, i32 noundef %call66.i.i) #11
  br label %jffs2_block_check_erase.exit.thread138.i

if.end74.i.i:                                     ; preds = %for.body.i.i
  %69 = ptrtoint ptr %retlen.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %retlen.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %64)
  %cmp75.not.i.i = icmp eq i32 %70, %64
  br i1 %cmp75.not.i.i, label %for.cond84.preheader.i.i, label %do.end80.i.i

for.cond84.preheader.i.i:                         ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp85173.not.i.i = icmp eq i32 %64, 0
  br i1 %cmp85173.not.i.i, label %for.cond84.preheader.i.i.cleanup103.i.i_crit_edge, label %for.body87.lr.ph.i.i

for.cond84.preheader.i.i.cleanup103.i.i_crit_edge: ; preds = %for.cond84.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103.i.i

for.body87.lr.ph.i.i:                             ; preds = %for.cond84.preheader.i.i
  %71 = ptrtoint ptr %ebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ebuf.i.i, align 4
  br label %for.body87.i.i

do.end80.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call82.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %ofs.0177.i.i, i32 noundef %64, i32 noundef %70) #11
  br label %jffs2_block_check_erase.exit.thread138.i

for.body87.i.i:                                   ; preds = %for.inc.i.i.for.body87.i.i_crit_edge, %for.body87.lr.ph.i.i
  %i.0174.i.i = phi i32 [ 0, %for.body87.lr.ph.i.i ], [ %add99.i.i, %for.inc.i.i.for.body87.i.i_crit_edge ]
  %add.ptr88.i.i = getelementptr i8, ptr %72, i32 %i.0174.i.i
  %73 = ptrtoint ptr %add.ptr88.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr88.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %tobool90.not.i.i = icmp eq i32 %74, -1
  br i1 %tobool90.not.i.i, label %for.inc.i.i, label %cleanup.i.i

cleanup.i.i:                                      ; preds = %for.body87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add92.i.i = add i32 %i.0174.i.i, %ofs.0177.i.i
  %call97.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %74, i32 noundef %add92.i.i) #11
  br label %jffs2_block_check_erase.exit.thread138.i

for.inc.i.i:                                      ; preds = %for.body87.i.i
  %add99.i.i = add nuw nsw i32 %i.0174.i.i, 4
  %cmp85.i.i = icmp ult i32 %add99.i.i, %64
  br i1 %cmp85.i.i, label %for.inc.i.i.for.body87.i.i_crit_edge, label %for.inc.i.i.cleanup103.i.i_crit_edge

for.inc.i.i.cleanup103.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup103.i.i

for.inc.i.i.for.body87.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body87.i.i

cleanup103.i.i:                                   ; preds = %for.inc.i.i.cleanup103.i.i_crit_edge, %for.cond84.preheader.i.i.cleanup103.i.i_crit_edge
  %add100.i.i = add i32 %64, %ofs.0177.i.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 392, i32 noundef 0) #8
  %call.i.i.i102 = call i32 @__cond_resched() #8
  %75 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset.i.i, align 4
  %77 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sector_size.i.i, align 4
  %add54.i.i = add i32 %78, %76
  %cmp55.i.i = icmp ugt i32 %add54.i.i, %add100.i.i
  br i1 %cmp55.i.i, label %cleanup103.i.i.for.body.i.i_crit_edge, label %cleanup103.i.i.jffs2_block_check_erase.exit.i_crit_edge

cleanup103.i.i.jffs2_block_check_erase.exit.i_crit_edge: ; preds = %cleanup103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jffs2_block_check_erase.exit.i

cleanup103.i.i.for.body.i.i_crit_edge:            ; preds = %cleanup103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

jffs2_block_check_erase.exit.thread138.i:         ; preds = %cleanup.i.i, %do.end80.i.i, %do.end71.i.i
  %bad_offset.0.ph.i = phi i32 [ %ofs.0177.i.i, %do.end71.i.i ], [ %ofs.0177.i.i, %do.end80.i.i ], [ %add92.i.i, %cleanup.i.i ]
  %79 = ptrtoint ptr %ebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ebuf.i.i, align 4
  call void @kfree(ptr noundef %80) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ebuf.i.i) #8
  br label %filebad.i

jffs2_block_check_erase.exit.i:                   ; preds = %cleanup103.i.i.jffs2_block_check_erase.exit.i_crit_edge, %do.end50.i.i.jffs2_block_check_erase.exit.i_crit_edge
  %81 = ptrtoint ptr %ebuf.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ebuf.i.i, align 4
  call void @kfree(ptr noundef %82) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ebuf.i.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %jffs2_block_check_erase.exit.i, %jffs2_block_check_erase.exit.thread.i
  %83 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset.i.i, align 4
  %85 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %c, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %88)
  %cmp.i103 = icmp eq i8 %88, 4
  br i1 %cmp.i103, label %if.then10.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.end.i
  %89 = ptrtoint ptr %cleanmarker_size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cleanmarker_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp3.i = icmp eq i32 %90, 0
  br i1 %cmp3.i, label %lor.lhs.false.i.if.end46.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.end46.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then10.i:                                      ; preds = %do.end.i
  %call11.i = call i32 @jffs2_write_nand_cleanmarker(ptr noundef %c, ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.then10.i.if.end46.i_crit_edge, label %if.then10.i.filebad.i_crit_edge

if.then10.i.filebad.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %filebad.i

if.then10.i.if.end46.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vecs.i) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %marker.i) #8
  %91 = ptrtoint ptr %marker.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 6533, ptr %marker.i, align 2
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 8195, ptr %1, align 2
  %93 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 %90, ptr %2, align 2
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 0, ptr %3, align 2
  %call16.i = call i32 @jffs2_prealloc_raw_node_refs(ptr noundef %c, ptr noundef %9, i32 noundef 1) #8
  %call19.i = call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %marker.i, i32 noundef 8) #13
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %call19.i, ptr %3, align 2
  %96 = ptrtoint ptr %vecs.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %marker.i, ptr %vecs.i, align 4
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 12, ptr %0, align 4
  %98 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset.i.i, align 4
  %conv22.i = zext i32 %99 to i64
  %call23.i = call i32 @jffs2_flash_direct_writev(ptr noundef %c, ptr noundef nonnull %vecs.i, i32 noundef 1, i64 noundef %conv22.i, ptr noundef nonnull %retlen.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %lor.lhs.false25.i, label %do.end33.critedge.i

lor.lhs.false25.i:                                ; preds = %if.else.i
  %100 = ptrtoint ptr %retlen.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %retlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %101)
  %cmp26.not.i = icmp eq i32 %101, 12
  br i1 %cmp26.not.i, label %cleanup.i, label %do.end39.i

do.end33.critedge.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %offset.i.i, align 4
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %103, i32 noundef %call23.i) #11
  br label %cleanup.thread.i

do.end39.i:                                       ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset.i.i, align 4
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %105, i32 noundef 12, i32 noundef %101) #11
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end39.i, %do.end33.critedge.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %marker.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vecs.i) #8
  br label %filebad.i

cleanup.i:                                        ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %marker.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vecs.i) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %cleanup.i, %if.then10.i.if.end46.i_crit_edge, %lor.lhs.false.i.if.end46.i_crit_edge
  %106 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sector_size.i.i, align 4
  %free_size.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %9, i32 0, i32 7
  %108 = ptrtoint ptr %free_size.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %free_size.i, align 4
  call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  %109 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sector_size.i.i, align 4
  %111 = ptrtoint ptr %erasing_size.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %erasing_size.i, align 4
  %sub.i = sub i32 %112, %110
  store i32 %sub.i, ptr %erasing_size.i, align 4
  %113 = ptrtoint ptr %free_size49.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %free_size49.i, align 4
  %add.i = add i32 %114, %110
  store i32 %add.i, ptr %free_size49.i, align 4
  %115 = ptrtoint ptr %cleanmarker_size.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cleanmarker_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool51.not.i = icmp eq i32 %116, 0
  br i1 %tobool51.not.i, label %if.end46.i.if.end61.i_crit_edge, label %land.lhs.true.i

if.end46.i.if.end61.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

land.lhs.true.i:                                  ; preds = %if.end46.i
  %117 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %c, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %120)
  %cmp55.i = icmp eq i8 %120, 4
  br i1 %cmp55.i, label %land.lhs.true.i.if.end61.i_crit_edge, label %if.then57.i

land.lhs.true.i.if.end61.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.i

if.then57.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %offset.i.i, align 4
  %or.i = or i32 %122, 3
  %call60.i = call ptr @jffs2_link_node_ref(ptr noundef %c, ptr noundef %9, i32 noundef %or.i, i32 noundef %116, ptr noundef null) #8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then57.i, %land.lhs.true.i.if.end61.i_crit_edge, %if.end46.i.if.end61.i_crit_edge
  %call.i.i120.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #8
  br i1 %call.i.i120.i, label %if.end.i.i.i104, label %if.end61.i.__list_del_entry.exit.i.i_crit_edge

if.end61.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i

if.end.i.i.i104:                                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i.i, align 4
  %125 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev1.i.i.i.i, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %126, ptr %124, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i104, %if.end61.i.__list_del_entry.exit.i.i_crit_edge
  %129 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %130, ptr noundef %free_list.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %9, ptr %prev.i2.i.i, align 4
  %132 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %free_list.i, ptr %9, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %133 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %130, ptr %prev3.i.i.i.i, align 4
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %9, ptr %130, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %135 = ptrtoint ptr %nr_erasing_blocks.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nr_erasing_blocks.i, align 4
  %dec.i = add i32 %136, -1
  store i32 %dec.i, ptr %nr_erasing_blocks.i, align 4
  %137 = ptrtoint ptr %nr_free_blocks.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nr_free_blocks.i, align 4
  %inc.i = add i32 %138, 1
  store i32 %inc.i, ptr %nr_free_blocks.i, align 4
  call void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef %c, ptr noundef %9) #8
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  call void @__wake_up(ptr noundef %erase_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %jffs2_mark_erased_block.exit

filebad.i:                                        ; preds = %cleanup.thread.i, %if.then10.i.filebad.i_crit_edge, %jffs2_block_check_erase.exit.thread138.i, %jffs2_block_check_erase.exit.thread135.i
  %bad_offset.2.i = phi i32 [ %84, %if.then10.i.filebad.i_crit_edge ], [ -1, %jffs2_block_check_erase.exit.thread135.i ], [ %bad_offset.0.ph.i, %jffs2_block_check_erase.exit.thread138.i ], [ %84, %cleanup.thread.i ]
  call fastcc void @jffs2_erase_failed(ptr noundef %c, ptr noundef %9, i32 noundef %bad_offset.2.i) #8
  br label %jffs2_mark_erased_block.exit

refile.i:                                         ; preds = %do_flash_read.i.i
  %call46.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %61) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ebuf.i.i) #8
  call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  call void @jffs2_garbage_collect_trigger(ptr noundef %c) #8
  %call.i.i121.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #8
  br i1 %call.i.i121.i, label %if.end.i.i124.i, label %refile.i.__list_del_entry.exit.i126.i_crit_edge

refile.i.__list_del_entry.exit.i126.i_crit_edge:  ; preds = %refile.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i126.i

if.end.i.i124.i:                                  ; preds = %refile.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i122.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i122.i, align 4
  %141 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %9, align 4
  %prev1.i.i.i123.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i.i123.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev1.i.i.i123.i, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %142, ptr %140, align 4
  br label %__list_del_entry.exit.i126.i

__list_del_entry.exit.i126.i:                     ; preds = %if.end.i.i124.i, %refile.i.__list_del_entry.exit.i126.i_crit_edge
  %145 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %erase_complete_list, align 4
  %call.i.i.i125.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %erase_complete_list, ptr noundef %146) #8
  br i1 %call.i.i.i125.i, label %if.end.i.i.i128.i, label %__list_del_entry.exit.i126.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i126.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit.i

if.end.i.i.i128.i:                                ; preds = %__list_del_entry.exit.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %9, ptr %prev1.i.i2.i.i, align 4
  %148 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %146, ptr %9, align 4
  %prev3.i.i.i127.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %149 = ptrtoint ptr %prev3.i.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %erase_complete_list, ptr %prev3.i.i.i127.i, align 4
  %150 = ptrtoint ptr %erase_complete_list to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %9, ptr %erase_complete_list, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i128.i, %__list_del_entry.exit.i126.i.list_move.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  br label %jffs2_mark_erased_block.exit

jffs2_mark_erased_block.exit:                     ; preds = %list_move.exit.i, %filebad.i, %list_move_tail.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retlen.i) #8
  %inc = add i32 %work_done.0, 1
  %dec = add i32 %count.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %jffs2_mark_erased_block.exit.do.end55_crit_edge, label %jffs2_mark_erased_block.exit.if.end46_crit_edge

jffs2_mark_erased_block.exit.if.end46_crit_edge:  ; preds = %jffs2_mark_erased_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

jffs2_mark_erased_block.exit.do.end55_crit_edge:  ; preds = %jffs2_mark_erased_block.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end55

if.else:                                          ; preds = %while.body
  %151 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %erase_pending_list, align 4
  %cmp.i105.not = icmp eq ptr %152, %erase_pending_list
  br i1 %cmp.i105.not, label %do.body39, label %if.then14

if.then14:                                        ; preds = %if.else
  %call.i.i107 = call zeroext i1 @__list_del_entry_valid(ptr noundef %152) #8
  br i1 %call.i.i107, label %if.end.i.i110, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i110:                                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i108 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %prev.i.i108, align 4
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %152, align 4
  %prev1.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %prev1.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %154, ptr %prev1.i.i.i109, align 4
  %158 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %156, ptr %154, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i110, %if.then14.list_del.exit_crit_edge
  %159 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr inttoptr (i32 256 to ptr), ptr %152, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %160 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %161 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sector_size.i.i, align 4
  %163 = ptrtoint ptr %erasing_size.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %erasing_size.i, align 4
  %add = add i32 %164, %162
  store i32 %add, ptr %erasing_size.i, align 4
  %wasted_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %152, i32 0, i32 6
  %165 = ptrtoint ptr %wasted_size to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %wasted_size, align 4
  %167 = ptrtoint ptr %wasted_size24 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %wasted_size24, align 4
  %sub = sub i32 %168, %166
  store i32 %sub, ptr %wasted_size24, align 4
  %free_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %152, i32 0, i32 7
  %169 = ptrtoint ptr %free_size to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %free_size, align 4
  %171 = ptrtoint ptr %free_size49.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %free_size49.i, align 4
  %sub26 = sub i32 %172, %170
  store i32 %sub26, ptr %free_size49.i, align 4
  %used_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %152, i32 0, i32 4
  %173 = ptrtoint ptr %used_size to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %used_size, align 4
  %175 = ptrtoint ptr %used_size27 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %used_size27, align 4
  %sub28 = sub i32 %176, %174
  store i32 %sub28, ptr %used_size27, align 4
  %dirty_size = getelementptr inbounds %struct.jffs2_eraseblock, ptr %152, i32 0, i32 5
  %177 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %dirty_size, align 4
  %179 = ptrtoint ptr %dirty_size29 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dirty_size29, align 4
  %sub30 = sub i32 %180, %178
  store i32 %sub30, ptr %dirty_size29, align 4
  %181 = call ptr @memset(ptr %used_size, i32 0, i32 16)
  call void @jffs2_free_jeb_node_refs(ptr noundef %c, ptr noundef %152)
  %182 = ptrtoint ptr %erasing_list to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %erasing_list, align 4
  %call.i.i112 = call zeroext i1 @__list_add_valid(ptr noundef %152, ptr noundef %erasing_list, ptr noundef %183) #8
  br i1 %call.i.i112, label %if.end.i.i113, label %list_del.exit.list_add.exit_crit_edge

list_del.exit.list_add.exit_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i113:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %152, ptr %prev1.i.i, align 4
  %185 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %183, ptr %152, align 4
  %186 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %erasing_list, ptr %prev.i, align 4
  %187 = ptrtoint ptr %erasing_list to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %152, ptr %erasing_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i113, %list_del.exit.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %188 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %188, i32 noundef 3264, i32 noundef 24) #12
  %tobool.not.i114 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i114, label %do.end3.i, label %if.end.i

do.end3.i:                                        ; preds = %list_add.exit
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  %call.i.i.i117 = call zeroext i1 @__list_del_entry_valid(ptr noundef %152) #8
  br i1 %call.i.i.i117, label %if.end.i.i.i120, label %do.end3.i.__list_del_entry.exit.i.i122_crit_edge

do.end3.i.__list_del_entry.exit.i.i122_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i122

if.end.i.i.i120:                                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %189 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %prev.i, align 4
  %191 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %152, align 4
  %prev1.i.i.i.i119 = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %prev1.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %190, ptr %prev1.i.i.i.i119, align 4
  %194 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %192, ptr %190, align 4
  br label %__list_del_entry.exit.i.i122

__list_del_entry.exit.i.i122:                     ; preds = %if.end.i.i.i120, %do.end3.i.__list_del_entry.exit.i.i122_crit_edge
  %195 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %erase_pending_list, align 4
  %call.i.i.i.i121 = call zeroext i1 @__list_add_valid(ptr noundef %152, ptr noundef %erase_pending_list, ptr noundef %196) #8
  br i1 %call.i.i.i.i121, label %if.end.i.i.i.i125, label %__list_del_entry.exit.i.i122.list_move.exit.i129_crit_edge

__list_del_entry.exit.i.i122.list_move.exit.i129_crit_edge: ; preds = %__list_del_entry.exit.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit.i129

if.end.i.i.i.i125:                                ; preds = %__list_del_entry.exit.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i.i123 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %prev1.i.i2.i.i123 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %152, ptr %prev1.i.i2.i.i123, align 4
  %198 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %196, ptr %152, align 4
  %199 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %erase_pending_list, ptr %prev.i, align 4
  %200 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %152, ptr %erase_pending_list, align 4
  br label %list_move.exit.i129

list_move.exit.i129:                              ; preds = %if.end.i.i.i.i125, %__list_del_entry.exit.i.i122.list_move.exit.i129_crit_edge
  %201 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %sector_size.i.i, align 4
  %203 = ptrtoint ptr %erasing_size.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %erasing_size.i, align 4
  %sub.i127 = sub i32 %204, %202
  store i32 %sub.i127, ptr %erasing_size.i, align 4
  %205 = ptrtoint ptr %dirty_size29 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %dirty_size29, align 4
  %add.i128 = add i32 %206, %202
  store i32 %add.i128, ptr %dirty_size29, align 4
  %207 = ptrtoint ptr %dirty_size to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %202, ptr %dirty_size, align 4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  br label %if.end46

if.end.i:                                         ; preds = %list_add.exit
  %208 = getelementptr inbounds i8, ptr %call7.i.i, i32 16
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 0, ptr %208, align 8
  %offset.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %152, i32 0, i32 2
  %210 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %offset.i, align 4
  %conv.i130 = zext i32 %211 to i64
  %212 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %conv.i130, ptr %call7.i.i, align 8
  %213 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %sector_size.i.i, align 4
  %conv11.i = zext i32 %214 to i64
  %len.i = getelementptr inbounds %struct.erase_info, ptr %call7.i.i, i32 0, i32 1
  %215 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %conv11.i, ptr %len.i, align 8
  %216 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %c, align 4
  %call12.i = call i32 @mtd_erase(ptr noundef %217, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end.i
  call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  %call.i.i.i99.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %152) #8
  br i1 %call.i.i.i99.i, label %if.end.i.i.i100.i, label %if.then14.i.__list_del_entry.exit.i.i.i_crit_edge

if.then14.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i100.i:                                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #10
  %218 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %prev.i, align 4
  %220 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %152, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %219, ptr %prev1.i.i.i.i.i, align 4
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %221, ptr %219, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i100.i, %if.then14.i.__list_del_entry.exit.i.i.i_crit_edge
  %224 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %152, ptr noundef %225, ptr noundef %erase_complete_list) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.jffs2_erase_succeeded.exit.i_crit_edge

__list_del_entry.exit.i.i.i.jffs2_erase_succeeded.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %jffs2_erase_succeeded.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %226 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %152, ptr %prev.i2.i.i.i, align 4
  %227 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %erase_complete_list, ptr %152, align 4
  %228 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %225, ptr %prev.i, align 4
  %229 = ptrtoint ptr %225 to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr %152, ptr %225, align 4
  br label %jffs2_erase_succeeded.exit.i

jffs2_erase_succeeded.exit.i:                     ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.jffs2_erase_succeeded.exit.i_crit_edge
  call void @jffs2_garbage_collect_trigger(ptr noundef %c) #8
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  call void @__wake_up(ptr noundef %erase_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.end46

if.end15.i:                                       ; preds = %if.end.i
  %230 = ptrtoint ptr %208 to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %208, align 8
  %conv16.i = trunc i64 %231 to i32
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %232 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %do.end50.i [
    i32 -12, label %if.end15.i.do.end23.i_crit_edge
    i32 -11, label %if.end15.i.do.end23.i_crit_edge234
    i32 -30, label %do.end44.i
  ]

if.end15.i.do.end23.i_crit_edge234:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

if.end15.i.do.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.end15.i.do.end23.i_crit_edge, %if.end15.i.do.end23.i_crit_edge234
  call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  %call.i.i101.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %152) #8
  br i1 %call.i.i101.i, label %if.end.i.i104.i, label %do.end23.i.__list_del_entry.exit.i106.i_crit_edge

do.end23.i.__list_del_entry.exit.i106.i_crit_edge: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i106.i

if.end.i.i104.i:                                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %prev.i, align 4
  %235 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %152, align 4
  %prev1.i.i.i103.i = getelementptr inbounds %struct.list_head, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %prev1.i.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %234, ptr %prev1.i.i.i103.i, align 4
  %238 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %238)
  store volatile ptr %236, ptr %234, align 4
  br label %__list_del_entry.exit.i106.i

__list_del_entry.exit.i106.i:                     ; preds = %if.end.i.i104.i, %do.end23.i.__list_del_entry.exit.i106.i_crit_edge
  %239 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %erase_pending_list, align 4
  %call.i.i.i105.i = call zeroext i1 @__list_add_valid(ptr noundef %152, ptr noundef %erase_pending_list, ptr noundef %240) #8
  br i1 %call.i.i.i105.i, label %if.end.i.i.i109.i, label %__list_del_entry.exit.i106.i.list_move.exit110.i_crit_edge

__list_del_entry.exit.i106.i.list_move.exit110.i_crit_edge: ; preds = %__list_del_entry.exit.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit110.i

if.end.i.i.i109.i:                                ; preds = %__list_del_entry.exit.i106.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i107.i = getelementptr inbounds %struct.list_head, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %prev1.i.i2.i107.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %152, ptr %prev1.i.i2.i107.i, align 4
  %242 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %240, ptr %152, align 4
  %243 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %erase_pending_list, ptr %prev.i, align 4
  %244 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile ptr %152, ptr %erase_pending_list, align 4
  br label %list_move.exit110.i

list_move.exit110.i:                              ; preds = %if.end.i.i.i109.i, %__list_del_entry.exit.i106.i.list_move.exit110.i_crit_edge
  %245 = ptrtoint ptr %sector_size.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %sector_size.i.i, align 4
  %247 = ptrtoint ptr %erasing_size.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %erasing_size.i, align 4
  %sub30.i = sub i32 %248, %246
  store i32 %sub30.i, ptr %erasing_size.i, align 4
  %249 = ptrtoint ptr %dirty_size29 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dirty_size29, align 4
  %add33.i = add i32 %250, %246
  store i32 %add33.i, ptr %dirty_size29, align 4
  %251 = ptrtoint ptr %dirty_size to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %246, ptr %dirty_size, align 4
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  br label %if.end46

do.end44.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %252 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %offset.i, align 4
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %253) #11
  br label %if.end54.i

do.end50.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %254 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %offset.i, align 4
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %255, i32 noundef %call12.i) #11
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end50.i, %do.end44.i
  call fastcc void @jffs2_erase_failed(ptr noundef %c, ptr noundef %152, i32 noundef %conv16.i) #8
  br label %if.end46

do.body39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/jffs2/erase.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

if.end46:                                         ; preds = %if.end54.i, %list_move.exit110.i, %jffs2_erase_succeeded.exit.i, %list_move.exit.i129, %jffs2_mark_erased_block.exit.if.end46_crit_edge
  %work_done.1 = phi i32 [ %inc, %jffs2_mark_erased_block.exit.if.end46_crit_edge ], [ %work_done.0, %list_move.exit.i129 ], [ %work_done.0, %jffs2_erase_succeeded.exit.i ], [ %work_done.0, %list_move.exit110.i ], [ %work_done.0, %if.end54.i ]
  %count.addr.1 = phi i32 [ %dec, %jffs2_mark_erased_block.exit.if.end46_crit_edge ], [ %count.addr.0, %list_move.exit.i129 ], [ %count.addr.0, %jffs2_erase_succeeded.exit.i ], [ %count.addr.0, %list_move.exit110.i ], [ %count.addr.0, %if.end54.i ]
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  br label %do.end55

do.end55:                                         ; preds = %while.end, %jffs2_mark_erased_block.exit.do.end55_crit_edge
  %work_done.2 = phi i32 [ %work_done.0, %while.end ], [ %inc, %jffs2_mark_erased_block.exit.do.end55_crit_edge ]
  ret i32 %work_done.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jffs2_free_jeb_node_refs(ptr noundef %c, ptr nocapture noundef %jeb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %first_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 9
  %0 = ptrtoint ptr %first_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %first_node, align 4
  %tobool.not2124 = icmp eq ptr %1, null
  br i1 %tobool.not2124, label %entry.while.end_crit_edge, label %while.body.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %sector_size.i = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %offset.i = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 2
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %ref.0.ph26 = phi ptr [ %1, %while.body.lr.ph.lr.ph ], [ %6, %if.then.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %ref.022 = phi ptr [ %ref.0.ph26, %while.body.lr.ph ], [ %incdec.ptr, %if.end6.while.body_crit_edge ]
  %flash_offset = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %ref.022, i32 0, i32 1
  %2 = ptrtoint ptr %flash_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_offset, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %3, label %land.lhs.true [
    i32 -1, label %if.then
    i32 -2, label %while.body.if.end6_crit_edge
  ]

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %while.body
  %5 = ptrtoint ptr %ref.022 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ref.022, align 4
  tail call void @jffs2_free_refblock(ptr noundef %ref.0.ph26) #8
  %tobool.not21 = icmp eq ptr %6, null
  br i1 %tobool.not21, label %if.then.while.end_crit_edge, label %if.then.while.body.lr.ph_crit_edge

if.then.while.body.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.lhs.true:                                    ; preds = %while.body
  %7 = ptrtoint ptr %ref.022 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ref.022, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.while.cond.outer.outer.i_crit_edge

land.lhs.true.while.cond.outer.outer.i_crit_edge: ; preds = %land.lhs.true
  br label %while.cond.outer.outer.i

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

while.cond.outer.i:                               ; preds = %if.end.i.while.cond.outer.i_crit_edge, %while.cond.outer.outer.i
  %prev.0.ph.i = phi ptr [ %prev.0.ph.ph.i, %while.cond.outer.outer.i ], [ %10, %if.end.i.while.cond.outer.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then3.i.while.cond.i_crit_edge, %while.cond.outer.i
  %9 = ptrtoint ptr %prev.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.0.ph.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %nodes.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %10, i32 0, i32 1
  br label %while.cond.outer.outer.i

while.cond.outer.outer.i:                         ; preds = %if.then.i, %land.lhs.true.while.cond.outer.outer.i_crit_edge
  %prev.0.ph.ph.i = phi ptr [ %nodes.i, %if.then.i ], [ %ref.022, %land.lhs.true.while.cond.outer.outer.i_crit_edge ]
  %ic.0.ph.ph.i = phi ptr [ %10, %if.then.i ], [ null, %land.lhs.true.while.cond.outer.outer.i_crit_edge ]
  br label %while.cond.outer.i

if.end.i:                                         ; preds = %while.cond.i
  %flash_offset.i = getelementptr inbounds %struct.jffs2_raw_node_ref, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %flash_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flash_offset.i, align 4
  %15 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sector_size.i, align 4
  %17 = urem i32 %14, %16
  %mul.i = sub i32 %14, %17
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  %cmp.i = icmp eq i32 %mul.i, %19
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.while.cond.outer.i_crit_edge

if.end.i.while.cond.outer.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.outer.i

if.then3.i:                                       ; preds = %if.end.i
  %20 = ptrtoint ptr %prev.0.ph.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %12, ptr %prev.0.ph.i, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %10, align 4
  %cmp6.i = icmp eq ptr %10, %ref.022
  br i1 %cmp6.i, label %while.end.i, label %if.then3.i.while.cond.i_crit_edge

if.then3.i.while.cond.i_crit_edge:                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %if.then3.i
  %tobool11.not.i = icmp eq ptr %ic.0.ph.ph.i, null
  br i1 %tobool11.not.i, label %do.end.i, label %do.end18.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call i32 @llvm.read_register.i32(metadata !50) #8
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 68
  %26 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid.i.i, align 8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %27, ptr noundef nonnull @.str.10) #11
  br label %if.end6

do.end18.i:                                       ; preds = %while.end.i
  %class.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0.ph.ph.i, i32 0, i32 2
  %28 = ptrtoint ptr %class.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %class.i, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %29, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb19.i
  ]

sw.bb.i:                                          ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_release_xattr_datum(ptr noundef %c, ptr noundef nonnull %ic.0.ph.ph.i) #8
  br label %if.end6

sw.bb19.i:                                        ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_release_xattr_ref(ptr noundef %c, ptr noundef nonnull %ic.0.ph.ph.i) #8
  br label %if.end6

sw.default.i:                                     ; preds = %do.end18.i
  %nodes20.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0.ph.ph.i, i32 0, i32 1
  %31 = ptrtoint ptr %nodes20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nodes20.i, align 4
  %cmp21.i = icmp eq ptr %32, %ic.0.ph.ph.i
  br i1 %cmp21.i, label %land.lhs.true.i, label %sw.default.i.if.end6_crit_edge

sw.default.i.if.end6_crit_edge:                   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true.i:                                  ; preds = %sw.default.i
  %pino_nlink.i = getelementptr inbounds %struct.jffs2_inode_cache, ptr %ic.0.ph.ph.i, i32 0, i32 8
  %33 = ptrtoint ptr %pino_nlink.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pino_nlink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp23.i = icmp eq i32 %34, 0
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true.i.if.end6_crit_edge

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @jffs2_del_ino_cache(ptr noundef %c, ptr noundef nonnull %ic.0.ph.ph.i) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then25.i, %land.lhs.true.i.if.end6_crit_edge, %sw.default.i.if.end6_crit_edge, %sw.bb19.i, %sw.bb.i, %do.end.i, %land.lhs.true.if.end6_crit_edge, %while.body.if.end6_crit_edge
  %incdec.ptr = getelementptr %struct.jffs2_raw_node_ref, ptr %ref.022, i32 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %last_node = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 10
  %35 = ptrtoint ptr %last_node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %last_node, align 4
  %36 = ptrtoint ptr %first_node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %first_node, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_free_refblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jffs2_erase_failed(ptr noundef %c, ptr noundef %jeb, i32 noundef %bad_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ne i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bad_offset)
  %cmp2.not = icmp eq i32 %bad_offset, -1
  %or.cond = or i1 %cmp2.not, %cmp
  br i1 %or.cond, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call i32 @jffs2_write_nand_badblock(ptr noundef %c, ptr noundef %jeb, i32 noundef %bad_offset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then4, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then4:                                         ; preds = %if.then
  %erase_free_sem = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %erase_free_sem, i32 noundef 0) #8
  %erase_completion_lock = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock) #8
  %erase_pending_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %jeb) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.__list_del_entry.exit.i_crit_edge

if.then4.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %jeb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jeb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then4.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %erase_pending_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %erase_pending_list, ptr noundef %11) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %jeb, ptr %prev1.i.i2.i, align 4
  %13 = ptrtoint ptr %jeb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %jeb, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %erase_pending_list, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %erase_pending_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %jeb, ptr %erase_pending_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %sector_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %16 = ptrtoint ptr %sector_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sector_size, align 4
  %erasing_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 14
  %18 = ptrtoint ptr %erasing_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %erasing_size, align 4
  %sub = sub i32 %19, %17
  store i32 %sub, ptr %erasing_size, align 4
  %dirty_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 11
  %20 = ptrtoint ptr %dirty_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty_size, align 4
  %add = add i32 %21, %17
  store i32 %add, ptr %dirty_size, align 4
  %dirty_size7 = getelementptr inbounds %struct.jffs2_eraseblock, ptr %jeb, i32 0, i32 5
  %22 = ptrtoint ptr %dirty_size7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %dirty_size7, align 4
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock) #8
  tail call void @mutex_unlock(ptr noundef %erase_free_sem) #8
  br label %return

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %erase_free_sem11 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 49
  tail call void @mutex_lock_nested(ptr noundef %erase_free_sem11, i32 noundef 0) #8
  %erase_completion_lock12 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 43
  tail call void @_raw_spin_lock(ptr noundef %erase_completion_lock12) #8
  %sector_size13 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 16
  %23 = ptrtoint ptr %sector_size13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sector_size13, align 4
  %erasing_size14 = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 14
  %25 = ptrtoint ptr %erasing_size14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %erasing_size14, align 4
  %sub15 = sub i32 %26, %24
  store i32 %sub15, ptr %erasing_size14, align 4
  %bad_size = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 15
  %27 = ptrtoint ptr %bad_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bad_size, align 4
  %add17 = add i32 %28, %24
  store i32 %add17, ptr %bad_size, align 4
  %bad_list = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 41
  %call.i.i47 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %jeb) #8
  br i1 %call.i.i47, label %if.end.i.i50, label %if.end10.__list_del_entry.exit.i52_crit_edge

if.end10.__list_del_entry.exit.i52_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i52

if.end.i.i50:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i48 = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i48, align 4
  %31 = ptrtoint ptr %jeb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %jeb, align 4
  %prev1.i.i.i49 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i49, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %__list_del_entry.exit.i52

__list_del_entry.exit.i52:                        ; preds = %if.end.i.i50, %if.end10.__list_del_entry.exit.i52_crit_edge
  %35 = ptrtoint ptr %bad_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bad_list, align 4
  %call.i.i.i51 = tail call zeroext i1 @__list_add_valid(ptr noundef %jeb, ptr noundef %bad_list, ptr noundef %36) #8
  br i1 %call.i.i.i51, label %if.end.i.i.i55, label %__list_del_entry.exit.i52.list_move.exit56_crit_edge

__list_del_entry.exit.i52.list_move.exit56_crit_edge: ; preds = %__list_del_entry.exit.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit56

if.end.i.i.i55:                                   ; preds = %__list_del_entry.exit.i52
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i53 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i2.i53 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %jeb, ptr %prev1.i.i2.i53, align 4
  %38 = ptrtoint ptr %jeb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %jeb, align 4
  %prev3.i.i.i54 = getelementptr inbounds %struct.list_head, ptr %jeb, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %bad_list, ptr %prev3.i.i.i54, align 4
  %40 = ptrtoint ptr %bad_list to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %jeb, ptr %bad_list, align 4
  br label %list_move.exit56

list_move.exit56:                                 ; preds = %if.end.i.i.i55, %__list_del_entry.exit.i52.list_move.exit56_crit_edge
  %nr_erasing_blocks = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 19
  %41 = ptrtoint ptr %nr_erasing_blocks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_erasing_blocks, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %nr_erasing_blocks, align 4
  tail call void @_raw_spin_unlock(ptr noundef %erase_completion_lock12) #8
  tail call void @mutex_unlock(ptr noundef %erase_free_sem11) #8
  %erase_wait = getelementptr inbounds %struct.jffs2_sb_info, ptr %c, i32 0, i32 44
  tail call void @__wake_up(ptr noundef %erase_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %return

return:                                           ; preds = %list_move.exit56, %list_move.exit
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_garbage_collect_trigger(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_write_nand_badblock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_release_xattr_datum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_release_xattr_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jffs2_del_ino_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_write_nand_cleanmarker(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_prealloc_raw_node_refs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jffs2_flash_direct_writev(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @jffs2_link_node_ref(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__jffs2_dbg_acct_sanity_check_nolock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_point(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_unpoint(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jffs2/erase.c", i32 149, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/jffs2/erase.c", i32 48, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @jffs2_erase_block._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @jffs2_erase_block._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/jffs2/erase.c", i32 92, i32 3}
!9 = !{ptr @jffs2_erase_block._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @jffs2_erase_block._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/jffs2/erase.c", i32 95, i32 3}
!13 = !{ptr @jffs2_erase_block._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @jffs2_erase_block._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/jffs2/erase.c", i32 246, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @jffs2_remove_node_refs_from_ino_list._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @jffs2_remove_node_refs_from_ino_list._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/jffs2/erase.c", i32 441, i32 5}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @jffs2_mark_erased_block._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @jffs2_mark_erased_block._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/jffs2/erase.c", i32 444, i32 5}
!27 = !{ptr @jffs2_mark_erased_block._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @jffs2_mark_erased_block._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/jffs2/erase.c", i32 343, i32 4}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jffs2_block_check_erase._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @jffs2_block_check_erase._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/jffs2/erase.c", i32 354, i32 3}
!36 = !{ptr @jffs2_block_check_erase._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @jffs2_block_check_erase._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/jffs2/erase.c", i32 369, i32 4}
!40 = !{ptr @jffs2_block_check_erase._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @jffs2_block_check_erase._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/jffs2/erase.c", i32 375, i32 4}
!44 = !{ptr @jffs2_block_check_erase._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @jffs2_block_check_erase._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/jffs2/erase.c", i32 385, i32 5}
!48 = !{ptr @jffs2_block_check_erase._entry.27, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @jffs2_block_check_erase._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i64 2154438389, i64 2154438870, i64 2154438426, i64 2154438482, i64 2154438516, i64 2154438540, i64 2154438581, i64 2154438602, i64 2154438630, i64 2154438664}
