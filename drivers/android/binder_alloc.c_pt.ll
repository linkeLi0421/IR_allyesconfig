; ModuleID = '/llk/IR_all_yes/drivers/android/binder_alloc.c_pt.bc'
source_filename = "../drivers/android/binder_alloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.binder_alloc = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, %struct.rb_root, %struct.rb_root, i32, ptr, i32, i32, i32, i32, i8 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.binder_buffer = type { %struct.list_head, %struct.rb_node, i32, ptr, ptr, i32, i32, i32, ptr, i32 }
%struct.binder_lru_page = type { %struct.list_head, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@__param_str_debug_mask = internal constant [24 x i8] c"binder_alloc.debug_mask\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@binder_alloc_debug_mask = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @binder_alloc_debug_mask } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype313 = internal constant [38 x i8] c"binder_alloc.parmtype=debug_mask:uint\00", section ".modinfo", align 1
@binder_alloc_mmap_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.88, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @binder_alloc_mmap_lock, i64 52), ptr getelementptr (i8, ptr @binder_alloc_mmap_lock, i64 52) }, ptr @binder_alloc_mmap_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.89, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"already mapped\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc page array\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alloc buffer struct\00", [44 x i8] zeroinitializer }, align 32
@binder_alloc_mmap_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.binder_alloc_mmap_handler = private unnamed_addr constant [26 x i8] c"binder_alloc_mmap_handler\00", align 1
@binder_alloc_mmap_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.binder_alloc_mmap_handler, ptr @.str.5, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016binder_alloc: %s: %d %lx-%lx %s failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/android/binder_alloc.c\00", [33 x i8] zeroinitializer }, align 32
@binder_alloc_mmap_handler._entry_ptr = internal global ptr @binder_alloc_mmap_handler._entry, section ".printk_index", align 4
@binder_alloc_deferred_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@binder_alloc_lru = dso_local global { %struct.list_lru, [44 x i8] } zeroinitializer, align 32
@binder_alloc_deferred_release._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.binder_alloc_deferred_release = private unnamed_addr constant [30 x i8] c"binder_alloc_deferred_release\00", align 1
@binder_alloc_deferred_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.binder_alloc_deferred_release, ptr @.str.5, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016binder_alloc: %s: %d: page %d at %pK %s\0A\00", [53 x i8] zeroinitializer }, align 32
@binder_alloc_deferred_release._entry_ptr = internal global ptr @binder_alloc_deferred_release._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"on lru\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@binder_alloc_deferred_release._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_deferred_release._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.binder_alloc_deferred_release, ptr @.str.5, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016binder_alloc: %s: %d buffers %d, pages %d\0A\00", [51 x i8] zeroinitializer }, align 32
@binder_alloc_deferred_release._entry_ptr.12 = internal global ptr @binder_alloc_deferred_release._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  buffer\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  pages: %d:%d:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"  pages high watermark: %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@binder_alloc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&alloc->mutex\00", [18 x i8] zeroinitializer }, align 32
@binder_shrinker = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @binder_shrink_count, ptr @binder_shrink_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.binder_alloc_new_buf_locked = private unnamed_addr constant [28 x i8] c"binder_alloc_new_buf_locked\00", align 1
@binder_alloc_new_buf_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016binder_alloc: %d: binder_alloc_buf, no vma\0A\00", [50 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr = internal global ptr @binder_alloc_new_buf_locked._entry, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.18 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016binder_alloc: %d: got transaction with invalid size %zd-%zd\0A\00", [33 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.21 = internal global ptr @binder_alloc_new_buf_locked._entry.19, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016binder_alloc: %d: got transaction with invalid extra_buffers_size %zd\0A\00", [55 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.25 = internal global ptr @binder_alloc_new_buf_locked._entry.23, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016binder_alloc: %d: binder_alloc_buf size %zd failed, no async space left\0A\00", [53 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.29 = internal global ptr @binder_alloc_new_buf_locked._entry.27, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016binder_alloc: %d: binder_alloc_buf size %zd failed, no address space\0A\00", [56 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.33 = internal global ptr @binder_alloc_new_buf_locked._entry.31, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.34 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016binder_alloc: allocated: %zd (num: %zd largest: %zd), free: %zd (num: %zd largest: %zd)\0A\00", [37 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.37 = internal global ptr @binder_alloc_new_buf_locked._entry.35, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.38 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016binder_alloc: %d: binder_alloc_buf size %zd got buffer %pK size %zd\0A\00", [57 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.41 = internal global ptr @binder_alloc_new_buf_locked._entry.39, section ".printk_index", align 4
@binder_alloc_new_buf_locked._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013binder_alloc: %s: %d failed to alloc new buffer struct\0A\00", [38 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.44 = internal global ptr @binder_alloc_new_buf_locked._entry.42, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016binder_alloc: %d: binder_alloc_buf size %zd got %pK\0A\00", [41 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.48 = internal global ptr @binder_alloc_new_buf_locked._entry.46, section ".printk_index", align 4
@binder_alloc_new_buf_locked._rs.49 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.binder_alloc_new_buf_locked, ptr @.str.5, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016binder_alloc: %d: binder_alloc_buf size %zd async free %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@binder_alloc_new_buf_locked._entry_ptr.52 = internal global ptr @binder_alloc_new_buf_locked._entry.50, section ".printk_index", align 4
@binder_update_page_range._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.binder_update_page_range = private unnamed_addr constant [25 x i8] c"binder_update_page_range\00", align 1
@binder_update_page_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.binder_update_page_range, ptr @.str.5, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016binder_alloc: %d: %s pages %pK-%pK\0A\00", [58 x i8] zeroinitializer }, align 32
@binder_update_page_range._entry_ptr = internal global ptr @binder_update_page_range._entry, section ".printk_index", align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"allocate\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"free\00", [27 x i8] zeroinitializer }, align 32
@binder_update_page_range._rs.56 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_update_page_range._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.binder_update_page_range, ptr @.str.5, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016binder_alloc: %d: binder_alloc_buf failed to map pages in userspace, no vma\0A\00", [49 x i8] zeroinitializer }, align 32
@binder_update_page_range._entry_ptr.59 = internal global ptr @binder_update_page_range._entry.57, section ".printk_index", align 4
@binder_update_page_range._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.binder_update_page_range, ptr @.str.5, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013binder_alloc: %d: binder_alloc_buf failed for page at %pK\0A\00", [35 x i8] zeroinitializer }, align 32
@binder_update_page_range._entry_ptr.62 = internal global ptr @binder_update_page_range._entry.60, section ".printk_index", align 4
@binder_update_page_range._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @__func__.binder_update_page_range, ptr @.str.5, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013binder_alloc: %d: binder_alloc_buf failed to map page at %lx in userspace\0A\00", [51 x i8] zeroinitializer }, align 32
@binder_update_page_range._entry_ptr.65 = internal global ptr @binder_update_page_range._entry.63, section ".printk_index", align 4
@__tracepoint_binder_update_page_range = external dso_local global %struct.tracepoint, align 4
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/android/binder_trace.h\00", [33 x i8] zeroinitializer }, align 32
@trace_binder_update_page_range.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_binder_alloc_lru_start = external dso_local global %struct.tracepoint, align 4
@trace_binder_alloc_lru_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_binder_alloc_lru_end = external dso_local global %struct.tracepoint, align 4
@trace_binder_alloc_lru_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_binder_alloc_page_start = external dso_local global %struct.tracepoint, align 4
@trace_binder_alloc_page_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_binder_alloc_page_end = external dso_local global %struct.tracepoint, align 4
@trace_binder_alloc_page_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_binder_free_lru_start = external dso_local global %struct.tracepoint, align 4
@trace_binder_free_lru_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_binder_free_lru_end = external dso_local global %struct.tracepoint, align 4
@trace_binder_free_lru_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_low_async_space_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.debug_low_async_space_locked = private unnamed_addr constant [29 x i8] c"debug_low_async_space_locked\00", align 1
@debug_low_async_space_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.debug_low_async_space_locked, ptr @.str.5, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\016binder_alloc: %d: pid %d spamming oneway? %zd buffers allocated for a total size of %zd\0A\00", [37 x i8] zeroinitializer }, align 32
@debug_low_async_space_locked._entry_ptr = internal global ptr @debug_low_async_space_locked._entry, section ".printk_index", align 4
@binder_free_buf_locked._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.binder_free_buf_locked = private unnamed_addr constant [23 x i8] c"binder_free_buf_locked\00", align 1
@binder_free_buf_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.binder_free_buf_locked, ptr @.str.5, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016binder_alloc: %d: binder_free_buf %pK size %zd buffer_size %zd\0A\00", [62 x i8] zeroinitializer }, align 32
@binder_free_buf_locked._entry_ptr = internal global ptr @binder_free_buf_locked._entry, section ".printk_index", align 4
@binder_free_buf_locked._rs.72 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_free_buf_locked._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.binder_free_buf_locked, ptr @.str.5, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016binder_alloc: %d: binder_free_buf size %zd async free %zd\0A\00", [35 x i8] zeroinitializer }, align 32
@binder_free_buf_locked._entry_ptr.75 = internal global ptr @binder_free_buf_locked._entry.73, section ".printk_index", align 4
@binder_delete_free_buffer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.binder_delete_free_buffer = private unnamed_addr constant [26 x i8] c"binder_delete_free_buffer\00", align 1
@binder_delete_free_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.binder_delete_free_buffer, ptr @.str.5, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016binder_alloc: %d: merge free, buffer %pK share page with %pK\0A\00", [32 x i8] zeroinitializer }, align 32
@binder_delete_free_buffer._entry_ptr = internal global ptr @binder_delete_free_buffer._entry, section ".printk_index", align 4
@binder_delete_free_buffer._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_delete_free_buffer._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.binder_delete_free_buffer, ptr @.str.5, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@binder_delete_free_buffer._entry_ptr.79 = internal global ptr @binder_delete_free_buffer._entry.78, section ".printk_index", align 4
@binder_delete_free_buffer._rs.80 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_delete_free_buffer._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @__func__.binder_delete_free_buffer, ptr @.str.5, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016binder_alloc: %d: merge free, buffer start %pK is page aligned\0A\00", [62 x i8] zeroinitializer }, align 32
@binder_delete_free_buffer._entry_ptr.83 = internal global ptr @binder_delete_free_buffer._entry.81, section ".printk_index", align 4
@binder_delete_free_buffer._rs.84 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@binder_delete_free_buffer._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @__func__.binder_delete_free_buffer, ptr @.str.5, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016binder_alloc: %d: merge free, buffer %pK do not share page with %pK or %pK\0A\00", [50 x i8] zeroinitializer }, align 32
@binder_delete_free_buffer._entry_ptr.87 = internal global ptr @binder_delete_free_buffer._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"binder_alloc_mmap_lock.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"binder_alloc_mmap_lock\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@binder_insert_free_buffer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.binder_insert_free_buffer = private unnamed_addr constant [26 x i8] c"binder_insert_free_buffer\00", align 1
@binder_insert_free_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @__func__.binder_insert_free_buffer, ptr @.str.5, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016binder_alloc: %d: add free buffer, size %zd, at %pK\0A\00", [41 x i8] zeroinitializer }, align 32
@binder_insert_free_buffer._entry_ptr = internal global ptr @binder_insert_free_buffer._entry, section ".printk_index", align 4
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s %d: %pK size %zd:%zd:%zd %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"delivered\00", [22 x i8] zeroinitializer }, align 32
@__tracepoint_binder_unmap_user_start = external dso_local global %struct.tracepoint, align 4
@trace_binder_unmap_user_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_binder_unmap_user_end = external dso_local global %struct.tracepoint, align 4
@trace_binder_unmap_user_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__tracepoint_binder_unmap_kernel_start = external dso_local global %struct.tracepoint, align 4
@trace_binder_unmap_kernel_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_binder_unmap_kernel_end = external dso_local global %struct.tracepoint, align 4
@trace_binder_unmap_kernel_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"binder_alloc_debug_mask\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 39, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"binder_alloc_mmap_lock\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 760, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 774, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 781, i32 20 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 804, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"binder_alloc_lru\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 29, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 860, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 873, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 903, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 939, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 940, i32 16 }
@___asan_gen_.166 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1082, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [16 x i8] c"binder_shrinker\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1066, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 402, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 412, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 419, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 426, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 476, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 479, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 491, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 512, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 526, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 537, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 191, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 220, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 252, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 262, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant [34 x i8] c"../drivers/android/binder_trace.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 314, i32 1 }
@___asan_gen_.305 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 108, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 373, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 663, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 676, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 614, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 624, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 633, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 640, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 31, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 81, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 881, i32 16 }
@___asan_gen_.386 = private constant [34 x i8] c"../drivers/android/binder_alloc.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 885, i32 39 }
@___asan_gen_.389 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 44, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 230, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 214, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.398, i32 156, i32 2 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_debug_masktype313, ptr @__param_debug_mask, ptr @binder_alloc_deferred_release._entry, ptr @binder_alloc_deferred_release._entry.10, ptr @binder_alloc_deferred_release._entry_ptr, ptr @binder_alloc_deferred_release._entry_ptr.12, ptr @binder_alloc_mmap_handler._entry, ptr @binder_alloc_mmap_handler._entry_ptr, ptr @binder_alloc_new_buf_locked._entry, ptr @binder_alloc_new_buf_locked._entry.19, ptr @binder_alloc_new_buf_locked._entry.23, ptr @binder_alloc_new_buf_locked._entry.27, ptr @binder_alloc_new_buf_locked._entry.31, ptr @binder_alloc_new_buf_locked._entry.35, ptr @binder_alloc_new_buf_locked._entry.39, ptr @binder_alloc_new_buf_locked._entry.42, ptr @binder_alloc_new_buf_locked._entry.46, ptr @binder_alloc_new_buf_locked._entry.50, ptr @binder_alloc_new_buf_locked._entry_ptr, ptr @binder_alloc_new_buf_locked._entry_ptr.21, ptr @binder_alloc_new_buf_locked._entry_ptr.25, ptr @binder_alloc_new_buf_locked._entry_ptr.29, ptr @binder_alloc_new_buf_locked._entry_ptr.33, ptr @binder_alloc_new_buf_locked._entry_ptr.37, ptr @binder_alloc_new_buf_locked._entry_ptr.41, ptr @binder_alloc_new_buf_locked._entry_ptr.44, ptr @binder_alloc_new_buf_locked._entry_ptr.48, ptr @binder_alloc_new_buf_locked._entry_ptr.52, ptr @binder_delete_free_buffer._entry, ptr @binder_delete_free_buffer._entry.78, ptr @binder_delete_free_buffer._entry.81, ptr @binder_delete_free_buffer._entry.85, ptr @binder_delete_free_buffer._entry_ptr, ptr @binder_delete_free_buffer._entry_ptr.79, ptr @binder_delete_free_buffer._entry_ptr.83, ptr @binder_delete_free_buffer._entry_ptr.87, ptr @binder_free_buf_locked._entry, ptr @binder_free_buf_locked._entry.73, ptr @binder_free_buf_locked._entry_ptr, ptr @binder_free_buf_locked._entry_ptr.75, ptr @binder_insert_free_buffer._entry, ptr @binder_insert_free_buffer._entry_ptr, ptr @binder_update_page_range._entry, ptr @binder_update_page_range._entry.57, ptr @binder_update_page_range._entry.60, ptr @binder_update_page_range._entry.63, ptr @binder_update_page_range._entry_ptr, ptr @binder_update_page_range._entry_ptr.59, ptr @binder_update_page_range._entry_ptr.62, ptr @binder_update_page_range._entry_ptr.65, ptr @debug_low_async_space_locked._entry, ptr @debug_low_async_space_locked._entry_ptr, ptr @binder_alloc_debug_mask, ptr @binder_alloc_mmap_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @binder_alloc_mmap_handler._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @binder_alloc_lru, ptr @binder_alloc_deferred_release._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @binder_alloc_deferred_release._rs.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @binder_alloc_init.__key, ptr @.str.16, ptr @binder_shrinker, ptr @binder_alloc_new_buf_locked._rs, ptr @.str.17, ptr @binder_alloc_new_buf_locked._rs.18, ptr @.str.20, ptr @binder_alloc_new_buf_locked._rs.22, ptr @.str.24, ptr @binder_alloc_new_buf_locked._rs.26, ptr @.str.28, ptr @binder_alloc_new_buf_locked._rs.30, ptr @.str.32, ptr @binder_alloc_new_buf_locked._rs.34, ptr @.str.36, ptr @binder_alloc_new_buf_locked._rs.38, ptr @.str.40, ptr @.str.43, ptr @binder_alloc_new_buf_locked._rs.45, ptr @.str.47, ptr @binder_alloc_new_buf_locked._rs.49, ptr @.str.51, ptr @binder_update_page_range._rs, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @binder_update_page_range._rs.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @debug_low_async_space_locked._rs, ptr @.str.70, ptr @binder_free_buf_locked._rs, ptr @.str.71, ptr @binder_free_buf_locked._rs.72, ptr @.str.74, ptr @binder_delete_free_buffer._rs, ptr @.str.76, ptr @binder_delete_free_buffer._rs.77, ptr @binder_delete_free_buffer._rs.80, ptr @.str.82, ptr @binder_delete_free_buffer._rs.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @binder_insert_free_buffer._rs, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_debug_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_mmap_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_mmap_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_mmap_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_lru to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_deferred_release._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_deferred_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_deferred_release._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_deferred_release._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_shrinker to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.38 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._rs.49 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_alloc_new_buf_locked._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_update_page_range._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_update_page_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_update_page_range._rs.56 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_update_page_range._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_update_page_range._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_update_page_range._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_low_async_space_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_low_async_space_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_free_buf_locked._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_free_buf_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_free_buf_locked._rs.72 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_free_buf_locked._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._rs.80 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._rs.84 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_delete_free_buffer._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_insert_free_buffer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @binder_insert_free_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @binder_alloc_prepare_to_free(ptr noundef %alloc, i32 noundef %user_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %alloc, i32 noundef 0) #10
  %allocated_buffers.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 6
  %0 = inttoptr i32 %user_ptr to ptr
  %1 = ptrtoint ptr %allocated_buffers.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.041.i = load ptr, ptr %allocated_buffers.i, align 4
  %tobool.not42.i = icmp eq ptr %n.041.i, null
  br i1 %tobool.not42.i, label %entry.binder_alloc_prepare_to_free_locked.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.binder_alloc_prepare_to_free_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_prepare_to_free_locked.exit

while.body.i:                                     ; preds = %if.end24.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %n.043.i = phi ptr [ %n.0.i, %if.end24.i.while.body.i_crit_edge ], [ %n.041.i, %entry.while.body.i_crit_edge ]
  %free.i = getelementptr i8, ptr %n.043.i, i32 12
  %2 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool1.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool1.not.i, label %do.end9.i, label %do.body4.i, !prof !229

do.body4.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 138, 0\0A.popsection", ""() #10, !srcloc !230
  unreachable

do.end9.i:                                        ; preds = %while.body.i
  %user_data.i = getelementptr i8, ptr %n.043.i, i32 36
  %3 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %user_data.i, align 4
  %cmp.i = icmp ugt ptr %4, %0
  br i1 %cmp.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.043.i, i32 0, i32 2
  br label %if.end24.i

if.else.i:                                        ; preds = %do.end9.i
  %cmp12.i = icmp ult ptr %4, %0
  br i1 %cmp12.i, label %if.then13.i, label %if.else14.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.043.i, i32 0, i32 1
  br label %if.end24.i

if.else14.i:                                      ; preds = %if.else.i
  %5 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool17.not.i = icmp eq i32 %5, 0
  br i1 %tobool17.not.i, label %if.else14.i.binder_alloc_prepare_to_free_locked.exit_crit_edge, label %if.end19.i

if.else14.i.binder_alloc_prepare_to_free_locked.exit_crit_edge: ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_prepare_to_free_locked.exit

if.end19.i:                                       ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  %free.i.le = getelementptr i8, ptr %n.043.i, i32 12
  %add.ptr.le.i = getelementptr i8, ptr %n.043.i, i32 -8
  %bf.clear22.i = and i32 %bf.load.i, -536870913
  %6 = ptrtoint ptr %free.i.le to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bf.clear22.i, ptr %free.i.le, align 4
  br label %binder_alloc_prepare_to_free_locked.exit

if.end24.i:                                       ; preds = %if.then13.i, %if.then10.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then10.i ], [ %rb_right.i, %if.then13.i ]
  %7 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end24.i.binder_alloc_prepare_to_free_locked.exit_crit_edge, label %if.end24.i.while.body.i_crit_edge

if.end24.i.while.body.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end24.i.binder_alloc_prepare_to_free_locked.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_prepare_to_free_locked.exit

binder_alloc_prepare_to_free_locked.exit:         ; preds = %if.end24.i.binder_alloc_prepare_to_free_locked.exit_crit_edge, %if.end19.i, %if.else14.i.binder_alloc_prepare_to_free_locked.exit_crit_edge, %entry.binder_alloc_prepare_to_free_locked.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.le.i, %if.end19.i ], [ inttoptr (i32 -1 to ptr), %if.else14.i.binder_alloc_prepare_to_free_locked.exit_crit_edge ], [ null, %entry.binder_alloc_prepare_to_free_locked.exit_crit_edge ], [ null, %if.end24.i.binder_alloc_prepare_to_free_locked.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc) #10
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @binder_alloc_new_buf(ptr noundef %alloc, i32 noundef %data_size, i32 noundef %offsets_size, i32 noundef %extra_buffers_size, i32 noundef %is_async, i32 noundef %pid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %alloc, i32 noundef 0) #10
  %free_buffers.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 5
  %0 = ptrtoint ptr %free_buffers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_buffers.i, align 4
  %vma1.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 1
  %2 = ptrtoint ptr %vma1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.do.body.i_crit_edge, label %binder_alloc_get_vma.exit.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

binder_alloc_get_vma.exit.i:                      ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !231
  %4 = ptrtoint ptr %vma1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vma1.i.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %binder_alloc_get_vma.exit.i.do.body.i_crit_edge, label %if.end13.i

binder_alloc_get_vma.exit.i.do.body.i_crit_edge:  ; preds = %binder_alloc_get_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %binder_alloc_get_vma.exit.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %6 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.binder_alloc_new_buf_locked.exit_crit_edge, label %if.then2.i

do.body.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

if.then2.i:                                       ; preds = %do.body.i
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then2.i.binder_alloc_new_buf_locked.exit_crit_edge, label %do.end.i

if.then2.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

do.end.i:                                         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid7.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %7 = ptrtoint ptr %pid7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid7.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %8) #13
  br label %binder_alloc_new_buf_locked.exit

if.end13.i:                                       ; preds = %binder_alloc_get_vma.exit.i
  %add.i = add i32 %data_size, 3
  %and14.i = and i32 %add.i, -4
  %add15.i = add i32 %offsets_size, 3
  %and16.i = and i32 %add15.i, -4
  %add17.i = add i32 %and16.i, %and14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %data_size)
  %cmp.i = icmp ult i32 %add17.i, %data_size
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %offsets_size)
  %cmp18.i = icmp ult i32 %add17.i, %offsets_size
  %or.cond.i = or i1 %cmp.i, %cmp18.i
  br i1 %or.cond.i, label %do.body20.i, label %if.end38.i

do.body20.i:                                      ; preds = %if.end13.i
  %9 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and21.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.binder_alloc_new_buf_locked.exit_crit_edge, label %if.then23.i

do.body20.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

if.then23.i:                                      ; preds = %do.body20.i
  %call24.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.18, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then23.i.binder_alloc_new_buf_locked.exit_crit_edge, label %do.end29.i

if.then23.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

do.end29.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid31.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %10 = ptrtoint ptr %pid31.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pid31.i, align 4
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %11, i32 noundef %data_size, i32 noundef %offsets_size) #13
  br label %binder_alloc_new_buf_locked.exit

if.end38.i:                                       ; preds = %if.end13.i
  %add39.i = add i32 %extra_buffers_size, 3
  %and40.i = and i32 %add39.i, -4
  %add41.i = add i32 %add17.i, %and40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i, i32 %add17.i)
  %cmp42.i = icmp ult i32 %add41.i, %add17.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i, i32 %extra_buffers_size)
  %cmp44.i = icmp ult i32 %add41.i, %extra_buffers_size
  %or.cond484.i = or i1 %cmp42.i, %cmp44.i
  br i1 %or.cond484.i, label %do.body46.i, label %if.end64.i

do.body46.i:                                      ; preds = %if.end38.i
  %12 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and47.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %do.body46.i.binder_alloc_new_buf_locked.exit_crit_edge, label %if.then49.i

do.body46.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %do.body46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

if.then49.i:                                      ; preds = %do.body46.i
  %call50.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.22, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then49.i.binder_alloc_new_buf_locked.exit_crit_edge, label %do.end55.i

if.then49.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

do.end55.i:                                       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid57.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %13 = ptrtoint ptr %pid57.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid57.i, align 4
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %14, i32 noundef %extra_buffers_size) #13
  br label %binder_alloc_new_buf_locked.exit

if.end64.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_async)
  %tobool65.not.i = icmp eq i32 %is_async, 0
  br i1 %tobool65.not.i, label %if.end64.i.if.end87.i_crit_edge, label %land.lhs.true.i

if.end64.i.if.end87.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

land.lhs.true.i:                                  ; preds = %if.end64.i
  %free_async_space.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 7
  %15 = ptrtoint ptr %free_async_space.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %free_async_space.i, align 4
  %add66.i = add i32 %add41.i, 52
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add66.i)
  %cmp67.i = icmp ult i32 %16, %add66.i
  br i1 %cmp67.i, label %do.body69.i, label %land.lhs.true.i.if.end87.i_crit_edge

land.lhs.true.i.if.end87.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

do.body69.i:                                      ; preds = %land.lhs.true.i
  %17 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and70.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %do.body69.i.binder_alloc_new_buf_locked.exit_crit_edge, label %if.then72.i

do.body69.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

if.then72.i:                                      ; preds = %do.body69.i
  %call73.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.26, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.then72.i.binder_alloc_new_buf_locked.exit_crit_edge, label %do.end78.i

if.then72.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

do.end78.i:                                       ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid80.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %18 = ptrtoint ptr %pid80.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pid80.i, align 4
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %19, i32 noundef %add41.i) #13
  br label %binder_alloc_new_buf_locked.exit

if.end87.i:                                       ; preds = %land.lhs.true.i.if.end87.i_crit_edge, %if.end64.i.if.end87.i_crit_edge
  %20 = tail call i32 @llvm.umax.i32(i32 %add41.i, i32 4) #10
  %tobool90.not553.i = icmp eq ptr %1, null
  br i1 %tobool90.not553.i, label %if.end87.i.if.then116.i_crit_edge, label %while.body.lr.ph.i

if.end87.i.if.then116.i_crit_edge:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

while.body.lr.ph.i:                               ; preds = %if.end87.i
  %buffers.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %buffer2.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %buffer_size.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end114.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %n.0555.i = phi ptr [ %1, %while.body.lr.ph.i ], [ %n.1.i, %if.end114.i.while.body.i_crit_edge ]
  %best_fit.0554.i = phi ptr [ null, %while.body.lr.ph.i ], [ %best_fit.1.i, %if.end114.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.0555.i, i32 -8
  %free.i = getelementptr i8, ptr %n.0555.i, i32 12
  %21 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool93.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool93.not.i, label %do.body98.i, label %do.end106.i, !prof !232

do.body98.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 437, 0\0A.popsection", ""() #10, !srcloc !233
  unreachable

do.end106.i:                                      ; preds = %while.body.i
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %buffers.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %buffer2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer2.i.i, align 4
  %26 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %27
  br label %binder_alloc_buffer_size.exit.i

if.end.i.i:                                       ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i.i = getelementptr inbounds %struct.binder_buffer, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %user_data4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %user_data4.i.i, align 4
  br label %binder_alloc_buffer_size.exit.i

binder_alloc_buffer_size.exit.i:                  ; preds = %if.end.i.i, %if.then.i.i
  %.sink14.i.i = phi ptr [ %29, %if.end.i.i ], [ %add.ptr.i.i, %if.then.i.i ]
  %user_data5.i.i = getelementptr i8, ptr %n.0555.i, i32 36
  %30 = ptrtoint ptr %user_data5.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_data5.i.i, align 4
  %sub.ptr.lhs.cast6.i.i = ptrtoint ptr %.sink14.i.i to i32
  %sub.ptr.rhs.cast7.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub8.i.i = sub i32 %sub.ptr.lhs.cast6.i.i, %sub.ptr.rhs.cast7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub.ptr.sub8.i.i)
  %cmp108.i = icmp ult i32 %20, %sub.ptr.sub8.i.i
  br i1 %cmp108.i, label %if.then109.i, label %if.else.i

if.then109.i:                                     ; preds = %binder_alloc_buffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0555.i, i32 0, i32 2
  br label %if.end114.i

if.else.i:                                        ; preds = %binder_alloc_buffer_size.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub.ptr.sub8.i.i)
  %cmp110.i = icmp ugt i32 %20, %sub.ptr.sub8.i.i
  br i1 %cmp110.i, label %if.then111.i, label %if.else.i.do.body189.i_crit_edge

if.else.i.do.body189.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body189.i

if.then111.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0555.i, i32 0, i32 1
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then111.i, %if.then109.i
  %best_fit.1.i = phi ptr [ %n.0555.i, %if.then109.i ], [ %best_fit.0554.i, %if.then111.i ]
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then109.i ], [ %rb_right.i, %if.then111.i ]
  %32 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %n.1.i = load ptr, ptr %n.1.in.i, align 4
  %tobool90.not.i = icmp eq ptr %n.1.i, null
  br i1 %tobool90.not.i, label %while.end.i, label %if.end114.i.while.body.i_crit_edge

if.end114.i.while.body.i_crit_edge:               ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end114.i
  %cmp115.i = icmp eq ptr %best_fit.1.i, null
  br i1 %cmp115.i, label %while.end.i.if.then116.i_crit_edge, label %if.then183.i

while.end.i.if.then116.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

if.then116.i:                                     ; preds = %while.end.i.if.then116.i_crit_edge, %if.end87.i.if.then116.i_crit_edge
  %allocated_buffers118.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 6
  %call119.i = tail call ptr @rb_first(ptr noundef %allocated_buffers118.i) #10
  %cmp120.not558.i = icmp eq ptr %call119.i, null
  br i1 %cmp120.not558.i, label %if.then116.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then116.i.for.end.i_crit_edge:                 ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then116.i
  %buffers.i488.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %buffer2.i490.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %buffer_size.i491.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %binder_alloc_buffer_size.exit501.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.2562.i = phi ptr [ %call119.i, %for.body.lr.ph.i ], [ %call129.i, %binder_alloc_buffer_size.exit501.i.for.body.i_crit_edge ]
  %total_alloc_size.0561.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add125.i, %binder_alloc_buffer_size.exit501.i.for.body.i_crit_edge ]
  %largest_alloc_size.0560.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %43, %binder_alloc_buffer_size.exit501.i.for.body.i_crit_edge ]
  %allocated_buffers.0559.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %binder_alloc_buffer_size.exit501.i.for.body.i_crit_edge ]
  %add.ptr123.i = getelementptr i8, ptr %n.2562.i, i32 -8
  %33 = ptrtoint ptr %add.ptr123.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr123.i, align 4
  %cmp.i.not.i489.i = icmp eq ptr %34, %buffers.i488.i
  br i1 %cmp.i.not.i489.i, label %if.then.i493.i, label %if.end.i495.i

if.then.i493.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %buffer2.i490.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer2.i490.i, align 4
  %37 = ptrtoint ptr %buffer_size.i491.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %buffer_size.i491.i, align 4
  %add.ptr.i492.i = getelementptr i8, ptr %36, i32 %38
  br label %binder_alloc_buffer_size.exit501.i

if.end.i495.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i494.i = getelementptr inbounds %struct.binder_buffer, ptr %34, i32 0, i32 8
  %39 = ptrtoint ptr %user_data4.i494.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user_data4.i494.i, align 4
  br label %binder_alloc_buffer_size.exit501.i

binder_alloc_buffer_size.exit501.i:               ; preds = %if.end.i495.i, %if.then.i493.i
  %.sink14.i496.i = phi ptr [ %40, %if.end.i495.i ], [ %add.ptr.i492.i, %if.then.i493.i ]
  %user_data5.i497.i = getelementptr i8, ptr %n.2562.i, i32 36
  %41 = ptrtoint ptr %user_data5.i497.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %user_data5.i497.i, align 4
  %sub.ptr.lhs.cast6.i498.i = ptrtoint ptr %.sink14.i496.i to i32
  %sub.ptr.rhs.cast7.i499.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub8.i500.i = sub i32 %sub.ptr.lhs.cast6.i498.i, %sub.ptr.rhs.cast7.i499.i
  %inc.i = add i32 %allocated_buffers.0559.i, 1
  %add125.i = add i32 %sub.ptr.sub8.i500.i, %total_alloc_size.0561.i
  %43 = tail call i32 @llvm.umax.i32(i32 %sub.ptr.sub8.i500.i, i32 %largest_alloc_size.0560.i) #10
  %call129.i = tail call ptr @rb_next(ptr noundef nonnull %n.2562.i) #10
  %cmp120.not.i = icmp eq ptr %call129.i, null
  br i1 %cmp120.not.i, label %binder_alloc_buffer_size.exit501.i.for.end.i_crit_edge, label %binder_alloc_buffer_size.exit501.i.for.body.i_crit_edge

binder_alloc_buffer_size.exit501.i.for.body.i_crit_edge: ; preds = %binder_alloc_buffer_size.exit501.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

binder_alloc_buffer_size.exit501.i.for.end.i_crit_edge: ; preds = %binder_alloc_buffer_size.exit501.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %binder_alloc_buffer_size.exit501.i.for.end.i_crit_edge, %if.then116.i.for.end.i_crit_edge
  %allocated_buffers.0.lcssa.i = phi i32 [ 0, %if.then116.i.for.end.i_crit_edge ], [ %inc.i, %binder_alloc_buffer_size.exit501.i.for.end.i_crit_edge ]
  %largest_alloc_size.0.lcssa.i = phi i32 [ 0, %if.then116.i.for.end.i_crit_edge ], [ %43, %binder_alloc_buffer_size.exit501.i.for.end.i_crit_edge ]
  %total_alloc_size.0.lcssa.i = phi i32 [ 0, %if.then116.i.for.end.i_crit_edge ], [ %add125.i, %binder_alloc_buffer_size.exit501.i.for.end.i_crit_edge ]
  %call131.i = tail call ptr @rb_first(ptr noundef %free_buffers.i) #10
  %cmp133.not566.i = icmp eq ptr %call131.i, null
  br i1 %cmp133.not566.i, label %for.end.i.do.body147.i_crit_edge, label %for.body134.lr.ph.i

for.end.i.do.body147.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147.i

for.body134.lr.ph.i:                              ; preds = %for.end.i
  %buffers.i502.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %buffer2.i504.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %buffer_size.i505.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  br label %for.body134.i

for.body134.i:                                    ; preds = %binder_alloc_buffer_size.exit515.i.for.body134.i_crit_edge, %for.body134.lr.ph.i
  %n.3570.i = phi ptr [ %call131.i, %for.body134.lr.ph.i ], [ %call145.i, %binder_alloc_buffer_size.exit515.i.for.body134.i_crit_edge ]
  %total_free_size.0569.i = phi i32 [ 0, %for.body134.lr.ph.i ], [ %add140.i, %binder_alloc_buffer_size.exit515.i.for.body134.i_crit_edge ]
  %largest_free_size.0568.i = phi i32 [ 0, %for.body134.lr.ph.i ], [ %54, %binder_alloc_buffer_size.exit515.i.for.body134.i_crit_edge ]
  %free_buffers117.0567.i = phi i32 [ 0, %for.body134.lr.ph.i ], [ %inc139.i, %binder_alloc_buffer_size.exit515.i.for.body134.i_crit_edge ]
  %add.ptr137.i = getelementptr i8, ptr %n.3570.i, i32 -8
  %44 = ptrtoint ptr %add.ptr137.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr137.i, align 4
  %cmp.i.not.i503.i = icmp eq ptr %45, %buffers.i502.i
  br i1 %cmp.i.not.i503.i, label %if.then.i507.i, label %if.end.i509.i

if.then.i507.i:                                   ; preds = %for.body134.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %buffer2.i504.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer2.i504.i, align 4
  %48 = ptrtoint ptr %buffer_size.i505.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buffer_size.i505.i, align 4
  %add.ptr.i506.i = getelementptr i8, ptr %47, i32 %49
  br label %binder_alloc_buffer_size.exit515.i

if.end.i509.i:                                    ; preds = %for.body134.i
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i508.i = getelementptr inbounds %struct.binder_buffer, ptr %45, i32 0, i32 8
  %50 = ptrtoint ptr %user_data4.i508.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user_data4.i508.i, align 4
  br label %binder_alloc_buffer_size.exit515.i

binder_alloc_buffer_size.exit515.i:               ; preds = %if.end.i509.i, %if.then.i507.i
  %.sink14.i510.i = phi ptr [ %51, %if.end.i509.i ], [ %add.ptr.i506.i, %if.then.i507.i ]
  %user_data5.i511.i = getelementptr i8, ptr %n.3570.i, i32 36
  %52 = ptrtoint ptr %user_data5.i511.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %user_data5.i511.i, align 4
  %sub.ptr.lhs.cast6.i512.i = ptrtoint ptr %.sink14.i510.i to i32
  %sub.ptr.rhs.cast7.i513.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub8.i514.i = sub i32 %sub.ptr.lhs.cast6.i512.i, %sub.ptr.rhs.cast7.i513.i
  %inc139.i = add i32 %free_buffers117.0567.i, 1
  %add140.i = add i32 %sub.ptr.sub8.i514.i, %total_free_size.0569.i
  %54 = tail call i32 @llvm.umax.i32(i32 %sub.ptr.sub8.i514.i, i32 %largest_free_size.0568.i) #10
  %call145.i = tail call ptr @rb_next(ptr noundef nonnull %n.3570.i) #10
  %cmp133.not.i = icmp eq ptr %call145.i, null
  br i1 %cmp133.not.i, label %binder_alloc_buffer_size.exit515.i.do.body147.i_crit_edge, label %binder_alloc_buffer_size.exit515.i.for.body134.i_crit_edge

binder_alloc_buffer_size.exit515.i.for.body134.i_crit_edge: ; preds = %binder_alloc_buffer_size.exit515.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body134.i

binder_alloc_buffer_size.exit515.i.do.body147.i_crit_edge: ; preds = %binder_alloc_buffer_size.exit515.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147.i

do.body147.i:                                     ; preds = %binder_alloc_buffer_size.exit515.i.do.body147.i_crit_edge, %for.end.i.do.body147.i_crit_edge
  %free_buffers117.0.lcssa.i = phi i32 [ 0, %for.end.i.do.body147.i_crit_edge ], [ %inc139.i, %binder_alloc_buffer_size.exit515.i.do.body147.i_crit_edge ]
  %largest_free_size.0.lcssa.i = phi i32 [ 0, %for.end.i.do.body147.i_crit_edge ], [ %54, %binder_alloc_buffer_size.exit515.i.do.body147.i_crit_edge ]
  %total_free_size.0.lcssa.i = phi i32 [ 0, %for.end.i.do.body147.i_crit_edge ], [ %add140.i, %binder_alloc_buffer_size.exit515.i.do.body147.i_crit_edge ]
  %55 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and148.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148.i)
  %tobool149.not.i = icmp eq i32 %and148.i, 0
  br i1 %tobool149.not.i, label %do.body147.i.do.body164.i_crit_edge, label %if.then150.i

do.body147.i.do.body164.i_crit_edge:              ; preds = %do.body147.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body164.i

if.then150.i:                                     ; preds = %do.body147.i
  %call151.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.30, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i)
  %tobool152.not.i = icmp eq i32 %call151.i, 0
  br i1 %tobool152.not.i, label %if.then150.i.do.body164.i_crit_edge, label %do.end156.i

if.then150.i.do.body164.i_crit_edge:              ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body164.i

do.end156.i:                                      ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid158.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %56 = ptrtoint ptr %pid158.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pid158.i, align 4
  %call159.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %57, i32 noundef %20) #13
  br label %do.body164.i

do.body164.i:                                     ; preds = %do.end156.i, %if.then150.i.do.body164.i_crit_edge, %do.body147.i.do.body164.i_crit_edge
  %58 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and165.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165.i)
  %tobool166.not.i = icmp eq i32 %and165.i, 0
  br i1 %tobool166.not.i, label %do.body164.i.binder_alloc_new_buf_locked.exit_crit_edge, label %if.then167.i

do.body164.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

if.then167.i:                                     ; preds = %do.body164.i
  %call168.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.34, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool169.not.i = icmp eq i32 %call168.i, 0
  br i1 %tobool169.not.i, label %if.then167.i.binder_alloc_new_buf_locked.exit_crit_edge, label %do.end173.i

if.then167.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

do.end173.i:                                      ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #12
  %call175.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %total_alloc_size.0.lcssa.i, i32 noundef %allocated_buffers.0.lcssa.i, i32 noundef %largest_alloc_size.0.lcssa.i, i32 noundef %total_free_size.0.lcssa.i, i32 noundef %free_buffers117.0.lcssa.i, i32 noundef %largest_free_size.0.lcssa.i) #13
  br label %binder_alloc_new_buf_locked.exit

if.then183.i:                                     ; preds = %while.end.i
  %add.ptr186.i = getelementptr i8, ptr %best_fit.1.i, i32 -8
  %59 = ptrtoint ptr %add.ptr186.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr186.i, align 4
  %cmp.i.not.i517.i = icmp eq ptr %60, %buffers.i.i
  br i1 %cmp.i.not.i517.i, label %if.then.i521.i, label %if.end.i523.i

if.then.i521.i:                                   ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %buffer2.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer2.i.i, align 4
  %63 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %buffer_size.i.i, align 4
  %add.ptr.i520.i = getelementptr i8, ptr %62, i32 %64
  br label %binder_alloc_buffer_size.exit529.i

if.end.i523.i:                                    ; preds = %if.then183.i
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i522.i = getelementptr inbounds %struct.binder_buffer, ptr %60, i32 0, i32 8
  %65 = ptrtoint ptr %user_data4.i522.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %user_data4.i522.i, align 4
  br label %binder_alloc_buffer_size.exit529.i

binder_alloc_buffer_size.exit529.i:               ; preds = %if.end.i523.i, %if.then.i521.i
  %.sink14.i524.i = phi ptr [ %66, %if.end.i523.i ], [ %add.ptr.i520.i, %if.then.i521.i ]
  %user_data5.i525.i = getelementptr i8, ptr %best_fit.1.i, i32 36
  %67 = ptrtoint ptr %user_data5.i525.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %user_data5.i525.i, align 4
  %sub.ptr.lhs.cast6.i526.i = ptrtoint ptr %.sink14.i524.i to i32
  %sub.ptr.rhs.cast7.i527.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub8.i528.i = sub i32 %sub.ptr.lhs.cast6.i526.i, %sub.ptr.rhs.cast7.i527.i
  br label %do.body189.i

do.body189.i:                                     ; preds = %binder_alloc_buffer_size.exit529.i, %if.else.i.do.body189.i_crit_edge
  %tobool90.not547.i = phi i1 [ false, %binder_alloc_buffer_size.exit529.i ], [ true, %if.else.i.do.body189.i_crit_edge ]
  %best_fit.2536542.i = phi ptr [ %best_fit.1.i, %binder_alloc_buffer_size.exit529.i ], [ %n.0555.i, %if.else.i.do.body189.i_crit_edge ]
  %buffer_size.2.i = phi i32 [ %sub.ptr.sub8.i528.i, %binder_alloc_buffer_size.exit529.i ], [ %sub.ptr.sub8.i.i, %if.else.i.do.body189.i_crit_edge ]
  %buffer.2.i = phi ptr [ %add.ptr186.i, %binder_alloc_buffer_size.exit529.i ], [ %add.ptr.i, %if.else.i.do.body189.i_crit_edge ]
  %69 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and190.i = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i)
  %tobool191.not.i = icmp eq i32 %and190.i, 0
  br i1 %tobool191.not.i, label %do.body189.i.do.end205.i_crit_edge, label %if.then192.i

do.body189.i.do.end205.i_crit_edge:               ; preds = %do.body189.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end205.i

if.then192.i:                                     ; preds = %do.body189.i
  %call193.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.38, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %tobool194.not.i = icmp eq i32 %call193.i, 0
  br i1 %tobool194.not.i, label %if.then192.i.do.end205.i_crit_edge, label %do.end198.i

if.then192.i.do.end205.i_crit_edge:               ; preds = %if.then192.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end205.i

do.end198.i:                                      ; preds = %if.then192.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid200.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %70 = ptrtoint ptr %pid200.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pid200.i, align 4
  %call201.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %71, i32 noundef %20, ptr noundef %buffer.2.i, i32 noundef %buffer_size.2.i) #13
  br label %do.end205.i

do.end205.i:                                      ; preds = %do.end198.i, %if.then192.i.do.end205.i_crit_edge, %do.body189.i.do.end205.i_crit_edge
  %user_data.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 8
  %72 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %user_data.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %add206.i = add i32 %buffer_size.2.i, %74
  %and207.i = and i32 %add206.i, -4096
  %75 = inttoptr i32 %and207.i to ptr
  call void @__sanitizer_cov_trace_cmp4(i32 %buffer_size.2.i, i32 %20)
  %cmp209.i = icmp ne i32 %buffer_size.2.i, %20
  %spec.select486.i = select i1 %tobool90.not547.i, i1 %cmp209.i, i1 false
  br i1 %spec.select486.i, label %do.end225.i, label %do.end205.i.if.end231.i_crit_edge, !prof !232

do.end205.i.if.end231.i_crit_edge:                ; preds = %do.end205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end231.i

do.end225.i:                                      ; preds = %do.end205.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 497, i32 noundef 9, ptr noundef null) #10
  br label %if.end231.i

if.end231.i:                                      ; preds = %do.end225.i, %do.end205.i.if.end231.i_crit_edge
  %76 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %user_data.i, align 4
  %78 = ptrtoint ptr %77 to i32
  %add240.i = add i32 %78, 4095
  %add241.i = add i32 %add240.i, %20
  %and242.i = and i32 %add241.i, -4096
  %79 = inttoptr i32 %and242.i to ptr
  %cmp243.i = icmp ugt ptr %79, %75
  %spec.select487.i = select i1 %cmp243.i, ptr %75, ptr %79
  %and248.i = and i32 %add240.i, -4096
  %80 = inttoptr i32 %and248.i to ptr
  %call249.i = tail call fastcc i32 @binder_update_page_range(ptr noundef %alloc, i32 noundef 1, ptr noundef %80, ptr noundef %spec.select487.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249.i)
  %tobool250.not.i = icmp eq i32 %call249.i, 0
  br i1 %tobool250.not.i, label %if.end253.i, label %if.then251.i

if.then251.i:                                     ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = inttoptr i32 %call249.i to ptr
  br label %binder_alloc_new_buf_locked.exit

if.end253.i:                                      ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_cmp4(i32 %buffer_size.2.i, i32 %20)
  %cmp254.not.i = icmp eq i32 %buffer_size.2.i, %20
  br i1 %cmp254.not.i, label %if.end253.i.while.cond.preheader.i_crit_edge, label %if.then255.i

if.end253.i.while.cond.preheader.i_crit_edge:     ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i

if.then255.i:                                     ; preds = %if.end253.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 52) #14
  %tobool257.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool257.not.i, label %err_alloc_buf_struct_failed.i, label %if.end265.i

if.end265.i:                                      ; preds = %if.then255.i
  %83 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %user_data.i, align 4
  %add.ptr267.i = getelementptr i8, ptr %84, i32 %20
  %user_data268.i = getelementptr inbounds %struct.binder_buffer, ptr %call7.i.i.i, i32 0, i32 8
  %85 = ptrtoint ptr %user_data268.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %add.ptr267.i, ptr %user_data268.i, align 4
  %86 = ptrtoint ptr %buffer.2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer.2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %buffer.2.i, ptr noundef %87) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end265.i.cleanup.thread.i_crit_edge

if.end265.i.cleanup.thread.i_crit_edge:           ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end.i.i.i:                                     ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %89 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %87, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buffer.2.i, ptr %prev3.i.i.i, align 4
  %91 = ptrtoint ptr %buffer.2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %call7.i.i.i, ptr %buffer.2.i, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end.i.i.i, %if.end265.i.cleanup.thread.i_crit_edge
  %free271.i = getelementptr inbounds %struct.binder_buffer, ptr %call7.i.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %free271.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load272.i = load i32, ptr %free271.i, align 4
  %bf.set.i = or i32 %bf.load272.i, -2147483648
  store i32 %bf.set.i, ptr %free271.i, align 4
  tail call fastcc void @binder_insert_free_buffer(ptr noundef %alloc, ptr noundef nonnull %call7.i.i.i) #10
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %cleanup.thread.i, %if.end253.i.while.cond.preheader.i_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %best_fit.2536542.i, ptr noundef %free_buffers.i) #10
  %free275.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 2
  %93 = ptrtoint ptr %free275.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load276.i = load i32, ptr %free275.i, align 4
  %bf.clear280.i = and i32 %bf.load276.i, 1610612735
  store i32 %bf.clear280.i, ptr %free275.i, align 4
  %allocated_buffers.i31 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 6
  %94 = ptrtoint ptr %allocated_buffers.i31 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %allocated_buffers.i31, align 4
  %tobool9.not67.i = icmp eq ptr %95, null
  br i1 %tobool9.not67.i, label %while.cond.preheader.i.binder_insert_allocated_buffer_locked.exit_crit_edge, label %while.body.lr.ph.i36

while.cond.preheader.i.binder_insert_allocated_buffer_locked.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_insert_allocated_buffer_locked.exit

while.body.lr.ph.i36:                             ; preds = %while.cond.preheader.i
  %free11.peel.i = getelementptr i8, ptr %95, i32 12
  %96 = ptrtoint ptr %free11.peel.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load12.peel.i = load i32, ptr %free11.peel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load12.peel.i)
  %tobool14.not.peel.i = icmp sgt i32 %bf.load12.peel.i, -1
  br i1 %tobool14.not.peel.i, label %do.end30.peel.i, label %while.body.lr.ph.i36.do.body22.i_crit_edge, !prof !229

while.body.lr.ph.i36.do.body22.i_crit_edge:       ; preds = %while.body.lr.ph.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22.i

do.end30.peel.i:                                  ; preds = %while.body.lr.ph.i36
  %97 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %user_data.i, align 4
  %user_data31.peel.i = getelementptr i8, ptr %95, i32 36
  %99 = ptrtoint ptr %user_data31.peel.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %user_data31.peel.i, align 4
  %cmp.peel.i = icmp ult ptr %98, %100
  br i1 %cmp.peel.i, label %if.then32.peel.i, label %if.else.peel.i

if.else.peel.i:                                   ; preds = %do.end30.peel.i
  %cmp35.peel.i = icmp ugt ptr %98, %100
  br i1 %cmp35.peel.i, label %if.then36.peel.i, label %if.else.peel.i.do.body38.i_crit_edge

if.else.peel.i.do.body38.i_crit_edge:             ; preds = %if.else.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38.i

if.then36.peel.i:                                 ; preds = %if.else.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.peel.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 1
  br label %if.end45.peel.i

if.then32.peel.i:                                 ; preds = %do.end30.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.peel.i = getelementptr inbounds %struct.rb_node, ptr %95, i32 0, i32 2
  br label %if.end45.peel.i

if.end45.peel.i:                                  ; preds = %if.then32.peel.i, %if.then36.peel.i
  %p.1.peel.i = phi ptr [ %rb_left.peel.i, %if.then32.peel.i ], [ %rb_right.peel.i, %if.then36.peel.i ]
  %101 = ptrtoint ptr %p.1.peel.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %p.1.peel.i, align 4
  %tobool9.not.peel.i = icmp eq ptr %102, null
  br i1 %tobool9.not.peel.i, label %if.end45.peel.i.while.cond.while.end_crit_edge.i_crit_edge, label %if.end45.peel.i.while.body.i38_crit_edge

if.end45.peel.i.while.body.i38_crit_edge:         ; preds = %if.end45.peel.i
  br label %while.body.i38

if.end45.peel.i.while.cond.while.end_crit_edge.i_crit_edge: ; preds = %if.end45.peel.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.while.end_crit_edge.i

while.body.i38:                                   ; preds = %if.end45.i.while.body.i38_crit_edge, %if.end45.peel.i.while.body.i38_crit_edge
  %103 = phi ptr [ %108, %if.end45.i.while.body.i38_crit_edge ], [ %102, %if.end45.peel.i.while.body.i38_crit_edge ]
  %free11.i = getelementptr i8, ptr %103, i32 12
  %104 = ptrtoint ptr %free11.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load12.i = load i32, ptr %free11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load12.i)
  %tobool14.not.i37 = icmp sgt i32 %bf.load12.i, -1
  br i1 %tobool14.not.i37, label %do.end30.i, label %while.body.i38.do.body22.i_crit_edge, !prof !229

while.body.i38.do.body22.i_crit_edge:             ; preds = %while.body.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22.i

do.body22.i:                                      ; preds = %while.body.i38.do.body22.i_crit_edge, %while.body.lr.ph.i36.do.body22.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #10, !srcloc !234
  unreachable

do.end30.i:                                       ; preds = %while.body.i38
  %user_data31.i = getelementptr i8, ptr %103, i32 36
  %105 = ptrtoint ptr %user_data31.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %user_data31.i, align 4
  %cmp.i39 = icmp ult ptr %98, %106
  br i1 %cmp.i39, label %if.then32.i, label %if.else.i41

if.then32.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left.i40 = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 2
  br label %if.end45.i

if.else.i41:                                      ; preds = %do.end30.i
  %cmp35.i = icmp ugt ptr %98, %106
  br i1 %cmp35.i, label %if.then36.i, label %if.else.i41.do.body38.i_crit_edge

if.else.i41.do.body38.i_crit_edge:                ; preds = %if.else.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38.i

if.then36.i:                                      ; preds = %if.else.i41
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right.i42 = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 1
  br label %if.end45.i

do.body38.i:                                      ; preds = %if.else.i41.do.body38.i_crit_edge, %if.else.peel.i.do.body38.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #10, !srcloc !235
  unreachable

if.end45.i:                                       ; preds = %if.then36.i, %if.then32.i
  %p.1.i = phi ptr [ %rb_left.i40, %if.then32.i ], [ %rb_right.i42, %if.then36.i ]
  %107 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %p.1.i, align 4
  %tobool9.not.i = icmp eq ptr %108, null
  br i1 %tobool9.not.i, label %if.end45.i.while.cond.while.end_crit_edge.i_crit_edge, label %if.end45.i.while.body.i38_crit_edge, !llvm.loop !236

if.end45.i.while.body.i38_crit_edge:              ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i38

if.end45.i.while.cond.while.end_crit_edge.i_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.while.end_crit_edge.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end45.i.while.cond.while.end_crit_edge.i_crit_edge, %if.end45.peel.i.while.cond.while.end_crit_edge.i_crit_edge
  %p.1.lcssa.i = phi ptr [ %p.1.peel.i, %if.end45.peel.i.while.cond.while.end_crit_edge.i_crit_edge ], [ %p.1.i, %if.end45.i.while.cond.while.end_crit_edge.i_crit_edge ]
  %.lcssa70.i = phi ptr [ %95, %if.end45.peel.i.while.cond.while.end_crit_edge.i_crit_edge ], [ %103, %if.end45.i.while.cond.while.end_crit_edge.i_crit_edge ]
  %phi.cast.le.i = ptrtoint ptr %.lcssa70.i to i32
  br label %binder_insert_allocated_buffer_locked.exit

binder_insert_allocated_buffer_locked.exit:       ; preds = %while.cond.while.end_crit_edge.i, %while.cond.preheader.i.binder_insert_allocated_buffer_locked.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %while.cond.preheader.i.binder_insert_allocated_buffer_locked.exit_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.lcssa.i, %while.cond.while.end_crit_edge.i ], [ %allocated_buffers.i31, %while.cond.preheader.i.binder_insert_allocated_buffer_locked.exit_crit_edge ]
  %rb_node46.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 1
  %109 = ptrtoint ptr %rb_node46.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %parent.0.lcssa.i, ptr %rb_node46.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 1, i32 1
  %110 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 1, i32 2
  %111 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %rb_left.i.i, align 4
  %112 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %rb_node46.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node46.i, ptr noundef %allocated_buffers.i31) #10
  %113 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and283.i = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283.i)
  %tobool284.not.i = icmp eq i32 %and283.i, 0
  br i1 %tobool284.not.i, label %binder_insert_allocated_buffer_locked.exit.do.end298.i_crit_edge, label %if.then285.i

binder_insert_allocated_buffer_locked.exit.do.end298.i_crit_edge: ; preds = %binder_insert_allocated_buffer_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end298.i

if.then285.i:                                     ; preds = %binder_insert_allocated_buffer_locked.exit
  %call286.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.45, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286.i)
  %tobool287.not.i = icmp eq i32 %call286.i, 0
  br i1 %tobool287.not.i, label %if.then285.i.do.end298.i_crit_edge, label %do.end291.i

if.then285.i.do.end298.i_crit_edge:               ; preds = %if.then285.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end298.i

do.end291.i:                                      ; preds = %if.then285.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid293.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %114 = ptrtoint ptr %pid293.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %pid293.i, align 4
  %call294.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %115, i32 noundef %20, ptr noundef %buffer.2.i) #13
  br label %do.end298.i

do.end298.i:                                      ; preds = %do.end291.i, %if.then285.i.do.end298.i_crit_edge, %binder_insert_allocated_buffer_locked.exit.do.end298.i_crit_edge
  %data_size299.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 5
  %116 = ptrtoint ptr %data_size299.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %data_size, ptr %data_size299.i, align 4
  %offsets_size300.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 6
  %117 = ptrtoint ptr %offsets_size300.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %offsets_size, ptr %offsets_size300.i, align 4
  %118 = ptrtoint ptr %free275.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load301.i = load i32, ptr %free275.i, align 4
  %bf.value.i = shl i32 %is_async, 28
  %bf.shl.i = and i32 %bf.value.i, 268435456
  %bf.clear302.i = and i32 %bf.load301.i, -402653185
  %bf.set303.i = or i32 %bf.clear302.i, %bf.shl.i
  %extra_buffers_size304.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 7
  %119 = ptrtoint ptr %extra_buffers_size304.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %extra_buffers_size, ptr %extra_buffers_size304.i, align 4
  %pid305.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer.2.i, i32 0, i32 9
  %120 = ptrtoint ptr %pid305.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %pid, ptr %pid305.i, align 4
  store i32 %bf.set303.i, ptr %free275.i, align 4
  br i1 %tobool65.not.i, label %do.end298.i.binder_alloc_new_buf_locked.exit_crit_edge, label %if.then310.i

do.end298.i.binder_alloc_new_buf_locked.exit_crit_edge: ; preds = %do.end298.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_new_buf_locked.exit

if.then310.i:                                     ; preds = %do.end298.i
  %free_async_space312.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 7
  %121 = ptrtoint ptr %free_async_space312.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %free_async_space312.i, align 4
  %add311.neg.i = sub i32 -52, %20
  %sub.i = add i32 %add311.neg.i, %122
  store i32 %sub.i, ptr %free_async_space312.i, align 4
  %123 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and314.i = and i32 %123, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.i)
  %tobool315.not.i = icmp eq i32 %and314.i, 0
  br i1 %tobool315.not.i, label %if.then310.i.do.end330.i_crit_edge, label %if.then316.i

if.then310.i.do.end330.i_crit_edge:               ; preds = %if.then310.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end330.i

if.then316.i:                                     ; preds = %if.then310.i
  %call317.i = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_new_buf_locked._rs.49, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317.i)
  %tobool318.not.i = icmp eq i32 %call317.i, 0
  br i1 %tobool318.not.i, label %if.then316.i.do.end330.i_crit_edge, label %do.end322.i

if.then316.i.do.end330.i_crit_edge:               ; preds = %if.then316.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end330.i

do.end322.i:                                      ; preds = %if.then316.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid324.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %124 = ptrtoint ptr %pid324.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pid324.i, align 4
  %126 = ptrtoint ptr %free_async_space312.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %free_async_space312.i, align 4
  %call326.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %125, i32 noundef %20, i32 noundef %127) #13
  br label %do.end330.i

do.end330.i:                                      ; preds = %do.end322.i, %if.then316.i.do.end330.i_crit_edge, %if.then310.i.do.end330.i_crit_edge
  %128 = ptrtoint ptr %free_async_space312.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %free_async_space312.i, align 4
  %130 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %buffer_size.i.i, align 4
  %div.i = udiv i32 %131, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %div.i)
  %cmp333.i = icmp ult i32 %129, %div.i
  br i1 %cmp333.i, label %if.then334.i, label %if.else342.i

if.then334.i:                                     ; preds = %do.end330.i
  %call.i = tail call ptr @rb_first(ptr noundef %allocated_buffers.i31) #10
  %cmp.not47.i = icmp eq ptr %call.i, null
  br i1 %cmp.not47.i, label %if.then334.i.debug_low_async_space_locked.exit.thread_crit_edge, label %if.then334.i.for.body.i9_crit_edge

if.then334.i.for.body.i9_crit_edge:               ; preds = %if.then334.i
  br label %for.body.i9

if.then334.i.debug_low_async_space_locked.exit.thread_crit_edge: ; preds = %if.then334.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %debug_low_async_space_locked.exit.thread

for.body.i9:                                      ; preds = %for.inc.i.for.body.i9_crit_edge, %if.then334.i.for.body.i9_crit_edge
  %n.050.i = phi ptr [ %call7.i, %for.inc.i.for.body.i9_crit_edge ], [ %call.i, %if.then334.i.for.body.i9_crit_edge ]
  %num_buffers.049.i = phi i32 [ %num_buffers.1.i, %for.inc.i.for.body.i9_crit_edge ], [ 0, %if.then334.i.for.body.i9_crit_edge ]
  %total_alloc_size.048.i = phi i32 [ %total_alloc_size.1.i, %for.inc.i.for.body.i9_crit_edge ], [ 0, %if.then334.i.for.body.i9_crit_edge ]
  %add.ptr.i8 = getelementptr i8, ptr %n.050.i, i32 -8
  %pid1.i = getelementptr i8, ptr %n.050.i, i32 40
  %132 = ptrtoint ptr %pid1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pid1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %pid)
  %cmp2.not.i = icmp eq i32 %133, %pid
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i9.for.inc.i_crit_edge

for.body.i9.for.inc.i_crit_edge:                  ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i9
  %async_transaction.i = getelementptr i8, ptr %n.050.i, i32 12
  %134 = ptrtoint ptr %async_transaction.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %bf.load.i10 = load i32, ptr %async_transaction.i, align 4
  %135 = and i32 %bf.load.i10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i11 = icmp eq i32 %135, 0
  br i1 %tobool.not.i11, label %if.end.i.for.inc.i_crit_edge, label %if.end4.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end4.i:                                        ; preds = %if.end.i
  %136 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %add.ptr.i8, align 4
  %cmp.i.not.i.i12 = icmp eq ptr %137, %buffers.i.i
  br i1 %cmp.i.not.i.i12, label %if.then.i.i14, label %if.end.i.i16

if.then.i.i14:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %138 = ptrtoint ptr %buffer2.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %buffer2.i.i, align 4
  %140 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %buffer_size.i.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %139, i32 %141
  br label %binder_alloc_buffer_size.exit.i24

if.end.i.i16:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i.i15 = getelementptr inbounds %struct.binder_buffer, ptr %137, i32 0, i32 8
  %142 = ptrtoint ptr %user_data4.i.i15 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %user_data4.i.i15, align 4
  br label %binder_alloc_buffer_size.exit.i24

binder_alloc_buffer_size.exit.i24:                ; preds = %if.end.i.i16, %if.then.i.i14
  %.sink14.i.i17 = phi ptr [ %143, %if.end.i.i16 ], [ %add.ptr.i.i13, %if.then.i.i14 ]
  %user_data5.i.i18 = getelementptr i8, ptr %n.050.i, i32 36
  %144 = ptrtoint ptr %user_data5.i.i18 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %user_data5.i.i18, align 4
  %sub.ptr.lhs.cast6.i.i19 = ptrtoint ptr %.sink14.i.i17 to i32
  %sub.ptr.rhs.cast7.i.i20 = ptrtoint ptr %145 to i32
  %sub.ptr.sub8.i.i21 = add i32 %total_alloc_size.048.i, 52
  %add.i22 = add i32 %sub.ptr.sub8.i.i21, %sub.ptr.lhs.cast6.i.i19
  %add6.i = sub i32 %add.i22, %sub.ptr.rhs.cast7.i.i20
  %inc.i23 = add i32 %num_buffers.049.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %binder_alloc_buffer_size.exit.i24, %if.end.i.for.inc.i_crit_edge, %for.body.i9.for.inc.i_crit_edge
  %total_alloc_size.1.i = phi i32 [ %total_alloc_size.048.i, %for.body.i9.for.inc.i_crit_edge ], [ %add6.i, %binder_alloc_buffer_size.exit.i24 ], [ %total_alloc_size.048.i, %if.end.i.for.inc.i_crit_edge ]
  %num_buffers.1.i = phi i32 [ %num_buffers.049.i, %for.body.i9.for.inc.i_crit_edge ], [ %inc.i23, %binder_alloc_buffer_size.exit.i24 ], [ %num_buffers.049.i, %if.end.i.for.inc.i_crit_edge ]
  %call7.i = tail call ptr @rb_next(ptr noundef nonnull %n.050.i) #10
  %cmp.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not.i, label %for.end.i25, label %for.inc.i.for.body.i9_crit_edge

for.inc.i.for.body.i9_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i9

for.end.i25:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %num_buffers.1.i)
  %cmp8.i = icmp ugt i32 %num_buffers.1.i, 50
  br i1 %cmp8.i, label %for.end.i25.do.body.i27_crit_edge, label %lor.lhs.false.i

for.end.i25.do.body.i27_crit_edge:                ; preds = %for.end.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i27

lor.lhs.false.i:                                  ; preds = %for.end.i25
  %146 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %buffer_size.i.i, align 4
  %div46.i = lshr i32 %147, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %total_alloc_size.1.i, i32 %div46.i)
  %cmp9.i = icmp ugt i32 %total_alloc_size.1.i, %div46.i
  br i1 %cmp9.i, label %lor.lhs.false.i.do.body.i27_crit_edge, label %lor.lhs.false.i.debug_low_async_space_locked.exit.thread_crit_edge

lor.lhs.false.i.debug_low_async_space_locked.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %debug_low_async_space_locked.exit.thread

lor.lhs.false.i.do.body.i27_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i27

do.body.i27:                                      ; preds = %lor.lhs.false.i.do.body.i27_crit_edge, %for.end.i25.do.body.i27_crit_edge
  %148 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and.i26 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool11.not.i = icmp eq i32 %and.i26, 0
  br i1 %tobool11.not.i, label %do.body.i27.do.end23.i_crit_edge, label %if.then12.i

do.body.i27.do.end23.i_crit_edge:                 ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

if.then12.i:                                      ; preds = %do.body.i27
  %call13.i = tail call i32 @___ratelimit(ptr noundef nonnull @debug_low_async_space_locked._rs, ptr noundef nonnull @__func__.debug_low_async_space_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.do.end23.i_crit_edge, label %do.end.i28

if.then12.i.do.end23.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23.i

do.end.i28:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid18.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %149 = ptrtoint ptr %pid18.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %pid18.i, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %150, i32 noundef %pid, i32 noundef %num_buffers.1.i, i32 noundef %total_alloc_size.1.i) #13
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end.i28, %if.then12.i.do.end23.i_crit_edge, %do.body.i27.do.end23.i_crit_edge
  %oneway_spam_detected.i29 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 13
  %151 = ptrtoint ptr %oneway_spam_detected.i29 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %oneway_spam_detected.i29, align 4, !range !238
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool24.not.i = icmp eq i8 %152, 0
  br i1 %tobool24.not.i, label %153, label %do.end23.i.debug_low_async_space_locked.exit.thread_crit_edge

do.end23.i.debug_low_async_space_locked.exit.thread_crit_edge: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %debug_low_async_space_locked.exit.thread

153:                                              ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %oneway_spam_detected.i29 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %oneway_spam_detected.i29, align 4
  br label %debug_low_async_space_locked.exit.thread

debug_low_async_space_locked.exit.thread:         ; preds = %153, %do.end23.i.debug_low_async_space_locked.exit.thread_crit_edge, %lor.lhs.false.i.debug_low_async_space_locked.exit.thread_crit_edge, %if.then334.i.debug_low_async_space_locked.exit.thread_crit_edge
  %155 = phi i32 [ 134217728, %153 ], [ 0, %do.end23.i.debug_low_async_space_locked.exit.thread_crit_edge ], [ 0, %lor.lhs.false.i.debug_low_async_space_locked.exit.thread_crit_edge ], [ 0, %if.then334.i.debug_low_async_space_locked.exit.thread_crit_edge ]
  %156 = ptrtoint ptr %free275.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %bf.load337.i46 = load i32, ptr %free275.i, align 4
  %bf.clear340.i = and i32 %bf.load337.i46, -134217729
  %bf.set341.i = or i32 %bf.clear340.i, %155
  store i32 %bf.set341.i, ptr %free275.i, align 4
  br label %binder_alloc_new_buf_locked.exit

if.else342.i:                                     ; preds = %do.end330.i
  call void @__sanitizer_cov_trace_pc() #12
  %oneway_spam_detected.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 13
  %157 = ptrtoint ptr %oneway_spam_detected.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %oneway_spam_detected.i, align 4
  br label %binder_alloc_new_buf_locked.exit

err_alloc_buf_struct_failed.i:                    ; preds = %if.then255.i
  call void @__sanitizer_cov_trace_pc() #12
  %pid263.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %158 = ptrtoint ptr %pid263.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pid263.i, align 4
  %call264.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.binder_alloc_new_buf_locked, i32 noundef %159) #13
  %160 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %user_data.i, align 4
  %162 = ptrtoint ptr %161 to i32
  %add346.i = add i32 %162, 4095
  %and347.i = and i32 %add346.i, -4096
  %163 = inttoptr i32 %and347.i to ptr
  %call348.i = tail call fastcc i32 @binder_update_page_range(ptr noundef %alloc, i32 noundef 0, ptr noundef %163, ptr noundef %spec.select487.i) #10
  br label %binder_alloc_new_buf_locked.exit

binder_alloc_new_buf_locked.exit:                 ; preds = %err_alloc_buf_struct_failed.i, %if.else342.i, %debug_low_async_space_locked.exit.thread, %do.end298.i.binder_alloc_new_buf_locked.exit_crit_edge, %if.then251.i, %do.end173.i, %if.then167.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.body164.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.end78.i, %if.then72.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.body69.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.end55.i, %if.then49.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.body46.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.end29.i, %if.then23.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.body20.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.end.i, %if.then2.i.binder_alloc_new_buf_locked.exit_crit_edge, %do.body.i.binder_alloc_new_buf_locked.exit_crit_edge
  %retval.0.i = phi ptr [ %81, %if.then251.i ], [ inttoptr (i32 -12 to ptr), %err_alloc_buf_struct_failed.i ], [ %buffer.2.i, %debug_low_async_space_locked.exit.thread ], [ %buffer.2.i, %if.else342.i ], [ %buffer.2.i, %do.end298.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -3 to ptr), %if.then2.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -3 to ptr), %do.end.i ], [ inttoptr (i32 -3 to ptr), %do.body.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then23.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end29.i ], [ inttoptr (i32 -22 to ptr), %do.body20.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then49.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end55.i ], [ inttoptr (i32 -22 to ptr), %do.body46.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.then72.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -28 to ptr), %do.end78.i ], [ inttoptr (i32 -28 to ptr), %do.body69.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.then167.i.binder_alloc_new_buf_locked.exit_crit_edge ], [ inttoptr (i32 -28 to ptr), %do.end173.i ], [ inttoptr (i32 -28 to ptr), %do.body164.i.binder_alloc_new_buf_locked.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc) #10
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binder_alloc_free_buf(ptr noundef %alloc, ptr noundef %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clear_on_free = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 2
  %0 = ptrtoint ptr %clear_on_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %clear_on_free, align 4
  %1 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @binder_alloc_clear_buf(ptr noundef %alloc, ptr noundef %buffer)
  %2 = ptrtoint ptr %clear_on_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load2 = load i32, ptr %clear_on_free, align 4
  %bf.clear3 = and i32 %bf.load2, -1073741825
  store i32 %bf.clear3, ptr %clear_on_free, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %alloc, i32 noundef 0) #10
  tail call fastcc void @binder_free_buf_locked(ptr noundef %alloc, ptr noundef %buffer)
  tail call void @mutex_unlock(ptr noundef %alloc) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_alloc_clear_buf(ptr noundef readonly %alloc, ptr nocapture noundef readonly %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %cmp.i.not.i = icmp eq ptr %1, %buffers.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buffer2.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %2 = ptrtoint ptr %buffer2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer2.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  br label %binder_alloc_buffer_size.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i = getelementptr inbounds %struct.binder_buffer, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %user_data4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_data4.i, align 4
  br label %binder_alloc_buffer_size.exit

binder_alloc_buffer_size.exit:                    ; preds = %if.end.i, %if.then.i
  %.sink14.i = phi ptr [ %7, %if.end.i ], [ %add.ptr.i, %if.then.i ]
  %user_data5.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 8
  %8 = ptrtoint ptr %user_data5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_data5.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %.sink14.i to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub8.i)
  %tobool.not21 = icmp eq i32 %sub.ptr.sub8.i, 0
  br i1 %tobool.not21, label %binder_alloc_buffer_size.exit.while.end_crit_edge, label %while.body.lr.ph

binder_alloc_buffer_size.exit.while.end_crit_edge: ; preds = %binder_alloc_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %binder_alloc_buffer_size.exit
  %buffer1.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %pages.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %kunmap.exit.while.body_crit_edge, %while.body.lr.ph
  %bytes.023 = phi i32 [ %sub.ptr.sub8.i, %while.body.lr.ph ], [ %sub3, %kunmap.exit.while.body_crit_edge ]
  %buffer_offset.022 = phi i64 [ 0, %while.body.lr.ph ], [ %add, %kunmap.exit.while.body_crit_edge ]
  %10 = ptrtoint ptr %user_data5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %user_data5.i, align 4
  %12 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = sext i32 %sub.ptr.sub.i to i64
  %add.i = add i64 %buffer_offset.022, %conv.i
  %14 = trunc i64 %add.i to i32
  %conv2.i = and i32 %14, 4095
  %shr.i = lshr i64 %add.i, 12
  %conv3.i = trunc i64 %shr.i to i32
  %15 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pages.i, align 4
  %page_ptr.i = getelementptr %struct.binder_lru_page, ptr %16, i32 %conv3.i, i32 1
  %17 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %page_ptr.i, align 4
  %sub = sub nuw nsw i32 4096, %conv2.i
  %19 = tail call i32 @llvm.umin.i32(i32 %bytes.023, i32 %sub)
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 44) #10
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %18, align 4
  %shr.i.i = lshr i32 %21, 30
  %22 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %while.body.if.then.i14_crit_edge [
    i32 2, label %while.body.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

while.body.if.else.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

while.body.if.then.i14_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i14

is_highmem_idx.exit.i:                            ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %23 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2.i.not.i = icmp eq i32 %23, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i14_crit_edge

is_highmem_idx.exit.i.if.then.i14_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i14

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i14:                                      ; preds = %is_highmem_idx.exit.i.if.then.i14_crit_edge, %while.body.if.then.i14_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %18) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %while.body.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %18) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i14
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i14 ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %conv2.i
  %24 = call ptr @memset(ptr %add.ptr, i32 0, i32 %19)
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 55) #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %18, align 4
  %shr.i.i16 = lshr i32 %26, 30
  %27 = zext i32 %shr.i.i16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %shr.i.i16, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i19_crit_edge
    i32 3, label %is_highmem_idx.exit.i18
  ]

kmap.exit.if.end.i19_crit_edge:                   ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i19

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i18:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %28 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.i.not.i17 = icmp eq i32 %28, 2
  br i1 %cmp2.i.not.i17, label %is_highmem_idx.exit.i18.if.end.i19_crit_edge, label %is_highmem_idx.exit.i18.kunmap.exit_crit_edge

is_highmem_idx.exit.i18.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i18.if.end.i19_crit_edge:     ; preds = %is_highmem_idx.exit.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i19

if.end.i19:                                       ; preds = %is_highmem_idx.exit.i18.if.end.i19_crit_edge, %kmap.exit.if.end.i19_crit_edge
  tail call void @kunmap_high(ptr noundef %18) #10
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i19, %is_highmem_idx.exit.i18.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %sub3 = sub i32 %bytes.023, %19
  %conv = zext i32 %19 to i64
  %add = add i64 %buffer_offset.022, %conv
  %tobool.not = icmp eq i32 %sub3, 0
  br i1 %tobool.not, label %kunmap.exit.while.end_crit_edge, label %kunmap.exit.while.body_crit_edge

kunmap.exit.while.body_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

kunmap.exit.while.end_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %kunmap.exit.while.end_crit_edge, %binder_alloc_buffer_size.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_free_buf_locked(ptr noundef %alloc, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %cmp.i.not.i = icmp eq ptr %1, %buffers.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buffer2.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %2 = ptrtoint ptr %buffer2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer2.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %5
  br label %binder_alloc_buffer_size.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i = getelementptr inbounds %struct.binder_buffer, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %user_data4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_data4.i, align 4
  br label %binder_alloc_buffer_size.exit

binder_alloc_buffer_size.exit:                    ; preds = %if.end.i, %if.then.i
  %.sink14.i = phi ptr [ %7, %if.end.i ], [ %add.ptr.i, %if.then.i ]
  %user_data5.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 8
  %8 = ptrtoint ptr %user_data5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_data5.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %.sink14.i to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  %data_size = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 5
  %10 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_size, align 4
  %add = add i32 %11, 3
  %and = and i32 %add, -4
  %offsets_size = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 6
  %12 = ptrtoint ptr %offsets_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offsets_size, align 4
  %add1 = add i32 %13, 3
  %and2 = and i32 %add1, -4
  %add3 = add i32 %and2, %and
  %extra_buffers_size = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 7
  %14 = ptrtoint ptr %extra_buffers_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %extra_buffers_size, align 4
  %add4 = add i32 %15, 3
  %and5 = and i32 %add4, -4
  %add6 = add i32 %add3, %and5
  %16 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and7 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %binder_alloc_buffer_size.exit.do.body16_crit_edge, label %if.then

binder_alloc_buffer_size.exit.do.body16_crit_edge: ; preds = %binder_alloc_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

if.then:                                          ; preds = %binder_alloc_buffer_size.exit
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_free_buf_locked._rs, ptr noundef nonnull @__func__.binder_free_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then.do.body16_crit_edge, label %do.end

if.then.do.body16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pid = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %18, ptr noundef %buffer, i32 noundef %add6, i32 noundef %sub.ptr.sub8.i) #13
  br label %do.body16

do.body16:                                        ; preds = %do.end, %if.then.do.body16_crit_edge, %binder_alloc_buffer_size.exit.do.body16_crit_edge
  %free = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 2
  %19 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool17.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool17.not, label %do.body30, label %do.body21, !prof !229

do.body21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 667, 0\0A.popsection", ""() #10, !srcloc !239
  unreachable

do.body30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %sub.ptr.sub8.i)
  %cmp = icmp ugt i32 %add6, %sub.ptr.sub8.i
  br i1 %cmp, label %do.body38, label %do.body47, !prof !232

do.body38:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 668, 0\0A.popsection", ""() #10, !srcloc !240
  unreachable

do.body47:                                        ; preds = %do.body30
  %transaction = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 3
  %20 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transaction, align 4
  %cmp48.not = icmp eq ptr %21, null
  br i1 %cmp48.not, label %do.body65, label %do.body56, !prof !229

do.body56:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 669, 0\0A.popsection", ""() #10, !srcloc !241
  unreachable

do.body65:                                        ; preds = %do.body47
  %22 = ptrtoint ptr %user_data5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_data5.i, align 4
  %buffer66 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %24 = ptrtoint ptr %buffer66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer66, align 4
  %cmp67 = icmp ult ptr %23, %25
  br i1 %cmp67, label %do.body75, label %do.body84, !prof !232

do.body75:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 670, 0\0A.popsection", ""() #10, !srcloc !242
  unreachable

do.body84:                                        ; preds = %do.body65
  %buffer_size87 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %26 = ptrtoint ptr %buffer_size87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buffer_size87, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %27
  %cmp88 = icmp ugt ptr %23, %add.ptr
  br i1 %cmp88, label %do.body96, label %do.end104, !prof !232

do.body96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 671, 0\0A.popsection", ""() #10, !srcloc !243
  unreachable

do.end104:                                        ; preds = %do.body84
  %28 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool107.not = icmp eq i32 %28, 0
  br i1 %tobool107.not, label %do.end104.if.end129_crit_edge, label %if.then108

do.end104.if.end129_crit_edge:                    ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then108:                                       ; preds = %do.end104
  %add109 = add i32 %sub.ptr.sub8.i, 52
  %free_async_space = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 7
  %29 = ptrtoint ptr %free_async_space to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %free_async_space, align 4
  %add110 = add i32 %add109, %30
  store i32 %add110, ptr %free_async_space, align 4
  %31 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and112 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.then108.if.end129_crit_edge, label %if.then114

if.then108.if.end129_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then114:                                       ; preds = %if.then108
  %call115 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_free_buf_locked._rs.72, ptr noundef nonnull @__func__.binder_free_buf_locked) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.then114.if.end129_crit_edge, label %do.end120

if.then114.if.end129_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

do.end120:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  %pid122 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %32 = ptrtoint ptr %pid122 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid122, align 4
  %34 = ptrtoint ptr %free_async_space to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %free_async_space, align 4
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %33, i32 noundef %add6, i32 noundef %35) #13
  br label %if.end129

if.end129:                                        ; preds = %do.end120, %if.then114.if.end129_crit_edge, %if.then108.if.end129_crit_edge, %do.end104.if.end129_crit_edge
  %36 = ptrtoint ptr %user_data5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user_data5.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %add131 = add i32 %38, 4095
  %and132 = and i32 %add131, -4096
  %39 = inttoptr i32 %and132 to ptr
  %add134 = add i32 %sub.ptr.sub8.i, %38
  %and135 = and i32 %add134, -4096
  %40 = inttoptr i32 %and135 to ptr
  %call136 = tail call fastcc i32 @binder_update_page_range(ptr noundef %alloc, i32 noundef 0, ptr noundef %39, ptr noundef %40)
  %rb_node = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 1
  %allocated_buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 6
  tail call void @rb_erase(ptr noundef %rb_node, ptr noundef %allocated_buffers) #10
  %41 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load138 = load i32, ptr %free, align 4
  %bf.set = or i32 %bf.load138, -2147483648
  store i32 %bf.set, ptr %free, align 4
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  %cmp.i.not = icmp eq ptr %43, %buffers.i
  br i1 %cmp.i.not, label %if.end129.if.end152_crit_edge, label %if.then143

if.end129.if.end152_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.then143:                                       ; preds = %if.end129
  %free145 = getelementptr inbounds %struct.binder_buffer, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %free145 to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load146 = load i32, ptr %free145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load146)
  %tobool148.not = icmp sgt i32 %bf.load146, -1
  br i1 %tobool148.not, label %if.then143.if.end152_crit_edge, label %if.then149

if.then143.if.end152_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.then149:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %rb_node150 = getelementptr inbounds %struct.binder_buffer, ptr %43, i32 0, i32 1
  %free_buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %rb_node150, ptr noundef %free_buffers) #10
  tail call fastcc void @binder_delete_free_buffer(ptr noundef %alloc, ptr noundef %43)
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.then143.if.end152_crit_edge, %if.end129.if.end152_crit_edge
  %45 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffers.i, align 4
  %cmp156.not = icmp eq ptr %46, %buffer
  br i1 %cmp156.not, label %if.end152.if.end167_crit_edge, label %if.then157

if.end152.if.end167_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

if.then157:                                       ; preds = %if.end152
  %prev.i = getelementptr inbounds %struct.list_head, ptr %buffer, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %free159 = getelementptr inbounds %struct.binder_buffer, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %free159 to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load160 = load i32, ptr %free159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load160)
  %tobool162.not = icmp sgt i32 %bf.load160, -1
  br i1 %tobool162.not, label %if.then157.if.end167_crit_edge, label %if.then163

if.then157.if.end167_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

if.then163:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @binder_delete_free_buffer(ptr noundef %alloc, ptr noundef %buffer)
  %rb_node164 = getelementptr inbounds %struct.binder_buffer, ptr %48, i32 0, i32 1
  %free_buffers165 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %rb_node164, ptr noundef %free_buffers165) #10
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.then157.if.end167_crit_edge, %if.end152.if.end167_crit_edge
  %buffer.addr.1 = phi ptr [ %buffer, %if.end152.if.end167_crit_edge ], [ %48, %if.then163 ], [ %buffer, %if.then157.if.end167_crit_edge ]
  tail call fastcc void @binder_insert_free_buffer(ptr noundef %alloc, ptr noundef %buffer.addr.1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @binder_alloc_mmap_handler(ptr noundef %alloc, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @binder_alloc_mmap_lock, i32 noundef 0) #10
  %buffer_size = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %0 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.err_already_mapped_crit_edge

entry.err_already_mapped_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_already_mapped

if.end:                                           ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub = sub i32 %3, %5
  %6 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4194304)
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buffer_size, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @binder_alloc_mmap_lock) #10
  %8 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vma, align 4
  %10 = inttoptr i32 %9 to ptr
  %buffer3 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %11 = ptrtoint ptr %buffer3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %buffer3, align 4
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 16777200
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #15
  %pages = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  %16 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %pages, align 4
  %cmp6 = icmp eq ptr %call8.i.i, null
  br i1 %cmp6, label %if.end.err_alloc_pages_failed_crit_edge, label %if.end8

if.end.err_alloc_pages_failed_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc_pages_failed

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 52) #14
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %19) #10
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pages, align 4
  br label %err_alloc_pages_failed

if.end12:                                         ; preds = %if.end8
  %21 = ptrtoint ptr %buffer3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer3, align 4
  %user_data = getelementptr inbounds %struct.binder_buffer, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %user_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %user_data, align 4
  %buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %24 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %buffers, ptr noundef %25) #10
  br i1 %call.i.i, label %if.end.i.i68, label %if.end12.list_add.exit_crit_edge

if.end12.list_add.exit_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i68:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buffers, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %call7.i.i, ptr %buffers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i68, %if.end12.list_add.exit_crit_edge
  %free = getelementptr inbounds %struct.binder_buffer, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %free, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %free, align 4
  tail call fastcc void @binder_insert_free_buffer(ptr noundef %alloc, ptr noundef nonnull %call7.i.i)
  %31 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer_size, align 4
  %div1667 = lshr i32 %32, 1
  %free_async_space = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 7
  %33 = ptrtoint ptr %free_async_space to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div1667, ptr %free_async_space, align 4
  %tobool.not.i = icmp eq ptr %vma, null
  br i1 %tobool.not.i, label %list_add.exit.binder_alloc_set_vma.exit_crit_edge, label %if.then.i

list_add.exit.binder_alloc_set_vma.exit_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_set_vma.exit

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %34 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vm_mm.i, align 4
  %vma_vm_mm.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 2
  %36 = ptrtoint ptr %vma_vm_mm.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %vma_vm_mm.i, align 4
  br label %binder_alloc_set_vma.exit

binder_alloc_set_vma.exit:                        ; preds = %if.then.i, %list_add.exit.binder_alloc_set_vma.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !244
  %vma3.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 1
  %37 = ptrtoint ptr %vma3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vma, ptr %vma3.i, align 4
  %vma_vm_mm = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 2
  %38 = ptrtoint ptr %vma_vm_mm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vma_vm_mm, align 4
  %mm_count.i = getelementptr inbounds %struct.anon.10, ptr %39, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #10, !srcloc !245
  br label %cleanup

err_alloc_pages_failed:                           ; preds = %if.then11, %if.end.err_alloc_pages_failed_crit_edge
  %failure_string.0 = phi ptr [ @.str.2, %if.then11 ], [ @.str.1, %if.end.err_alloc_pages_failed_crit_edge ]
  %41 = ptrtoint ptr %buffer3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %buffer3, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @binder_alloc_mmap_lock, i32 noundef 0) #10
  %42 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %buffer_size, align 4
  br label %err_already_mapped

err_already_mapped:                               ; preds = %err_alloc_pages_failed, %entry.err_already_mapped_crit_edge
  %failure_string.1 = phi ptr [ %failure_string.0, %err_alloc_pages_failed ], [ @.str, %entry.err_already_mapped_crit_edge ]
  %ret.1 = phi i32 [ -12, %err_alloc_pages_failed ], [ -16, %entry.err_already_mapped_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @binder_alloc_mmap_lock) #10
  %43 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %err_already_mapped.cleanup_crit_edge, label %if.then22

err_already_mapped.cleanup_crit_edge:             ; preds = %err_already_mapped
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22:                                        ; preds = %err_already_mapped
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_mmap_handler._rs, ptr noundef nonnull @__func__.binder_alloc_mmap_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.end

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %pid = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %44 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pid, align 4
  %46 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vma, align 4
  %vm_end29 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %48 = ptrtoint ptr %vm_end29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vm_end29, align 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.binder_alloc_mmap_handler, i32 noundef %45, i32 noundef %47, i32 noundef %49, ptr noundef nonnull %failure_string.1, i32 noundef %ret.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then22.cleanup_crit_edge, %err_already_mapped.cleanup_crit_edge, %binder_alloc_set_vma.exit
  %retval.0 = phi i32 [ 0, %binder_alloc_set_vma.exit ], [ %ret.1, %if.then22.cleanup_crit_edge ], [ %ret.1, %do.end ], [ %ret.1, %err_already_mapped.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_insert_free_buffer(ptr noundef %alloc, ptr noundef %new_buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %free_buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 5
  %free = getelementptr inbounds %struct.binder_buffer, ptr %new_buffer, i32 0, i32 2
  %0 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !232

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #10, !srcloc !246
  unreachable

do.end9:                                          ; preds = %entry
  %buffers.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %1 = ptrtoint ptr %new_buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new_buffer, align 4
  %cmp.i.not.i = icmp eq ptr %2, %buffers.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %buffer2.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %3 = ptrtoint ptr %buffer2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer2.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %5 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buffer_size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %6
  br label %binder_alloc_buffer_size.exit

if.end.i:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i = getelementptr inbounds %struct.binder_buffer, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %user_data4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user_data4.i, align 4
  br label %binder_alloc_buffer_size.exit

binder_alloc_buffer_size.exit:                    ; preds = %if.end.i, %if.then.i
  %.sink14.i = phi ptr [ %8, %if.end.i ], [ %add.ptr.i, %if.then.i ]
  %user_data5.i = getelementptr inbounds %struct.binder_buffer, ptr %new_buffer, i32 0, i32 8
  %9 = ptrtoint ptr %user_data5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_data5.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %.sink14.i to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  %11 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %binder_alloc_buffer_size.exit.do.end23_crit_edge, label %if.then12

binder_alloc_buffer_size.exit.do.end23_crit_edge: ; preds = %binder_alloc_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

if.then12:                                        ; preds = %binder_alloc_buffer_size.exit
  %call13 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_insert_free_buffer._rs, ptr noundef nonnull @__func__.binder_insert_free_buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.do.end23_crit_edge, label %do.end18

if.then12.do.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %pid = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pid, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %13, i32 noundef %sub.ptr.sub8.i, ptr noundef %new_buffer) #13
  br label %do.end23

do.end23:                                         ; preds = %do.end18, %if.then12.do.end23_crit_edge, %binder_alloc_buffer_size.exit.do.end23_crit_edge
  %14 = ptrtoint ptr %free_buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %free_buffers, align 4
  %tobool24.not86 = icmp eq ptr %15, null
  br i1 %tobool24.not86, label %do.end23.while.end_crit_edge, label %while.body.lr.ph

do.end23.while.end_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end23
  %buffer2.i72 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %buffer_size.i73 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %binder_alloc_buffer_size.exit83.while.body_crit_edge, %while.body.lr.ph
  %16 = phi ptr [ %15, %while.body.lr.ph ], [ %29, %binder_alloc_buffer_size.exit83.while.body_crit_edge ]
  %free27 = getelementptr i8, ptr %16, i32 12
  %17 = ptrtoint ptr %free27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load28 = load i32, ptr %free27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load28)
  %tobool30.not = icmp sgt i32 %bf.load28, -1
  br i1 %tobool30.not, label %do.body40, label %do.end48, !prof !232

do.body40:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #10, !srcloc !247
  unreachable

do.end48:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %16, i32 -8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %cmp.i.not.i71 = icmp eq ptr %19, %buffers.i
  br i1 %cmp.i.not.i71, label %if.then.i75, label %if.end.i77

if.then.i75:                                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %buffer2.i72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer2.i72, align 4
  %22 = ptrtoint ptr %buffer_size.i73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_size.i73, align 4
  %add.ptr.i74 = getelementptr i8, ptr %21, i32 %23
  br label %binder_alloc_buffer_size.exit83

if.end.i77:                                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i76 = getelementptr inbounds %struct.binder_buffer, ptr %19, i32 0, i32 8
  %24 = ptrtoint ptr %user_data4.i76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_data4.i76, align 4
  br label %binder_alloc_buffer_size.exit83

binder_alloc_buffer_size.exit83:                  ; preds = %if.end.i77, %if.then.i75
  %.sink14.i78 = phi ptr [ %25, %if.end.i77 ], [ %add.ptr.i74, %if.then.i75 ]
  %user_data5.i79 = getelementptr i8, ptr %16, i32 36
  %26 = ptrtoint ptr %user_data5.i79 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_data5.i79, align 4
  %sub.ptr.lhs.cast6.i80 = ptrtoint ptr %.sink14.i78 to i32
  %sub.ptr.rhs.cast7.i81 = ptrtoint ptr %27 to i32
  %sub.ptr.sub8.i82 = sub i32 %sub.ptr.lhs.cast6.i80, %sub.ptr.rhs.cast7.i81
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub8.i, i32 %sub.ptr.sub8.i82)
  %cmp = icmp ult i32 %sub.ptr.sub8.i, %sub.ptr.sub8.i82
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  %p.1 = select i1 %cmp, ptr %rb_left, ptr %rb_right
  %28 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p.1, align 4
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %while.cond.while.end_crit_edge, label %binder_alloc_buffer_size.exit83.while.body_crit_edge

binder_alloc_buffer_size.exit83.while.body_crit_edge: ; preds = %binder_alloc_buffer_size.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %binder_alloc_buffer_size.exit83
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le = ptrtoint ptr %16 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %do.end23.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %do.end23.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %free_buffers, %do.end23.while.end_crit_edge ]
  %rb_node52 = getelementptr inbounds %struct.binder_buffer, ptr %new_buffer, i32 0, i32 1
  %30 = ptrtoint ptr %rb_node52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %parent.0.lcssa, ptr %rb_node52, align 4
  %rb_right.i = getelementptr inbounds %struct.binder_buffer, ptr %new_buffer, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.binder_buffer, ptr %new_buffer, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rb_left.i, align 4
  %33 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rb_node52, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node52, ptr noundef %free_buffers) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binder_alloc_deferred_release(ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %alloc, i32 noundef 0) #10
  %vma = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 1
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.cond.preheader, label %do.body3, !prof !229

while.cond.preheader:                             ; preds = %entry
  %allocated_buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 6
  %call235 = tail call ptr @rb_first(ptr noundef %allocated_buffers) #10
  %tobool9.not236 = icmp eq ptr %call235, null
  br i1 %tobool9.not236, label %while.cond.preheader.while.cond34.preheader_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.cond34.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond34.preheader

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 820, 0\0A.popsection", ""() #10, !srcloc !248
  unreachable

while.cond34.preheader:                           ; preds = %if.end33.while.cond34.preheader_crit_edge, %while.cond.preheader.while.cond34.preheader_crit_edge
  %buffers.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.cond34.preheader_crit_edge ], [ %inc, %if.end33.while.cond34.preheader_crit_edge ]
  %buffers35 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %2 = ptrtoint ptr %buffers35 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %buffers35, align 4
  %cmp.i.not239 = icmp eq ptr %3, %buffers35
  br i1 %cmp.i.not239, label %while.cond34.preheader.while.end134_crit_edge, label %while.cond34.preheader.while.body40_crit_edge

while.cond34.preheader.while.body40_crit_edge:    ; preds = %while.cond34.preheader
  br label %while.body40

while.cond34.preheader.while.end134_crit_edge:    ; preds = %while.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end134

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call238 = phi ptr [ %call, %if.end33.while.body_crit_edge ], [ %call235, %while.cond.preheader.while.body_crit_edge ]
  %buffers.0237 = phi i32 [ %inc, %if.end33.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call238, i32 -8
  %transaction = getelementptr i8, ptr %call238, i32 16
  %4 = ptrtoint ptr %transaction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transaction, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end27, label %do.body19, !prof !229

do.body19:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 826, 0\0A.popsection", ""() #10, !srcloc !249
  unreachable

do.end27:                                         ; preds = %while.body
  %clear_on_free = getelementptr i8, ptr %call238, i32 12
  %6 = ptrtoint ptr %clear_on_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %clear_on_free, align 4
  %7 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool28.not = icmp eq i32 %7, 0
  br i1 %tobool28.not, label %do.end27.if.end33_crit_edge, label %if.then29

do.end27.if.end33_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then29:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @binder_alloc_clear_buf(ptr noundef %alloc, ptr noundef %add.ptr)
  %8 = ptrtoint ptr %clear_on_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load31 = load i32, ptr %clear_on_free, align 4
  %bf.clear32 = and i32 %bf.load31, -1073741825
  store i32 %bf.clear32, ptr %clear_on_free, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %do.end27.if.end33_crit_edge
  tail call fastcc void @binder_free_buf_locked(ptr noundef %alloc, ptr noundef %add.ptr)
  %inc = add i32 %buffers.0237, 1
  %call = tail call ptr @rb_first(ptr noundef %allocated_buffers) #10
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.end33.while.cond34.preheader_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end33.while.cond34.preheader_crit_edge:        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond34.preheader

while.body40:                                     ; preds = %if.end126.while.body40_crit_edge, %while.cond34.preheader.while.body40_crit_edge
  %9 = phi ptr [ %22, %if.end126.while.body40_crit_edge ], [ %3, %while.cond34.preheader.while.body40_crit_edge ]
  %free = getelementptr inbounds %struct.binder_buffer, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load45 = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load45)
  %tobool47.not = icmp sgt i32 %bf.load45, -1
  br i1 %tobool47.not, label %do.end65, label %while.body40.if.end71_crit_edge, !prof !232

while.body40.if.end71_crit_edge:                  ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.end65:                                         ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 839, i32 noundef 9, ptr noundef null) #10
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %while.body40.if.end71_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end71.list_del.exit_crit_edge

if.end71.list_del.exit_crit_edge:                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end71.list_del.exit_crit_edge
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %19 = ptrtoint ptr %buffers35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %buffers35, align 4
  %cmp.i232.not = icmp eq ptr %20, %buffers35
  br i1 %cmp.i232.not, label %list_del.exit.if.end126_crit_edge, label %land.rhs

list_del.exit.if.end126_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

land.rhs:                                         ; preds = %list_del.exit
  %.b231 = load i1, ptr @binder_alloc_deferred_release.__already_done, align 1
  br i1 %.b231, label %land.rhs.if.end126_crit_edge, label %if.then99, !prof !229

land.rhs.if.end126_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then99:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @binder_alloc_deferred_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 842, i32 noundef 9, ptr noundef null) #10
  br label %if.end126

if.end126:                                        ; preds = %if.then99, %land.rhs.if.end126_crit_edge, %list_del.exit.if.end126_crit_edge
  tail call void @kfree(ptr noundef %9) #10
  %21 = ptrtoint ptr %buffers35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %buffers35, align 4
  %cmp.i.not = icmp eq ptr %22, %buffers35
  br i1 %cmp.i.not, label %if.end126.while.end134_crit_edge, label %if.end126.while.body40_crit_edge

if.end126.while.body40_crit_edge:                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body40

if.end126.while.end134_crit_edge:                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end134

while.end134:                                     ; preds = %if.end126.while.end134_crit_edge, %while.cond34.preheader.while.end134_crit_edge
  %pages = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  %23 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pages, align 4
  %tobool135.not = icmp eq ptr %24, null
  br i1 %tobool135.not, label %while.end134.if.end170_crit_edge, label %for.cond.preheader

while.end134.if.end170_crit_edge:                 ; preds = %while.end134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end170

for.cond.preheader:                               ; preds = %while.end134
  %buffer_size = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %25 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %26)
  %cmp241.not = icmp ult i32 %26, 4096
  br i1 %cmp241.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %buffer145 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %pid = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0243 = phi i32 [ 0, %for.body.lr.ph ], [ %inc168, %cleanup.for.body_crit_edge ]
  %page_count.0242 = phi i32 [ 0, %for.body.lr.ph ], [ %page_count.1, %cleanup.for.body_crit_edge ]
  %27 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pages, align 4
  %page_ptr = getelementptr %struct.binder_lru_page, ptr %28, i32 %i.0243, i32 1
  %29 = ptrtoint ptr %page_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page_ptr, align 4
  %tobool138.not = icmp eq ptr %30, null
  br i1 %tobool138.not, label %for.body.cleanup_crit_edge, label %if.end140

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end140:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.binder_lru_page, ptr %28, i32 %i.0243
  %call143 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @binder_alloc_lru, ptr noundef %arrayidx) #10
  %31 = ptrtoint ptr %buffer145 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer145, align 4
  %mul = shl i32 %i.0243, 12
  %add.ptr146 = getelementptr i8, ptr %32, i32 %mul
  %33 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool148.not = icmp eq i32 %and, 0
  br i1 %tobool148.not, label %if.end140.do.end162_crit_edge, label %if.then149

if.end140.do.end162_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

if.then149:                                       ; preds = %if.end140
  %call150 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_deferred_release._rs, ptr noundef nonnull @__func__.binder_alloc_deferred_release) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.then149.do.end162_crit_edge, label %do.end155

if.then149.do.end162_crit_edge:                   ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end162

do.end155:                                        ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pid, align 4
  %cond = select i1 %call143, ptr @.str.7, ptr @.str.8
  %call158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.binder_alloc_deferred_release, i32 noundef %35, i32 noundef %i.0243, ptr noundef %add.ptr146, ptr noundef nonnull %cond) #13
  br label %do.end162

do.end162:                                        ; preds = %do.end155, %if.then149.do.end162_crit_edge, %if.end140.do.end162_crit_edge
  %36 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages, align 4
  %page_ptr165 = getelementptr %struct.binder_lru_page, ptr %37, i32 %i.0243, i32 1
  %38 = ptrtoint ptr %page_ptr165 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %page_ptr165, align 4
  tail call void @__free_pages(ptr noundef %39, i32 noundef 0) #10
  %inc166 = add i32 %page_count.0242, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end162, %for.body.cleanup_crit_edge
  %page_count.1 = phi i32 [ %inc166, %do.end162 ], [ %page_count.0242, %for.body.cleanup_crit_edge ]
  %inc168 = add nuw nsw i32 %i.0243, 1
  %40 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buffer_size, align 4
  %div230 = lshr i32 %41, 12
  %cmp = icmp ult i32 %inc168, %div230
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %page_count.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %page_count.1, %cleanup.for.end_crit_edge ]
  %42 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %43) #10
  br label %if.end170

if.end170:                                        ; preds = %for.end, %while.end134.if.end170_crit_edge
  %page_count.2 = phi i32 [ %page_count.0.lcssa, %for.end ], [ 0, %while.end134.if.end170_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc) #10
  %vma_vm_mm = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 2
  %44 = ptrtoint ptr %vma_vm_mm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vma_vm_mm, align 4
  %tobool172.not = icmp eq ptr %45, null
  br i1 %tobool172.not, label %if.end170.do.body176_crit_edge, label %if.then173

if.end170.do.body176_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body176

if.then173:                                       ; preds = %if.end170
  %mm_count.i = getelementptr inbounds %struct.anon.10, ptr %45, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #10
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #10, !srcloc !251
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then173.do.body176_crit_edge, !prof !232

if.then173.do.body176_crit_edge:                  ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body176

if.then.i:                                        ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmdrop(ptr noundef nonnull %45) #10
  br label %do.body176

do.body176:                                       ; preds = %if.then.i, %if.then173.do.body176_crit_edge, %if.end170.do.body176_crit_edge
  %47 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and177 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.body176.do.end192_crit_edge, label %if.then179

do.body176.do.end192_crit_edge:                   ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end192

if.then179:                                       ; preds = %do.body176
  %call180 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_alloc_deferred_release._rs.9, ptr noundef nonnull @__func__.binder_alloc_deferred_release) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then179.do.end192_crit_edge, label %do.end185

if.then179.do.end192_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end192

do.end185:                                        ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  %pid187 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %48 = ptrtoint ptr %pid187 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pid187, align 4
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.binder_alloc_deferred_release, i32 noundef %49, i32 noundef %buffers.0.lcssa, i32 noundef %page_count.2) #13
  br label %do.end192

do.end192:                                        ; preds = %do.end185, %if.then179.do.end192_crit_edge, %do.body176.do.end192_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binder_alloc_print_allocated(ptr noundef %m, ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %alloc, i32 noundef 0) #10
  %allocated_buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 6
  %call = tail call ptr @rb_first(ptr noundef %allocated_buffers) #10
  %cmp.not7 = icmp eq ptr %call, null
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %n.08 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %debug_id.i = getelementptr i8, ptr %n.08, i32 12
  %0 = ptrtoint ptr %debug_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load.i = load i32, ptr %debug_id.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 134217727
  %user_data.i = getelementptr i8, ptr %n.08, i32 36
  %1 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %user_data.i, align 4
  %data_size.i = getelementptr i8, ptr %n.08, i32 24
  %3 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_size.i, align 4
  %offsets_size.i = getelementptr i8, ptr %n.08, i32 28
  %5 = ptrtoint ptr %offsets_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offsets_size.i, align 4
  %extra_buffers_size.i = getelementptr i8, ptr %n.08, i32 32
  %7 = ptrtoint ptr %extra_buffers_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extra_buffers_size.i, align 4
  %transaction.i = getelementptr i8, ptr %n.08, i32 16
  %9 = ptrtoint ptr %transaction.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transaction.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.92, ptr @.str.8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.13, i32 noundef %bf.clear.i, ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, ptr noundef nonnull %cond.i) #10
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %n.08) #10
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %alloc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binder_alloc_print_pages(ptr noundef %m, ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %alloc, i32 noundef 0) #10
  %vma1.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 1
  %0 = ptrtoint ptr %vma1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end12_crit_edge, label %binder_alloc_get_vma.exit

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

binder_alloc_get_vma.exit:                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !231
  %2 = ptrtoint ptr %vma1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vma1.i, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %binder_alloc_get_vma.exit.if.end12_crit_edge, label %for.cond.preheader

binder_alloc_get_vma.exit.if.end12_crit_edge:     ; preds = %binder_alloc_get_vma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.cond.preheader:                               ; preds = %binder_alloc_get_vma.exit
  %buffer_size = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %5)
  %cmp129.not = icmp ult i32 %5, 4096
  br i1 %cmp129.not, label %for.cond.preheader.if.end12_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end12_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div26 = lshr i32 %5, 12
  %pages = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %free.034 = phi i32 [ 0, %for.body.lr.ph ], [ %free.1, %for.inc.for.body_crit_edge ]
  %lru.033 = phi i32 [ 0, %for.body.lr.ph ], [ %lru.1, %for.inc.for.body_crit_edge ]
  %active.032 = phi i32 [ 0, %for.body.lr.ph ], [ %active.1, %for.inc.for.body_crit_edge ]
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc11, %for.inc.for.body_crit_edge ]
  %page_ptr = getelementptr %struct.binder_lru_page, ptr %7, i32 %i.030, i32 1
  %8 = ptrtoint ptr %page_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page_ptr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %free.034, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.binder_lru_page, ptr %7, i32 %i.030
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %11, %arrayidx
  br i1 %cmp.i.not, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inc7 = add i32 %active.032, 1
  br label %for.inc

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %inc9 = add i32 %lru.033, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else8, %if.then6, %if.then2
  %active.1 = phi i32 [ %inc7, %if.then6 ], [ %active.032, %if.else8 ], [ %active.032, %if.then2 ]
  %lru.1 = phi i32 [ %lru.033, %if.then6 ], [ %inc9, %if.else8 ], [ %lru.033, %if.then2 ]
  %free.1 = phi i32 [ %free.034, %if.then6 ], [ %free.034, %if.else8 ], [ %inc, %if.then2 ]
  %inc11 = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc11, %div26
  br i1 %exitcond.not, label %for.inc.if.end12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %for.inc.if.end12_crit_edge, %for.cond.preheader.if.end12_crit_edge, %binder_alloc_get_vma.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %active.2 = phi i32 [ 0, %binder_alloc_get_vma.exit.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ 0, %for.cond.preheader.if.end12_crit_edge ], [ %active.1, %for.inc.if.end12_crit_edge ]
  %lru.2 = phi i32 [ 0, %binder_alloc_get_vma.exit.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ 0, %for.cond.preheader.if.end12_crit_edge ], [ %lru.1, %for.inc.if.end12_crit_edge ]
  %free.2 = phi i32 [ 0, %binder_alloc_get_vma.exit.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ 0, %for.cond.preheader.if.end12_crit_edge ], [ %free.1, %for.inc.if.end12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %active.2, i32 noundef %lru.2, i32 noundef %free.2) #10
  %pages_high = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 12
  %12 = ptrtoint ptr %pages_high to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pages_high, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @binder_alloc_get_allocated_count(ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %alloc, i32 noundef 0) #10
  %allocated_buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 6
  %call = tail call ptr @rb_first(ptr noundef %allocated_buffers) #10
  %cmp.not7 = icmp eq ptr %call, null
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %count.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %n.08 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %inc = add i32 %count.09, 1
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %n.08) #10
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc) #10
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binder_alloc_vma_close(ptr nocapture noundef writeonly %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !244
  %vma3.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 1
  %0 = ptrtoint ptr %vma3.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %vma3.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @binder_alloc_free_page(ptr noundef %item, ptr noundef %lru, ptr noundef %lock, ptr nocapture readnone %cb_arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc1 = getelementptr inbounds %struct.binder_lru_page, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %alloc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alloc1, align 4
  %call = tail call i32 @mutex_trylock(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_ptr = getelementptr inbounds %struct.binder_lru_page, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %page_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page_ptr, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %pages = getelementptr inbounds %struct.binder_alloc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %item to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %buffer = getelementptr inbounds %struct.binder_alloc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  %8 = ptrtoint ptr %7 to i32
  %mul = shl i32 %sub.ptr.sub, 8
  %add = add i32 %mul, %8
  %vma_vm_mm = getelementptr inbounds %struct.binder_alloc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %vma_vm_mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vma_vm_mm, align 4
  %mm_users.i = getelementptr inbounds %struct.anon.10, ptr %10, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #10, !srcloc !254
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.end4.cleanup.sink.split_crit_edge, label %if.end7

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@binder_alloc_free_page, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !256

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %10, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end7
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %10, i32 0, i32 15
  %call.i = tail call i32 @down_read_trylock(ptr noundef %mmap_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@binder_alloc_free_page, %if.then.i5.i)) #10
          to label %mmap_read_trylock.exit [label %if.then.i5.i], !srcloc !256

if.then.i5.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #10
  br label %mmap_read_trylock.exit

mmap_read_trylock.exit:                           ; preds = %if.then.i5.i, %__mmap_lock_trace_start_locking.exit.i
  br i1 %cmp.i, label %if.end10, label %err_mmap_read_lock_failed

if.end10:                                         ; preds = %mmap_read_trylock.exit
  %vma1.i = getelementptr inbounds %struct.binder_alloc, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %vma1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vma1.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end10.binder_alloc_get_vma.exit_crit_edge, label %do.end.i

if.end10.binder_alloc_get_vma.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %binder_alloc_get_vma.exit

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !231
  %14 = ptrtoint ptr %vma1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vma1.i, align 4
  br label %binder_alloc_get_vma.exit

binder_alloc_get_vma.exit:                        ; preds = %do.end.i, %if.end10.binder_alloc_get_vma.exit_crit_edge
  %vma.0.i = phi ptr [ %15, %do.end.i ], [ null, %if.end10.binder_alloc_get_vma.exit_crit_edge ]
  tail call void @list_lru_isolate(ptr noundef %lru, ptr noundef %item) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %tobool12.not = icmp eq ptr %vma.0.i, null
  br i1 %tobool12.not, label %binder_alloc_get_vma.exit.if.end14_crit_edge, label %if.then13

binder_alloc_get_vma.exit.if.end14_crit_edge:     ; preds = %binder_alloc_get_vma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %binder_alloc_get_vma.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @trace_binder_unmap_user_start(ptr noundef %1, i32 noundef %sub.ptr.div)
  tail call void @zap_page_range(ptr noundef nonnull %vma.0.i, i32 noundef %add, i32 noundef 4096) #10
  tail call fastcc void @trace_binder_unmap_user_end(ptr noundef %1, i32 noundef %sub.ptr.div)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %binder_alloc_get_vma.exit.if.end14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@binder_alloc_free_page, %if.then.i.i49)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i49], !srcloc !256

if.then.i.i49:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %10, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i49, %if.end14
  tail call void @up_read(ptr noundef %mmap_lock.i) #10
  tail call void @mmput_async(ptr noundef %10) #10
  tail call fastcc void @trace_binder_unmap_kernel_start(ptr noundef %1, i32 noundef %sub.ptr.div)
  %16 = ptrtoint ptr %page_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %page_ptr, align 4
  tail call void @__free_pages(ptr noundef %17, i32 noundef 0) #10
  %18 = ptrtoint ptr %page_ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %page_ptr, align 4
  tail call fastcc void @trace_binder_unmap_kernel_end(ptr noundef %1, i32 noundef %sub.ptr.div)
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  br label %cleanup.sink.split

err_mmap_read_lock_failed:                        ; preds = %mmap_read_trylock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mmput_async(ptr noundef %10) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_mmap_read_lock_failed, %mmap_read_unlock.exit, %if.end4.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %mmap_read_unlock.exit ], [ 3, %if.end4.cleanup.sink.split_crit_edge ], [ 3, %err_mmap_read_lock_failed ], [ 3, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_unmap_user_start(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_user_start, i32 0, i32 1), ptr blockaddress(@trace_binder_unmap_user_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !257
  %call42 = tail call i32 @__traceiter_binder_unmap_user_start(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !258
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_user_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_user_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_unmap_user_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_unmap_user_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 376, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
declare dso_local void @zap_page_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_unmap_user_end(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_user_end, i32 0, i32 1), ptr blockaddress(@trace_binder_unmap_user_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !261
  %call42 = tail call i32 @__traceiter_binder_unmap_user_end(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !262
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_user_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_user_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_unmap_user_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_unmap_user_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 380, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
declare dso_local void @mmput_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_unmap_kernel_start(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_kernel_start, i32 0, i32 1), ptr blockaddress(@trace_binder_unmap_kernel_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !263
  %call42 = tail call i32 @__traceiter_binder_unmap_kernel_start(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !264
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_kernel_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_kernel_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_unmap_kernel_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_unmap_kernel_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 384, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_unmap_kernel_end(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_kernel_end, i32 0, i32 1), ptr blockaddress(@trace_binder_unmap_kernel_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !265
  %call42 = tail call i32 @__traceiter_binder_unmap_kernel_end(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !266
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_kernel_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_unmap_kernel_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_unmap_kernel_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_unmap_kernel_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 388, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @binder_alloc_init(ptr noundef %alloc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %group_leader, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  %pid1 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %8 = ptrtoint ptr %pid1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pid1, align 4
  tail call void @__mutex_init(ptr noundef %alloc, ptr noundef nonnull @.str.16, ptr noundef nonnull @binder_alloc_init.__key) #10
  %buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %9 = ptrtoint ptr %buffers to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %buffers, ptr %buffers, align 4
  %prev.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffers, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @binder_alloc_shrinker_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__list_lru_init(ptr noundef nonnull @binder_alloc_lru, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @register_shrinker(ptr noundef nonnull @binder_shrinker) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @list_lru_destroy(ptr noundef nonnull @binder_alloc_lru) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then2 ], [ 0, %if.then.if.end3_crit_edge ], [ %call, %entry.if.end3_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__list_lru_init(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @binder_alloc_copy_user_to_buffer(ptr noundef readonly %alloc, ptr nocapture noundef readonly %buffer, i64 noundef %buffer_offset, ptr noundef %from, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %buffers.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i34, label %if.end.i.i35

if.then.i.i34:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buffer2.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %2 = ptrtoint ptr %buffer2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer2.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %3, i32 %5
  br label %binder_alloc_buffer_size.exit.i

if.end.i.i35:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i.i = getelementptr inbounds %struct.binder_buffer, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %user_data4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_data4.i.i, align 4
  br label %binder_alloc_buffer_size.exit.i

binder_alloc_buffer_size.exit.i:                  ; preds = %if.end.i.i35, %if.then.i.i34
  %.sink14.i.i = phi ptr [ %7, %if.end.i.i35 ], [ %add.ptr.i.i33, %if.then.i.i34 ]
  %user_data5.i.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 8
  %8 = ptrtoint ptr %user_data5.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_data5.i.i, align 4
  %sub.ptr.lhs.cast6.i.i = ptrtoint ptr %.sink14.i.i to i32
  %sub.ptr.rhs.cast7.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub8.i.i = sub i32 %sub.ptr.lhs.cast6.i.i, %sub.ptr.rhs.cast7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub8.i.i, i32 %bytes)
  %cmp.not.i = icmp ult i32 %sub.ptr.sub8.i.i, %bytes
  br i1 %cmp.not.i, label %binder_alloc_buffer_size.exit.i.return_crit_edge, label %land.lhs.true.i

binder_alloc_buffer_size.exit.i.return_crit_edge: ; preds = %binder_alloc_buffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %binder_alloc_buffer_size.exit.i
  %sub.i = sub i32 %sub.ptr.sub8.i.i, %bytes
  %conv.i = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %buffer_offset)
  %cmp1.not.i = icmp uge i64 %conv.i, %buffer_offset
  %and.i = and i64 %buffer_offset, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp4.i = icmp eq i64 %and.i, 0
  %or.cond.i = and i1 %cmp4.i, %cmp1.not.i
  br i1 %or.cond.i, label %land.lhs.true6.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %free.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 2
  %10 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.rhs.i, label %land.lhs.true6.i.return_crit_edge

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.rhs.i:                                       ; preds = %land.lhs.true6.i
  %11 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %land.rhs.i.while.cond.preheader_crit_edge, label %lor.rhs.i

land.rhs.i.while.cond.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

lor.rhs.i:                                        ; preds = %land.rhs.i
  %transaction.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 3
  %12 = ptrtoint ptr %transaction.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transaction.i, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %lor.rhs.i.while.cond.preheader_crit_edge, label %lor.rhs.i.return_crit_edge

lor.rhs.i.return_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.rhs.i.while.cond.preheader_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.rhs.i.while.cond.preheader_crit_edge, %land.rhs.i.while.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not50 = icmp eq i32 %bytes, 0
  br i1 %tobool.not50, label %while.cond.preheader.return_crit_edge, label %while.body.lr.ph

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buffer1.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %pages.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %bytes.addr.055 = phi i32 [ %bytes, %while.body.lr.ph ], [ %sub8, %cleanup.while.body_crit_edge ]
  %from.addr.052 = phi ptr [ %from, %while.body.lr.ph ], [ %add.ptr9, %cleanup.while.body_crit_edge ]
  %buffer_offset.addr.051 = phi i64 [ %buffer_offset, %while.body.lr.ph ], [ %add10, %cleanup.while.body_crit_edge ]
  %14 = ptrtoint ptr %user_data5.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_data5.i.i, align 4
  %16 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i36 = sext i32 %sub.ptr.sub.i to i64
  %add.i = add i64 %buffer_offset.addr.051, %conv.i36
  %18 = trunc i64 %add.i to i32
  %conv2.i = and i32 %18, 4095
  %shr.i = lshr i64 %add.i, 12
  %conv3.i = trunc i64 %shr.i to i32
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %page_ptr.i = getelementptr %struct.binder_lru_page, ptr %20, i32 %conv3.i, i32 1
  %21 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page_ptr.i, align 4
  %sub = sub nuw nsw i32 4096, %conv2.i
  %23 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.055, i32 %sub)
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 44) #10
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %22, align 4
  %shr.i.i = lshr i32 %25, 30
  %26 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %shr.i.i, label %while.body.if.then.i37_crit_edge [
    i32 2, label %while.body.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

while.body.if.else.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

while.body.if.then.i37_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i37

is_highmem_idx.exit.i:                            ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %27 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp2.i.not.i = icmp eq i32 %27, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i37_crit_edge

is_highmem_idx.exit.i.if.then.i37_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i37

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i37:                                      ; preds = %is_highmem_idx.exit.i.if.then.i37_crit_edge, %while.body.if.then.i37_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %22) #10
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %while.body.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %22) #10
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i37
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i37 ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %conv2.i
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %23, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.96, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %kmap.exit.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

kmap.exit.if.then11.i.i_crit_edge:                ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %kmap.exit
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %from.addr.052, i32 %23, i32 -1226833920) #16, !srcloc !267
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !229

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %23) #10
  %29 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !268
  %and.i.i.i.i = and i32 %31, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %from.addr.052, i32 noundef %23) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #10, !srcloc !269
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !229

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %kmap.exit.if.then11.i.i_crit_edge
  %res.0.i.i44 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %23, %kmap.exit.if.then11.i.i_crit_edge ], [ %23, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %23, %res.0.i.i44
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %32 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i44)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ %res.0.i.i44, %if.then11.i.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.93, i32 noundef 55) #10
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %22, align 4
  %shr.i.i38 = lshr i32 %34, 30
  %35 = zext i32 %shr.i.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %shr.i.i38, label %copy_from_user.exit.kunmap.exit_crit_edge [
    i32 2, label %copy_from_user.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i40
  ]

copy_from_user.exit.if.end.i_crit_edge:           ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

copy_from_user.exit.kunmap.exit_crit_edge:        ; preds = %copy_from_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i40:                          ; preds = %copy_from_user.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %36 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp2.i.not.i39 = icmp eq i32 %36, 2
  br i1 %cmp2.i.not.i39, label %is_highmem_idx.exit.i40.if.end.i_crit_edge, label %is_highmem_idx.exit.i40.kunmap.exit_crit_edge

is_highmem_idx.exit.i40.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %kunmap.exit

is_highmem_idx.exit.i40.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i40.if.end.i_crit_edge, %copy_from_user.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %22) #10
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i40.kunmap.exit_crit_edge, %copy_from_user.exit.kunmap.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool4.not = icmp eq i32 %n.addr.0.i, 0
  %sub8 = sub i32 %bytes.addr.055, %23
  br i1 %tobool4.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %sub8, %n.addr.0.i
  br label %return

cleanup:                                          ; preds = %kunmap.exit
  %add.ptr9 = getelementptr i8, ptr %from.addr.052, i32 %23
  %conv = zext i32 %23 to i64
  %add10 = add i64 %buffer_offset.addr.051, %conv
  %tobool.not = icmp eq i32 %sub8, 0
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %while.cond.preheader.return_crit_edge, %lor.rhs.i.return_crit_edge, %land.lhs.true6.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %binder_alloc_buffer_size.exit.i.return_crit_edge
  %retval.2 = phi i32 [ %bytes, %lor.rhs.i.return_crit_edge ], [ %add, %cleanup.thread ], [ %bytes, %land.lhs.true6.i.return_crit_edge ], [ %bytes, %land.lhs.true.i.return_crit_edge ], [ %bytes, %binder_alloc_buffer_size.exit.i.return_crit_edge ], [ 0, %while.cond.preheader.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @binder_alloc_copy_to_buffer(ptr noundef %alloc, ptr nocapture noundef readonly %buffer, i64 noundef %buffer_offset, ptr nocapture noundef %src, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @binder_alloc_do_buffer_copy(ptr noundef %alloc, i1 noundef zeroext true, ptr noundef %buffer, i64 noundef %buffer_offset, ptr noundef %src, i32 noundef %bytes)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @binder_alloc_do_buffer_copy(ptr noundef readonly %alloc, i1 noundef zeroext %to_buffer, ptr nocapture noundef readonly %buffer, i64 noundef %buffer_offset, ptr nocapture noundef %ptr, i32 noundef %bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %buffers.i.i
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %buffer2.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %2 = ptrtoint ptr %buffer2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer2.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 9
  %4 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %5
  br label %binder_alloc_buffer_size.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %user_data4.i.i = getelementptr inbounds %struct.binder_buffer, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %user_data4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_data4.i.i, align 4
  br label %binder_alloc_buffer_size.exit.i

binder_alloc_buffer_size.exit.i:                  ; preds = %if.end.i.i, %if.then.i.i
  %.sink14.i.i = phi ptr [ %7, %if.end.i.i ], [ %add.ptr.i.i, %if.then.i.i ]
  %user_data5.i.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 8
  %8 = ptrtoint ptr %user_data5.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_data5.i.i, align 4
  %sub.ptr.lhs.cast6.i.i = ptrtoint ptr %.sink14.i.i to i32
  %sub.ptr.rhs.cast7.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub8.i.i = sub i32 %sub.ptr.lhs.cast6.i.i, %sub.ptr.rhs.cast7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub8.i.i, i32 %bytes)
  %cmp.not.i = icmp ult i32 %sub.ptr.sub8.i.i, %bytes
  br i1 %cmp.not.i, label %binder_alloc_buffer_size.exit.i.return_crit_edge, label %land.lhs.true.i

binder_alloc_buffer_size.exit.i.return_crit_edge: ; preds = %binder_alloc_buffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %binder_alloc_buffer_size.exit.i
  %sub.i = sub i32 %sub.ptr.sub8.i.i, %bytes
  %conv.i = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %buffer_offset)
  %cmp1.not.i = icmp uge i64 %conv.i, %buffer_offset
  %and.i = and i64 %buffer_offset, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp4.i = icmp eq i64 %and.i, 0
  %or.cond.i = and i1 %cmp4.i, %cmp1.not.i
  br i1 %or.cond.i, label %land.lhs.true6.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %free.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 2
  %10 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load.i = load i32, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.rhs.i, label %land.lhs.true6.i.return_crit_edge

land.lhs.true6.i.return_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.rhs.i:                                       ; preds = %land.lhs.true6.i
  %11 = and i32 %bf.load.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %land.rhs.i.while.cond.preheader_crit_edge, label %lor.rhs.i

land.rhs.i.while.cond.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

lor.rhs.i:                                        ; preds = %land.rhs.i
  %transaction.i = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 3
  %12 = ptrtoint ptr %transaction.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transaction.i, align 4
  %tobool10.not.i = icmp eq ptr %13, null
  br i1 %tobool10.not.i, label %lor.rhs.i.while.cond.preheader_crit_edge, label %lor.rhs.i.return_crit_edge

lor.rhs.i.return_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.rhs.i.while.cond.preheader_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.rhs.i.while.cond.preheader_crit_edge, %land.rhs.i.while.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not30 = icmp eq i32 %bytes, 0
  br i1 %tobool.not30, label %while.cond.preheader.return_crit_edge, label %while.body.lr.ph

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %buffer1.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %pages.i = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %bytes.addr.034 = phi i32 [ %bytes, %while.body.lr.ph ], [ %sub9, %do.end.while.body_crit_edge ]
  %ptr.addr.032 = phi ptr [ %ptr, %while.body.lr.ph ], [ %add.ptr10, %do.end.while.body_crit_edge ]
  %buffer_offset.addr.031 = phi i64 [ %buffer_offset, %while.body.lr.ph ], [ %add, %do.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %user_data5.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_data5.i.i, align 4
  %16 = ptrtoint ptr %buffer1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i28 = sext i32 %sub.ptr.sub.i to i64
  %add.i = add i64 %buffer_offset.addr.031, %conv.i28
  %18 = trunc i64 %add.i to i32
  %conv2.i = and i32 %18, 4095
  %shr.i = lshr i64 %add.i, 12
  %conv3.i = trunc i64 %shr.i to i32
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %page_ptr.i = getelementptr %struct.binder_lru_page, ptr %20, i32 %conv3.i, i32 1
  %21 = ptrtoint ptr %page_ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page_ptr.i, align 4
  %sub = sub nuw nsw i32 4096, %conv2.i
  %23 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.034, i32 %sub)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %24 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %24, 512
  %25 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !271
  %29 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i1.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !272
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %22, i32 noundef %or.i) #10
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %conv2.i
  br i1 %to_buffer, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %35 = call ptr @memcpy(ptr %add.ptr, ptr %ptr.addr.032, i32 %23)
  br label %do.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %36 = call ptr @memcpy(ptr %ptr.addr.032, ptr %add.ptr, i32 %23)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !273
  %37 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i1.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 213
  %41 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %42, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !274
  %43 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %sub9 = sub i32 %bytes.addr.034, %23
  %add.ptr10 = getelementptr i8, ptr %ptr.addr.032, i32 %23
  %conv = zext i32 %23 to i64
  %add = add i64 %buffer_offset.addr.031, %conv
  %tobool.not = icmp eq i32 %sub9, 0
  br i1 %tobool.not, label %do.end.return_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %do.end.return_crit_edge, %while.cond.preheader.return_crit_edge, %lor.rhs.i.return_crit_edge, %land.lhs.true6.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %binder_alloc_buffer_size.exit.i.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.rhs.i.return_crit_edge ], [ -22, %land.lhs.true6.i.return_crit_edge ], [ -22, %land.lhs.true.i.return_crit_edge ], [ -22, %binder_alloc_buffer_size.exit.i.return_crit_edge ], [ 0, %while.cond.preheader.return_crit_edge ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @binder_alloc_copy_from_buffer(ptr noundef %alloc, ptr nocapture noundef %dest, ptr nocapture noundef readonly %buffer, i64 noundef %buffer_offset, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @binder_alloc_do_buffer_copy(ptr noundef %alloc, i1 noundef zeroext false, ptr noundef %buffer, i64 noundef %buffer_offset, ptr noundef %dest, i32 noundef %bytes)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @binder_update_page_range(ptr noundef %alloc, i32 noundef %allocate, ptr noundef %start, ptr noundef %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %if.then

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @binder_update_page_range._rs, ptr noundef nonnull @__func__.binder_update_page_range) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.do.end8_crit_edge, label %do.end

if.then.do.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pid = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %1 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allocate)
  %tobool4.not = icmp eq i32 %allocate, 0
  %cond = select i1 %tobool4.not, ptr @.str.55, ptr @.str.54
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %2, ptr noundef nonnull %cond, ptr noundef %start, ptr noundef %end) #13
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.then.do.end8_crit_edge, %entry.do.end8_crit_edge
  %cmp.not = icmp ugt ptr %end, %start
  br i1 %cmp.not, label %if.end10, label %do.end8.cleanup231_crit_edge

do.end8.cleanup231_crit_edge:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup231

if.end10:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allocate)
  %tobool11 = icmp ne i32 %allocate, 0
  tail call fastcc void @trace_binder_update_page_range(ptr noundef %alloc, i1 noundef zeroext %tobool11, ptr noundef %start, ptr noundef nonnull %end)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allocate)
  %cmp12 = icmp eq i32 %allocate, 0
  br i1 %cmp12, label %if.end10.for.cond168.preheader_crit_edge, label %for.body.lr.ph

if.end10.for.cond168.preheader_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond168.preheader

for.body.lr.ph:                                   ; preds = %if.end10
  %pages = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  %3 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pages, align 4
  %buffer = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %page_addr.0344, i32 4096
  %cmp15 = icmp ult ptr %add.ptr, %end
  br i1 %cmp15, label %for.cond.for.body_crit_edge, label %for.cond.for.body52.lr.ph_crit_edge

for.cond.for.body52.lr.ph_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52.lr.ph

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %page_addr.0344 = phi ptr [ %start, %for.body.lr.ph ], [ %add.ptr, %for.cond.for.body_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %page_addr.0344 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div318 = lshr i32 %sub.ptr.sub, 12
  %page_ptr = getelementptr %struct.binder_lru_page, ptr %4, i32 %div318, i32 1
  %7 = ptrtoint ptr %page_ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page_ptr, align 4
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %land.lhs.true.critedge, label %for.cond

land.lhs.true.critedge:                           ; preds = %for.body
  %vma_vm_mm = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 2
  %9 = ptrtoint ptr %vma_vm_mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vma_vm_mm, align 4
  %mm_users.i = getelementptr inbounds %struct.anon.10, ptr %10, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i) #10, !srcloc !254
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %land.lhs.true.critedge.if.end27_crit_edge, label %if.end23

land.lhs.true.critedge.if.end27_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end23:                                         ; preds = %land.lhs.true.critedge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !255
  %12 = ptrtoint ptr %vma_vm_mm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vma_vm_mm, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@binder_update_page_range, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !256

if.then.i.i:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %13, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then25
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %13, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@binder_update_page_range, %if.then.i3.i)) #10
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !256

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %13, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %vma26 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 1
  %14 = ptrtoint ptr %vma26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vma26, align 4
  br label %if.end27

if.end27:                                         ; preds = %mmap_read_lock.exit, %if.end23.if.end27_crit_edge, %land.lhs.true.critedge.if.end27_crit_edge
  %tobool24.not328 = phi i1 [ false, %mmap_read_lock.exit ], [ true, %if.end23.if.end27_crit_edge ], [ true, %land.lhs.true.critedge.if.end27_crit_edge ]
  %mm.0327 = phi ptr [ %13, %mmap_read_lock.exit ], [ null, %if.end23.if.end27_crit_edge ], [ null, %land.lhs.true.critedge.if.end27_crit_edge ]
  %vma.0 = phi ptr [ %15, %mmap_read_lock.exit ], [ null, %if.end23.if.end27_crit_edge ], [ null, %land.lhs.true.critedge.if.end27_crit_edge ]
  %tobool28.not = icmp eq ptr %vma.0, null
  br i1 %tobool28.not, label %do.body32, label %if.end27.for.body52.lr.ph_crit_edge

if.end27.for.body52.lr.ph_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52.lr.ph

for.body52.lr.ph:                                 ; preds = %if.end27.for.body52.lr.ph_crit_edge, %for.cond.for.body52.lr.ph_crit_edge
  %tobool28.not366 = phi i1 [ %tobool28.not, %if.end27.for.body52.lr.ph_crit_edge ], [ true, %for.cond.for.body52.lr.ph_crit_edge ]
  %vma.0365 = phi ptr [ %vma.0, %if.end27.for.body52.lr.ph_crit_edge ], [ null, %for.cond.for.body52.lr.ph_crit_edge ]
  %mm.0327363 = phi ptr [ %mm.0327, %if.end27.for.body52.lr.ph_crit_edge ], [ null, %for.cond.for.body52.lr.ph_crit_edge ]
  %tobool24.not328362 = phi i1 [ %tobool24.not328, %if.end27.for.body52.lr.ph_crit_edge ], [ true, %for.cond.for.body52.lr.ph_crit_edge ]
  %buffer53 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %pages58 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  %pages_high = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 12
  br label %for.body52

do.body32:                                        ; preds = %if.end27
  %16 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and33 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.body32.err_no_vma_crit_edge, label %if.then35

do.body32.err_no_vma_crit_edge:                   ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_no_vma

if.then35:                                        ; preds = %do.body32
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_update_page_range._rs.56, ptr noundef nonnull @__func__.binder_update_page_range) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.err_no_vma_crit_edge, label %do.end41

if.then35.err_no_vma_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_no_vma

do.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %pid43 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %17 = ptrtoint ptr %pid43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pid43, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %18) #13
  br label %err_no_vma

for.body52:                                       ; preds = %for.inc161.for.body52_crit_edge, %for.body52.lr.ph
  %page_addr.1347 = phi ptr [ %start, %for.body52.lr.ph ], [ %add.ptr162, %for.inc161.for.body52_crit_edge ]
  %19 = ptrtoint ptr %buffer53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer53, align 4
  %sub.ptr.lhs.cast54 = ptrtoint ptr %page_addr.1347 to i32
  %sub.ptr.rhs.cast55 = ptrtoint ptr %20 to i32
  %sub.ptr.sub56 = sub i32 %sub.ptr.lhs.cast54, %sub.ptr.rhs.cast55
  %div57316 = lshr i32 %sub.ptr.sub56, 12
  %21 = ptrtoint ptr %pages58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages58, align 4
  %arrayidx59 = getelementptr %struct.binder_lru_page, ptr %22, i32 %div57316
  %page_ptr60 = getelementptr %struct.binder_lru_page, ptr %22, i32 %div57316, i32 1
  %23 = ptrtoint ptr %page_ptr60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page_ptr60, align 4
  %tobool61.not = icmp eq ptr %24, null
  br i1 %tobool61.not, label %if.end91, label %if.then62

if.then62:                                        ; preds = %for.body52
  tail call fastcc void @trace_binder_alloc_lru_start(ptr noundef %alloc, i32 noundef %div57316)
  %call63 = tail call zeroext i1 @list_lru_del(ptr noundef nonnull @binder_alloc_lru, ptr noundef %arrayidx59) #10
  br i1 %call63, label %if.then62.if.end83_crit_edge, label %do.end77, !prof !229

if.then62.if.end83_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

do.end77:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 238, i32 noundef 9, ptr noundef null) #10
  br label %if.end83

if.end83:                                         ; preds = %do.end77, %if.then62.if.end83_crit_edge
  tail call fastcc void @trace_binder_alloc_lru_end(ptr noundef %alloc, i32 noundef %div57316)
  br label %for.inc161

if.end91:                                         ; preds = %for.body52
  br i1 %tobool28.not366, label %do.end111, label %if.end127, !prof !232

do.end111:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 244, i32 noundef 9, ptr noundef null) #10
  br label %err_page_ptr_cleared

if.end127:                                        ; preds = %if.end91
  tail call fastcc void @trace_binder_alloc_page_start(ptr noundef %alloc, i32 noundef %div57316)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3522, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %25 = ptrtoint ptr %page_ptr60 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38.i.i.i, ptr %page_ptr60, align 4
  %tobool131.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool131.not, label %do.end135, label %if.end139

do.end135:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %pid137 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %26 = ptrtoint ptr %pid137 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pid137, align 4
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %27, ptr noundef %page_addr.1347) #13
  br label %err_page_ptr_cleared

if.end139:                                        ; preds = %if.end127
  %alloc140 = getelementptr %struct.binder_lru_page, ptr %22, i32 %div57316, i32 2
  %28 = ptrtoint ptr %alloc140 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %alloc, ptr %alloc140, align 4
  %29 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %arrayidx59, ptr %arrayidx59, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx59, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx59, ptr %prev.i, align 4
  %call144 = tail call i32 @vm_insert_page(ptr noundef nonnull %vma.0365, i32 noundef %sub.ptr.lhs.cast54, ptr noundef nonnull %call38.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end153, label %err_vm_insert_page_failed

if.end153:                                        ; preds = %if.end139
  %31 = ptrtoint ptr %pages_high to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pages_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div57316, i32 %32)
  %cmp154.not = icmp ult i32 %div57316, %32
  br i1 %cmp154.not, label %if.end153.if.end158_crit_edge, label %if.then155

if.end153.if.end158_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.then155:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw nsw i32 %div57316, 1
  %33 = ptrtoint ptr %pages_high to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add, ptr %pages_high, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end153.if.end158_crit_edge
  tail call fastcc void @trace_binder_alloc_page_end(ptr noundef %alloc, i32 noundef %div57316)
  br label %for.inc161

for.inc161:                                       ; preds = %if.end158, %if.end83
  %add.ptr162 = getelementptr i8, ptr %page_addr.1347, i32 4096
  %cmp51 = icmp ult ptr %add.ptr162, %end
  br i1 %cmp51, label %for.inc161.for.body52_crit_edge, label %for.end163

for.inc161.for.body52_crit_edge:                  ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52

for.end163:                                       ; preds = %for.inc161
  br i1 %tobool24.not328362, label %for.end163.cleanup231_crit_edge, label %if.then165

for.end163.cleanup231_crit_edge:                  ; preds = %for.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup231

if.then165:                                       ; preds = %for.end163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@binder_update_page_range, %if.then.i.i319)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i319], !srcloc !256

if.then.i.i319:                                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm.0327363, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i319, %if.then165
  %mmap_lock.i320 = getelementptr inbounds %struct.anon.10, ptr %mm.0327363, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i320) #10
  tail call void @mmput(ptr noundef nonnull %mm.0327363) #10
  br label %cleanup231

for.cond168:                                      ; preds = %for.cond168.preheader, %if.end207.for.cond168_crit_edge
  %end.pn = phi ptr [ %page_addr.2, %if.end207.for.cond168_crit_edge ], [ %end.pn.ph, %for.cond168.preheader ]
  %page_addr.2 = getelementptr i8, ptr %end.pn, i32 -4096
  %34 = ptrtoint ptr %buffer172 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffer172, align 4
  %sub.ptr.lhs.cast173 = ptrtoint ptr %page_addr.2 to i32
  %sub.ptr.rhs.cast174 = ptrtoint ptr %35 to i32
  %sub.ptr.sub175 = sub i32 %sub.ptr.lhs.cast173, %sub.ptr.rhs.cast174
  %div176317 = lshr i32 %sub.ptr.sub175, 12
  %36 = ptrtoint ptr %pages177 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pages177, align 4
  %arrayidx178 = getelementptr %struct.binder_lru_page, ptr %37, i32 %div176317
  tail call fastcc void @trace_binder_free_lru_start(ptr noundef %alloc, i32 noundef %div176317)
  %call180 = tail call zeroext i1 @list_lru_add(ptr noundef nonnull @binder_alloc_lru, ptr noundef %arrayidx178) #10
  br i1 %call180, label %for.cond168.if.end207_crit_edge, label %do.end201, !prof !229

for.cond168.if.end207_crit_edge:                  ; preds = %for.cond168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end207

do.end201:                                        ; preds = %for.cond168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 289, i32 noundef 9, ptr noundef null) #10
  br label %if.end207

if.end207:                                        ; preds = %do.end201, %for.cond168.if.end207_crit_edge
  tail call fastcc void @trace_binder_free_lru_end(ptr noundef %alloc, i32 noundef %div176317)
  %cmp215 = icmp eq ptr %page_addr.2, %start
  br i1 %cmp215, label %if.end207.err_no_vma_crit_edge, label %if.end207.for.cond168_crit_edge

if.end207.for.cond168_crit_edge:                  ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond168

if.end207.err_no_vma_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_no_vma

err_vm_insert_page_failed:                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %sub.ptr.lhs.cast54.le = ptrtoint ptr %page_addr.1347 to i32
  %pid151 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %38 = ptrtoint ptr %pid151 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pid151, align 4
  %call152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %39, i32 noundef %sub.ptr.lhs.cast54.le) #13
  %40 = ptrtoint ptr %page_ptr60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page_ptr60, align 4
  tail call void @__free_pages(ptr noundef %41, i32 noundef 0) #10
  %42 = ptrtoint ptr %page_ptr60 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %page_ptr60, align 4
  br label %err_page_ptr_cleared

err_page_ptr_cleared:                             ; preds = %err_vm_insert_page_failed, %do.end135, %do.end111
  %cmp220 = icmp eq ptr %page_addr.1347, %start
  br i1 %cmp220, label %err_page_ptr_cleared.err_no_vma_crit_edge, label %err_page_ptr_cleared.for.cond168.preheader_crit_edge

err_page_ptr_cleared.for.cond168.preheader_crit_edge: ; preds = %err_page_ptr_cleared
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond168.preheader

err_page_ptr_cleared.err_no_vma_crit_edge:        ; preds = %err_page_ptr_cleared
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_no_vma

for.cond168.preheader:                            ; preds = %err_page_ptr_cleared.for.cond168.preheader_crit_edge, %if.end10.for.cond168.preheader_crit_edge
  %mm.1.ph = phi ptr [ %mm.0327363, %err_page_ptr_cleared.for.cond168.preheader_crit_edge ], [ null, %if.end10.for.cond168.preheader_crit_edge ]
  %vma.1.ph = phi ptr [ %vma.0365, %err_page_ptr_cleared.for.cond168.preheader_crit_edge ], [ null, %if.end10.for.cond168.preheader_crit_edge ]
  %end.pn.ph = phi ptr [ %page_addr.1347, %err_page_ptr_cleared.for.cond168.preheader_crit_edge ], [ %end, %if.end10.for.cond168.preheader_crit_edge ]
  %buffer172 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 3
  %pages177 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 8
  br label %for.cond168

err_no_vma:                                       ; preds = %err_page_ptr_cleared.err_no_vma_crit_edge, %if.end207.err_no_vma_crit_edge, %do.end41, %if.then35.err_no_vma_crit_edge, %do.body32.err_no_vma_crit_edge
  %mm.3 = phi ptr [ %mm.0327363, %err_page_ptr_cleared.err_no_vma_crit_edge ], [ %mm.0327, %do.end41 ], [ %mm.0327, %if.then35.err_no_vma_crit_edge ], [ %mm.0327, %do.body32.err_no_vma_crit_edge ], [ %mm.1.ph, %if.end207.err_no_vma_crit_edge ]
  %vma.3 = phi ptr [ %vma.0365, %err_page_ptr_cleared.err_no_vma_crit_edge ], [ null, %do.end41 ], [ null, %if.then35.err_no_vma_crit_edge ], [ null, %do.body32.err_no_vma_crit_edge ], [ %vma.1.ph, %if.end207.err_no_vma_crit_edge ]
  %tobool226.not = icmp eq ptr %mm.3, null
  br i1 %tobool226.not, label %err_no_vma.if.end228_crit_edge, label %if.then227

err_no_vma.if.end228_crit_edge:                   ; preds = %err_no_vma
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end228

if.then227:                                       ; preds = %err_no_vma
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@binder_update_page_range, %if.then.i.i321)) #10
          to label %mmap_read_unlock.exit323 [label %if.then.i.i321], !srcloc !256

if.then.i.i321:                                   ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %mm.3, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit323

mmap_read_unlock.exit323:                         ; preds = %if.then.i.i321, %if.then227
  %mmap_lock.i322 = getelementptr inbounds %struct.anon.10, ptr %mm.3, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i322) #10
  tail call void @mmput(ptr noundef nonnull %mm.3) #10
  br label %if.end228

if.end228:                                        ; preds = %mmap_read_unlock.exit323, %err_no_vma.if.end228_crit_edge
  %tobool229.not = icmp eq ptr %vma.3, null
  %cond230 = select i1 %tobool229.not, i32 -3, i32 -12
  br label %cleanup231

cleanup231:                                       ; preds = %if.end228, %mmap_read_unlock.exit, %for.end163.cleanup231_crit_edge, %do.end8.cleanup231_crit_edge
  %retval.0 = phi i32 [ %cond230, %if.end228 ], [ 0, %do.end8.cleanup231_crit_edge ], [ 0, %mmap_read_unlock.exit ], [ 0, %for.end163.cleanup231_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_update_page_range(ptr noundef %alloc, i1 noundef zeroext %allocate, ptr noundef %start, ptr noundef %end) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_update_page_range, i32 0, i32 1), ptr blockaddress(@trace_binder_update_page_range, %do.body)) #10
          to label %if.end49 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !275
  %call43 = tail call i32 @__traceiter_binder_update_page_range(ptr noundef null, ptr noundef %alloc, i1 noundef zeroext %allocate, ptr noundef %start, ptr noundef %end) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !276
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !229

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_update_page_range, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_update_page_range, i32 0, i32 7), align 4
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
  %.b73 = load i1, ptr @trace_binder_update_page_range.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_update_page_range.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 333, ptr noundef nonnull @.str.67) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_alloc_lru_start(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_lru_start, i32 0, i32 1), ptr blockaddress(@trace_binder_alloc_lru_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !277
  %call42 = tail call i32 @__traceiter_binder_alloc_lru_start(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !278
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_lru_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_lru_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_alloc_lru_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_alloc_lru_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 352, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_alloc_lru_end(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_lru_end, i32 0, i32 1), ptr blockaddress(@trace_binder_alloc_lru_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !279
  %call42 = tail call i32 @__traceiter_binder_alloc_lru_end(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !280
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_lru_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_lru_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_alloc_lru_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_alloc_lru_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 356, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_alloc_page_start(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_page_start, i32 0, i32 1), ptr blockaddress(@trace_binder_alloc_page_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !281
  %call42 = tail call i32 @__traceiter_binder_alloc_page_start(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !282
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_page_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_page_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_alloc_page_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_alloc_page_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 368, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_alloc_page_end(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_page_end, i32 0, i32 1), ptr blockaddress(@trace_binder_alloc_page_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !283
  %call42 = tail call i32 @__traceiter_binder_alloc_page_end(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !284
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_page_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_alloc_page_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_alloc_page_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_alloc_page_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 372, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_free_lru_start(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_free_lru_start, i32 0, i32 1), ptr blockaddress(@trace_binder_free_lru_start, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !285
  %call42 = tail call i32 @__traceiter_binder_free_lru_start(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !286
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_free_lru_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_free_lru_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_free_lru_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_free_lru_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 360, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_binder_free_lru_end(ptr noundef %alloc, i32 noundef %page_index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_free_lru_end, i32 0, i32 1), ptr blockaddress(@trace_binder_free_lru_end, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !256

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !229

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !287
  %call42 = tail call i32 @__traceiter_binder_free_lru_end(ptr noundef null, ptr noundef %alloc, i32 noundef %page_index) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !288
  %13 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !229

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !219) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_free_lru_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_binder_free_lru_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_binder_free_lru_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_binder_free_lru_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 364, ptr noundef nonnull @.str.67) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !260
  %31 = tail call i32 @llvm.read_register.i32(metadata !219) #10
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
declare dso_local i32 @__traceiter_binder_update_page_range(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_alloc_lru_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_alloc_lru_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_alloc_page_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_alloc_page_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_free_lru_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_free_lru_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @binder_delete_free_buffer(ptr noundef %alloc, ptr noundef %buffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buffers = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 4
  %0 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffers, align 4
  %cmp = icmp eq ptr %1, %buffer
  br i1 %cmp, label %do.body4, label %do.end9, !prof !232

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 609, 0\0A.popsection", ""() #10, !srcloc !289
  unreachable

do.end9:                                          ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %free = getelementptr inbounds %struct.binder_buffer, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool11.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !232

do.body21:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/android/binder_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #10, !srcloc !290
  unreachable

do.end29:                                         ; preds = %do.end9
  %user_data.i = getelementptr inbounds %struct.binder_buffer, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %sub.i = add i32 %7, -1
  %and.i = and i32 %sub.i, -4096
  %8 = inttoptr i32 %and.i to ptr
  %user_data.i162 = getelementptr inbounds %struct.binder_buffer, ptr %buffer, i32 0, i32 8
  %9 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_data.i162, align 4
  %11 = ptrtoint ptr %10 to i32
  %and.i163 = and i32 %11, -4096
  %12 = inttoptr i32 %and.i163 to ptr
  %cmp32 = icmp eq ptr %8, %12
  br i1 %cmp32, label %if.then33, label %do.end29.if.end49_crit_edge

do.end29.if.end49_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then33:                                        ; preds = %do.end29
  %13 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.then33.if.end49_crit_edge, label %if.then36

if.then33.if.end49_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then36:                                        ; preds = %if.then33
  %call37 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_delete_free_buffer._rs, ptr noundef nonnull @__func__.binder_delete_free_buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then36.if.end49_crit_edge, label %do.end42

if.then36.if.end49_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %pid = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %14 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pid, align 4
  %16 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_data.i162, align 4
  %18 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_data.i, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %15, ptr noundef %17, ptr noundef %19) #13
  br label %if.end49

if.end49:                                         ; preds = %do.end42, %if.then36.if.end49_crit_edge, %if.then33.if.end49_crit_edge, %do.end29.if.end49_crit_edge
  %20 = xor i1 %cmp32, true
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %cmp.i.not = icmp eq ptr %22, %buffers
  br i1 %cmp.i.not, label %if.end49.if.end80_crit_edge, label %if.then54

if.end49.if.end80_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then54:                                        ; preds = %if.end49
  %user_data.i164 = getelementptr inbounds %struct.binder_buffer, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %user_data.i164 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user_data.i164, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i165 = and i32 %25, -4096
  %26 = inttoptr i32 %and.i165 to ptr
  %27 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %user_data.i162, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i167 = and i32 %29, -4096
  %30 = inttoptr i32 %and.i167 to ptr
  %cmp58 = icmp eq ptr %26, %30
  br i1 %cmp58, label %if.then59, label %if.then54.if.end80_crit_edge

if.then54.if.end80_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then59:                                        ; preds = %if.then54
  %31 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and61 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.then59.if.end80_crit_edge, label %if.then63

if.then59.if.end80_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then63:                                        ; preds = %if.then59
  %call64 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_delete_free_buffer._rs.77, ptr noundef nonnull @__func__.binder_delete_free_buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then63.if.end80_crit_edge, label %do.end69

if.then63.if.end80_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

do.end69:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #12
  %pid71 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %32 = ptrtoint ptr %pid71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid71, align 4
  %34 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %user_data.i162, align 4
  %36 = ptrtoint ptr %user_data.i164 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user_data.i164, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %33, ptr noundef %35, ptr noundef %37) #13
  br label %if.end80

if.end80:                                         ; preds = %do.end69, %if.then63.if.end80_crit_edge, %if.then59.if.end80_crit_edge, %if.then54.if.end80_crit_edge, %if.end49.if.end80_crit_edge
  %to_free.1.off0 = phi i1 [ %20, %if.end49.if.end80_crit_edge ], [ false, %do.end69 ], [ false, %if.then63.if.end80_crit_edge ], [ false, %if.then59.if.end80_crit_edge ], [ %20, %if.then54.if.end80_crit_edge ]
  %next.0 = phi ptr [ null, %if.end49.if.end80_crit_edge ], [ %22, %do.end69 ], [ %22, %if.then63.if.end80_crit_edge ], [ %22, %if.then59.if.end80_crit_edge ], [ %22, %if.then54.if.end80_crit_edge ]
  %38 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %user_data.i162, align 4
  %40 = ptrtoint ptr %39 to i32
  %and82 = and i32 %40, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp83 = icmp eq i32 %and82, 0
  br i1 %cmp83, label %do.body85, label %if.end103

do.body85:                                        ; preds = %if.end80
  %41 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and86 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.if.end130_crit_edge, label %if.then88

do.body85.if.end130_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

if.then88:                                        ; preds = %do.body85
  %call89 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_delete_free_buffer._rs.80, ptr noundef nonnull @__func__.binder_delete_free_buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then88.if.end130_crit_edge, label %do.end94

if.then88.if.end130_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #12
  %pid96 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %42 = ptrtoint ptr %pid96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pid96, align 4
  %44 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %user_data.i162, align 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %43, ptr noundef %45) #13
  br label %if.end130

if.end103:                                        ; preds = %if.end80
  br i1 %to_free.1.off0, label %do.body106, label %if.end103.if.end130_crit_edge

if.end103.if.end130_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end130

do.body106:                                       ; preds = %if.end103
  %46 = load i32, ptr @binder_alloc_debug_mask, align 4
  %and107 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %do.body106.do.end126_crit_edge, label %if.then109

do.body106.do.end126_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126

if.then109:                                       ; preds = %do.body106
  %call110 = tail call i32 @___ratelimit(ptr noundef nonnull @binder_delete_free_buffer._rs.84, ptr noundef nonnull @__func__.binder_delete_free_buffer) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.then109.do.end126_crit_edge, label %do.end115

if.then109.do.end126_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end126

do.end115:                                        ; preds = %if.then109
  %pid117 = getelementptr inbounds %struct.binder_alloc, ptr %alloc, i32 0, i32 11
  %47 = ptrtoint ptr %pid117 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid117, align 4
  %49 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %user_data.i162, align 4
  %51 = ptrtoint ptr %user_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %user_data.i, align 4
  %tobool120.not = icmp eq ptr %next.0, null
  br i1 %tobool120.not, label %do.end115.cond.end_crit_edge, label %cond.true

do.end115.cond.end_crit_edge:                     ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #12
  %user_data121 = getelementptr inbounds %struct.binder_buffer, ptr %next.0, i32 0, i32 8
  %53 = ptrtoint ptr %user_data121 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %user_data121, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end115.cond.end_crit_edge
  %cond = phi ptr [ %54, %cond.true ], [ null, %do.end115.cond.end_crit_edge ]
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %48, ptr noundef %50, ptr noundef %52, ptr noundef %cond) #13
  br label %do.end126

do.end126:                                        ; preds = %cond.end, %if.then109.do.end126_crit_edge, %do.body106.do.end126_crit_edge
  %55 = ptrtoint ptr %user_data.i162 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user_data.i162, align 4
  %57 = ptrtoint ptr %56 to i32
  %and.i169 = and i32 %57, -4096
  %58 = inttoptr i32 %and.i169 to ptr
  %add.ptr = getelementptr i8, ptr %58, i32 4096
  %call129 = tail call fastcc i32 @binder_update_page_range(ptr noundef %alloc, i32 noundef 0, ptr noundef %58, ptr noundef %add.ptr)
  br label %if.end130

if.end130:                                        ; preds = %do.end126, %if.end103.if.end130_crit_edge, %do.end94, %if.then88.if.end130_crit_edge, %do.body85.if.end130_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %buffer) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end130.list_del.exit_crit_edge

if.end130.list_del.exit_crit_edge:                ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %61 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buffer, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end130.list_del.exit_crit_edge
  %65 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %buffer, align 4
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %buffer) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_unmap_user_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_unmap_user_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_unmap_kernel_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_binder_unmap_kernel_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_shrink_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @list_lru_count_node(ptr noundef nonnull @binder_alloc_lru, i32 noundef 0) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @binder_shrink_scan(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  %nr_to_walk.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_to_walk.addr.i)
  %2 = ptrtoint ptr %nr_to_walk.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %nr_to_walk.addr.i, align 4
  %call.i = call i32 @list_lru_walk_node(ptr noundef nonnull @binder_alloc_lru, i32 noundef 0, ptr noundef nonnull @binder_alloc_free_page, ptr noundef null, ptr noundef nonnull %nr_to_walk.addr.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_to_walk.addr.i)
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_node(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !41, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !138, !139, !141, !142, !144, !145, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !192, !194, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !212, !214, !215, !217}
!llvm.named.register.sp = !{!219}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @__param_debug_mask, !1, !"__param_debug_mask", i1 false, i1 false}
!1 = !{!"../drivers/android/binder_alloc.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_masktype313, !1, !"__UNIQUE_ID_debug_masktype313", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/android/binder_alloc.c", i32 760, i32 20}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/android/binder_alloc.c", i32 774, i32 20}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/android/binder_alloc.c", i32 781, i32 20}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/android/binder_alloc.c", i32 804, i32 2}
!11 = !{ptr @binder_alloc_mmap_handler._rs, !10, !"_rs", i1 false, i1 false}
!12 = !{ptr @__func__.binder_alloc_mmap_handler, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @binder_alloc_mmap_handler._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @binder_alloc_mmap_handler._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/android/binder_alloc.c", i32 842, i32 3}
!19 = !{ptr @binder_alloc_deferred_release._rs, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/android/binder_alloc.c", i32 860, i32 4}
!21 = !{ptr @__func__.binder_alloc_deferred_release, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @binder_alloc_deferred_release._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @binder_alloc_deferred_release._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @binder_alloc_deferred_release._rs.9, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../drivers/android/binder_alloc.c", i32 873, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @binder_alloc_deferred_release._entry.10, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @binder_alloc_deferred_release._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/android/binder_alloc.c", i32 903, i32 26}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/android/binder_alloc.c", i32 939, i32 16}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/android/binder_alloc.c", i32 940, i32 16}
!38 = !{ptr @binder_alloc_init.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/android/binder_alloc.c", i32 1082, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @binder_alloc_lru, !42, !"binder_alloc_lru", i1 false, i1 false}
!42 = !{!"../drivers/android/binder_alloc.c", i32 29, i32 17}
!43 = !{ptr @__param_str_debug_mask, !1, !"__param_str_debug_mask", i1 false, i1 false}
!44 = !{ptr @binder_alloc_debug_mask, !45, !"binder_alloc_debug_mask", i1 false, i1 false}
!45 = !{!"../drivers/android/binder_alloc.c", i32 39, i32 17}
!46 = !{ptr @binder_alloc_new_buf_locked._rs, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/android/binder_alloc.c", i32 402, i32 3}
!48 = !{ptr @__func__.binder_alloc_new_buf_locked, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @binder_alloc_new_buf_locked._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @binder_alloc_new_buf_locked._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @binder_alloc_new_buf_locked._rs.18, !53, !"_rs", i1 false, i1 false}
!53 = !{!"../drivers/android/binder_alloc.c", i32 412, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @binder_alloc_new_buf_locked._entry.19, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @binder_alloc_new_buf_locked._rs.22, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../drivers/android/binder_alloc.c", i32 419, i32 3}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @binder_alloc_new_buf_locked._entry.23, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @binder_alloc_new_buf_locked._rs.26, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../drivers/android/binder_alloc.c", i32 426, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @binder_alloc_new_buf_locked._entry.27, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @binder_alloc_new_buf_locked._rs.30, !68, !"_rs", i1 false, i1 false}
!68 = !{!"../drivers/android/binder_alloc.c", i32 476, i32 3}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @binder_alloc_new_buf_locked._entry.31, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.33, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @binder_alloc_new_buf_locked._rs.34, !73, !"_rs", i1 false, i1 false}
!73 = !{!"../drivers/android/binder_alloc.c", i32 479, i32 3}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @binder_alloc_new_buf_locked._entry.35, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @binder_alloc_new_buf_locked._rs.38, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/android/binder_alloc.c", i32 491, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @binder_alloc_new_buf_locked._entry.39, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/android/binder_alloc.c", i32 512, i32 4}
!84 = !{ptr @binder_alloc_new_buf_locked._entry.42, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.44, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @binder_alloc_new_buf_locked._rs.45, !87, !"_rs", i1 false, i1 false}
!87 = !{!"../drivers/android/binder_alloc.c", i32 526, i32 2}
!88 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @binder_alloc_new_buf_locked._entry.46, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @binder_alloc_new_buf_locked._rs.49, !92, !"_rs", i1 false, i1 false}
!92 = !{!"../drivers/android/binder_alloc.c", i32 537, i32 3}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @binder_alloc_new_buf_locked._entry.50, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @binder_alloc_new_buf_locked._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @binder_update_page_range._rs, !97, !"_rs", i1 false, i1 false}
!97 = !{!"../drivers/android/binder_alloc.c", i32 191, i32 2}
!98 = !{ptr @__func__.binder_update_page_range, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @binder_update_page_range._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @binder_update_page_range._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @binder_update_page_range._rs.56, !105, !"_rs", i1 false, i1 false}
!105 = !{!"../drivers/android/binder_alloc.c", i32 220, i32 3}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @binder_update_page_range._entry.57, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @binder_update_page_range._entry_ptr.59, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/android/binder_alloc.c", i32 252, i32 4}
!111 = !{ptr @binder_update_page_range._entry.60, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @binder_update_page_range._entry_ptr.62, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/android/binder_alloc.c", i32 262, i32 4}
!115 = !{ptr @binder_update_page_range._entry.63, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @binder_update_page_range._entry_ptr.65, !114, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/android/binder_trace.h", i32 314, i32 1}
!119 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!121 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!124 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../drivers/android/binder_trace.h", i32 350, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../drivers/android/binder_trace.h", i32 354, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../drivers/android/binder_trace.h", i32 366, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!136 = distinct !{null, !137, !"__already_done", i1 false, i1 false}
!137 = !{!"../drivers/android/binder_trace.h", i32 370, i32 1}
!138 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../drivers/android/binder_trace.h", i32 358, i32 1}
!141 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../drivers/android/binder_trace.h", i32 362, i32 1}
!144 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!145 = !{ptr @debug_low_async_space_locked._rs, !146, !"_rs", i1 false, i1 false}
!146 = !{!"../drivers/android/binder_alloc.c", i32 373, i32 3}
!147 = !{ptr @__func__.debug_low_async_space_locked, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @debug_low_async_space_locked._entry, !146, !"_entry", i1 false, i1 false}
!150 = !{ptr @debug_low_async_space_locked._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @binder_free_buf_locked._rs, !152, !"_rs", i1 false, i1 false}
!152 = !{!"../drivers/android/binder_alloc.c", i32 663, i32 2}
!153 = !{ptr @__func__.binder_free_buf_locked, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @binder_free_buf_locked._entry, !152, !"_entry", i1 false, i1 false}
!156 = !{ptr @binder_free_buf_locked._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @binder_free_buf_locked._rs.72, !158, !"_rs", i1 false, i1 false}
!158 = !{!"../drivers/android/binder_alloc.c", i32 676, i32 3}
!159 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @binder_free_buf_locked._entry.73, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @binder_free_buf_locked._entry_ptr.75, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @binder_delete_free_buffer._rs, !163, !"_rs", i1 false, i1 false}
!163 = !{!"../drivers/android/binder_alloc.c", i32 614, i32 3}
!164 = !{ptr @__func__.binder_delete_free_buffer, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @binder_delete_free_buffer._entry, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @binder_delete_free_buffer._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @binder_delete_free_buffer._rs.77, !169, !"_rs", i1 false, i1 false}
!169 = !{!"../drivers/android/binder_alloc.c", i32 624, i32 4}
!170 = !{ptr @binder_delete_free_buffer._entry.78, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @binder_delete_free_buffer._entry_ptr.79, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @binder_delete_free_buffer._rs.80, !173, !"_rs", i1 false, i1 false}
!173 = !{!"../drivers/android/binder_alloc.c", i32 633, i32 3}
!174 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @binder_delete_free_buffer._entry.81, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @binder_delete_free_buffer._entry_ptr.83, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @binder_delete_free_buffer._rs.84, !178, !"_rs", i1 false, i1 false}
!178 = !{!"../drivers/android/binder_alloc.c", i32 640, i32 3}
!179 = !{ptr @.str.86, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @binder_delete_free_buffer._entry.85, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @binder_delete_free_buffer._entry_ptr.87, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/android/binder_alloc.c", i32 31, i32 8}
!184 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @binder_alloc_mmap_lock, !183, !"binder_alloc_mmap_lock", i1 false, i1 false}
!186 = !{ptr @binder_insert_free_buffer._rs, !187, !"_rs", i1 false, i1 false}
!187 = !{!"../drivers/android/binder_alloc.c", i32 81, i32 2}
!188 = !{ptr @__func__.binder_insert_free_buffer, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @binder_insert_free_buffer._entry, !187, !"_entry", i1 false, i1 false}
!191 = !{ptr @binder_insert_free_buffer._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/android/binder_alloc.c", i32 881, i32 16}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/android/binder_alloc.c", i32 885, i32 39}
!196 = distinct !{null, !197, !"__already_done", i1 false, i1 false}
!197 = !{!"../drivers/android/binder_trace.h", i32 374, i32 1}
!198 = distinct !{null, !197, !"__warned", i1 false, i1 false}
!199 = distinct !{null, !200, !"__already_done", i1 false, i1 false}
!200 = !{!"../drivers/android/binder_trace.h", i32 378, i32 1}
!201 = distinct !{null, !200, !"__warned", i1 false, i1 false}
!202 = distinct !{null, !203, !"__already_done", i1 false, i1 false}
!203 = !{!"../drivers/android/binder_trace.h", i32 382, i32 1}
!204 = distinct !{null, !203, !"__warned", i1 false, i1 false}
!205 = distinct !{null, !206, !"__already_done", i1 false, i1 false}
!206 = !{!"../drivers/android/binder_trace.h", i32 386, i32 1}
!207 = distinct !{null, !206, !"__warned", i1 false, i1 false}
!208 = !{ptr @binder_shrinker, !209, !"binder_shrinker", i1 false, i1 false}
!209 = !{!"../drivers/android/binder_alloc.c", i32 1066, i32 24}
!210 = !{ptr @.str.93, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!212 = distinct !{null, !213, !"__already_done", i1 false, i1 false}
!213 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!214 = !{ptr @.str.94, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!219 = !{!"sp"}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!229 = !{!"branch_weights", i32 2000, i32 1}
!230 = !{i64 2154930228, i64 2154930723, i64 2154930265, i64 2154930321, i64 2154930355, i64 2154930379, i64 2154930420, i64 2154930441, i64 2154930469, i64 2154930503}
!231 = !{i64 2154944988}
!232 = !{!"branch_weights", i32 1, i32 2000}
!233 = !{i64 2154966558, i64 2154971114, i64 2154966595, i64 2154966651, i64 2154966685, i64 2154966709, i64 2154966750, i64 2154966771, i64 2154966799, i64 2154966833}
!234 = !{i64 2154925866, i64 2154926361, i64 2154925903, i64 2154925959, i64 2154925993, i64 2154926017, i64 2154926058, i64 2154926079, i64 2154926107, i64 2154926141}
!235 = !{i64 2154927377, i64 2154927872, i64 2154927414, i64 2154927470, i64 2154927504, i64 2154927528, i64 2154927569, i64 2154927590, i64 2154927618, i64 2154927652}
!236 = distinct !{!236, !237}
!237 = !{!"llvm.loop.peeled.count", i32 1}
!238 = !{i8 0, i8 2}
!239 = !{i64 2155018975, i64 2155019470, i64 2155019012, i64 2155019068, i64 2155019102, i64 2155019126, i64 2155019167, i64 2155019188, i64 2155019216, i64 2155019250}
!240 = !{i64 2155020600, i64 2155021095, i64 2155020637, i64 2155020693, i64 2155020727, i64 2155020751, i64 2155020792, i64 2155020813, i64 2155020841, i64 2155020875}
!241 = !{i64 2155022269, i64 2155022764, i64 2155022306, i64 2155022362, i64 2155022396, i64 2155022420, i64 2155022461, i64 2155022482, i64 2155022510, i64 2155022544}
!242 = !{i64 2155023924, i64 2155024419, i64 2155023961, i64 2155024017, i64 2155024051, i64 2155024075, i64 2155024116, i64 2155024137, i64 2155024165, i64 2155024199}
!243 = !{i64 2155025621, i64 2155026116, i64 2155025658, i64 2155025714, i64 2155025748, i64 2155025772, i64 2155025813, i64 2155025834, i64 2155025862, i64 2155025896}
!244 = !{i64 2154944642}
!245 = !{i64 2148350294, i64 2148350320, i64 2148350349, i64 2148350383, i64 2148350414, i64 2148350437}
!246 = !{i64 2154915228, i64 2154915722, i64 2154915265, i64 2154915321, i64 2154915355, i64 2154915379, i64 2154915420, i64 2154915441, i64 2154915469, i64 2154915503}
!247 = !{i64 2154921323, i64 2154921817, i64 2154921360, i64 2154921416, i64 2154921450, i64 2154921474, i64 2154921515, i64 2154921536, i64 2154921564, i64 2154921598}
!248 = !{i64 2155037199, i64 2155037694, i64 2155037236, i64 2155037292, i64 2155037326, i64 2155037350, i64 2155037391, i64 2155037412, i64 2155037440, i64 2155037474}
!249 = !{i64 2155040064, i64 2155040559, i64 2155040101, i64 2155040157, i64 2155040191, i64 2155040215, i64 2155040256, i64 2155040277, i64 2155040305, i64 2155040339}
!250 = !{i64 2148438770}
!251 = !{i64 2148353479, i64 2148353511, i64 2148353540, i64 2148353574, i64 2148353605, i64 2148353628}
!252 = !{i64 2148438999}
!253 = !{i64 2148349713}
!254 = !{i64 834536, i64 834561, i64 834583, i64 834599, i64 834611, i64 834631, i64 834655, i64 834671, i64 834683}
!255 = !{i64 2148349901}
!256 = !{i64 2148832169, i64 2148832174, i64 2148832187, i64 2148832231, i64 2148832265, i64 2148832286}
!257 = !{i64 2154800937}
!258 = !{i64 2154801180}
!259 = !{i64 2149302136}
!260 = !{i64 2149303172}
!261 = !{i64 2154818340}
!262 = !{i64 2154818579}
!263 = !{i64 2154839848}
!264 = !{i64 2154840095}
!265 = !{i64 2154857435}
!266 = !{i64 2154857678}
!267 = !{i64 2152576368, i64 2152576393}
!268 = !{i64 5071923}
!269 = !{i64 5072120}
!270 = !{i64 2152557353}
!271 = !{i64 2153934096}
!272 = !{i64 2152579185}
!273 = !{i64 2152579392}
!274 = !{i64 2153940928}
!275 = !{i64 2154671370}
!276 = !{i64 2154671635}
!277 = !{i64 2154689007}
!278 = !{i64 2154689248}
!279 = !{i64 2154710379}
!280 = !{i64 2154710616}
!281 = !{i64 2154766163}
!282 = !{i64 2154766406}
!283 = !{i64 2154783566}
!284 = !{i64 2154783805}
!285 = !{i64 2154727620}
!286 = !{i64 2154727859}
!287 = !{i64 2154744839}
!288 = !{i64 2154745074}
!289 = !{i64 2154997377, i64 2154997872, i64 2154997414, i64 2154997470, i64 2154997504, i64 2154997528, i64 2154997569, i64 2154997590, i64 2154997618, i64 2154997652}
!290 = !{i64 2154998988, i64 2154999483, i64 2154999025, i64 2154999081, i64 2154999115, i64 2154999139, i64 2154999180, i64 2154999201, i64 2154999229, i64 2154999263}
