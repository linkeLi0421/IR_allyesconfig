; ModuleID = '/llk/IR_all_yes/fs/orangefs/orangefs-bufmap.c_pt.bc'
source_filename = "../fs/orangefs/orangefs-bufmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.slot_map = type { i32, %struct.wait_queue_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.orangefs_bufmap = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, [1 x i32] }
%struct.ORANGEFS_dev_map_desc = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.78, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.78 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.orangefs_bufmap_desc = type { ptr, ptr, i32, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@orangefs_bufmap_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__orangefs_bufmap = internal unnamed_addr global ptr null, align 4
@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_bufmap_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017orangefs_bufmap_initialize: called (ptr (%p) sz (%d) cnt(%d).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"orangefs_bufmap_initialize\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fs/orangefs/orangefs-bufmap.c\00", [34 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry_ptr = internal global ptr @orangefs_bufmap_initialize._entry, section ".printk_index", align 4
@orangefs_bufmap_initialize._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013orangefs error: memory alignment (front). %p\0A\00", [48 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry_ptr.5 = internal global ptr @orangefs_bufmap_initialize._entry.3, section ".printk_index", align 4
@orangefs_bufmap_initialize._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013orangefs error: memory alignment (back).(%p + %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry_ptr.8 = internal global ptr @orangefs_bufmap_initialize._entry.6, section ".printk_index", align 4
@orangefs_bufmap_initialize._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013orangefs error: user provided an oddly sized buffer: (%d, %d, %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry_ptr.11 = internal global ptr @orangefs_bufmap_initialize._entry.9, section ".printk_index", align 4
@orangefs_bufmap_initialize._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013orangefs error: bufmap size not page size divisible (%d).\0A\00", [35 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry_ptr.14 = internal global ptr @orangefs_bufmap_initialize._entry.12, section ".printk_index", align 4
@orangefs_bufmap_initialize._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013orangefs: error: bufmap already initialized.\0A\00", [48 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry_ptr.17 = internal global ptr @orangefs_bufmap_initialize._entry.15, section ".printk_index", align 4
@rw_map = internal global { %struct.slot_map, [32 x i8] } { %struct.slot_map { i32 -1, %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @rw_map, i64 48), ptr getelementptr (i8, ptr @rw_map, i64 48) } }, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@readdir_map = internal global { %struct.slot_map, [32 x i8] } { %struct.slot_map { i32 -1, %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @readdir_map, i64 48), ptr getelementptr (i8, ptr @readdir_map, i64 48) } }, i32 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017orangefs_bufmap_initialize: exiting normally\0A\00", [48 x i8] zeroinitializer }, align 32
@orangefs_bufmap_initialize._entry_ptr.20 = internal global ptr @orangefs_bufmap_initialize._entry.18, section ".printk_index", align 4
@orangefs_bufmap_finalize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017orangefs_bufmap_finalize: called\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"orangefs_bufmap_finalize\00", [39 x i8] zeroinitializer }, align 32
@orangefs_bufmap_finalize._entry_ptr = internal global ptr @orangefs_bufmap_finalize._entry, section ".printk_index", align 4
@orangefs_bufmap_finalize._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017orangefs_bufmap_finalize: exiting normally\0A\00", [50 x i8] zeroinitializer }, align 32
@orangefs_bufmap_finalize._entry_ptr.25 = internal global ptr @orangefs_bufmap_finalize._entry.23, section ".printk_index", align 4
@orangefs_bufmap_copy_from_iovec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: buffer_index:%d: size:%zu:\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"orangefs_bufmap_copy_from_iovec\00", [32 x i8] zeroinitializer }, align 32
@orangefs_bufmap_copy_from_iovec._entry_ptr = internal global ptr @orangefs_bufmap_copy_from_iovec._entry, section ".printk_index", align 4
@orangefs_bufmap_copy_to_iovec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"orangefs_bufmap_copy_to_iovec\00", [34 x i8] zeroinitializer }, align 32
@orangefs_bufmap_copy_to_iovec._entry_ptr = internal global ptr @orangefs_bufmap_copy_to_iovec._entry, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orangefs_bufmap_lock\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@orangefs_bufmap_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013orangefs error: asked for %d pages, only got %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orangefs_bufmap_map\00", [44 x i8] zeroinitializer }, align 32
@orangefs_bufmap_map._entry_ptr = internal global ptr @orangefs_bufmap_map._entry, section ".printk_index", align 4
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rw_map.q.lock\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"readdir_map.q.lock\00", [45 x i8] zeroinitializer }, align 32
@slot_timeout_secs = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"orangefs_bufmap_lock\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 317, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 335, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 342, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 349, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 357, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 375, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"rw_map\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 18, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"readdir_map\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 22, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 388, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 413, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 416, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 491, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 520, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 166, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 274, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 416, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 20, i32 7 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [33 x i8] c"../fs/orangefs/orangefs-bufmap.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 24, i32 7 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @orangefs_bufmap_copy_from_iovec._entry, ptr @orangefs_bufmap_copy_from_iovec._entry_ptr, ptr @orangefs_bufmap_copy_to_iovec._entry, ptr @orangefs_bufmap_copy_to_iovec._entry_ptr, ptr @orangefs_bufmap_finalize._entry, ptr @orangefs_bufmap_finalize._entry.23, ptr @orangefs_bufmap_finalize._entry_ptr, ptr @orangefs_bufmap_finalize._entry_ptr.25, ptr @orangefs_bufmap_initialize._entry, ptr @orangefs_bufmap_initialize._entry.12, ptr @orangefs_bufmap_initialize._entry.15, ptr @orangefs_bufmap_initialize._entry.18, ptr @orangefs_bufmap_initialize._entry.3, ptr @orangefs_bufmap_initialize._entry.6, ptr @orangefs_bufmap_initialize._entry.9, ptr @orangefs_bufmap_initialize._entry_ptr, ptr @orangefs_bufmap_initialize._entry_ptr.11, ptr @orangefs_bufmap_initialize._entry_ptr.14, ptr @orangefs_bufmap_initialize._entry_ptr.17, ptr @orangefs_bufmap_initialize._entry_ptr.20, ptr @orangefs_bufmap_initialize._entry_ptr.5, ptr @orangefs_bufmap_initialize._entry_ptr.8, ptr @orangefs_bufmap_map._entry, ptr @orangefs_bufmap_map._entry_ptr, ptr @orangefs_bufmap_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @rw_map, ptr @readdir_map, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_initialize._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_initialize._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_initialize._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_initialize._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_initialize._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rw_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readdir_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_initialize._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_finalize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_finalize._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_copy_from_iovec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_copy_to_iovec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_bufmap_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_bufmap_size_query() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  %0 = load ptr, ptr @__orangefs_bufmap, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %size.0 = phi i32 [ %2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  ret i32 %size.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_bufmap_shift_query() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  %0 = load ptr, ptr @__orangefs_bufmap, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %desc_shift = getelementptr inbounds %struct.orangefs_bufmap, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %desc_shift to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %desc_shift, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shift.0 = phi i32 [ %2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  ret i32 %shift.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_bufmap_initialize(ptr nocapture noundef readonly %user_desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %user_desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %user_desc, align 4
  %size = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, ptr %user_desc, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %count = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, ptr %user_desc, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %2, i32 noundef %4, i32 noundef %6) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %total_size = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, ptr %user_desc, i32 0, i32 1
  %7 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %lor.lhs.false

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end3
  %size4 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, ptr %user_desc, i32 0, i32 2
  %9 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %count7 = getelementptr inbounds %struct.ORANGEFS_dev_map_desc, ptr %user_desc, i32 0, i32 3
  %11 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8 = icmp slt i32 %12, 0
  br i1 %cmp8, label %lor.lhs.false6.cleanup_crit_edge, label %if.end10

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %13 = ptrtoint ptr %user_desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user_desc, align 4
  %15 = ptrtoint ptr %14 to i32
  %add = add i32 %15, 4095
  %and12 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %15)
  %cmp14.not = icmp eq i32 %and12, %15
  br i1 %cmp14.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %14) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %add26 = add i32 %add, %8
  %and27 = and i32 %add26, -4096
  %add.ptr = getelementptr i8, ptr %14, i32 %8
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and27, i32 %16)
  %cmp30.not = icmp eq i32 %and27, %16
  br i1 %cmp30.not, label %if.end39, label %do.end34

do.end34:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %14, i32 noundef %8) #11
  br label %cleanup

if.end39:                                         ; preds = %if.end22
  %mul = mul i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %mul)
  %cmp43.not = icmp eq i32 %8, %mul
  br i1 %cmp43.not, label %if.end53, label %do.end47

do.end47:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %8, i32 noundef %10, i32 noundef %12) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end39
  %rem = and i32 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp55.not = icmp eq i32 %rem, 0
  br i1 %cmp55.not, label %if.end63, label %do.end59

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %10) #11
  br label %cleanup

if.end63:                                         ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end63.cleanup_crit_edge, label %if.end.i

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end63
  %18 = ptrtoint ptr %total_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_size, align 4
  %total_size1.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %total_size1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %total_size1.i, align 4
  %21 = ptrtoint ptr %count7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count7, align 4
  %desc_count.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %desc_count.i, align 8
  %24 = ptrtoint ptr %size4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size4, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 true) #8, !range !87
  %sub.i.op.i.i = xor i32 %27, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %desc_shift.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %desc_shift.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i.i, ptr %desc_shift.i, align 4
  %call12.i = tail call ptr @bitmap_zalloc(i32 noundef %22, i32 noundef 3264) #8
  %buffer_index_array.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %buffer_index_array.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call12.i, ptr %buffer_index_array.i, align 4
  %tobool14.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool14.not.i, label %if.end.i.out_free_bufmap.i_crit_edge, label %if.end16.i

if.end.i.out_free_bufmap.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bufmap.i

if.end16.i:                                       ; preds = %if.end.i
  %30 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %desc_count.i, align 8
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 20) #8
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !88

kcalloc.exit.thread.i:                            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %desc_array95.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %desc_array95.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %desc_array95.i, align 8
  br label %out_free_index_array.i

if.end7.i.i.i:                                    ; preds = %if.end16.i
  %35 = extractvalue { i32, i1 } %32, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %35, i32 noundef 3520) #13
  %desc_array.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %desc_array.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call8.i.i.i, ptr %desc_array.i, align 8
  %tobool20.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool20.not.i, label %if.end7.i.i.i.out_free_index_array.i_crit_edge, label %if.end22.i

if.end7.i.i.i.out_free_index_array.i_crit_edge:   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_index_array.i

if.end22.i:                                       ; preds = %if.end7.i.i.i
  %37 = ptrtoint ptr %total_size1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %total_size1.i, align 4
  %div57.i = lshr i32 %38, 12
  %page_count.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %page_count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div57.i, ptr %page_count.i, align 8
  %40 = shl nuw nsw i32 %div57.i, 2
  %call8.i.i90.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #13
  %page_array.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %page_array.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call8.i.i90.i, ptr %page_array.i, align 4
  %tobool27.not.i = icmp eq ptr %call8.i.i90.i, null
  br i1 %tobool27.not.i, label %out_free_desc_array.i, label %if.end67

out_free_desc_array.i:                            ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %desc_array.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc_array.i, align 8
  tail call void @kfree(ptr noundef %43) #8
  br label %out_free_index_array.i

out_free_index_array.i:                           ; preds = %out_free_desc_array.i, %if.end7.i.i.i.out_free_index_array.i_crit_edge, %kcalloc.exit.thread.i
  %44 = ptrtoint ptr %buffer_index_array.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer_index_array.i, align 4
  tail call void @bitmap_free(ptr noundef %45) #8
  br label %out_free_bufmap.i

out_free_bufmap.i:                                ; preds = %out_free_index_array.i, %if.end.i.out_free_bufmap.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

if.end67:                                         ; preds = %if.end22.i
  %46 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call7.i.i.i, align 8
  %div72.i = lshr i32 %47, 12
  %48 = ptrtoint ptr %user_desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %user_desc, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %page_count.i, align 8
  %page_array.i129 = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %page_array.i129 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %page_array.i129, align 4
  %call.i = tail call i32 @pin_user_pages_fast(i32 noundef %50, i32 noundef %52, i32 noundef 1, ptr noundef %54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i130 = icmp slt i32 %call.i, 0
  br i1 %cmp.i130, label %if.end67.out_free_bufmap_crit_edge, label %if.end.i131

if.end67.out_free_bufmap_crit_edge:               ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bufmap

if.end.i131:                                      ; preds = %if.end67
  %55 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %page_count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %56)
  %cmp2.not.i = icmp eq i32 %call.i, %56
  br i1 %cmp2.not.i, label %for.cond11.preheader.i, label %do.end.i

for.cond11.preheader.i:                           ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1378.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp1378.i.not, label %for.cond11.preheader.i.for.cond20.preheader.i_crit_edge, label %for.cond11.preheader.i.for.body14.i_crit_edge

for.cond11.preheader.i.for.body14.i_crit_edge:    ; preds = %for.cond11.preheader.i
  br label %for.body14.i

for.cond11.preheader.i.for.cond20.preheader.i_crit_edge: ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond20.preheader.i

do.end.i:                                         ; preds = %if.end.i131
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %56, i32 noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp676.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp676.not.i, label %do.end.i.out_free_bufmap_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.out_free_bufmap_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bufmap

for.body.i:                                       ; preds = %SetPageError.exit.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %i.077.i = phi i32 [ %inc.i, %SetPageError.exit.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %57 = ptrtoint ptr %page_array.i129 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %page_array.i129, align 4
  %arrayidx.i = getelementptr ptr, ptr %58, i32 %i.077.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i, align 4
  %61 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body7.i.i, label %if.then.i.i, !prof !89

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.32) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !90
  unreachable

do.body7.i.i:                                     ; preds = %for.body.i
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %61, align 4
  %and.i31.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i.i)
  %tobool.not.i.i.i132 = icmp eq i32 %and.i31.i.i, 0
  br i1 %tobool.not.i.i.i132, label %if.end.i.i.i133, label %if.then.i.i.i, !prof !89

if.then.i.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %65, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i133:                                  ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %60 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i133, %if.then.i.i.i
  %retval.0.i.i.i134 = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %66, %if.end.i.i.i133 ]
  %67 = inttoptr i32 %retval.0.i.i.i134 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp.i.not.i.i = icmp eq i32 %69, -1
  %70 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %61, align 4
  %and.i32.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then17.i.i, label %do.end24.i.i, !prof !88

if.then17.i.i:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %if.end.i36.i.i, label %if.then.i35.i.i, !prof !89

if.then.i35.i.i:                                  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i.i = add i32 %71, -1
  br label %_compound_head.exit38.i.i

if.end.i36.i.i:                                   ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %60 to i32
  br label %_compound_head.exit38.i.i

_compound_head.exit38.i.i:                        ; preds = %if.end.i36.i.i, %if.then.i35.i.i
  %retval.0.i37.i.i = phi i32 [ %sub.i34.i.i, %if.then.i35.i.i ], [ %72, %if.end.i36.i.i ]
  %73 = inttoptr i32 %retval.0.i37.i.i to ptr
  tail call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.33) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

do.end24.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %if.end.i43.i.i, label %if.then.i42.i.i, !prof !89

if.then.i42.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i.i = add i32 %71, -1
  br label %SetPageError.exit.i

if.end.i43.i.i:                                   ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %60 to i32
  br label %SetPageError.exit.i

SetPageError.exit.i:                              ; preds = %if.end.i43.i.i, %if.then.i42.i.i
  %retval.0.i44.i.i = phi i32 [ %sub.i41.i.i, %if.then.i42.i.i ], [ %74, %if.end.i43.i.i ]
  %75 = inttoptr i32 %retval.0.i44.i.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %75) #8
  %76 = ptrtoint ptr %page_array.i129 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %page_array.i129, align 4
  %arrayidx9.i = getelementptr ptr, ptr %77, i32 %i.077.i
  %78 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx9.i, align 4
  tail call void @unpin_user_page(ptr noundef %79) #8
  %inc.i = add nuw nsw i32 %i.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %SetPageError.exit.i.out_free_bufmap_crit_edge, label %SetPageError.exit.i.for.body.i_crit_edge

SetPageError.exit.i.for.body.i_crit_edge:         ; preds = %SetPageError.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

SetPageError.exit.i.out_free_bufmap_crit_edge:    ; preds = %SetPageError.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bufmap

for.cond20.preheader.i:                           ; preds = %for.body14.i.for.cond20.preheader.i_crit_edge, %for.cond11.preheader.i.for.cond20.preheader.i_crit_edge
  %80 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %desc_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp2180.i = icmp sgt i32 %81, 0
  br i1 %cmp2180.i, label %for.body22.lr.ph.i, label %for.cond20.preheader.i.if.end71_crit_edge

for.cond20.preheader.i.if.end71_crit_edge:        ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

for.body22.lr.ph.i:                               ; preds = %for.cond20.preheader.i
  %desc_array.i136 = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 6
  %mul.i = and i32 %47, -4096
  br label %for.body22.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.cond11.preheader.i.for.body14.i_crit_edge
  %i.179.i = phi i32 [ %inc18.i, %for.body14.i.for.body14.i_crit_edge ], [ 0, %for.cond11.preheader.i.for.body14.i_crit_edge ]
  %82 = ptrtoint ptr %page_array.i129 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %page_array.i129, align 4
  %arrayidx16.i = getelementptr ptr, ptr %83, i32 %i.179.i
  %84 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx16.i, align 4
  tail call void @flush_dcache_page(ptr noundef %85) #8
  %inc18.i = add nuw nsw i32 %i.179.i, 1
  %86 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %page_count.i, align 8
  %cmp13.i = icmp slt i32 %inc18.i, %87
  br i1 %cmp13.i, label %for.body14.i.for.body14.i_crit_edge, label %for.body14.i.for.cond20.preheader.i_crit_edge

for.body14.i.for.cond20.preheader.i_crit_edge:    ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond20.preheader.i

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.body22.lr.ph.i
  %i.282.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %inc34.i, %for.body22.i.for.body22.i_crit_edge ]
  %offset.081.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %add.i, %for.body22.i.for.body22.i_crit_edge ]
  %88 = ptrtoint ptr %page_array.i129 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %page_array.i129, align 4
  %arrayidx24.i = getelementptr ptr, ptr %89, i32 %offset.081.i
  %90 = ptrtoint ptr %desc_array.i136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc_array.i136, align 8
  %page_array26.i = getelementptr %struct.orangefs_bufmap_desc, ptr %91, i32 %i.282.i, i32 1
  %92 = ptrtoint ptr %page_array26.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx24.i, ptr %page_array26.i, align 4
  %93 = load ptr, ptr %desc_array.i136, align 8
  %array_count.i = getelementptr %struct.orangefs_bufmap_desc, ptr %93, i32 %i.282.i, i32 2
  %94 = ptrtoint ptr %array_count.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div72.i, ptr %array_count.i, align 4
  %95 = ptrtoint ptr %user_desc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %user_desc, align 4
  %mul30.i = mul i32 %i.282.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %96, i32 %mul30.i
  %97 = load ptr, ptr %desc_array.i136, align 8
  %arrayidx32.i = getelementptr %struct.orangefs_bufmap_desc, ptr %97, i32 %i.282.i
  %98 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %add.ptr.i, ptr %arrayidx32.i, align 4
  %add.i = add i32 %offset.081.i, %div72.i
  %inc34.i = add nuw nsw i32 %i.282.i, 1
  %99 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %desc_count.i, align 8
  %cmp21.i = icmp slt i32 %inc34.i, %100
  br i1 %cmp21.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.if.end71_crit_edge

for.body22.i.if.end71_crit_edge:                  ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body22.i

if.end71:                                         ; preds = %for.body22.i.if.end71_crit_edge, %for.cond20.preheader.i.if.end71_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  %101 = load ptr, ptr @__orangefs_bufmap, align 4
  %tobool72.not = icmp eq ptr %101, null
  br i1 %tobool72.not, label %if.end79, label %if.then73

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  %102 = ptrtoint ptr %page_array.i129 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %page_array.i129, align 4
  %104 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %page_count.i, align 8
  tail call void @unpin_user_pages(ptr noundef %103, i32 noundef %105) #8
  br label %out_free_bufmap

if.end79:                                         ; preds = %if.end71
  store ptr %call7.i.i.i, ptr @__orangefs_bufmap, align 4
  %106 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %desc_count.i, align 8
  %108 = ptrtoint ptr %buffer_index_array.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buffer_index_array.i, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  store i32 %107, ptr getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 2), align 4
  store i32 %107, ptr @rw_map, align 4
  store ptr %109, ptr getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 3), align 4
  tail call void @__wake_up_locked(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1), i32 noundef 3, i32 noundef 0) #8
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  %readdir_index_array = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  store i32 5, ptr getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 2), align 4
  store i32 5, ptr @readdir_map, align 4
  store ptr %readdir_index_array, ptr getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 3), align 4
  tail call void @__wake_up_locked(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1), i32 noundef 3, i32 noundef 0) #8
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %110 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and81 = and i64 %110, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81)
  %tobool82.not = icmp eq i64 %and81, 0
  br i1 %tobool82.not, label %if.end79.cleanup_crit_edge, label %do.end86

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %cleanup

out_free_bufmap:                                  ; preds = %if.then73, %SetPageError.exit.i.out_free_bufmap_crit_edge, %do.end.i.out_free_bufmap_crit_edge, %if.end67.out_free_bufmap_crit_edge
  %ret.0 = phi i32 [ -22, %if.then73 ], [ -12, %do.end.i.out_free_bufmap_crit_edge ], [ %call.i, %if.end67.out_free_bufmap_crit_edge ], [ -12, %SetPageError.exit.i.out_free_bufmap_crit_edge ]
  %111 = ptrtoint ptr %page_array.i129 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %page_array.i129, align 4
  tail call void @kfree(ptr noundef %112) #8
  %desc_array.i141 = getelementptr inbounds %struct.orangefs_bufmap, ptr %call7.i.i.i, i32 0, i32 6
  %113 = ptrtoint ptr %desc_array.i141 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %desc_array.i141, align 8
  tail call void @kfree(ptr noundef %114) #8
  %115 = ptrtoint ptr %buffer_index_array.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %buffer_index_array.i, align 4
  tail call void @bitmap_free(ptr noundef %116) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_bufmap, %do.end86, %if.end79.cleanup_crit_edge, %out_free_bufmap.i, %if.end63.cleanup_crit_edge, %do.end59, %do.end47, %do.end34, %do.end18, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end86 ], [ 0, %if.end79.cleanup_crit_edge ], [ -22, %do.end3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %do.end18 ], [ -22, %do.end34 ], [ -22, %do.end47 ], [ -22, %do.end59 ], [ %ret.0, %out_free_bufmap ], [ -12, %if.end63.cleanup_crit_edge ], [ -12, %out_free_bufmap.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_bufmap_finalize() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__orangefs_bufmap, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  %2 = load i32, ptr getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 2), align 4
  %add.neg.i = xor i32 %2, -1
  %3 = load i32, ptr @rw_map, align 4
  %sub.i = add i32 %3, %add.neg.i
  store i32 %sub.i, ptr @rw_map, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  %4 = load i32, ptr getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 2), align 4
  %add.neg.i19 = xor i32 %4, -1
  %5 = load i32, ptr @readdir_map, align 4
  %sub.i20 = add i32 %5, %add.neg.i19
  store i32 %sub.i20, ptr @readdir_map, align 4
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %6 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and8 = and i64 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %do.end6.cleanup_crit_edge, label %do.end13

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end13:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_bufmap_run_down() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__orangefs_bufmap, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @run_down(ptr noundef nonnull @rw_map)
  tail call fastcc void @run_down(ptr noundef nonnull @readdir_map)
  tail call void @_raw_spin_lock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  store ptr null, ptr @__orangefs_bufmap, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @orangefs_bufmap_lock) #8
  %page_array.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %page_array.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %page_array.i, align 4
  %page_count.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %page_count.i, align 4
  tail call void @unpin_user_pages(ptr noundef %2, i32 noundef %4) #8
  %5 = ptrtoint ptr %page_array.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page_array.i, align 4
  tail call void @kfree(ptr noundef %6) #8
  %desc_array.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %0, i32 0, i32 6
  %7 = ptrtoint ptr %desc_array.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc_array.i, align 4
  tail call void @kfree(ptr noundef %8) #8
  %buffer_index_array.i = getelementptr inbounds %struct.orangefs_bufmap, ptr %0, i32 0, i32 7
  %9 = ptrtoint ptr %buffer_index_array.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer_index_array.i, align 4
  tail call void @bitmap_free(ptr noundef %10) #8
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_down(ptr noundef %m) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %q = getelementptr inbounds %struct.slot_map, ptr %m, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %q) #8
  %13 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %entry.if.end159_crit_edge, label %for.cond.preheader

entry.if.end159_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

for.cond.preheader:                               ; preds = %entry
  %head.i = getelementptr inbounds %struct.slot_map, ptr %m, i32 0, i32 1, i32 1
  %prev.i.i = getelementptr inbounds %struct.slot_map, ptr %m, i32 0, i32 1, i32 1, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end82, %for.cond.preheader
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %2, align 4
  %cmp.i.not = icmp eq ptr %16, %2
  br i1 %cmp.i.not, label %if.then8, label %for.cond.__here_crit_edge, !prof !89

for.cond.__here_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then8:                                         ; preds = %for.cond
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %18, ptr noundef %head.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.__here_crit_edge

if.then8.__here_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.end.i.i.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %2, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %head.i, ptr %2, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %3, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %2, ptr %18, align 4
  br label %__here

__here:                                           ; preds = %if.end.i.i.i, %if.then8.__here_crit_edge, %for.cond.__here_crit_edge
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@run_down, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 2, ptr %26, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !92
  %28 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m, align 4
  %cmp80 = icmp eq i32 %29, -1
  br i1 %cmp80, label %for.end, label %if.end82

if.end82:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %q) #8
  call void @schedule() #8
  call void @_raw_spin_lock(ptr noundef %q) #8
  br label %for.cond

for.end:                                          ; preds = %__here
  %call.i.i.i175 = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i.i175, label %if.end.i.i.i176, label %for.end.__remove_wait_queue.exit_crit_edge

for.end.__remove_wait_queue.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__remove_wait_queue.exit

if.end.i.i.i176:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i176, %for.end.__remove_wait_queue.exit_crit_edge
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  br label %__here138

__here138:                                        ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %task_state_change142 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 212
  %40 = ptrtoint ptr %task_state_change142 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 ptrtoint (ptr blockaddress(@run_down, %__here138) to i32), ptr %task_state_change142, align 4
  %41 = load ptr, ptr %task, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 0, ptr %41, align 128
  br label %if.end159

if.end159:                                        ; preds = %__here138, %entry.if.end159_crit_edge
  %map = getelementptr inbounds %struct.slot_map, ptr %m, i32 0, i32 3
  %43 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %map, align 4
  call void @_raw_spin_unlock(ptr noundef %q) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_bufmap_get() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  %0 = load i32, ptr @rw_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i = icmp slt i32 %0, 1
  br i1 %cmp.i, label %if.end.i, label %entry.if.then11.i_crit_edge, !prof !88

entry.if.then11.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @wait_for_free(ptr noundef nonnull @rw_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.then11.i_crit_edge, label %if.end.i.get.exit_crit_edge, !prof !89

if.end.i.get.exit_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get.exit

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i.if.then11.i_crit_edge, %entry.if.then11.i_crit_edge
  %1 = load i32, ptr @rw_map, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr @rw_map, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 3), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 2), align 4
  %call13.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %2, i32 noundef %3) #8
  %4 = load ptr, ptr getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 3), align 4
  %rem.i.i = and i32 %call13.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call13.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %4, i32 %div2.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %6, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %get.exit

get.exit:                                         ; preds = %if.then11.i, %if.end.i.get.exit_crit_edge
  %res.1.i = phi i32 [ %call13.i, %if.then11.i ], [ %call.i, %if.end.i.get.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  ret i32 %res.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_bufmap_put(i32 noundef %buffer_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 3), align 4
  %rem.i.i = and i32 %buffer_index, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %buffer_index, 5
  %add.ptr.i.i = getelementptr i32, ptr %0, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %2, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %3 = load i32, ptr @rw_map, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr @rw_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %3)
  %cmp.i = icmp ult i32 %3, 2147483647
  br i1 %cmp.i, label %entry.if.end6.sink.split.i_crit_edge, label %if.end.i

entry.if.end6.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc.i)
  %cmp2.i = icmp eq i32 %inc.i, -1
  br i1 %cmp2.i, label %if.end.i.if.end6.sink.split.i_crit_edge, label %if.end.i.put.exit_crit_edge, !prof !88

if.end.i.put.exit_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put.exit

if.end.i.if.end6.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.end.i.if.end6.sink.split.i_crit_edge, %entry.if.end6.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %entry.if.end6.sink.split.i_crit_edge ], [ 0, %if.end.i.if.end6.sink.split.i_crit_edge ]
  tail call void @__wake_up_locked(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1), i32 noundef 3, i32 noundef %.sink.i) #8
  br label %put.exit

put.exit:                                         ; preds = %if.end6.sink.split.i, %if.end.i.put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @rw_map, i32 0, i32 1)) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_readdir_index_get() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  %0 = load i32, ptr @readdir_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.i = icmp slt i32 %0, 1
  br i1 %cmp.i, label %if.end.i, label %entry.if.then11.i_crit_edge, !prof !88

entry.if.then11.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @wait_for_free(ptr noundef nonnull @readdir_map) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.then11.i_crit_edge, label %if.end.i.get.exit_crit_edge, !prof !89

if.end.i.get.exit_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get.exit

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i.if.then11.i_crit_edge, %entry.if.then11.i_crit_edge
  %1 = load i32, ptr @readdir_map, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr @readdir_map, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 3), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 2), align 4
  %call13.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %2, i32 noundef %3) #8
  %4 = load ptr, ptr getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 3), align 4
  %rem.i.i = and i32 %call13.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call13.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %4, i32 %div2.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %6, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %get.exit

get.exit:                                         ; preds = %if.then11.i, %if.end.i.get.exit_crit_edge
  %res.1.i = phi i32 [ %call13.i, %if.then11.i ], [ %call.i, %if.end.i.get.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  ret i32 %res.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_readdir_index_put(i32 noundef %buffer_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  %0 = load ptr, ptr getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 3), align 4
  %rem.i.i = and i32 %buffer_index, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %buffer_index, 5
  %add.ptr.i.i = getelementptr i32, ptr %0, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %2, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %3 = load i32, ptr @readdir_map, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr @readdir_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %3)
  %cmp.i = icmp ult i32 %3, 2147483647
  br i1 %cmp.i, label %entry.if.end6.sink.split.i_crit_edge, label %if.end.i

entry.if.end6.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %inc.i)
  %cmp2.i = icmp eq i32 %inc.i, -1
  br i1 %cmp2.i, label %if.end.i.if.end6.sink.split.i_crit_edge, label %if.end.i.put.exit_crit_edge, !prof !88

if.end.i.put.exit_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put.exit

if.end.i.if.end6.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.end.i.if.end6.sink.split.i_crit_edge, %entry.if.end6.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %entry.if.end6.sink.split.i_crit_edge ], [ 0, %if.end.i.if.end6.sink.split.i_crit_edge ]
  tail call void @__wake_up_locked(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1), i32 noundef 3, i32 noundef %.sink.i) #8
  br label %put.exit

put.exit:                                         ; preds = %if.end6.sink.split.i, %if.end.i.put.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef getelementptr inbounds (%struct.slot_map, ptr @readdir_map, i32 0, i32 1)) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_bufmap_copy_from_iovec(ptr noundef %iter, i32 noundef %buffer_index, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %0 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %0, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %buffer_index, i32 noundef %size) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %1 = load ptr, ptr @__orangefs_bufmap, align 4
  %desc_array = getelementptr inbounds %struct.orangefs_bufmap, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %desc_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_array, align 4
  %page_array = getelementptr %struct.orangefs_bufmap_desc, ptr %3, i32 %buffer_index, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool4.not23 = icmp eq i32 %size, 0
  br i1 %tobool4.not23, label %do.end3.cleanup13_crit_edge, label %do.end3.for.body_crit_edge

do.end3.for.body_crit_edge:                       ; preds = %do.end3
  br label %for.body

do.end3.cleanup13_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end3.for.body_crit_edge
  %size.addr.025 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %size, %do.end3.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end3.for.body_crit_edge ]
  %4 = ptrtoint ptr %page_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page_array, align 4
  %arrayidx5 = getelementptr ptr, ptr %5, i32 %i.024
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %size.addr.025, i32 4096)
  %call8 = tail call i32 @copy_page_from_iter(ptr noundef %7, i32 noundef 0, i32 noundef %8, ptr noundef %iter) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %8)
  %cmp9.not = icmp eq i32 %call8, %8
  br i1 %cmp9.not, label %for.inc, label %for.body.cleanup13_crit_edge

for.body.cleanup13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

for.inc:                                          ; preds = %for.body
  %sub = sub i32 %size.addr.025, %8
  %inc = add i32 %i.024, 1
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %for.inc.cleanup13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

cleanup13:                                        ; preds = %for.inc.cleanup13_crit_edge, %for.body.cleanup13_crit_edge, %do.end3.cleanup13_crit_edge
  %retval.2 = phi i32 [ 0, %do.end3.cleanup13_crit_edge ], [ 0, %for.inc.cleanup13_crit_edge ], [ -14, %for.body.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_bufmap_copy_to_iovec(ptr noundef %iter, i32 noundef %buffer_index, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__orangefs_bufmap, align 4
  %desc_array = getelementptr inbounds %struct.orangefs_bufmap, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %desc_array to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_array, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %3 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, i32 noundef %buffer_index, i32 noundef %size) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %page_array = getelementptr %struct.orangefs_bufmap_desc, ptr %2, i32 %buffer_index, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool4.not23 = icmp eq i32 %size, 0
  br i1 %tobool4.not23, label %do.end3.cleanup13_crit_edge, label %do.end3.for.body_crit_edge

do.end3.for.body_crit_edge:                       ; preds = %do.end3
  br label %for.body

do.end3.cleanup13_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end3.for.body_crit_edge
  %size.addr.025 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %size, %do.end3.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end3.for.body_crit_edge ]
  %4 = ptrtoint ptr %page_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page_array, align 4
  %arrayidx5 = getelementptr ptr, ptr %5, i32 %i.024
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %size.addr.025, i32 4096)
  %call8 = tail call i32 @copy_page_to_iter(ptr noundef %7, i32 noundef 0, i32 noundef %8, ptr noundef %iter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.body.cleanup13_crit_edge, label %for.inc

for.body.cleanup13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

for.inc:                                          ; preds = %for.body
  %sub = sub i32 %size.addr.025, %call8
  %inc = add i32 %i.024, 1
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %for.inc.cleanup13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup13

cleanup13:                                        ; preds = %for.inc.cleanup13_crit_edge, %for.body.cleanup13_crit_edge, %do.end3.cleanup13_crit_edge
  %retval.2 = phi i32 [ 0, %do.end3.cleanup13_crit_edge ], [ 0, %for.inc.cleanup13_crit_edge ], [ -14, %for.body.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @orangefs_bufmap_page_fill(ptr nocapture noundef writeonly %page_to, i32 noundef %buffer_index, i32 noundef %slot_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__orangefs_bufmap, align 4
  %desc_array = getelementptr inbounds %struct.orangefs_bufmap, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %desc_array to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_array, align 4
  %page_array = getelementptr %struct.orangefs_bufmap_desc, ptr %2, i32 %buffer_index, i32 1
  %3 = ptrtoint ptr %page_array to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %page_array, align 4
  %arrayidx1 = getelementptr ptr, ptr %4, i32 %slot_index
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %7, 512
  %8 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !93
  %12 = tail call i32 @llvm.read_register.i32(metadata !77) #8
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
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %6, i32 noundef %or.i) #8
  %18 = call ptr @memcpy(ptr %page_to, ptr %call.i.i, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !95
  %19 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !96
  %25 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_free(ptr noundef %m) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @slot_timeout_secs to i32))
  %0 = load i32, ptr @slot_timeout_secs, align 4
  %mul = mul i32 %0, 100
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !77) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @autoremove_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %4, align 4
  %head.i.i = getelementptr inbounds %struct.slot_map, ptr %m, i32 0, i32 1, i32 1
  %prev.i.i.i = getelementptr inbounds %struct.slot_map, ptr %m, i32 0, i32 1, i32 1, i32 1
  %q87 = getelementptr inbounds %struct.slot_map, ptr %m, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %entry
  %left.0 = phi i32 [ %mul, %entry ], [ %left.1, %cleanup.do.body_crit_edge ]
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %3, align 4
  %cmp.i.not = icmp eq ptr %15, %3
  br i1 %cmp.i.not, label %if.then, label %do.body.__here_crit_edge, !prof !89

do.body.__here_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then:                                          ; preds = %do.body
  %16 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wait, align 4
  %or.i = or i32 %17, 1
  store i32 %or.i, ptr %wait, align 4
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %19, ptr noundef %head.i.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.__here_crit_edge

if.then.__here_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.end.i.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i.i, ptr %3, align 4
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %4, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %3, ptr %19, align 4
  br label %__here

__here:                                           ; preds = %if.end.i.i.i.i, %if.then.__here_crit_edge, %do.body.__here_crit_edge
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 212
  %26 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 ptrtoint (ptr blockaddress(@wait_for_free, %__here) to i32), ptr %task_state_change, align 4
  %27 = load ptr, ptr %task, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 1, ptr %27, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  %29 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp = icmp sgt i32 %30, 0
  br i1 %cmp, label %__here.cleanup.thread_crit_edge, label %if.end79

__here.cleanup.thread_crit_edge:                  ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end79:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp81.not = icmp eq i32 %30, 0
  %31 = call i32 @llvm.smin.i32(i32 %left.0, i32 3000)
  %spec.select = select i1 %cmp81.not, i32 %left.0, i32 %31
  call void @_raw_spin_unlock(ptr noundef %q87) #8
  %call88 = call i32 @schedule_timeout(i32 noundef %spec.select) #8
  call void @_raw_spin_lock(ptr noundef %q87) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool91.not = icmp eq i32 %call88, 0
  br i1 %tobool91.not, label %land.lhs.true, label %if.end79.if.else_crit_edge, !prof !88

if.end79.if.else_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_cmp4(i32 %left.0, i32 %spec.select)
  %cmp100.not = icmp eq i32 %left.0, %spec.select
  br i1 %cmp100.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true101

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true101:                                 ; preds = %land.lhs.true
  %32 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp103 = icmp slt i32 %33, 0
  br i1 %cmp103, label %land.lhs.true101.if.end105_crit_edge, label %land.lhs.true101.if.else_crit_edge

land.lhs.true101.if.else_crit_edge:               ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true101.if.end105_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.else:                                          ; preds = %land.lhs.true101.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end79.if.else_crit_edge
  %sub = sub i32 %left.0, %spec.select
  %add = add i32 %sub, %call88
  br label %if.end105

if.end105:                                        ; preds = %if.else, %land.lhs.true101.if.end105_crit_edge
  %left.1 = phi i32 [ %add, %if.else ], [ 0, %land.lhs.true101.if.end105_crit_edge ]
  %34 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stack.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %40 = and i32 %39, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end105.cleanup.thread_crit_edge, !prof !89

if.end105.cleanup.thread_crit_edge:               ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

signal_pending.exit:                              ; preds = %if.end105
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %37, align 4
  %and1.i.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool109.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool109.not, label %cleanup, label %signal_pending.exit.cleanup.thread_crit_edge

signal_pending.exit.cleanup.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %signal_pending.exit.cleanup.thread_crit_edge, %if.end105.cleanup.thread_crit_edge, %__here.cleanup.thread_crit_edge
  %left.3.ph = phi i32 [ -4, %signal_pending.exit.cleanup.thread_crit_edge ], [ %left.0, %__here.cleanup.thread_crit_edge ], [ -4, %if.end105.cleanup.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.3.ph)
  %cmp114244 = icmp sgt i32 %left.3.ph, 0
  br label %do.end115

cleanup:                                          ; preds = %signal_pending.exit
  %cmp114 = icmp sgt i32 %left.1, 0
  br i1 %cmp114, label %cleanup.do.body_crit_edge, label %cleanup.do.end115_crit_edge

cleanup.do.end115_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end115:                                        ; preds = %cleanup.do.end115_crit_edge, %cleanup.thread
  %cmp114247 = phi i1 [ %cmp114244, %cleanup.thread ], [ false, %cleanup.do.end115_crit_edge ]
  %left.3246 = phi i32 [ %left.3.ph, %cleanup.thread ], [ %left.1, %cleanup.do.end115_crit_edge ]
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %3, align 4
  %cmp.i237.not = icmp eq ptr %44, %3
  br i1 %cmp.i237.not, label %if.else121, label %if.then119

if.then119:                                       ; preds = %do.end115
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then119.__here181_crit_edge

if.then119.__here181_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here181

if.end.i.i:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %4, align 4
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %__here181

if.else121:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %left.3246)
  %cmp122 = icmp slt i32 %left.3246, 1
  br i1 %cmp122, label %land.lhs.true123, label %if.else121.__here181_crit_edge

if.else121.__here181_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here181

land.lhs.true123:                                 ; preds = %if.else121
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %head.i.i, align 4
  %cmp.i.i.not = icmp eq ptr %52, %head.i.i
  br i1 %cmp.i.i.not, label %land.lhs.true123.__here181_crit_edge, label %if.then127

land.lhs.true123.__here181_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here181

if.then127:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wake_up_locked_key(ptr noundef %q87, i32 noundef 1, ptr noundef null) #8
  br label %__here181

__here181:                                        ; preds = %if.then127, %land.lhs.true123.__here181_crit_edge, %if.else121.__here181_crit_edge, %if.end.i.i, %if.then119.__here181_crit_edge
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %task_state_change185 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 212
  %55 = ptrtoint ptr %task_state_change185 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 ptrtoint (ptr blockaddress(@wait_for_free, %__here181) to i32), ptr %task_state_change185, align 4
  %56 = load ptr, ptr %task, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %56, align 128
  br i1 %cmp114247, label %__here181.cleanup212_crit_edge, label %if.end210, !prof !89

__here181.cleanup212_crit_edge:                   ; preds = %__here181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup212

if.end210:                                        ; preds = %__here181
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.3246)
  %cmp211.not = icmp eq i32 %left.3246, 0
  %cond = select i1 %cmp211.not, i32 -110, i32 -4
  br label %cleanup212

cleanup212:                                       ; preds = %if.end210, %__here181.cleanup212_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end210 ], [ 0, %__here181.cleanup212_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.named.register.sp = !{!77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 317, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @orangefs_bufmap_initialize._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @orangefs_bufmap_initialize._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 335, i32 3}
!8 = !{ptr @orangefs_bufmap_initialize._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @orangefs_bufmap_initialize._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 342, i32 3}
!12 = !{ptr @orangefs_bufmap_initialize._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @orangefs_bufmap_initialize._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 349, i32 3}
!16 = !{ptr @orangefs_bufmap_initialize._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @orangefs_bufmap_initialize._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 357, i32 3}
!20 = !{ptr @orangefs_bufmap_initialize._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @orangefs_bufmap_initialize._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 375, i32 3}
!24 = !{ptr @orangefs_bufmap_initialize._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @orangefs_bufmap_initialize._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 388, i32 2}
!28 = !{ptr @orangefs_bufmap_initialize._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @orangefs_bufmap_initialize._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 413, i32 2}
!32 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @orangefs_bufmap_finalize._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @orangefs_bufmap_finalize._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 416, i32 2}
!37 = !{ptr @orangefs_bufmap_finalize._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @orangefs_bufmap_finalize._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 491, i32 2}
!41 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @orangefs_bufmap_copy_from_iovec._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @orangefs_bufmap_copy_from_iovec._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 520, i32 2}
!46 = !{ptr @orangefs_bufmap_copy_to_iovec._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @orangefs_bufmap_copy_to_iovec._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__orangefs_bufmap, !49, !"__orangefs_bufmap", i1 false, i1 false}
!49 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 164, i32 4}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 166, i32 8}
!52 = !{ptr @orangefs_bufmap_lock, !51, !"orangefs_bufmap_lock", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 274, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @orangefs_bufmap_map._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @orangefs_bufmap_map._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 20, i32 7}
!63 = !{ptr @rw_map, !64, !"rw_map", i1 false, i1 false}
!64 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 18, i32 24}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 24, i32 7}
!67 = !{ptr @readdir_map, !68, !"readdir_map", i1 false, i1 false}
!68 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 22, i32 24}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 52, i32 4}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 62, i32 3}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 90, i32 3}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../fs/orangefs/orangefs-bufmap.c", i32 116, i32 2}
!77 = !{!"sp"}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i32 0, i32 33}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{i64 2150225116, i64 2150225289, i64 2150225304, i64 2150225356, i64 2150225415, i64 2150225439, i64 2150225480, i64 2150225501, i64 2150225529, i64 2150225561}
!91 = !{i64 2150225991, i64 2150226164, i64 2150226179, i64 2150226231, i64 2150226290, i64 2150226314, i64 2150226355, i64 2150226376, i64 2150226404, i64 2150226436}
!92 = !{i64 2154858205}
!93 = !{i64 2154078187}
!94 = !{i64 2152657913}
!95 = !{i64 2152658120}
!96 = !{i64 2154080958}
!97 = !{i64 2154868006}
