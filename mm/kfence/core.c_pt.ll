; ModuleID = '/llk/IR_all_yes/mm/kfence/core.c_pt.bc'
source_filename = "../mm/kfence/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kfence_sample_interval\22, \22a\22\09"
module asm "\09.weak\09__crc_kfence_sample_interval\09\09\09\09"
module asm "\09.long\09__crc_kfence_sample_interval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfence_sample_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22kfence_sample_interval\22\09\09\09\09\09"
module asm "__kstrtabns_kfence_sample_interval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kfence_pool\22, \22a\22\09"
module asm "\09.weak\09__crc___kfence_pool\09\09\09\09"
module asm "\09.long\09__crc___kfence_pool\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfence_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfence_pool\22\09\09\09\09\09"
module asm "__kstrtabns___kfence_pool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kfence_metadata = type { %struct.list_head, %struct.callback_head, %struct.raw_spinlock, i32, i32, i32, ptr, i32, %struct.kfence_track, %struct.kfence_track, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kfence_track = type { i32, i32, i64, i32, [64 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mm_struct = type { %struct.anon.10, [0 x i32] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kasan_cache = type { i32, i32, i8 }
%struct.slab = type { i32, %union.anon.84, ptr, ptr, %union.anon.86, i32, %struct.atomic_t, i32 }
%union.anon.84 = type { %struct.list_head }
%union.anon.86 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.79 = type { %struct.callback_head }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.81 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@kfence_sample_interval = dso_local global i32 100, section ".data..read_mostly", align 4
@__kstrtab_kfence_sample_interval = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfence_sample_interval = external dso_local constant [0 x i8], align 1
@__ksymtab_kfence_sample_interval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfence_sample_interval to i32), ptr @__kstrtab_kfence_sample_interval, ptr @__kstrtabns_kfence_sample_interval }, section "___ksymtab_gpl+kfence_sample_interval", align 4
@__param_str_sample_interval = internal constant [23 x i8] c"kfence.sample_interval\00", align 1
@sample_interval_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_sample_interval, ptr @param_get_sample_interval, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_sample_interval = internal constant %struct.kernel_param { ptr @__param_str_sample_interval, ptr null, ptr @sample_interval_param_ops, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @kfence_sample_interval } }, section "__param", align 4
@__param_str_skip_covered_thresh = internal constant [27 x i8] c"kfence.skip_covered_thresh\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@kfence_skip_covered_thresh = internal global i32 75, section ".data..read_mostly", align 4
@__param_skip_covered_thresh = internal constant %struct.kernel_param { ptr @__param_str_skip_covered_thresh, ptr null, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @kfence_skip_covered_thresh } }, section "__param", align 4
@__UNIQUE_ID_skip_covered_threshtype300 = internal constant [40 x i8] c"core.parmtype=skip_covered_thresh:ulong\00", section ".modinfo", align 1
@__kfence_pool = dso_local global ptr null, section ".data..ro_after_init", align 4
@__kstrtab___kfence_pool = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfence_pool = external dso_local constant [0 x i8], align 1
@__ksymtab___kfence_pool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfence_pool to i32), ptr @__kstrtab___kfence_pool, ptr @__kstrtabns___kfence_pool }, section "___ksymtab+__kfence_pool", align 4
@kfence_allocation_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@kfence_allocation_gate = dso_local global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 1 }, [28 x i8] zeroinitializer }, align 32
@__initcall__kmod_core__311_700_kfence_debugfs_init7 = internal global ptr @kfence_debugfs_init, section ".initcall7.init", align 4
@kfence_alloc_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013kfence: failed to allocate pool\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kfence_alloc_pool\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/kfence/core.c\00", [47 x i8] zeroinitializer }, align 32
@kfence_alloc_pool._entry_ptr = internal global ptr @kfence_alloc_pool._entry, section ".printk_index", align 4
@stack_hash_seed = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@kfence_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013kfence: %s failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kfence_init\00", [20 x i8] zeroinitializer }, align 32
@kfence_init._entry_ptr = internal global ptr @kfence_init._entry, section ".printk_index", align 4
@kfence_enabled = internal global i8 0, section ".data..read_mostly", align 1
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@kfence_timer = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @kfence_timer, i64 4), ptr getelementptr (i8, ptr @kfence_timer, i64 4) }, ptr @toggle_allocation_gate, %struct.lockdep_map { ptr @kfence_timer, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.27, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@kfence_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016kfence: initialized - using %lu bytes for %d objects at 0x%p-0x%p\0A\00", [59 x i8] zeroinitializer }, align 32
@kfence_init._entry_ptr.7 = internal global ptr @kfence_init._entry.5, section ".printk_index", align 4
@kfence_metadata = dso_local global { [255 x %struct.kfence_metadata], [41288 x i8] } zeroinitializer, align 32
@counters = internal global { [8 x %struct.atomic_t], [32 x i8] } zeroinitializer, align 32
@allocation_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @allocation_wait, i64 44), ptr getelementptr (i8, ptr @allocation_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@wake_up_kfence_timer_work = internal global { %struct.irq_work, [16 x i8] } { %struct.irq_work { %struct.__call_single_node zeroinitializer, ptr @wake_up_kfence_timer, %struct.rcuwait zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kfence\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"objects\00", [24 x i8] zeroinitializer }, align 32
@objects_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @open_objects, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enabled: %i\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s: %ld\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"currently allocated\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"total allocations\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"total frees\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zombie allocations\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"total bugs\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"skipped allocations (incompatible)\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"skipped allocations (capacity)\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"skipped allocations (covered)\00", [34 x i8] zeroinitializer }, align 32
@object_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @start_object, ptr @stop_object, ptr @next_object, ptr @show_object }, [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"---------------------------------\0A\00", [61 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kfence_init_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&meta->lock\00", [20 x i8] zeroinitializer }, align 32
@kfence_freelist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kfence_freelist, ptr @kfence_freelist }, [24 x i8] zeroinitializer }, align 32
@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(kfence_timer).work\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mm/kfence/core.c:754\00", [43 x i8] zeroinitializer }, align 32
@sysctl_hung_task_timeout_secs = external dso_local local_unnamed_addr global i32, align 4
@kfence_freelist_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@init_on_free = external dso_local global %struct.static_key_true, align 4
@alloc_covered = internal global { [512 x %struct.atomic_t], [512 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kfence_freelist_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"allocation_wait.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@init_on_alloc = external dso_local global %struct.static_key_true, align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"sample_interval_param_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 83, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"kfence_allocation_key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 112, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"kfence_allocation_gate\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 115, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 766, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 777, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"kfence_timer\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 785, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"kfence_metadata\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 102, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"counters\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 155, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"allocation_wait\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"wake_up_kfence_timer_work\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 712, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 78, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 693, i32 49 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 695, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"stats_fops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 633, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 696, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"objects_fops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 684, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 627, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 629, i32 19 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 157, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 158, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 159, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 160, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 161, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 162, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 163, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 164, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"object_seqops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 672, i32 36 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 667, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 586, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"kfence_freelist\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 105, i32 25 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 428, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 754, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"kfence_freelist_lock\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"alloc_covered\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 132, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 106, i32 8 }
@___asan_gen_.168 = private constant [20 x i8] c"../mm/kfence/core.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 706, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 260, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_skip_covered_threshtype300, ptr @__initcall__kmod_core__311_700_kfence_debugfs_init7, ptr @__ksymtab___kfence_pool, ptr @__ksymtab_kfence_sample_interval, ptr @__param_sample_interval, ptr @__param_skip_covered_thresh, ptr @kfence_alloc_pool._entry, ptr @kfence_alloc_pool._entry_ptr, ptr @kfence_init._entry, ptr @kfence_init._entry.5, ptr @kfence_init._entry_ptr, ptr @kfence_init._entry_ptr.7, ptr @sample_interval_param_ops, ptr @kfence_allocation_key, ptr @kfence_allocation_gate, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @kfence_timer, ptr @.str.6, ptr @kfence_metadata, ptr @counters, ptr @allocation_wait, ptr @wake_up_kfence_timer_work, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @stats_fops, ptr @.str.11, ptr @objects_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @object_seqops, ptr @.str.22, ptr @kfence_init_pool.__key, ptr @.str.23, ptr @kfence_freelist, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @kfence_freelist_lock, ptr @alloc_covered, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_interval_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_allocation_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_allocation_gate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_alloc_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_timer to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_metadata to i32), i32 165240, i32 206528, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counters to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allocation_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_up_kfence_timer_work to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @objects_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_init_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_freelist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_freelist_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_covered to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kfence_debugfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.9, ptr noundef null) #13
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 292, ptr noundef %call, ptr noundef null, ptr noundef nonnull @stats_fops) #13
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %call, ptr noundef null, ptr noundef nonnull @objects_fops) #13
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kfence_alloc_pool() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kfence_sample_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef 2097152, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef -1) #13
  store ptr %call.i, ptr @__kfence_pool, align 4
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #16
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kfence_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kfence_sample_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #13
  %1 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c, align 4, !annotation !122
  %call = call i32 @read_current_timer(ptr noundef nonnull %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #13
  store i32 %cond, ptr @stack_hash_seed, align 4
  %call2 = call fastcc zeroext i1 @kfence_init_pool() #17
  br i1 %call2, label %do.body10, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #16
  br label %return

do.body10:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  store volatile i8 1, ptr @kfence_enabled, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %4 = load ptr, ptr @system_unbound_wq, align 4
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef nonnull @kfence_timer, i32 noundef 0) #13
  %5 = load ptr, ptr @__kfence_pool, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 2097152
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 2097152, i32 noundef 255, ptr noundef %5, ptr noundef %add.ptr) #16
  br label %return

return:                                           ; preds = %do.body10, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @kfence_init_pool() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__kfence_pool, align 4
  %1 = ptrtoint ptr %0 to i32
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup82_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup82

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %addr.019.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i.i = lshr i32 %addr.019.i, 21
  %add.ptr.i.i.i = getelementptr [2 x i32], ptr %2, i32 %shr.i.i.i
  %3 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i110 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i110, label %for.body.i.for.inc.i_crit_edge, label %if.then.i111

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i111:                                     ; preds = %for.body.i
  %and2.i = and i32 %addr.019.i, -2097152
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %and2.i) #13
  %call.i.i.i.i = tail call i32 @__get_free_pages(i32 noundef 3520, i32 noundef 0) #13
  %5 = inttoptr i32 %call.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cond.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cond.i.i, label %if.then.i111.err_crit_edge, label %if.then.i.i.i

if.then.i111.err_crit_edge:                       ; preds = %if.then.i111
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then.i.i.i:                                    ; preds = %if.then.i111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %6 = load ptr, ptr @cpu_vtable, align 4
  %dcache_clean_area.i.i.i.i = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dcache_clean_area.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dcache_clean_area.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i32, ptr %5, i32 512
  tail call void %8(ptr noundef %add.ptr.i.i.i.i, i32 noundef 2048) #13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.i.i
  %i.015.i.i = phi i32 [ 0, %if.then.i.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %9 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i.i = getelementptr inbounds %struct.processor, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %set_pte_ext.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_pte_ext.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 %i.015.i.i
  %add13.i.i = shl i32 %i.015.i.i, 12
  %shr14.i.i = add i32 %add13.i.i, %call.i.i
  %shl.i.i = and i32 %shr14.i.i, -4096
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %12 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i112 = or i32 %shl.i.i, %12
  %or2.i.i = or i32 %or.i.i112, 512
  tail call void %11(ptr noundef %add.ptr.i.i, i32 noundef %or2.i.i, i32 noundef 0) #13
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 512
  br i1 %exitcond.not.i.i, label %split_pmd_page.exit.thread.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

split_pmd_page.exit.thread.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %call.i.i.i.i) #13
  %add.i.i.i.i = add i32 %call.i.i.i, 2048
  %or.i.i.i.i = or i32 %add.i.i.i.i, 17
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i.i.i.i, ptr %add.ptr.i.i.i, align 4
  %add1.i.i.i.i = add i32 %or.i.i.i.i, 1024
  %arrayidx2.i.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add1.i.i.i.i, ptr %arrayidx2.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %15 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %add.ptr.i.i.i, i32 %15, i32 1073741824) #13, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !124
  %add3.i.i = add i32 %and2.i, 2097152
  tail call void @flush_tlb_kernel_range(i32 noundef %and2.i, i32 noundef %add3.i.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %split_pmd_page.exit.thread.i, %for.body.i.for.inc.i_crit_edge
  %add.i = add i32 %addr.019.i, 4096
  %16 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i = sub i32 %add.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i, 2097152
  %tobool.i.i = icmp ne ptr %16, null
  %spec.select.i.i = select i1 %cmp.i.i, i1 %tobool.i.i, i1 false
  br i1 %spec.select.i.i, label %for.inc.i.for.body.i_crit_edge, label %if.end2

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end2:                                          ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %17, i32 %shr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end2
  %i.0125 = phi i32 [ 0, %if.end2 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0125)
  %tobool4.not = icmp ne i32 %i.0125, 0
  %18 = and i32 %i.0125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not = icmp eq i32 %18, 0
  %or.cond = and i1 %tobool4.not, %tobool5.not
  br i1 %or.cond, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.page, ptr %add.ptr, i32 %i.0125
  %19 = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i113 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114 = icmp eq i32 %and.i113, 0
  br i1 %tobool.not.i114, label %if.end.i, label %if.then.i115, !prof !125

if.then.i115:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i = add i32 %21, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %arrayidx to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i115
  %retval.0.i = phi i32 [ %sub.i, %if.then.i115 ], [ %22, %if.end.i ]
  %23 = inttoptr i32 %retval.0.i to ptr
  %cmp10.not = icmp eq ptr %arrayidx, %23
  br i1 %cmp10.not, label %if.end34.critedge, label %do.end, !prof !125

do.end:                                           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 562, i32 noundef 9, ptr noundef null) #13
  br label %err

if.end34.critedge:                                ; preds = %_compound_head.exit
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %19, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !125

if.then.i:                                        ; preds = %if.end34.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %arrayidx, ptr noundef nonnull @.str.24) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #13, !srcloc !126
  unreachable

do.body7.i:                                       ; preds = %if.end34.critedge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %19, align 4
  %and.i31.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !125

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %arrayidx to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i = icmp eq i32 %31, -1
  %32 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %19, align 4
  %and.i32.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !127

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !125

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i34.i = add i32 %33, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %arrayidx to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %34, %if.end.i36.i ]
  %35 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.25) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #13, !srcloc !128
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !125

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i41.i = add i32 %33, -1
  br label %__SetPageSlab.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %arrayidx to i32
  br label %__SetPageSlab.exit

__SetPageSlab.exit:                               ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %36, %if.end.i43.i ]
  %37 = inttoptr i32 %retval.0.i44.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %or.i.i = or i32 %39, 512
  store i32 %or.i.i, ptr %37, align 4
  br label %for.inc

for.inc:                                          ; preds = %__SetPageSlab.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc.for.body38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %for.inc.for.body38_crit_edge
  %addr.0128 = phi i32 [ %add50, %for.body38.for.body38_crit_edge ], [ %1, %for.inc.for.body38_crit_edge ]
  %cmp37 = phi i1 [ false, %for.body38.for.body38_crit_edge ], [ true, %for.inc.for.body38_crit_edge ]
  %and.i116 = and i32 %addr.0128, -4096
  %call.i.i117 = tail call i32 @set_memory_valid(i32 noundef %and.i116, i32 noundef 1, i32 noundef 0) #13
  %add50 = add i32 %addr.0128, 4096
  br i1 %cmp37, label %for.body38.for.body38_crit_edge, label %for.body38.for.body56_crit_edge

for.body38.for.body56_crit_edge:                  ; preds = %for.body38
  br label %for.body56

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

for.body56:                                       ; preds = %list_add_tail.exit.for.body56_crit_edge, %for.body38.for.body56_crit_edge
  %addr.1130 = phi i32 [ %add75, %list_add_tail.exit.for.body56_crit_edge ], [ %add50, %for.body38.for.body56_crit_edge ]
  %i.2129 = phi i32 [ %inc77, %list_add_tail.exit.for.body56_crit_edge ], [ 0, %for.body38.for.body56_crit_edge ]
  %arrayidx57 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.2129
  %40 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %arrayidx57, ptr %arrayidx57, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx57, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx57, ptr %prev.i, align 4
  %lock = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.2129, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @kfence_init_pool.__key, i16 noundef signext 2) #13
  %state = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.2129, i32 3
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %state, align 4
  %addr61 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.2129, i32 4
  %43 = ptrtoint ptr %addr61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %addr.1130, ptr %addr61, align 8
  %44 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kfence_freelist, i32 0, i32 1), align 4
  %call.i.i118 = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx57, ptr noundef %44, ptr noundef nonnull @kfence_freelist) #13
  br i1 %call.i.i118, label %if.end.i.i119, label %for.body56.list_add_tail.exit_crit_edge

for.body56.list_add_tail.exit_crit_edge:          ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i119:                                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %arrayidx57, ptr getelementptr inbounds (%struct.list_head, ptr @kfence_freelist, i32 0, i32 1), align 4
  %45 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @kfence_freelist, ptr %arrayidx57, align 8
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %prev.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx57, ptr %44, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i119, %for.body56.list_add_tail.exit_crit_edge
  %add63 = add i32 %addr.1130, 4096
  %and.i120 = and i32 %add63, -4096
  %call.i.i121 = tail call i32 @set_memory_valid(i32 noundef %and.i120, i32 noundef 1, i32 noundef 0) #13
  %add75 = add i32 %addr.1130, 8192
  %inc77 = add nuw nsw i32 %i.2129, 1
  %exitcond133.not = icmp eq i32 %inc77, 255
  br i1 %exitcond133.not, label %for.end78, label %list_add_tail.exit.for.body56_crit_edge

list_add_tail.exit.for.body56_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body56

for.end78:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  %48 = load ptr, ptr @__kfence_pool, align 4
  tail call void @kmemleak_free(ptr noundef %48) #13
  br label %cleanup82

err:                                              ; preds = %do.end, %if.then.i111.err_crit_edge
  %call79 = tail call i32 @__virt_to_phys(i32 noundef %1) #13
  %49 = load ptr, ptr @__kfence_pool, align 4
  %50 = ptrtoint ptr %49 to i32
  %sub80.neg = sub i32 2097152, %1
  %sub81 = add i32 %sub80.neg, %50
  tail call void @memblock_free_late(i32 noundef %call79, i32 noundef %sub81) #13
  store ptr null, ptr @__kfence_pool, align 4
  br label %cleanup82

cleanup82:                                        ; preds = %err, %for.end78, %entry.cleanup82_crit_edge
  %retval.0 = phi i1 [ false, %err ], [ true, %for.end78 ], [ false, %entry.cleanup82_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kfence_shutdown_cache(ptr noundef readnone %s) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0105 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.0105
  %cache = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.0105, i32 6
  %0 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cache, align 8
  %cmp1.not = icmp eq ptr %1, %s
  br i1 %cmp1.not, label %do.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end4:                                          ; preds = %for.body
  %state = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.0105, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6.not = icmp eq i32 %3, 1
  br i1 %cmp6.not, label %do.body7, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body7:                                         ; preds = %do.end4
  %lock = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.0105, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 8
  %cmp13 = icmp eq ptr %5, %s
  br i1 %cmp13, label %land.rhs, label %if.end28.critedge

land.rhs:                                         ; preds = %do.body7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp16 = icmp eq i32 %7, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #13
  br i1 %cmp16, label %if.then27, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then27:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %addr = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.0105, i32 4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 8
  %10 = inttoptr i32 %9 to ptr
  tail call fastcc void @kfence_guarded_free(ptr noundef %10, ptr noundef %arrayidx, i1 noundef zeroext true)
  br label %cleanup

if.end28.critedge:                                ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end28.critedge, %if.then27, %land.rhs.cleanup_crit_edge, %do.end4.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 255
  br i1 %exitcond.not, label %cleanup.for.body32_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.for.body32_crit_edge:                     ; preds = %cleanup
  br label %for.body32

for.body32:                                       ; preds = %for.inc79.for.body32_crit_edge, %cleanup.for.body32_crit_edge
  %i.1107 = phi i32 [ %inc80, %for.inc79.for.body32_crit_edge ], [ 0, %cleanup.for.body32_crit_edge ]
  %cache38 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.1107, i32 6
  %11 = ptrtoint ptr %cache38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %cache38, align 8
  %cmp39.not = icmp eq ptr %12, %s
  br i1 %cmp39.not, label %do.end44, label %for.body32.for.inc79_crit_edge

for.body32.for.inc79_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc79

do.end44:                                         ; preds = %for.body32
  %state46 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.1107, i32 3
  %13 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp47.not = icmp eq i32 %14, 2
  br i1 %cmp47.not, label %do.body51, label %do.end44.for.inc79_crit_edge

do.end44.for.inc79_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc79

do.body51:                                        ; preds = %do.end44
  %lock57 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %i.1107, i32 2
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock57) #13
  %15 = ptrtoint ptr %cache38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cache38, align 8
  %cmp62 = icmp eq ptr %16, %s
  br i1 %cmp62, label %land.lhs.true, label %do.body51.do.body70_crit_edge

do.body51.do.body70_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

land.lhs.true:                                    ; preds = %do.body51
  %17 = ptrtoint ptr %state46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp65 = icmp eq i32 %18, 2
  br i1 %cmp65, label %if.then67, label %land.lhs.true.do.body70_crit_edge

land.lhs.true.do.body70_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %cache38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cache38, align 8
  br label %do.body70

do.body70:                                        ; preds = %if.then67, %land.lhs.true.do.body70_crit_edge, %do.body51.do.body70_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock57, i32 noundef %call58) #13
  br label %for.inc79

for.inc79:                                        ; preds = %do.body70, %do.end44.for.inc79_crit_edge, %for.body32.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %i.1107, 1
  %exitcond109.not = icmp eq i32 %inc80, 255
  br i1 %exitcond109.not, label %for.end81, label %for.inc79.for.body32_crit_edge

for.inc79.for.body32_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body32

for.end81:                                        ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kfence_guarded_free(ptr noundef %addr, ptr noundef %meta, i1 noundef zeroext %zombie) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %state = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.not = icmp eq i32 %1, 1
  br i1 %cmp1.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %.pre = ptrtoint ptr %addr to i32
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %addr3 = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 4
  %2 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr3, align 8
  %4 = ptrtoint ptr %addr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp4.not = icmp eq i32 %3, %4
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %.pre-phi = phi i32 [ %.pre, %entry.if.then_crit_edge ], [ %4, %lor.lhs.false.if.then_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4)) #13, !srcloc !129
  tail call void @kfence_report_error(i32 noundef %.pre-phi, i1 noundef zeroext false, ptr noundef null, ptr noundef %meta, i32 noundef 4) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %unprotected_page = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 7
  %6 = ptrtoint ptr %unprotected_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unprotected_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then16

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %and20 = and i32 %7, -4096
  %8 = inttoptr i32 %and20 to ptr
  %9 = call ptr @memset(ptr %8, i32 0, i32 4096)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %8) #13, !srcloc !130
  %10 = ptrtoint ptr %unprotected_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %unprotected_page, align 4
  %and.i153 = and i32 %11, -4096
  %call.i.i154 = tail call i32 @set_memory_valid(i32 noundef %and.i153, i32 noundef 1, i32 noundef 0) #13
  %12 = ptrtoint ptr %unprotected_page to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %unprotected_page, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.end.if.end24_crit_edge
  tail call fastcc void @metadata_update_state(ptr noundef %meta, i32 noundef 2, ptr noundef null, i32 noundef 0)
  %cache = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 6
  %13 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cache, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@kfence_guarded_free, %slab_want_init_on_free.exit)) #13
          to label %if.then.i [label %slab_want_init_on_free.exit], !srcloc !131

if.then.i:                                        ; preds = %if.end24
  %ctor.i = getelementptr inbounds %struct.kmem_cache, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %ctor.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctor.i, align 4
  %tobool15.not.i = icmp eq ptr %16, null
  br i1 %tobool15.not.i, label %lor.rhs.i, label %if.then.i.slab_want_init_on_free.exit_crit_edge

if.then.i.slab_want_init_on_free.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %slab_want_init_on_free.exit

lor.rhs.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr inbounds %struct.kmem_cache, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i155 = and i32 %18, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155)
  %tobool16.i = icmp ne i32 %and.i155, 0
  br label %slab_want_init_on_free.exit

slab_want_init_on_free.exit:                      ; preds = %lor.rhs.i, %if.then.i.slab_want_init_on_free.exit_crit_edge, %if.end24
  %retval.0.i = phi i1 [ true, %if.then.i.slab_want_init_on_free.exit_crit_edge ], [ %tobool16.i, %lor.rhs.i ], [ true, %if.end24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #13
  %alloc_stack_hash = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 10
  %19 = ptrtoint ptr %alloc_stack_hash to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alloc_stack_hash, align 8
  %and.i156 = and i32 %20, 511
  %arrayidx.i = getelementptr [512 x %struct.atomic_t], ptr @alloc_covered, i32 0, i32 %and.i156
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 -1, ptr elementtype(i32) %arrayidx.i) #13, !srcloc !129
  %mul.i.i.i = mul i32 %20, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 23
  %arrayidx.1.i = getelementptr [512 x %struct.atomic_t], ptr @alloc_covered, i32 0, i32 %shr.i.i
  %call.i.i.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.1.i, i32 1, i32 3, i32 1) #13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.1.i, ptr %arrayidx.1.i, i32 -1, ptr elementtype(i32) %arrayidx.1.i) #13, !srcloc !129
  %23 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr3, align 8
  %and.i = and i32 %24, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %24)
  %cmp25.i = icmp ult i32 %and.i, %24
  br i1 %cmp25.i, label %slab_want_init_on_free.exit.for.body.i_crit_edge, label %slab_want_init_on_free.exit.for.end.i_crit_edge

slab_want_init_on_free.exit.for.end.i_crit_edge:  ; preds = %slab_want_init_on_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

slab_want_init_on_free.exit.for.body.i_crit_edge: ; preds = %slab_want_init_on_free.exit
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %addr1.026.i, 1
  %25 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr3, align 8
  %cmp.i = icmp ult i32 %inc.i, %26
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %slab_want_init_on_free.exit.for.body.i_crit_edge
  %addr1.026.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ %and.i, %slab_want_init_on_free.exit.for.body.i_crit_edge ]
  %27 = inttoptr i32 %addr1.026.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv.i = zext i8 %29 to i32
  %conv1.i = and i32 %addr1.026.i, 7
  %xor.i = xor i32 %conv1.i, 170
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %conv.i)
  %cmp.i157 = icmp eq i32 %xor.i, %conv.i
  br i1 %cmp.i157, label %for.cond.i, label %check_canary_byte.exit, !prof !125

check_canary_byte.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i158 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, i32 3, i32 1) #13
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4)) #13, !srcloc !129
  %31 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i = sub i32 %addr1.026.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 2097151
  %tobool.i.i.i = icmp eq ptr %31, null
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 8192
  %or.cond.i.i = or i1 %cmp.i.i, %spec.select.i.i.i
  %div8.i.i = lshr i32 %sub.ptr.sub.i.i.i, 13
  %sub1.i.i = add nsw i32 %div8.i.i, -1
  %arrayidx.i.i = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i.i
  %retval.0.i.i = select i1 %or.cond.i.i, ptr null, ptr %arrayidx.i.i
  %lock.i = getelementptr inbounds %struct.kfence_metadata, ptr %retval.0.i.i, i32 0, i32 2
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #13
  tail call void @kfence_report_error(i32 noundef %addr1.026.i, i1 noundef zeroext false, ptr noundef null, ptr noundef %retval.0.i.i, i32 noundef 2) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #13
  br label %for.end.i

for.end.i:                                        ; preds = %check_canary_byte.exit, %for.cond.i.for.end.i_crit_edge, %slab_want_init_on_free.exit.for.end.i_crit_edge
  %32 = ptrtoint ptr %addr3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr3, align 8
  %size.i = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 5
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 4
  %add4.i = add i32 %35, %33
  %add6.i = add i32 %and.i, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %add6.i)
  %cmp727.i = icmp ult i32 %add4.i, %add6.i
  br i1 %cmp727.i, label %for.end.i.for.body8.i_crit_edge, label %for.end.i.for_each_canary.exit_crit_edge

for.end.i.for_each_canary.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for_each_canary.exit

for.end.i.for.body8.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body8.i

for.body8.i:                                      ; preds = %check_canary_byte.exit178.for.body8.i_crit_edge, %for.end.i.for.body8.i_crit_edge
  %addr1.128.i = phi i32 [ %inc13.i, %check_canary_byte.exit178.for.body8.i_crit_edge ], [ %add4.i, %for.end.i.for.body8.i_crit_edge ]
  %36 = inttoptr i32 %addr1.128.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %conv.i159 = zext i8 %38 to i32
  %conv1.i160 = and i32 %addr1.128.i, 7
  %xor.i161 = xor i32 %conv1.i160, 170
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i161, i32 %conv.i159)
  %cmp.i162 = icmp eq i32 %xor.i161, %conv.i159
  br i1 %cmp.i162, label %check_canary_byte.exit178, label %check_canary_byte.exit178.thread, !prof !125

check_canary_byte.exit178.thread:                 ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i163 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, i32 3, i32 1) #13
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4)) #13, !srcloc !129
  %40 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i.i164 = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i.i165 = sub i32 %addr1.128.i, %sub.ptr.rhs.cast.i.i.i164
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i.i165)
  %cmp.i.i.i166 = icmp ugt i32 %sub.ptr.sub.i.i.i165, 2097151
  %tobool.i.i.i167 = icmp eq ptr %40, null
  %spec.select.i.i.i168 = select i1 %cmp.i.i.i166, i1 true, i1 %tobool.i.i.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i.i165)
  %cmp.i.i169 = icmp ult i32 %sub.ptr.sub.i.i.i165, 8192
  %or.cond.i.i170 = or i1 %cmp.i.i169, %spec.select.i.i.i168
  %div8.i.i171 = lshr i32 %sub.ptr.sub.i.i.i165, 13
  %sub1.i.i172 = add nsw i32 %div8.i.i171, -1
  %arrayidx.i.i173 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i.i172
  %retval.0.i.i174 = select i1 %or.cond.i.i170, ptr null, ptr %arrayidx.i.i173
  %lock.i175 = getelementptr inbounds %struct.kfence_metadata, ptr %retval.0.i.i174, i32 0, i32 2
  %call7.i176 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i175) #13
  tail call void @kfence_report_error(i32 noundef %addr1.128.i, i1 noundef zeroext false, ptr noundef null, ptr noundef %retval.0.i.i174, i32 noundef 2) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i175, i32 noundef %call7.i176) #13
  br label %for_each_canary.exit

check_canary_byte.exit178:                        ; preds = %for.body8.i
  %inc13.i = add nuw i32 %addr1.128.i, 1
  %cmp7.i = icmp ult i32 %inc13.i, %add6.i
  br i1 %cmp7.i, label %check_canary_byte.exit178.for.body8.i_crit_edge, label %check_canary_byte.exit178.for_each_canary.exit_crit_edge

check_canary_byte.exit178.for_each_canary.exit_crit_edge: ; preds = %check_canary_byte.exit178
  call void @__sanitizer_cov_trace_pc() #15
  br label %for_each_canary.exit

check_canary_byte.exit178.for.body8.i_crit_edge:  ; preds = %check_canary_byte.exit178
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.i

for_each_canary.exit:                             ; preds = %check_canary_byte.exit178.for_each_canary.exit_crit_edge, %check_canary_byte.exit178.thread, %for.end.i.for_each_canary.exit_crit_edge
  %brmerge = select i1 %zombie, i1 true, i1 %retval.0.i
  br i1 %brmerge, label %for_each_canary.exit.if.end42_crit_edge, label %if.then41, !prof !132

for_each_canary.exit.if.end42_crit_edge:          ; preds = %for_each_canary.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then41:                                        ; preds = %for_each_canary.exit
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i, align 4
  %43 = call ptr @memset(ptr %addr, i32 0, i32 %42)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %addr) #13, !srcloc !130
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %for_each_canary.exit.if.end42_crit_edge
  %and.i179 = and i32 %3, -4096
  %call.i.i180 = tail call i32 @set_memory_valid(i32 noundef %and.i179, i32 noundef 1, i32 noundef 0) #13
  br i1 %zombie, label %if.else, label %do.body46

do.body46:                                        ; preds = %if.end42
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kfence_freelist_lock) #13
  %44 = ptrtoint ptr %meta to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %meta, align 4
  %cmp.i181.not = icmp eq ptr %45, %meta
  br i1 %cmp.i181.not, label %do.body46.if.end107_crit_edge, label %do.end74, !prof !125

do.body46.if.end107_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

do.end74:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 516, i32 noundef 9, ptr noundef null) #13
  store volatile i8 0, ptr @kfence_enabled, align 1
  br label %if.end107

if.end107:                                        ; preds = %do.end74, %do.body46.if.end107_crit_edge
  %46 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kfence_freelist, i32 0, i32 1), align 4
  %call.i.i183 = tail call zeroext i1 @__list_add_valid(ptr noundef %meta, ptr noundef %46, ptr noundef nonnull @kfence_freelist) #13
  br i1 %call.i.i183, label %if.end.i.i, label %if.end107.list_add_tail.exit_crit_edge

if.end107.list_add_tail.exit_crit_edge:           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %meta, ptr getelementptr inbounds (%struct.list_head, ptr @kfence_freelist, i32 0, i32 1), align 4
  %47 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kfence_freelist, ptr %meta, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %meta, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %46, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %meta, ptr %46, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end107.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kfence_freelist_lock, i32 noundef %call52) #13
  %call.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @counters, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @counters, i32 1, i32 3, i32 1) #13
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @counters, ptr nonnull @counters, i32 1, ptr nonnull elementtype(i32) @counters) #13, !srcloc !133
  %call.i.i151 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 2), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 2), i32 1, i32 3, i32 1) #13
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 2), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 2)) #13, !srcloc !129
  br label %cleanup

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 3), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 3), i32 1, i32 3, i32 1) #13
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 3), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 3), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 3)) #13, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %if.else, %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__kfence_alloc(ptr noundef %s, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #4 align 64 {
entry:
  %stack_entries = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %stack_entries) #13
  %0 = call ptr @memset(ptr %stack_entries, i32 255, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp = icmp ugt i32 %size, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), i32 1, i32 3, i32 1) #13
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5)) #13, !srcloc !129
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %flags1 = getelementptr inbounds %struct.kmem_cache, ptr %s, i32 0, i32 1
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and2 = and i32 %3, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5)) #13, !srcloc !129
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr nonnull @kfence_allocation_gate, i32 1, i32 3, i32 1) #13
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @kfence_allocation_gate, ptr nonnull @kfence_allocation_gate, i32 1, ptr nonnull elementtype(i32) @kfence_allocation_gate) #13, !srcloc !135
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp6 = icmp sgt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @allocation_wait, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %6, getelementptr inbounds (%struct.wait_queue_head, ptr @allocation_wait, i32 0, i32 1)
  br i1 %cmp.i.i.not, label %if.end8.do.end_crit_edge, label %if.then11

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call12 = tail call zeroext i1 @irq_work_queue(ptr noundef nonnull @wake_up_kfence_timer_work) #13
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end8.do.end_crit_edge
  %7 = load volatile i8, ptr @kfence_enabled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %do.end.cleanup_crit_edge, label %if.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %call18 = call i32 @stack_trace_save(ptr noundef nonnull %stack_entries, i32 noundef 64, i32 noundef 0) #13
  %8 = call i32 @llvm.umin.i32(i32 %call18, i32 8) #13
  %call.i = call i32 @filter_irq_stacks(ptr noundef nonnull %stack_entries, i32 noundef %8) #13
  %mul.i = shl i32 %call.i, 2
  %9 = load i32, ptr @stack_hash_seed, align 4
  %add.i.i = add i32 %mul.i, -559038737
  %add1.i.i = add i32 %add.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mul.i)
  %cmp213.i.i = icmp ugt i32 %mul.i, 12
  br i1 %cmp213.i.i, label %if.end17.while.body.i.i_crit_edge, label %if.end17.while.end.i.i_crit_edge

if.end17.while.end.i.i_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

if.end17.while.body.i.i_crit_edge:                ; preds = %if.end17
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end17.while.body.i.i_crit_edge
  %k.0218.i.i = phi ptr [ %add.ptr31.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %stack_entries, %if.end17.while.body.i.i_crit_edge ]
  %c.0217.i.i = phi i32 [ %xor28.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add1.i.i, %if.end17.while.body.i.i_crit_edge ]
  %b.0216.i.i = phi i32 [ %add29.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add1.i.i, %if.end17.while.body.i.i_crit_edge ]
  %a.0215.i.i = phi i32 [ %add25.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add1.i.i, %if.end17.while.body.i.i_crit_edge ]
  %length.addr.0214.i.i = phi i32 [ %sub30.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mul.i, %if.end17.while.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %k.0218.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %k.0218.i.i, align 1
  %add2.i.i = add i32 %11, %a.0215.i.i
  %add.ptr.i.i = getelementptr i8, ptr %k.0218.i.i, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %add.ptr.i.i, align 1
  %add4.i.i = add i32 %13, %b.0216.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %k.0218.i.i, i32 8
  %14 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr5.i.i, align 1
  %add7.i.i = add i32 %15, %c.0217.i.i
  %sub.i.i = sub i32 %add2.i.i, %add7.i.i
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %add7.i.i, i32 %add7.i.i, i32 4) #13
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add9.i.i = add i32 %add7.i.i, %add4.i.i
  %sub10.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i201.i.i = call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #13
  %xor12.i.i = xor i32 %sub10.i.i, %or.i201.i.i
  %add13.i.i = add i32 %xor.i.i, %add9.i.i
  %sub14.i.i = sub i32 %add9.i.i, %xor12.i.i
  %or.i202.i.i = call i32 @llvm.fshl.i32(i32 %xor12.i.i, i32 %xor12.i.i, i32 8) #13
  %xor16.i.i = xor i32 %sub14.i.i, %or.i202.i.i
  %add17.i.i = add i32 %xor12.i.i, %add13.i.i
  %sub18.i.i = sub i32 %add13.i.i, %xor16.i.i
  %or.i203.i.i = call i32 @llvm.fshl.i32(i32 %xor16.i.i, i32 %xor16.i.i, i32 16) #13
  %xor20.i.i = xor i32 %sub18.i.i, %or.i203.i.i
  %add21.i.i = add i32 %xor16.i.i, %add17.i.i
  %sub22.i.i = sub i32 %add17.i.i, %xor20.i.i
  %or.i204.i.i = call i32 @llvm.fshl.i32(i32 %xor20.i.i, i32 %xor20.i.i, i32 19) #13
  %xor24.i.i = xor i32 %sub22.i.i, %or.i204.i.i
  %add25.i.i = add i32 %xor20.i.i, %add21.i.i
  %sub26.i.i = sub i32 %add21.i.i, %xor24.i.i
  %or.i205.i.i = call i32 @llvm.fshl.i32(i32 %xor24.i.i, i32 %xor24.i.i, i32 4) #13
  %xor28.i.i = xor i32 %sub26.i.i, %or.i205.i.i
  %add29.i.i = add i32 %xor24.i.i, %add25.i.i
  %sub30.i.i = add i32 %length.addr.0214.i.i, -12
  %add.ptr31.i.i = getelementptr i8, ptr %k.0218.i.i, i32 12
  %cmp.i.i37 = icmp ugt i32 %sub30.i.i, 12
  br i1 %cmp.i.i37, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.end17.while.end.i.i_crit_edge
  %length.addr.0.lcssa.i.i = phi i32 [ %mul.i, %if.end17.while.end.i.i_crit_edge ], [ %sub30.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %a.0.lcssa.i.i = phi i32 [ %add1.i.i, %if.end17.while.end.i.i_crit_edge ], [ %add25.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %b.0.lcssa.i.i = phi i32 [ %add1.i.i, %if.end17.while.end.i.i_crit_edge ], [ %add29.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %c.0.lcssa.i.i = phi i32 [ %add1.i.i, %if.end17.while.end.i.i_crit_edge ], [ %xor28.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %k.0.lcssa.i.i = phi ptr [ %stack_entries, %if.end17.while.end.i.i_crit_edge ], [ %add.ptr31.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %16 = zext i32 %length.addr.0.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i.i, label %while.end.i.i.get_alloc_stack_hash.exit_crit_edge [
    i32 12, label %sw.bb.i.i
    i32 11, label %while.end.i.i.sw.bb33.i.i_crit_edge
    i32 10, label %while.end.i.i.sw.bb38.i.i_crit_edge
    i32 9, label %while.end.i.i.sw.bb43.i.i_crit_edge
    i32 8, label %while.end.i.i.sw.bb47.i.i_crit_edge
    i32 7, label %while.end.i.i.sw.bb52.i.i_crit_edge
    i32 6, label %while.end.i.i.sw.bb57.i.i_crit_edge
    i32 5, label %while.end.i.i.sw.bb62.i.i_crit_edge
    i32 4, label %while.end.i.i.sw.bb66.i.i_crit_edge
    i32 3, label %while.end.i.i.sw.bb71.i.i_crit_edge
    i32 2, label %while.end.i.i.sw.bb76.i.i_crit_edge
    i32 1, label %while.end.i.i.sw.bb81.i.i_crit_edge
  ]

while.end.i.i.sw.bb81.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb81.i.i

while.end.i.i.sw.bb76.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb76.i.i

while.end.i.i.sw.bb71.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb71.i.i

while.end.i.i.sw.bb66.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb66.i.i

while.end.i.i.sw.bb62.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb62.i.i

while.end.i.i.sw.bb57.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb57.i.i

while.end.i.i.sw.bb52.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb52.i.i

while.end.i.i.sw.bb47.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb47.i.i

while.end.i.i.sw.bb43.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb43.i.i

while.end.i.i.sw.bb38.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb38.i.i

while.end.i.i.sw.bb33.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33.i.i

while.end.i.i.get_alloc_stack_hash.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_alloc_stack_hash.exit

sw.bb.i.i:                                        ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 11
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %18 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %add32.i.i = add i32 %shl.i.i, %c.0.lcssa.i.i
  br label %sw.bb33.i.i

sw.bb33.i.i:                                      ; preds = %sw.bb.i.i, %while.end.i.i.sw.bb33.i.i_crit_edge
  %c.1.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb33.i.i_crit_edge ], [ %add32.i.i, %sw.bb.i.i ]
  %arrayidx34.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 10
  %19 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx34.i.i, align 1
  %conv35.i.i = zext i8 %20 to i32
  %shl36.i.i = shl nuw nsw i32 %conv35.i.i, 16
  %add37.i.i = add i32 %shl36.i.i, %c.1.i.i
  br label %sw.bb38.i.i

sw.bb38.i.i:                                      ; preds = %sw.bb33.i.i, %while.end.i.i.sw.bb38.i.i_crit_edge
  %c.2.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb38.i.i_crit_edge ], [ %add37.i.i, %sw.bb33.i.i ]
  %arrayidx39.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 9
  %21 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx39.i.i, align 1
  %conv40.i.i = zext i8 %22 to i32
  %shl41.i.i = shl nuw nsw i32 %conv40.i.i, 8
  %add42.i.i = add i32 %shl41.i.i, %c.2.i.i
  br label %sw.bb43.i.i

sw.bb43.i.i:                                      ; preds = %sw.bb38.i.i, %while.end.i.i.sw.bb43.i.i_crit_edge
  %c.3.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb43.i.i_crit_edge ], [ %add42.i.i, %sw.bb38.i.i ]
  %arrayidx44.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 8
  %23 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx44.i.i, align 1
  %conv45.i.i = zext i8 %24 to i32
  %add46.i.i = add i32 %c.3.i.i, %conv45.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb43.i.i, %while.end.i.i.sw.bb47.i.i_crit_edge
  %c.4.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb47.i.i_crit_edge ], [ %add46.i.i, %sw.bb43.i.i ]
  %arrayidx48.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 7
  %25 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %26 to i32
  %shl50.i.i = shl nuw i32 %conv49.i.i, 24
  %add51.i.i = add i32 %shl50.i.i, %b.0.lcssa.i.i
  br label %sw.bb52.i.i

sw.bb52.i.i:                                      ; preds = %sw.bb47.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge
  %b.1.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge ], [ %add51.i.i, %sw.bb47.i.i ]
  %c.5.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge ], [ %c.4.i.i, %sw.bb47.i.i ]
  %arrayidx53.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 6
  %27 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx53.i.i, align 1
  %conv54.i.i = zext i8 %28 to i32
  %shl55.i.i = shl nuw nsw i32 %conv54.i.i, 16
  %add56.i.i = add i32 %shl55.i.i, %b.1.i.i
  br label %sw.bb57.i.i

sw.bb57.i.i:                                      ; preds = %sw.bb52.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge
  %b.2.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge ], [ %add56.i.i, %sw.bb52.i.i ]
  %c.6.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge ], [ %c.5.i.i, %sw.bb52.i.i ]
  %arrayidx58.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 5
  %29 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %30 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add i32 %shl60.i.i, %b.2.i.i
  br label %sw.bb62.i.i

sw.bb62.i.i:                                      ; preds = %sw.bb57.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge
  %b.3.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge ], [ %add61.i.i, %sw.bb57.i.i ]
  %c.7.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge ], [ %c.6.i.i, %sw.bb57.i.i ]
  %arrayidx63.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 4
  %31 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %32 to i32
  %add65.i.i = add i32 %b.3.i.i, %conv64.i.i
  br label %sw.bb66.i.i

sw.bb66.i.i:                                      ; preds = %sw.bb62.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge
  %b.4.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge ], [ %add65.i.i, %sw.bb62.i.i ]
  %c.8.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge ], [ %c.7.i.i, %sw.bb62.i.i ]
  %arrayidx67.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 3
  %33 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %34 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, %a.0.lcssa.i.i
  br label %sw.bb71.i.i

sw.bb71.i.i:                                      ; preds = %sw.bb66.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge
  %a.1.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %add70.i.i, %sw.bb66.i.i ]
  %b.5.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %b.4.i.i, %sw.bb66.i.i ]
  %c.9.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %c.8.i.i, %sw.bb66.i.i ]
  %arrayidx72.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 2
  %35 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %36 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %shl74.i.i, %a.1.i.i
  br label %sw.bb76.i.i

sw.bb76.i.i:                                      ; preds = %sw.bb71.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge
  %a.2.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %add75.i.i, %sw.bb71.i.i ]
  %b.6.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %b.5.i.i, %sw.bb71.i.i ]
  %c.10.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %c.9.i.i, %sw.bb71.i.i ]
  %arrayidx77.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 1
  %37 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %38 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %shl79.i.i, %a.2.i.i
  br label %sw.bb81.i.i

sw.bb81.i.i:                                      ; preds = %sw.bb76.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge
  %a.3.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %add80.i.i, %sw.bb76.i.i ]
  %b.7.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %b.6.i.i, %sw.bb76.i.i ]
  %c.11.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %c.10.i.i, %sw.bb76.i.i ]
  %39 = ptrtoint ptr %k.0.lcssa.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %k.0.lcssa.i.i, align 1
  %conv83.i.i = zext i8 %40 to i32
  %add84.i.i = add i32 %a.3.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %c.11.i.i, %b.7.i.i
  %or.i206.i.i = call i32 @llvm.fshl.i32(i32 %b.7.i.i, i32 %b.7.i.i, i32 14) #13
  %sub87.i.i = sub i32 %xor85.i.i, %or.i206.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i207.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #13
  %sub90.i.i = sub i32 %xor88.i.i, %or.i207.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %b.7.i.i
  %or.i208.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #13
  %sub93.i.i = sub i32 %xor91.i.i, %or.i208.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i209.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #13
  %sub96.i.i = sub i32 %xor94.i.i, %or.i209.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i210.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #13
  %sub99.i.i = sub i32 %xor97.i.i, %or.i210.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i211.i.i = call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #13
  %sub102.i.i = sub i32 %xor100.i.i, %or.i211.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i212.i.i = call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #13
  %sub105.i.i = sub i32 %xor103.i.i, %or.i212.i.i
  br label %get_alloc_stack_hash.exit

get_alloc_stack_hash.exit:                        ; preds = %sw.bb81.i.i, %while.end.i.i.get_alloc_stack_hash.exit_crit_edge
  %c.12.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.get_alloc_stack_hash.exit_crit_edge ], [ %sub105.i.i, %sw.bb81.i.i ]
  %41 = load i32, ptr @kfence_skip_covered_thresh, align 4
  %mul.i38 = mul i32 %41, 255
  %div.i = udiv i32 %mul.i38, 100
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @counters, i32 noundef 4) #13
  %42 = load volatile i32, ptr @counters, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %div.i)
  %cmp.i = icmp ugt i32 %42, %div.i
  br i1 %cmp.i, label %land.lhs.true, label %get_alloc_stack_hash.exit.if.end24_crit_edge

get_alloc_stack_hash.exit.if.end24_crit_edge:     ; preds = %get_alloc_stack_hash.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

land.lhs.true:                                    ; preds = %get_alloc_stack_hash.exit
  %call22 = call fastcc zeroext i1 @alloc_covered_contains(i32 noundef %c.12.i.i)
  br i1 %call22, label %if.then23, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 7), i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 7), i32 1, i32 3, i32 1) #13
  %43 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 7), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 7), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 7)) #13, !srcloc !129
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %get_alloc_stack_hash.exit.if.end24_crit_edge
  %call26 = call fastcc ptr @kfence_guarded_alloc(ptr noundef %s, i32 noundef %size, i32 noundef %flags, ptr noundef nonnull %stack_entries, i32 noundef %call18, i32 noundef %c.12.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then23, %do.end.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then4 ], [ null, %if.then23 ], [ %call26, %if.end24 ], [ null, %if.end5.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %stack_entries) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @alloc_covered_contains(i32 noundef %alloc_stack_hash) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %alloc_stack_hash, 511
  %arrayidx = getelementptr [512 x %struct.atomic_t], ptr @alloc_covered, i32 0, i32 %and
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i.i = mul i32 %alloc_stack_hash, 1640531527
  %shr.i = lshr i32 %mul.i.i, 23
  %arrayidx.1 = getelementptr [512 x %struct.atomic_t], ptr @alloc_covered, i32 0, i32 %shr.i
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1, i32 noundef 4) #13
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp ne i32 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ %tobool.not.1, %if.end ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kfence_guarded_alloc(ptr noundef %cache, i32 noundef %size, i32 noundef %gfp, ptr noundef %stack_entries, i32 noundef %num_stack_entries, i32 noundef %alloc_stack_hash) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kfence_freelist_lock) #13
  %0 = load volatile ptr, ptr @kfence_freelist, align 4
  %cmp.i200.not = icmp eq ptr %0, @kfence_freelist
  br i1 %cmp.i200.not, label %do.body3.thread, label %if.then

do.body3.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kfence_freelist_lock, i32 noundef %call) #13
  br label %if.then12

if.then:                                          ; preds = %entry
  %call.i.i201 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #13
  br i1 %call.i.i201, label %if.end.i.i, label %if.then.do.body3_crit_edge

if.then.do.body3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %do.body3

do.body3:                                         ; preds = %if.end.i.i, %if.then.do.body3_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %0, ptr %0, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %0, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kfence_freelist_lock, i32 noundef %call) #13
  %tobool11.not = icmp eq ptr %0, null
  br i1 %tobool11.not, label %do.body3.if.then12_crit_edge, label %do.body15

do.body3.if.then12_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then12

if.then12:                                        ; preds = %do.body3.if.then12_crit_edge, %do.body3.thread
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 6), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 6), i32 1, i32 3, i32 1) #13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 6), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 6), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 6)) #13, !srcloc !129
  br label %cleanup

do.body15:                                        ; preds = %do.body3
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !138
  %and.i202 = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool31.not = icmp eq i32 %and.i202, 0
  br i1 %tobool31.not, label %do.end35, label %do.end35.thread

do.end35:                                         ; preds = %do.body15
  tail call void @trace_hardirqs_off() #13
  %lock = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 2
  %call37 = tail call i32 @_raw_spin_trylock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then48, label %do.end35.if.end99_crit_edge

do.end35.if.end99_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

do.end35.thread:                                  ; preds = %do.body15
  %lock220 = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 2
  %call37221 = tail call i32 @_raw_spin_trylock(ptr noundef %lock220) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37221)
  %tobool38.not222 = icmp eq i32 %call37221, 0
  br i1 %tobool38.not222, label %do.end35.thread.do.body50_crit_edge, label %do.end35.thread.if.end99_crit_edge

do.end35.thread.if.end99_crit_edge:               ; preds = %do.end35.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

do.end35.thread.do.body50_crit_edge:              ; preds = %do.end35.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body50

if.then48:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_on() #13
  br label %do.body50

do.body50:                                        ; preds = %if.then48, %do.end35.thread.do.body50_crit_edge
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !139
  %and.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool58.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool58.not, label %if.then62, label %do.body50.do.end65_crit_edge, !prof !127

do.body50.do.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end65

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %do.body50.do.end65_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #13, !srcloc !140
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kfence_freelist_lock) #13
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kfence_freelist, i32 0, i32 1), align 4
  %call.i.i204 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %0, ptr noundef %12, ptr noundef nonnull @kfence_freelist) #13
  br i1 %call.i.i204, label %if.end.i.i205, label %do.end65.list_add_tail.exit_crit_edge

do.end65.list_add_tail.exit_crit_edge:            ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i205:                                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @kfence_freelist, i32 0, i32 1), align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @kfence_freelist, ptr %0, align 4
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %0, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i205, %do.end65.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kfence_freelist_lock, i32 noundef %call87) #13
  br label %cleanup

if.end99:                                         ; preds = %do.end35.thread.if.end99_crit_edge, %do.end35.if.end99_crit_edge
  %lock223 = phi ptr [ %lock220, %do.end35.thread.if.end99_crit_edge ], [ %lock, %do.end35.if.end99_crit_edge ]
  %cmp.i206 = icmp ult ptr %0, @kfence_metadata
  %cmp2.i = icmp uge ptr %0, getelementptr inbounds ([255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 1, i32 0)
  %spec.select.i = select i1 %cmp.i206, i1 true, i1 %cmp2.i
  br i1 %spec.select.i, label %if.end99.cleanup.sink.split.i_crit_edge, label %if.end45.i, !prof !127

if.end99.cleanup.sink.split.i_crit_edge:          ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end45.i:                                       ; preds = %if.end99
  %16 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @kfence_metadata to i32)
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 648
  %add.i = shl i32 %sub.ptr.div.i, 13
  %mul1.i = add i32 %add.i, 8192
  %arrayidx.i = getelementptr i8, ptr %16, i32 %mul1.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  %addr.i207 = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 4
  %18 = ptrtoint ptr %addr.i207 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i207, align 8
  %and.i208 = and i32 %19, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i208, i32 %17)
  %cmp49.not.i = icmp eq i32 %and.i208, %17
  br i1 %cmp49.not.i, label %if.end45.i.metadata_to_pageaddr.exit_crit_edge, label %if.end45.i.cleanup.sink.split.i_crit_edge, !prof !125

if.end45.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.i

if.end45.i.metadata_to_pageaddr.exit_crit_edge:   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %metadata_to_pageaddr.exit

cleanup.sink.split.i:                             ; preds = %if.end45.i.cleanup.sink.split.i_crit_edge, %if.end99.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 255, %if.end99.cleanup.sink.split.i_crit_edge ], [ 262, %if.end45.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #13
  store volatile i8 0, ptr @kfence_enabled, align 1
  br label %metadata_to_pageaddr.exit

metadata_to_pageaddr.exit:                        ; preds = %cleanup.sink.split.i, %if.end45.i.metadata_to_pageaddr.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %if.end45.i.metadata_to_pageaddr.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  %addr101 = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 4
  %20 = ptrtoint ptr %addr101 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %addr101, align 8
  %state = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 3
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp102 = icmp eq i32 %22, 2
  br i1 %cmp102, label %if.then104, label %metadata_to_pageaddr.exit.if.end107_crit_edge

metadata_to_pageaddr.exit.if.end107_crit_edge:    ; preds = %metadata_to_pageaddr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then104:                                       ; preds = %metadata_to_pageaddr.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and.i209 = and i32 %retval.0.i, -4096
  %call.i.i210 = tail call i32 @set_memory_valid(i32 noundef %and.i209, i32 noundef 1, i32 noundef 1) #13
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %metadata_to_pageaddr.exit.if.end107_crit_edge
  %call.i211 = tail call i32 @prandom_u32() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i211)
  %tobool109.not = icmp sgt i32 %call.i211, -1
  br i1 %tobool109.not, label %if.end107.if.end121_crit_edge, label %if.then110

if.end107.if.end121_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end121

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 4096, %size
  %23 = ptrtoint ptr %addr101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr101, align 8
  %add = add i32 %24, %sub
  store i32 %add, ptr %addr101, align 8
  %align = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 16
  %25 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %align, align 4
  %neg = sub i32 0, %26
  %and = and i32 %add, %neg
  store i32 %and, ptr %addr101, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then110, %if.end107.if.end121_crit_edge
  %27 = ptrtoint ptr %addr101 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr101, align 8
  %29 = inttoptr i32 %28 to ptr
  tail call fastcc void @metadata_update_state(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %stack_entries, i32 noundef %num_stack_entries)
  %cache128 = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 6
  %30 = ptrtoint ptr %cache128 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %cache, ptr %cache128, align 8
  %size133 = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 5
  %31 = ptrtoint ptr %size133 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %size, ptr %size133, align 4
  %alloc_stack_hash134 = getelementptr inbounds %struct.kfence_metadata, ptr %0, i32 0, i32 10
  %32 = ptrtoint ptr %alloc_stack_hash134 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %alloc_stack_hash, ptr %alloc_stack_hash134, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock223, i32 noundef %10) #13
  %and.i212 = and i32 %alloc_stack_hash, 511
  %arrayidx.i213 = getelementptr [512 x %struct.atomic_t], ptr @alloc_covered, i32 0, i32 %and.i212
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i213, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i213, i32 1, i32 3, i32 1) #13
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i213, ptr %arrayidx.i213, i32 1, ptr elementtype(i32) %arrayidx.i213) #13, !srcloc !129
  %mul.i.i.i = mul i32 %alloc_stack_hash, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 23
  %arrayidx.1.i = getelementptr [512 x %struct.atomic_t], ptr @alloc_covered, i32 0, i32 %shr.i.i
  %call.i.i.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.1.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %arrayidx.1.i, i32 1, i32 3, i32 1) #13
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.1.i, ptr %arrayidx.1.i, i32 1, ptr elementtype(i32) %arrayidx.1.i) #13, !srcloc !129
  %35 = ptrtoint ptr %addr101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr101, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %37 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %36, 1073741824
  %shr.i.i214 = lshr i32 %sub.i.i, 12
  %38 = getelementptr %struct.page, ptr %37, i32 %shr.i.i214, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i3.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i3.i, label %if.end.i.i.i, label %if.then.i.i4.i, !prof !125

if.then.i.i4.i:                                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i.i = add i32 %40, -1
  br label %virt_to_folio.exit.i

if.end.i.i.i:                                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i = getelementptr %struct.page, ptr %37, i32 %shr.i.i214
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  br label %virt_to_folio.exit.i

virt_to_folio.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.i4.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i4.i ], [ %41, %if.end.i.i.i ]
  %42 = inttoptr i32 %retval.0.i.i.i to ptr
  %43 = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %virt_to_slab.exit, label %if.then.i.i.i, !prof !125

if.then.i.i.i:                                    ; preds = %virt_to_folio.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.30) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #13, !srcloc !141
  unreachable

virt_to_slab.exit:                                ; preds = %virt_to_folio.exit.i
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %48 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i = icmp eq i32 %48, 0
  %call..i = select i1 %tobool.i.not.i, ptr null, ptr %42
  %slab_cache = getelementptr inbounds %struct.slab, ptr %call..i, i32 0, i32 2
  %49 = ptrtoint ptr %slab_cache to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %cache, ptr %slab_cache, align 4
  %50 = getelementptr inbounds %struct.slab, ptr %call..i, i32 0, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load = load i32, ptr %50, align 4
  %bf.clear = and i32 %bf.load, -65535
  %bf.set = or i32 %bf.clear, 2
  store i32 %bf.set, ptr %50, align 4
  %52 = ptrtoint ptr %addr101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %addr101, align 8
  %and.i = and i32 %53, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %53)
  %cmp25.i = icmp ult i32 %and.i, %53
  br i1 %cmp25.i, label %virt_to_slab.exit.for.cond.i_crit_edge, label %virt_to_slab.exit.for.end.i_crit_edge

virt_to_slab.exit.for.end.i_crit_edge:            ; preds = %virt_to_slab.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

virt_to_slab.exit.for.cond.i_crit_edge:           ; preds = %virt_to_slab.exit
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %virt_to_slab.exit.for.cond.i_crit_edge
  %addr1.026.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ %and.i, %virt_to_slab.exit.for.cond.i_crit_edge ]
  %54 = inttoptr i32 %addr1.026.i to ptr
  %55 = trunc i32 %addr1.026.i to i8
  %56 = and i8 %55, 7
  %conv2.i = xor i8 %56, -86
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv2.i, ptr %54, align 1
  %inc.i = add nuw i32 %addr1.026.i, 1
  %58 = ptrtoint ptr %addr101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr101, align 8
  %cmp.i = icmp ult i32 %inc.i, %59
  br i1 %cmp.i, label %for.cond.i.for.cond.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %virt_to_slab.exit.for.end.i_crit_edge
  %60 = ptrtoint ptr %addr101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr101, align 8
  %62 = ptrtoint ptr %size133 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size133, align 4
  %add4.i = add i32 %63, %61
  %add6.i = add i32 %and.i, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %add6.i)
  %cmp727.i = icmp ult i32 %add4.i, %add6.i
  br i1 %cmp727.i, label %for.end.i.for.body8.i_crit_edge, label %for.end.i.for_each_canary.exit_crit_edge

for.end.i.for_each_canary.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for_each_canary.exit

for.end.i.for.body8.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.end.i.for.body8.i_crit_edge
  %addr1.128.i = phi i32 [ %inc13.i, %for.body8.i.for.body8.i_crit_edge ], [ %add4.i, %for.end.i.for.body8.i_crit_edge ]
  %64 = inttoptr i32 %addr1.128.i to ptr
  %65 = trunc i32 %addr1.128.i to i8
  %66 = and i8 %65, 7
  %conv2.i215 = xor i8 %66, -86
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv2.i215, ptr %64, align 1
  %inc13.i = add nuw i32 %addr1.128.i, 1
  %cmp7.i = icmp ult i32 %inc13.i, %add6.i
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for_each_canary.exit_crit_edge

for.body8.i.for_each_canary.exit_crit_edge:       ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for_each_canary.exit

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8.i

for_each_canary.exit:                             ; preds = %for.body8.i.for_each_canary.exit_crit_edge, %for.end.i.for_each_canary.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_alloc, i32 1), ptr blockaddress(@kfence_guarded_alloc, %slab_want_init_on_alloc.exit)) #13
          to label %if.then.i [label %slab_want_init_on_alloc.exit], !srcloc !131

if.then.i:                                        ; preds = %for_each_canary.exit
  %ctor.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 14
  %68 = ptrtoint ptr %ctor.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctor.i, align 4
  %tobool15.not.i = icmp eq ptr %69, null
  br i1 %tobool15.not.i, label %if.end.i, label %if.then.i.if.end154_crit_edge

if.then.i.if.end154_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.end.i:                                         ; preds = %if.then.i
  %flags17.i = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 1
  %70 = ptrtoint ptr %flags17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags17.i, align 4
  %and.i216 = and i32 %71, 526336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216)
  %tobool18.not.i = icmp eq i32 %and.i216, 0
  %and20.i = and i32 %gfp, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.i = icmp ne i32 %and20.i, 0
  %or.cond = or i1 %tobool21.i, %tobool18.not.i
  br i1 %or.cond, label %if.end.i.if.then153_crit_edge, label %if.end.i.if.end154_crit_edge, !prof !142

if.end.i.if.end154_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.end.i.if.then153_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then153

slab_want_init_on_alloc.exit:                     ; preds = %for_each_canary.exit
  %and24.i = and i32 %gfp, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.i.not = icmp eq i32 %and24.i, 0
  br i1 %tobool25.i.not, label %slab_want_init_on_alloc.exit.if.end154_crit_edge, label %slab_want_init_on_alloc.exit.if.then153_crit_edge, !prof !125

slab_want_init_on_alloc.exit.if.then153_crit_edge: ; preds = %slab_want_init_on_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then153

slab_want_init_on_alloc.exit.if.end154_crit_edge: ; preds = %slab_want_init_on_alloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end154

if.then153:                                       ; preds = %slab_want_init_on_alloc.exit.if.then153_crit_edge, %if.end.i.if.then153_crit_edge
  %72 = call ptr @memset(ptr %29, i32 0, i32 %size)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %29) #13, !srcloc !130
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %slab_want_init_on_alloc.exit.if.end154_crit_edge, %if.end.i.if.end154_crit_edge, %if.then.i.if.end154_crit_edge
  %ctor = getelementptr inbounds %struct.kmem_cache, ptr %cache, i32 0, i32 14
  %73 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctor, align 4
  %tobool155.not = icmp eq ptr %74, null
  br i1 %tobool155.not, label %if.end154.if.end158_crit_edge, label %if.then156

if.end154.if.end158_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end158

if.then156:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %74(ptr noundef %29) #13
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.end154.if.end158_crit_edge
  %call.i.i198 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @counters, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr nonnull @counters, i32 1, i32 3, i32 1) #13
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @counters, ptr nonnull @counters, i32 1, ptr nonnull elementtype(i32) @counters) #13, !srcloc !129
  %call.i.i199 = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 1), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 1), i32 1, i32 3, i32 1) #13
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 1), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 1)) #13, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %list_add_tail.exit, %if.then12
  %retval.0 = phi ptr [ null, %list_add_tail.exit ], [ %29, %if.end158 ], [ null, %if.then12 ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kfence_ksize(ptr noundef %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  %1 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i = sub i32 %0, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 2097151
  %tobool.i.i = icmp eq ptr %1, null
  %spec.select.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 8192
  %or.cond.i = or i1 %cmp.i, %spec.select.i.i
  %div8.i = lshr i32 %sub.ptr.sub.i.i, 13
  %sub1.i = add nsw i32 %div8.i, -1
  %arrayidx.i = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i
  %tobool.not2 = icmp eq ptr %arrayidx.i, null
  %tobool.not = select i1 %or.cond.i, i1 true, i1 %tobool.not2
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %size = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @kfence_object_start(ptr noundef %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  %1 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i = sub i32 %0, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 2097151
  %tobool.i.i = icmp eq ptr %1, null
  %spec.select.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 8192
  %or.cond.i = or i1 %cmp.i, %spec.select.i.i
  %div8.i = lshr i32 %sub.ptr.sub.i.i, 13
  %sub1.i = add nsw i32 %div8.i, -1
  %arrayidx.i = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i
  %tobool.not3 = icmp eq ptr %arrayidx.i, null
  %tobool.not = select i1 %or.cond.i, i1 true, i1 %tobool.not3
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %addr1 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i, i32 4
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr1, align 8
  %4 = inttoptr i32 %3 to ptr
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kfence_free(ptr noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  %1 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i.i = sub i32 %0, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 2097151
  %tobool.i.i = icmp eq ptr %1, null
  %spec.select.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.i, 8192
  %or.cond.i = or i1 %cmp.i, %spec.select.i.i
  %div8.i = lshr i32 %sub.ptr.sub.i.i, 13
  %sub1.i = add nsw i32 %div8.i, -1
  %arrayidx.i = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i
  %retval.0.i = select i1 %or.cond.i, ptr null, ptr %arrayidx.i
  %cache = getelementptr inbounds %struct.kfence_metadata, ptr %retval.0.i, i32 0, i32 6
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.rhs

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.kmem_cache, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.if.else_crit_edge, label %if.then, !prof !125

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  %callback_head = getelementptr inbounds %struct.kfence_metadata, ptr %retval.0.i, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @rcu_guarded_free) #13
  br label %if.end

if.else:                                          ; preds = %land.rhs.if.else_crit_edge, %entry.if.else_crit_edge
  tail call fastcc void @kfence_guarded_free(ptr noundef %addr, ptr noundef %retval.0.i, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_guarded_free(ptr noundef %h) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %h, i32 -8
  %addr = getelementptr i8, ptr %h, i32 56
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  %2 = inttoptr i32 %1 to ptr
  tail call fastcc void @kfence_guarded_free(ptr noundef %2, ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kfence_handle_page_fault(i32 noundef %addr, i1 noundef zeroext %is_write, ptr noundef %regs) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @__kfence_pool, align 4
  %1 = ptrtoint ptr %0 to i32
  %sub = sub i32 %addr, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %sub)
  %cmp.i = icmp ult i32 %sub, 2097152
  %tobool.i = icmp ne ptr %0, null
  %spec.select.i = select i1 %cmp.i, i1 %tobool.i, i1 false
  br i1 %spec.select.i, label %do.end, label %entry.cleanup83_crit_edge

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

do.end:                                           ; preds = %entry
  %2 = load volatile i8, ptr @kfence_enabled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.end.cleanup83.sink.split_crit_edge, label %if.end5

do.end.cleanup83.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83.sink.split

if.end5:                                          ; preds = %do.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 1, ptr elementtype(i32) getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4)) #13, !srcloc !129
  %4 = and i32 %sub, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  %sub8 = add i32 %addr, -4096
  %5 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub8, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.ptr.sub.i.i, 2097151
  %tobool.i.i = icmp eq ptr %5, null
  %spec.select.i.i = select i1 %cmp.i.i, i1 true, i1 %tobool.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i)
  %cmp.i118 = icmp ult i32 %sub.ptr.sub.i.i, 8192
  %or.cond.i = or i1 %cmp.i118, %spec.select.i.i
  %div8.i = lshr i32 %sub.ptr.sub.i.i, 13
  %sub1.i = add nsw i32 %div8.i, -1
  %arrayidx.i = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i
  %tobool10.not150 = icmp eq ptr %arrayidx.i, null
  %tobool10.not = select i1 %or.cond.i, i1 true, i1 %tobool10.not150
  br i1 %tobool10.not, label %if.then7.if.end20_crit_edge, label %do.end13

if.then7.if.end20_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

do.end13:                                         ; preds = %if.then7
  %state = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then15, label %do.end13.if.end20_crit_edge

do.end13.if.end20_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then15:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #15
  %addr17 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i, i32 4
  %8 = ptrtoint ptr %addr17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr17, align 8
  %size = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i, i32 5
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %12 = add i32 %9, %11
  %sub19 = sub i32 %addr, %12
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %do.end13.if.end20_crit_edge, %if.then7.if.end20_crit_edge
  %distance.0 = phi i32 [ %sub19, %if.then15 ], [ 0, %do.end13.if.end20_crit_edge ], [ 0, %if.then7.if.end20_crit_edge ]
  %to_report.0 = phi ptr [ %arrayidx.i, %if.then15 ], [ null, %do.end13.if.end20_crit_edge ], [ null, %if.then7.if.end20_crit_edge ]
  %add21 = add i32 %addr, 4096
  %sub.ptr.sub.i.i120 = sub i32 %add21, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i120)
  %cmp.i.i121 = icmp ugt i32 %sub.ptr.sub.i.i120, 2097151
  %spec.select.i.i123 = select i1 %cmp.i.i121, i1 true, i1 %tobool.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i120)
  %cmp.i124 = icmp ult i32 %sub.ptr.sub.i.i120, 8192
  %or.cond.i125 = or i1 %cmp.i124, %spec.select.i.i123
  %div8.i126 = lshr i32 %sub.ptr.sub.i.i120, 13
  %sub1.i127 = add nsw i32 %div8.i126, -1
  %arrayidx.i128 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i127
  %tobool23.not151 = icmp eq ptr %arrayidx.i128, null
  %tobool23.not = select i1 %or.cond.i125, i1 true, i1 %tobool23.not151
  br i1 %tobool23.not, label %if.end20.if.end41_crit_edge, label %do.end27

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

do.end27:                                         ; preds = %if.end20
  %state29 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i127, i32 3
  %13 = ptrtoint ptr %state29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp30 = icmp eq i32 %14, 1
  br i1 %cmp30, label %if.then31, label %do.end27.if.end41_crit_edge

do.end27.if.end41_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then31:                                        ; preds = %do.end27
  %tobool32.not = icmp eq ptr %to_report.0, null
  br i1 %tobool32.not, label %if.then31.if.then39_crit_edge, label %lor.lhs.false

if.then31.if.then39_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.then31
  %addr35 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i127, i32 4
  %15 = ptrtoint ptr %addr35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr35, align 8
  %sub37 = sub i32 %16, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %distance.0, i32 %sub37)
  %cmp38 = icmp ugt i32 %distance.0, %sub37
  br i1 %cmp38, label %lor.lhs.false.if.then39_crit_edge, label %lor.lhs.false.do.body45_crit_edge

lor.lhs.false.do.body45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %if.then31.if.then39_crit_edge
  br label %do.body45

if.end41:                                         ; preds = %do.end27.if.end41_crit_edge, %if.end20.if.end41_crit_edge
  %tobool42.not = icmp eq ptr %to_report.0, null
  br i1 %tobool42.not, label %if.end41.if.else79_crit_edge, label %if.end41.do.body45_crit_edge

if.end41.do.body45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body45

if.end41.if.else79_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else79

do.body45:                                        ; preds = %if.end41.do.body45_crit_edge, %if.then39, %lor.lhs.false.do.body45_crit_edge
  %to_report.1145 = phi ptr [ %to_report.0, %if.end41.do.body45_crit_edge ], [ %to_report.0, %lor.lhs.false.do.body45_crit_edge ], [ %arrayidx.i128, %if.then39 ]
  %lock = getelementptr inbounds %struct.kfence_metadata, ptr %to_report.1145, i32 0, i32 2
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %unprotected_page = getelementptr inbounds %struct.kfence_metadata, ptr %to_report.1145, i32 0, i32 7
  %17 = ptrtoint ptr %unprotected_page to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %addr, ptr %unprotected_page, align 4
  br label %if.then68

if.else:                                          ; preds = %if.end5
  %18 = load ptr, ptr @__kfence_pool, align 4
  %sub.ptr.rhs.cast.i.i130 = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i131 = sub i32 %addr, %sub.ptr.rhs.cast.i.i130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.ptr.sub.i.i131)
  %cmp.i.i132 = icmp ugt i32 %sub.ptr.sub.i.i131, 2097151
  %tobool.i.i133 = icmp eq ptr %18, null
  %spec.select.i.i134 = select i1 %cmp.i.i132, i1 true, i1 %tobool.i.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.ptr.sub.i.i131)
  %cmp.i135 = icmp ult i32 %sub.ptr.sub.i.i131, 8192
  %or.cond.i136 = or i1 %cmp.i135, %spec.select.i.i134
  %div8.i137 = lshr i32 %sub.ptr.sub.i.i131, 13
  %sub1.i138 = add nsw i32 %div8.i137, -1
  %arrayidx.i139 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i138
  %tobool53.not152 = icmp eq ptr %arrayidx.i139, null
  %tobool53.not = select i1 %or.cond.i136, i1 true, i1 %tobool53.not152
  br i1 %tobool53.not, label %if.else.if.else79_crit_edge, label %do.body56

if.else.if.else79_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else79

do.body56:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %lock62 = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub1.i138, i32 2
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock62) #13
  br label %if.then68

if.then68:                                        ; preds = %do.body56, %do.body45
  %flags.1 = phi i32 [ %call63, %do.body56 ], [ %call48, %do.body45 ]
  %error_type.1 = phi i32 [ 1, %do.body56 ], [ 0, %do.body45 ]
  %to_report.2 = phi ptr [ %arrayidx.i139, %do.body56 ], [ %to_report.1145, %do.body45 ]
  tail call void @kfence_report_error(i32 noundef %addr, i1 noundef zeroext %is_write, ptr noundef %regs, ptr noundef nonnull %to_report.2, i32 noundef %error_type.1) #13
  %lock76 = getelementptr inbounds %struct.kfence_metadata, ptr %to_report.2, i32 0, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock76, i32 noundef %flags.1) #13
  br label %cleanup83.sink.split

if.else79:                                        ; preds = %if.else.if.else79_crit_edge, %if.end41.if.else79_crit_edge
  tail call void @kfence_report_error(i32 noundef %addr, i1 noundef zeroext %is_write, ptr noundef %regs, ptr noundef null, i32 noundef 3) #13
  br label %cleanup83.sink.split

cleanup83.sink.split:                             ; preds = %if.else79, %if.then68, %do.end.cleanup83.sink.split_crit_edge
  %and.i141 = and i32 %addr, -4096
  %call.i.i142 = tail call i32 @set_memory_valid(i32 noundef %and.i141, i32 noundef 1, i32 noundef 1) #13
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup83.sink.split, %entry.cleanup83_crit_edge
  ret i1 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfence_report_error(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_sample_interval(ptr noundef %val, ptr nocapture noundef readonly %kp) #4 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !122
  %call.i = call i32 @_kstrtoul(ptr noundef %val, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body3, label %do.end10

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store volatile i8 0, ptr @kfence_enabled, align 1
  br label %if.end16

do.end10:                                         ; preds = %if.end
  %3 = load volatile i8, ptr @kfence_enabled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool11.not = icmp eq i8 %3, 0
  br i1 %tobool11.not, label %land.lhs.true, label %do.end10.if.end16_crit_edge

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %4 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.not = icmp eq i32 %4, 0
  br i1 %cmp13.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %do.end10.if.end16_crit_edge, %do.body3
  %5 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %2, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_sample_interval(ptr noundef %buffer, ptr noundef %kp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i8, ptr @kfence_enabled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = call ptr @memcpy(ptr %buffer, ptr @.str.8, i32 3)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @param_get_ulong(ptr noundef %buffer, ptr noundef %kp) #13
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @stats_show, ptr noundef %1) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stats_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i8, ptr @kfence_enabled, align 1, !range !137
  %1 = zext i8 %0 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %1) #13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @counters, i32 noundef 4) #13
  %2 = load volatile i32, ptr @counters, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %2) #13
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 1), i32 noundef 4) #13
  %3 = load volatile i32, ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 1), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %3) #13
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 2), i32 noundef 4) #13
  %4 = load volatile i32, ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 2), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef %4) #13
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 3), i32 noundef 4) #13
  %5 = load volatile i32, ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 3), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, i32 noundef %5) #13
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), i32 noundef 4) #13
  %6 = load volatile i32, ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 4), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef %6) #13
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), i32 noundef 4) #13
  %7 = load volatile i32, ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 5), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.19, i32 noundef %7) #13
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 6), i32 noundef 4) #13
  %8 = load volatile i32, ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 6), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.20, i32 noundef %8) #13
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 7), i32 noundef 4) #13
  %9 = load volatile i32, ptr getelementptr inbounds ([8 x %struct.atomic_t], ptr @counters, i32 0, i32 7), align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21, i32 noundef %9) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @open_objects(ptr nocapture noundef readnone %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @object_seqops) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @start_object(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp = icmp slt i64 %1, 255
  %conv = trunc i64 %1 to i32
  %add = add i32 %conv, 1
  %2 = inttoptr i32 %add to ptr
  %retval.0 = select i1 %cmp, ptr %2, ptr null
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @stop_object(ptr nocapture noundef %seq, ptr nocapture noundef %v) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @next_object(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %inc)
  %cmp = icmp slt i64 %inc, 255
  %conv = trunc i64 %inc to i32
  %add = add i32 %conv, 1
  %2 = inttoptr i32 %add to ptr
  %retval.0 = select i1 %cmp, ptr %2, ptr null
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_object(ptr noundef %seq, ptr noundef %v) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  %sub = add i32 %0, -1
  %arrayidx = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub
  %lock = getelementptr [255 x %struct.kfence_metadata], ptr @kfence_metadata, i32 0, i32 %sub, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  tail call void @kfence_print_object(ptr noundef %seq, ptr noundef %arrayidx) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #13
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.22) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfence_print_object(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_free(ptr noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free_late(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_valid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @toggle_allocation_gate(ptr nocapture noundef readnone %work) #4 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry57 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i8, ptr @kfence_enabled, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  store volatile i32 0, ptr @kfence_allocation_gate, align 4
  tail call void @static_key_enable(ptr noundef nonnull @kfence_allocation_key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_hung_task_timeout_secs to i32))
  %1 = load i32, ptr @sysctl_hung_task_timeout_secs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %do.body48, label %if.then3

if.then3:                                         ; preds = %if.end
  %mul = mul i32 %1, 100
  %div87 = lshr exact i32 %mul, 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 743) #13
  %call.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  %2 = load volatile i32, ptr @kfence_allocation_gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool12.not = icmp eq i32 %mul, 0
  %spec.store.select = select i1 %tobool12.not, i32 1, i32 %div87
  %__ret.0 = select i1 %tobool9.not, i32 %div87, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool17.not = icmp eq i32 %__ret.0, 0
  %not.tobool9.not = xor i1 %tobool9.not, true
  %3 = select i1 %not.tobool9.not, i1 true, i1 %tobool17.not
  br i1 %3, label %if.then3.if.end75_crit_edge, label %if.then19

if.then3.if.end75_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then19:                                        ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_hung_task_timeout_secs to i32))
  %5 = load i32, ptr @sysctl_hung_task_timeout_secs, align 4
  %mul21 = mul i32 %5, 100
  %div2288 = lshr exact i32 %mul21, 1
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  %call2399 = call i32 @prepare_to_wait_event(ptr noundef nonnull @allocation_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1026) #13
  %call.i.i91100 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  %6 = load volatile i32, ptr @kfence_allocation_gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool26.not101 = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul21)
  %tobool30.not102 = icmp eq i32 %mul21, 0
  %spec.store.select78103 = select i1 %tobool30.not102, i32 1, i32 %div2288
  %__ret20.1104 = select i1 %tobool26.not101, i32 %div2288, i32 %spec.store.select78103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.1104)
  %tobool36.not105 = icmp eq i32 %__ret20.1104, 0
  %not.tobool26.not106 = xor i1 %tobool26.not101, true
  %7 = select i1 %not.tobool26.not106, i1 true, i1 %tobool36.not105
  br i1 %7, label %if.then19.for.end_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  br label %cleanup

if.then19.for.end_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %__ret20.1107 = phi i32 [ %__ret20.1, %cleanup.cleanup_crit_edge ], [ %__ret20.1104, %if.then19.cleanup_crit_edge ]
  %call43 = call i32 @schedule_timeout(i32 noundef %__ret20.1107) #13
  %call23 = call i32 @prepare_to_wait_event(ptr noundef nonnull @allocation_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1026) #13
  %call.i.i91 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  %8 = load volatile i32, ptr @kfence_allocation_gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool26.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool30.not = icmp eq i32 %call43, 0
  %spec.store.select78 = select i1 %tobool30.not, i32 1, i32 %call43
  %__ret20.1 = select i1 %tobool26.not, i32 %call43, i32 %spec.store.select78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret20.1)
  %tobool36.not = icmp eq i32 %__ret20.1, 0
  %not.tobool26.not = xor i1 %tobool26.not, true
  %9 = select i1 %not.tobool26.not, i1 true, i1 %tobool36.not
  br i1 %9, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then19.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @allocation_wait, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end75

do.body48:                                        ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 745) #13
  %call.i.i92 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  %10 = load volatile i32, ptr @kfence_allocation_gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool55.not = icmp eq i32 %10, 0
  br i1 %tobool55.not, label %if.then56, label %do.body48.if.end75_crit_edge

do.body48.if.end75_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then56:                                        ; preds = %do.body48
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry57) #13
  %11 = call ptr @memset(ptr %__wq_entry57, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry57, i32 noundef 0) #13
  %call61108 = call i32 @prepare_to_wait_event(ptr noundef nonnull @allocation_wait, ptr noundef nonnull %__wq_entry57, i32 noundef 1026) #13
  %call.i.i93109 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  %12 = load volatile i32, ptr @kfence_allocation_gate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool63.not110 = icmp eq i32 %12, 0
  br i1 %tobool63.not110, label %if.then56.cleanup66_crit_edge, label %if.then56.for.end69_crit_edge

if.then56.for.end69_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

if.then56.cleanup66_crit_edge:                    ; preds = %if.then56
  br label %cleanup66

cleanup66:                                        ; preds = %cleanup66.cleanup66_crit_edge, %if.then56.cleanup66_crit_edge
  call void @schedule() #13
  %call61 = call i32 @prepare_to_wait_event(ptr noundef nonnull @allocation_wait, ptr noundef nonnull %__wq_entry57, i32 noundef 1026) #13
  %call.i.i93 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kfence_allocation_gate, i32 noundef 4) #13
  %13 = load volatile i32, ptr @kfence_allocation_gate, align 4
  %tobool63.not = icmp eq i32 %13, 0
  br i1 %tobool63.not, label %cleanup66.cleanup66_crit_edge, label %cleanup66.for.end69_crit_edge

cleanup66.for.end69_crit_edge:                    ; preds = %cleanup66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end69

cleanup66.cleanup66_crit_edge:                    ; preds = %cleanup66
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup66

for.end69:                                        ; preds = %cleanup66.for.end69_crit_edge, %if.then56.for.end69_crit_edge
  call void @finish_wait(ptr noundef nonnull @allocation_wait, ptr noundef nonnull %__wq_entry57) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry57) #13
  br label %if.end75

if.end75:                                         ; preds = %for.end69, %do.body48.if.end75_crit_edge, %for.end, %if.then3.if.end75_crit_edge
  call void @static_key_disable(ptr noundef nonnull @kfence_allocation_key) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %14 = load ptr, ptr @system_unbound_wq, align 4
  %15 = load i32, ptr @kfence_sample_interval, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %15) #13
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %14, ptr noundef nonnull @kfence_timer, i32 noundef %call2.i) #13
  br label %return

return:                                           ; preds = %if.end75, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @metadata_update_state(ptr noundef %meta, i32 noundef %next, ptr noundef readonly %stack_entries, i32 noundef %num_stack_entries) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %next)
  %cmp = icmp eq i32 %next, 2
  %free_track = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 9
  %alloc_track = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 8
  %cond = select i1 %cmp, ptr %free_track, ptr %alloc_track
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 2, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !127

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 279, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %stack_entries, null
  %stack_entries28 = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 4
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl i32 %num_stack_entries, 2
  %1 = call ptr @memcpy(ptr %stack_entries28, ptr %stack_entries, i32 %mul)
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call30 = tail call i32 @stack_trace_save(ptr noundef %stack_entries28, i32 noundef 64, i32 noundef 1) #13
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %num_stack_entries.addr.0 = phi i32 [ %num_stack_entries, %if.then26 ], [ %call30, %if.else ]
  %num_stack_entries32 = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 3
  %2 = ptrtoint ptr %num_stack_entries32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %num_stack_entries.addr.0, ptr %num_stack_entries32, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !112) #13
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pid.i, align 8
  %9 = ptrtoint ptr %cond to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cond, align 8
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %cpu36 = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 1
  %12 = ptrtoint ptr %cpu36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cpu36, align 4
  %call.i59 = tail call i64 @sched_clock() #13
  %ts_nsec = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 2
  %13 = ptrtoint ptr %ts_nsec to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i59, ptr %ts_nsec, align 8
  %state = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 3
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %next, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wake_up_kfence_timer(ptr nocapture noundef readnone %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__wake_up(ptr noundef nonnull @allocation_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_irq_stacks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !97, !98, !100, !102, !103, !105, !106, !108, !110}
!llvm.named.register.sp = !{!112}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @kfence_sample_interval, !1, !"kfence_sample_interval", i1 false, i1 false}
!1 = !{!"../mm/kfence/core.c", i32 50, i32 15}
!2 = !{ptr @__ksymtab_kfence_sample_interval, !3, !"__ksymtab_kfence_sample_interval", i1 false, i1 false}
!3 = !{!"../mm/kfence/core.c", i32 51, i32 1}
!4 = !{ptr @__param_sample_interval, !5, !"__param_sample_interval", i1 false, i1 false}
!5 = !{!"../mm/kfence/core.c", i32 87, i32 1}
!6 = !{ptr @__param_skip_covered_thresh, !7, !"__param_skip_covered_thresh", i1 false, i1 false}
!7 = !{!"../mm/kfence/core.c", i32 91, i32 1}
!8 = !{ptr @__UNIQUE_ID_skip_covered_threshtype300, !7, !"__UNIQUE_ID_skip_covered_threshtype300", i1 false, i1 false}
!9 = !{ptr @__ksymtab___kfence_pool, !10, !"__ksymtab___kfence_pool", i1 false, i1 false}
!10 = !{!"../mm/kfence/core.c", i32 95, i32 1}
!11 = !{ptr @kfence_allocation_key, !12, !"kfence_allocation_key", i1 false, i1 false}
!12 = !{!"../mm/kfence/core.c", i32 112, i32 1}
!13 = !{ptr @kfence_allocation_gate, !14, !"kfence_allocation_gate", i1 false, i1 false}
!14 = !{!"../mm/kfence/core.c", i32 115, i32 10}
!15 = !{ptr @__initcall__kmod_core__311_700_kfence_debugfs_init7, !16, !"__initcall__kmod_core__311_700_kfence_debugfs_init7", i1 false, i1 false}
!16 = !{!"../mm/kfence/core.c", i32 700, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../mm/kfence/core.c", i32 766, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @kfence_alloc_pool._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @kfence_alloc_pool._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../mm/kfence/core.c", i32 777, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @kfence_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @kfence_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../mm/kfence/core.c", i32 785, i32 2}
!30 = !{ptr @kfence_init._entry.5, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @kfence_init._entry_ptr.7, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @kfence_enabled, !33, !"kfence_enabled", i1 false, i1 false}
!33 = !{!"../mm/kfence/core.c", i32 48, i32 13}
!34 = !{ptr @__kfence_pool, !35, !"__kfence_pool", i1 false, i1 false}
!35 = !{!"../mm/kfence/core.c", i32 94, i32 7}
!36 = !{ptr @kfence_metadata, !37, !"kfence_metadata", i1 false, i1 false}
!37 = !{!"../mm/kfence/core.c", i32 102, i32 24}
!38 = !{ptr @stack_hash_seed, !39, !"stack_hash_seed", i1 false, i1 false}
!39 = !{!"../mm/kfence/core.c", i32 141, i32 12}
!40 = !{ptr @counters, !41, !"counters", i1 false, i1 false}
!41 = !{!"../mm/kfence/core.c", i32 155, i32 22}
!42 = !{ptr @__param_str_sample_interval, !5, !"__param_str_sample_interval", i1 false, i1 false}
!43 = !{ptr @sample_interval_param_ops, !44, !"sample_interval_param_ops", i1 false, i1 false}
!44 = !{!"../mm/kfence/core.c", i32 83, i32 38}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../mm/kfence/core.c", i32 78, i32 26}
!47 = !{ptr @__param_str_skip_covered_thresh, !7, !"__param_str_skip_covered_thresh", i1 false, i1 false}
!48 = !{ptr @kfence_skip_covered_thresh, !49, !"kfence_skip_covered_thresh", i1 false, i1 false}
!49 = !{!"../mm/kfence/core.c", i32 90, i32 22}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../mm/kfence/core.c", i32 693, i32 49}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../mm/kfence/core.c", i32 695, i32 22}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/kfence/core.c", i32 696, i32 22}
!56 = !{ptr @stats_fops, !57, !"stats_fops", i1 false, i1 false}
!57 = !{!"../mm/kfence/core.c", i32 633, i32 1}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../mm/kfence/core.c", i32 627, i32 18}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../mm/kfence/core.c", i32 629, i32 19}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../mm/kfence/core.c", i32 157, i32 31}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../mm/kfence/core.c", i32 158, i32 29}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../mm/kfence/core.c", i32 159, i32 28}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../mm/kfence/core.c", i32 160, i32 29}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../mm/kfence/core.c", i32 161, i32 27}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../mm/kfence/core.c", i32 162, i32 35}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../mm/kfence/core.c", i32 163, i32 35}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../mm/kfence/core.c", i32 164, i32 34}
!78 = distinct !{null, !79, !"counter_names", i1 false, i1 false}
!79 = !{!"../mm/kfence/core.c", i32 156, i32 26}
!80 = !{ptr @objects_fops, !81, !"objects_fops", i1 false, i1 false}
!81 = !{!"../mm/kfence/core.c", i32 684, i32 37}
!82 = !{ptr @object_seqops, !83, !"object_seqops", i1 false, i1 false}
!83 = !{!"../mm/kfence/core.c", i32 672, i32 36}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../mm/kfence/core.c", i32 667, i32 16}
!86 = !{ptr @kfence_init_pool.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../mm/kfence/core.c", i32 586, i32 3}
!88 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/page-flags.h", i32 428, i32 1}
!91 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @kfence_freelist, !93, !"kfence_freelist", i1 false, i1 false}
!93 = !{!"../mm/kfence/core.c", i32 105, i32 25}
!94 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../mm/kfence/core.c", i32 754, i32 8}
!96 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @kfence_timer, !95, !"kfence_timer", i1 false, i1 false}
!98 = !{ptr @alloc_covered, !99, !"alloc_covered", i1 false, i1 false}
!99 = !{!"../mm/kfence/core.c", i32 132, i32 17}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../mm/kfence/core.c", i32 106, i32 8}
!102 = !{ptr @kfence_freelist_lock, !101, !"kfence_freelist_lock", i1 false, i1 false}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../mm/kfence/core.c", i32 706, i32 8}
!105 = !{ptr @allocation_wait, !104, !"allocation_wait", i1 false, i1 false}
!106 = !{ptr @wake_up_kfence_timer_work, !107, !"wake_up_kfence_timer_work", i1 false, i1 false}
!107 = !{!"../mm/kfence/core.c", i32 712, i32 8}
!108 = !{ptr @.str.30, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!112 = !{!"sp"}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{i64 2153535637, i64 2153535650}
!124 = !{i64 2153541803}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2150818189, i64 2150818680, i64 2150818226, i64 2150818282, i64 2150818316, i64 2150818340, i64 2150818381, i64 2150818402, i64 2150818430, i64 2150818464}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 2150820569, i64 2150821060, i64 2150820606, i64 2150820662, i64 2150820696, i64 2150820720, i64 2150820761, i64 2150820782, i64 2150820810, i64 2150820844}
!129 = !{i64 2148148333, i64 2148148359, i64 2148148388, i64 2148148422, i64 2148148453, i64 2148148476}
!130 = !{i64 2149273959}
!131 = !{i64 2148594057, i64 2148594062, i64 2148594075, i64 2148594119, i64 2148594153, i64 2148594174}
!132 = !{!"branch_weights", i32 4001, i32 1}
!133 = !{i64 2148150798, i64 2148150824, i64 2148150853, i64 2148150887, i64 2148150918, i64 2148150941}
!134 = !{i64 2148233744}
!135 = !{i64 2148149053, i64 2148149085, i64 2148149114, i64 2148149148, i64 2148149179, i64 2148149202}
!136 = !{i64 2148233973}
!137 = !{i8 0, i8 2}
!138 = !{i64 601660, i64 601721}
!139 = !{i64 604392}
!140 = !{i64 604677}
!141 = !{i64 2150602423, i64 2150602914, i64 2150602460, i64 2150602516, i64 2150602550, i64 2150602574, i64 2150602615, i64 2150602636, i64 2150602664, i64 2150602698}
!142 = !{!"branch_weights", i32 4193255, i32 -102759400}
