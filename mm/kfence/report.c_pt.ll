; ModuleID = '/llk/IR_all_yes/mm/kfence/report.c_pt.bc'
source_filename = "../mm/kfence/report.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kfence_metadata = type { %struct.list_head, %struct.callback_head, %struct.raw_spinlock, i32, i32, i32, ptr, i32, %struct.kfence_track, %struct.kfence_track, i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kfence_track = type { i32, i32, i64, i32, [64 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kasan_cache = type { i32, i32, i8 }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mm/kfence/report.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kfence-#%td unused\0A\00", [44 x i8] zeroinitializer }, align 32
@kfence_metadata = external dso_local global [255 x %struct.kfence_metadata], align 8
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"kfence-#%td: 0x%p-0x%p, size=%d, cache=%s\0A\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"<destroyed>\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kfence_report_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013==================================================================\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kfence_report_error\00", [44 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr = internal global ptr @kfence_report_error._entry, section ".printk_index", align 4
@kfence_report_error._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013BUG: KFENCE: out-of-bounds %s in %pS\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.9 = internal global ptr @kfence_report_error._entry.7, section ".printk_index", align 4
@kfence_report_error._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Out-of-bounds %s at 0x%p (%luB %s of kfence-#%td):\0A\00", [42 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.12 = internal global ptr @kfence_report_error._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"left\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"right\00", [26 x i8] zeroinitializer }, align 32
@kfence_report_error._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013BUG: KFENCE: use-after-free %s in %pS\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.17 = internal global ptr @kfence_report_error._entry.15, section ".printk_index", align 4
@kfence_report_error._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Use-after-free %s at 0x%p (in kfence-#%td):\0A\00", [49 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.20 = internal global ptr @kfence_report_error._entry.18, section ".printk_index", align 4
@kfence_report_error._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013BUG: KFENCE: memory corruption in %pS\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.23 = internal global ptr @kfence_report_error._entry.21, section ".printk_index", align 4
@kfence_report_error._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.6, ptr @.str, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Corrupted memory at 0x%p \00", [36 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.26 = internal global ptr @kfence_report_error._entry.24, section ".printk_index", align 4
@kfence_report_error._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.6, ptr @.str, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\01c (in kfence-#%td):\0A\00", [42 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.29 = internal global ptr @kfence_report_error._entry.27, section ".printk_index", align 4
@kfence_report_error._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.6, ptr @.str, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013BUG: KFENCE: invalid %s in %pS\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.32 = internal global ptr @kfence_report_error._entry.30, section ".printk_index", align 4
@kfence_report_error._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.6, ptr @.str, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Invalid %s at 0x%p:\0A\00", [41 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.35 = internal global ptr @kfence_report_error._entry.33, section ".printk_index", align 4
@kfence_report_error._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.6, ptr @.str, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013BUG: KFENCE: invalid free in %pS\0A\0A\00", [59 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.38 = internal global ptr @kfence_report_error._entry.36, section ".printk_index", align 4
@kfence_report_error._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.6, ptr @.str, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Invalid free of 0x%p (in kfence-#%td):\0A\00", [54 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.41 = internal global ptr @kfence_report_error._entry.39, section ".printk_index", align 4
@kfence_report_error._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.6, ptr @.str, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\013\0A\00", [28 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.44 = internal global ptr @kfence_report_error._entry.42, section ".printk_index", align 4
@kfence_report_error._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.6, ptr @.str, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.46 = internal global ptr @kfence_report_error._entry.45, section ".printk_index", align 4
@no_hash_pointers = external dso_local local_unnamed_addr global i8, align 1
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@kfence_report_error._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@kfence_report_error._entry_ptr.49 = internal global ptr @kfence_report_error._entry.48, section ".printk_index", align 4
@panic_on_warn = external dso_local local_unnamed_addr global i32, align 4
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"panic_on_warn set ...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s by task %d on cpu %d at %lu.%06lus:\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"allocated\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"freed\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %pS\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" no %s stack\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"allocation\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"deallocation\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ps\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kfence_\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__kfence_\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__slab_free\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kfree\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kmem_cache_free\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__kmalloc\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmem_cache_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@print_diff_canary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c[\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"print_diff_canary\00", [46 x i8] zeroinitializer }, align 32
@print_diff_canary._entry_ptr = internal global ptr @print_diff_canary._entry, section ".printk_index", align 4
@print_diff_canary._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c .\00", [27 x i8] zeroinitializer }, align 32
@print_diff_canary._entry_ptr.72 = internal global ptr @print_diff_canary._entry.70, section ".printk_index", align 4
@print_diff_canary._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c 0x%02x\00", [22 x i8] zeroinitializer }, align 32
@print_diff_canary._entry_ptr.75 = internal global ptr @print_diff_canary._entry.73, section ".printk_index", align 4
@print_diff_canary._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.69, ptr @.str, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c !\00", [27 x i8] zeroinitializer }, align 32
@print_diff_canary._entry_ptr.78 = internal global ptr @print_diff_canary._entry.76, section ".printk_index", align 4
@print_diff_canary._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.69, ptr @.str, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c ]\00", [27 x i8] zeroinitializer }, align 32
@print_diff_canary._entry_ptr.81 = internal global ptr @print_diff_canary._entry.79, section ".printk_index", align 4
@__tracepoint_error_report_end = external dso_local global %struct.tracepoint, align 4
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/trace/events/error_report.h\00", [60 x i8] zeroinitializer }, align 32
@trace_error_report_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.83 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 130, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 133, i32 23 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 137, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 139, i32 55 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 144, i32 23 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 212, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 218, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 220, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 227, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 229, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 233, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 234, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 236, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 239, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 241, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 245, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 246, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 255, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 260, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 264, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 266, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 271, i32 9 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 108, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 109, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 109, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 118, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 120, i32 23 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 120, i32 54 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 120, i32 69 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 74, i32 41 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 76, i32 27 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 77, i32 27 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 78, i32 21 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 87, i32 27 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 88, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 89, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 90, i32 27 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 177, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 177, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 163, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 166, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 168, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 170, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private constant [22 x i8] c"../mm/kfence/report.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 172, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [39 x i8] c"../include/trace/events/error_report.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 69, i32 1 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 108, i32 2 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @kfence_report_error._entry, ptr @kfence_report_error._entry.10, ptr @kfence_report_error._entry.15, ptr @kfence_report_error._entry.18, ptr @kfence_report_error._entry.21, ptr @kfence_report_error._entry.24, ptr @kfence_report_error._entry.27, ptr @kfence_report_error._entry.30, ptr @kfence_report_error._entry.33, ptr @kfence_report_error._entry.36, ptr @kfence_report_error._entry.39, ptr @kfence_report_error._entry.42, ptr @kfence_report_error._entry.45, ptr @kfence_report_error._entry.48, ptr @kfence_report_error._entry.7, ptr @kfence_report_error._entry_ptr, ptr @kfence_report_error._entry_ptr.12, ptr @kfence_report_error._entry_ptr.17, ptr @kfence_report_error._entry_ptr.20, ptr @kfence_report_error._entry_ptr.23, ptr @kfence_report_error._entry_ptr.26, ptr @kfence_report_error._entry_ptr.29, ptr @kfence_report_error._entry_ptr.32, ptr @kfence_report_error._entry_ptr.35, ptr @kfence_report_error._entry_ptr.38, ptr @kfence_report_error._entry_ptr.41, ptr @kfence_report_error._entry_ptr.44, ptr @kfence_report_error._entry_ptr.46, ptr @kfence_report_error._entry_ptr.49, ptr @kfence_report_error._entry_ptr.9, ptr @print_diff_canary._entry, ptr @print_diff_canary._entry.70, ptr @print_diff_canary._entry.73, ptr @print_diff_canary._entry.76, ptr @print_diff_canary._entry.79, ptr @print_diff_canary._entry_ptr, ptr @print_diff_canary._entry_ptr.72, ptr @print_diff_canary._entry_ptr.75, ptr @print_diff_canary._entry_ptr.78, ptr @print_diff_canary._entry_ptr.81, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kfence_report_error._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_diff_canary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_diff_canary._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_diff_canary._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_diff_canary._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_diff_canary._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kfence_print_object(ptr noundef %seq, ptr noundef %meta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %size1 = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 5
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  %2 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %addr = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 4
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr, align 8
  %cache2 = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 6
  %5 = ptrtoint ptr %cache2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cache2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 2, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !148

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp28 = icmp eq i32 %9, 0
  %sub.ptr.lhs.cast = ptrtoint ptr %meta to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @kfence_metadata to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 648
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_con_printf(ptr noundef %seq, ptr noundef nonnull @.str.1, i32 noundef %sub.ptr.div)
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %10 = inttoptr i32 %4 to ptr
  %add = add i32 %2, -1
  %sub34 = add i32 %add, %4
  %11 = inttoptr i32 %sub34 to ptr
  %tobool35.not = icmp eq ptr %6, null
  br i1 %tobool35.not, label %if.end30.cond.end40_crit_edge, label %land.lhs.true

if.end30.cond.end40_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end40

land.lhs.true:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.kmem_cache, ptr %6, i32 0, i32 18
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %tobool36.not = icmp eq ptr %13, null
  %spec.select = select i1 %tobool36.not, ptr @.str.3, ptr %13
  br label %cond.end40

cond.end40:                                       ; preds = %land.lhs.true, %if.end30.cond.end40_crit_edge
  %cond41 = phi ptr [ @.str.3, %if.end30.cond.end40_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void (ptr, ptr, ...) @seq_con_printf(ptr noundef %seq, ptr noundef nonnull @.str.2, i32 noundef %sub.ptr.div, ptr noundef %10, ptr noundef %11, i32 noundef %2, ptr noundef nonnull %cond41)
  tail call fastcc void @kfence_print_stack(ptr noundef %seq, ptr noundef %meta, i1 noundef zeroext true)
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp43 = icmp eq i32 %15, 2
  br i1 %cmp43, label %if.then44, label %cond.end40.cleanup_crit_edge

cond.end40.cleanup_crit_edge:                     ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then44:                                        ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_con_printf(ptr noundef %seq, ptr noundef nonnull @.str.4)
  tail call fastcc void @kfence_print_stack(ptr noundef %seq, ptr noundef %meta, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %cond.end40.cleanup_crit_edge, %if.then29
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seq_con_printf(ptr noundef %seq, ptr noundef %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !149
  call void @llvm.va_start(ptr nonnull %args)
  %tobool.not = icmp eq ptr %seq, null
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load3 = load i32, ptr %args, align 4
  %.fca.0.insert4 = insertvalue [1 x i32] poison, i32 %.fca.0.load3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @seq_vprintf(ptr noundef nonnull %seq, ptr noundef %fmt, [1 x i32] %.fca.0.insert4) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 @vprintk(ptr noundef %fmt, [1 x i32] %.fca.0.insert4) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kfence_print_stack(ptr noundef %seq, ptr nocapture noundef readonly %meta, i1 noundef zeroext %show_alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_track = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 8
  %free_track = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 9
  %cond = select i1 %show_alloc, ptr %alloc_track, ptr %free_track
  %ts_nsec = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 2
  %0 = ptrtoint ptr %ts_nsec to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts_nsec, align 8
  %conv18 = trunc i64 %1 to i32
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %1, i32 0) #14, !srcloc !150
  %asmresult.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %1, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !151
  %asmresult10.i = extractvalue { i64, i32 } %3, 0
  %div163296 = lshr i64 %asmresult10.i, 29
  %conv164 = trunc i64 %div163296 to i32
  %mul165.neg = mul i32 %conv164, -1000000000
  %sub166 = add i32 %mul165.neg, %conv18
  %cond187 = select i1 %show_alloc, ptr @.str.52, ptr @.str.53
  %4 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cond, align 8
  %cpu = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 1
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %div189 = udiv i32 %sub166, 1000
  tail call void (ptr, ptr, ...) @seq_con_printf(ptr noundef %seq, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond187, i32 noundef %5, i32 noundef %7, i32 noundef %conv164, i32 noundef %div189)
  %num_stack_entries = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 3
  %8 = ptrtoint ptr %num_stack_entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_stack_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool190.not = icmp eq i32 %9, 0
  br i1 %tobool190.not, label %if.else198, label %if.then191

if.then191:                                       ; preds = %entry
  %stack_entries = getelementptr inbounds %struct.kfence_track, ptr %cond, i32 0, i32 4
  %call193 = tail call fastcc i32 @get_stack_skipnr(ptr noundef %stack_entries, i32 noundef %9, ptr noundef null)
  %10 = ptrtoint ptr %num_stack_entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_stack_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call193, i32 %11)
  %cmp195297 = icmp slt i32 %call193, %11
  br i1 %cmp195297, label %if.then191.for.body_crit_edge, label %if.then191.if.end202_crit_edge

if.then191.if.end202_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

if.then191.for.body_crit_edge:                    ; preds = %if.then191
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then191.for.body_crit_edge
  %i.0298 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %call193, %if.then191.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kfence_track, ptr %cond, i32 0, i32 4, i32 %i.0298
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = inttoptr i32 %13 to ptr
  tail call void (ptr, ptr, ...) @seq_con_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, ptr noundef %14)
  %inc = add nsw i32 %i.0298, 1
  %15 = ptrtoint ptr %num_stack_entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_stack_entries, align 8
  %cmp195 = icmp slt i32 %inc, %16
  br i1 %cmp195, label %for.body.for.body_crit_edge, label %for.body.if.end202_crit_edge

for.body.if.end202_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end202

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.else198:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cond201 = select i1 %show_alloc, ptr @.str.56, ptr @.str.57
  tail call void (ptr, ptr, ...) @seq_con_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond201)
  br label %if.end202

if.end202:                                        ; preds = %if.else198, %for.body.if.end202_crit_edge, %if.then191.if.end202_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kfence_report_error(i32 noundef %address, i1 noundef zeroext %is_write, ptr noundef %regs, ptr noundef %meta, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %type.addr = alloca i32, align 4
  %stack_entries = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %type.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %stack_entries) #11
  %1 = call ptr @memset(ptr %stack_entries, i32 0, i32 256)
  %tobool.not = icmp eq ptr %meta, null
  %sub.ptr.lhs.cast = ptrtoint ptr %meta to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @kfence_metadata to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 648
  %cond = select i1 %tobool.not, i32 -1, i32 %sub.ptr.div
  %tobool1.not = icmp eq ptr %regs, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = call i32 @stack_trace_save_regs(ptr noundef nonnull %regs, ptr noundef nonnull %stack_entries, i32 noundef 64, i32 noundef 0) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 @stack_trace_save(ptr noundef nonnull %stack_entries, i32 noundef 64, i32 noundef 1) #11
  %call5 = call fastcc i32 @get_stack_skipnr(ptr noundef nonnull %stack_entries, i32 noundef %call3, ptr noundef nonnull %type.addr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %skipnr.0 = phi i32 [ 0, %if.then ], [ %call5, %if.else ]
  %num_stack_entries.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  %2 = ptrtoint ptr %type.addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp ne i32 %3, 3
  %spec.select = and i1 %tobool.not, %cmp.not
  br i1 %spec.select, label %do.end, label %if.end31, !prof !148

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 196, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end
  br i1 %tobool.not, label %if.end31.do.body75_crit_edge, label %do.body34

if.end31.do.body75_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body75

do.body34:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool36.not = icmp eq i32 %4, 0
  br i1 %tobool36.not, label %do.body34.do.body75_crit_edge, label %land.rhs37

do.body34.do.body75_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body75

land.rhs37:                                       ; preds = %do.body34
  %dep_map = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 2, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39.not = icmp eq i32 %call.i, 0
  br i1 %cmp39.not, label %do.end58, label %land.rhs37.do.body75_crit_edge, !prof !148

land.rhs37.do.body75_crit_edge:                   ; preds = %land.rhs37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body75

do.end58:                                         ; preds = %land.rhs37
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef null) #11
  br label %do.body75

do.body75:                                        ; preds = %do.end58, %land.rhs37.do.body75_crit_edge, %do.body34.do.body75_crit_edge, %if.end31.do.body75_crit_edge
  %5 = call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %lockdep_recursion = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 143
  %9 = ptrtoint ptr %lockdep_recursion to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lockdep_recursion, align 4
  %add = add i32 %10, 65536
  store i32 %add, ptr %lockdep_recursion, align 4
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  %11 = ptrtoint ptr %type.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.addr, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.body75.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end113
    i32 2, label %do.end129
    i32 3, label %do.end146
    i32 4, label %do.end162
  ]

do.body75.sw.epilog_crit_edge:                    ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 4
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %address)
  %cmp84 = icmp ugt i32 %15, %address
  %cond.i = select i1 %is_write, ptr @.str.66, ptr @.str.67
  %arrayidx = getelementptr [64 x i32], ptr %stack_entries, i32 0, i32 %skipnr.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %18 = inttoptr i32 %17 to ptr
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %cond.i, ptr noundef %18) #15
  %19 = inttoptr i32 %address to ptr
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 8
  %sub104 = sub i32 %address, %21
  %sub = sub i32 %21, %address
  %cond108 = select i1 %cmp84, ptr @.str.13, ptr @.str.14
  %cond106 = select i1 %cmp84, i32 %sub, i32 %sub104
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %cond.i, ptr noundef %19, i32 noundef %cond106, ptr noundef nonnull %cond108, i32 noundef %cond) #15
  br label %sw.epilog

do.end113:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i250 = select i1 %is_write, ptr @.str.66, ptr @.str.67
  %arrayidx117 = getelementptr [64 x i32], ptr %stack_entries, i32 0, i32 %skipnr.0
  %22 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx117, align 4
  %24 = inttoptr i32 %23 to ptr
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %cond.i250, ptr noundef %24) #15
  %25 = inttoptr i32 %address to ptr
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %cond.i250, ptr noundef %25, i32 noundef %cond) #15
  br label %sw.epilog

do.end129:                                        ; preds = %do.body75
  %arrayidx131 = getelementptr [64 x i32], ptr %stack_entries, i32 0, i32 %skipnr.0
  %26 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx131, align 4
  %28 = inttoptr i32 %27 to ptr
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %28) #15
  %29 = inttoptr i32 %address to ptr
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %29) #15
  %add.i = add i32 %address, 16
  %addr.i = getelementptr inbounds %struct.kfence_metadata, ptr %meta, i32 0, i32 4
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %address)
  %cmp.i = icmp ugt i32 %31, %address
  %add5.i = add i32 %address, 4095
  %and.i252 = and i32 %add5.i, -4096
  %and.sink.i = select i1 %cmp.i, i32 %31, i32 %and.i252
  %32 = call i32 @llvm.umin.i32(i32 %add.i, i32 %and.sink.i) #11
  %33 = inttoptr i32 %32 to ptr
  %call.i253 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #15
  %cmp151.i = icmp ult ptr %29, %33
  br i1 %cmp151.i, label %for.body.preheader.i, label %do.end129.print_diff_canary.exit_crit_edge

do.end129.print_diff_canary.exit_crit_edge:       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_diff_canary.exit

for.body.preheader.i:                             ; preds = %do.end129
  %34 = sub i32 %32, %address
  %uglygep.i = getelementptr i8, ptr %29, i32 %34
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %cur.02.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %29, %for.body.preheader.i ]
  %35 = ptrtoint ptr %cur.02.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cur.02.i, align 1
  %conv.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %cur.02.i to i32
  %conv17.i = and i32 %37, 7
  %xor.i = xor i32 %conv17.i, 170
  call void @__sanitizer_cov_trace_cmp4(i32 %xor.i, i32 %conv.i)
  %cmp19.i = icmp eq i32 %xor.i, %conv.i
  br i1 %cmp19.i, label %do.end23.i, label %if.else.i

do.end23.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #15
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @no_hash_pointers to i32))
  %38 = load i8, ptr @no_hash_pointers, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i, label %do.end36.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv.i) #15
  br label %for.inc.i

do.end36.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end36.i, %do.end29.i, %do.end23.i
  %incdec.ptr.i = getelementptr i8, ptr %cur.02.i, i32 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %uglygep.i
  br i1 %exitcond.not.i, label %for.inc.i.print_diff_canary.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.print_diff_canary.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_diff_canary.exit

print_diff_canary.exit:                           ; preds = %for.inc.i.print_diff_canary.exit_crit_edge, %do.end129.print_diff_canary.exit_crit_edge
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #15
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %cond) #15
  br label %sw.epilog

do.end146:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i254 = select i1 %is_write, ptr @.str.66, ptr @.str.67
  %arrayidx150 = getelementptr [64 x i32], ptr %stack_entries, i32 0, i32 %skipnr.0
  %39 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx150, align 4
  %41 = inttoptr i32 %40 to ptr
  %call151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %cond.i254, ptr noundef %41) #15
  %42 = inttoptr i32 %address to ptr
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %cond.i254, ptr noundef %42) #15
  br label %sw.epilog

do.end162:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx164 = getelementptr [64 x i32], ptr %stack_entries, i32 0, i32 %skipnr.0
  %43 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx164, align 4
  %45 = inttoptr i32 %44 to ptr
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %45) #15
  %46 = inttoptr i32 %address to ptr
  %call170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %46, i32 noundef %cond) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end162, %do.end146, %print_diff_canary.exit, %do.end113, %sw.bb, %do.body75.sw.epilog_crit_edge
  %add.ptr = getelementptr i32, ptr %stack_entries, i32 %skipnr.0
  %sub172 = sub i32 %num_stack_entries.0, %skipnr.0
  call void @stack_trace_print(ptr noundef %add.ptr, i32 noundef %sub172, i32 noundef 0) #11
  br i1 %tobool.not, label %sw.epilog.do.end183_crit_edge, label %do.end177

sw.epilog.do.end183_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end183

do.end177:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  call void @kfence_print_object(ptr noundef null, ptr noundef nonnull %meta)
  br label %do.end183

do.end183:                                        ; preds = %do.end177, %sw.epilog.do.end183_crit_edge
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #15
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @no_hash_pointers to i32))
  %47 = load i8, ptr @no_hash_pointers, align 1, !range !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool186.not = icmp eq i8 %47, 0
  %brmerge = or i1 %tobool1.not, %tobool186.not
  br i1 %brmerge, label %if.else189, label %if.then188

if.then188:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #13
  call void @show_regs(ptr noundef nonnull %regs) #11
  br label %if.end190

if.else189:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_stack_print_info(ptr noundef nonnull @.str.47) #11
  br label %if.end190

if.end190:                                        ; preds = %if.else189, %if.then188
  call fastcc void @trace_error_report_end(i32 noundef %address)
  %call195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  %48 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %task, align 8
  %lockdep_recursion199 = getelementptr inbounds %struct.task_struct, ptr %49, i32 0, i32 143
  %50 = ptrtoint ptr %lockdep_recursion199 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lockdep_recursion199, align 4
  %sub200 = add i32 %51, -65536
  store i32 %sub200, ptr %lockdep_recursion199, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @panic_on_warn to i32))
  %52 = load i32, ptr @panic_on_warn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool203.not = icmp eq i32 %52, 0
  br i1 %tobool203.not, label %if.end205, label %if.then204

if.then204:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.50) #16
  unreachable

if.end205:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #13
  call void @add_taint(i32 noundef 5, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end205, %do.end
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %stack_entries) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save_regs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_stack_skipnr(ptr nocapture noundef readonly %stack_entries, i32 noundef %num_entries, ptr noundef readonly %type) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #11
  %0 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %tobool.not = icmp eq ptr %type, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %2, label %if.then.if.end_crit_edge [
    i32 1, label %if.then.cleanup36_crit_edge
    i32 0, label %if.then.cleanup36_crit_edge93
    i32 3, label %if.then.cleanup36_crit_edge94
  ]

if.then.cleanup36_crit_edge94:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then.cleanup36_crit_edge93:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then.cleanup36_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %cmp79 = icmp sgt i32 %num_entries, 0
  br i1 %cmp79, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %fallback.081 = phi i32 [ %fallback.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %skipnr.080 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %stack_entries, i32 %skipnr.080
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = inttoptr i32 %5 to ptr
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.58, ptr noundef %6) #11
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.59, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.i.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.i.not, label %for.body.if.then12_crit_edge, label %lor.lhs.false

for.body.if.then12_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %for.body
  %bcmp75 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.60, i32 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp75)
  %cmp.i52.not = icmp eq i32 %bcmp75, 0
  br i1 %cmp.i52.not, label %lor.lhs.false.if.then12_crit_edge, label %lor.lhs.false8

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %call10 = call i32 @strncmp(ptr noundef nonnull %buf, ptr noundef nonnull @.str.61, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false8.if.then12_crit_edge, label %lor.lhs.false8.if.end13_crit_edge

lor.lhs.false8.if.end13_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

lor.lhs.false8.if.then12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false8.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge, %for.body.if.then12_crit_edge
  %add = add nuw nsw i32 %skipnr.080, 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false8.if.end13_crit_edge
  %fallback.1 = phi i32 [ %add, %if.then12 ], [ %fallback.081, %lor.lhs.false8.if.end13_crit_edge ]
  %bcmp71 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.62, i32 5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp71)
  %cmp.i56.not = icmp eq i32 %bcmp71, 0
  br i1 %cmp.i56.not, label %if.end13.found_crit_edge, label %lor.lhs.false17

if.end13.found_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

lor.lhs.false17:                                  ; preds = %if.end13
  %bcmp72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %buf, ptr noundef nonnull dereferenceable(15) @.str.63, i32 15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp72)
  %cmp.i60.not = icmp eq i32 %bcmp72, 0
  br i1 %cmp.i60.not, label %lor.lhs.false17.found_crit_edge, label %lor.lhs.false21

lor.lhs.false17.found_crit_edge:                  ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %bcmp73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %buf, ptr noundef nonnull dereferenceable(9) @.str.64, i32 9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp73)
  %cmp.i64.not = icmp eq i32 %bcmp73, 0
  br i1 %cmp.i64.not, label %lor.lhs.false21.found_crit_edge, label %lor.lhs.false25

lor.lhs.false21.found_crit_edge:                  ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %bcmp74 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %buf, ptr noundef nonnull dereferenceable(16) @.str.65, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp74)
  %cmp.i68.not = icmp eq i32 %bcmp74, 0
  br i1 %cmp.i68.not, label %lor.lhs.false25.found_crit_edge, label %for.inc

lor.lhs.false25.found_crit_edge:                  ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

for.inc:                                          ; preds = %lor.lhs.false25
  %inc = add nuw nsw i32 %skipnr.080, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %skipnr.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %num_entries, %for.inc.for.end_crit_edge ]
  %fallback.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %fallback.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fallback.0.lcssa, i32 %num_entries)
  %cmp31 = icmp slt i32 %fallback.0.lcssa, %num_entries
  br i1 %cmp31, label %for.end.cleanup36_crit_edge, label %for.end.found_crit_edge

for.end.found_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %found

for.end.cleanup36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

found:                                            ; preds = %for.end.found_crit_edge, %lor.lhs.false25.found_crit_edge, %lor.lhs.false21.found_crit_edge, %lor.lhs.false17.found_crit_edge, %if.end13.found_crit_edge
  %skipnr.078 = phi i32 [ %skipnr.0.lcssa, %for.end.found_crit_edge ], [ %skipnr.080, %lor.lhs.false21.found_crit_edge ], [ %skipnr.080, %lor.lhs.false17.found_crit_edge ], [ %skipnr.080, %if.end13.found_crit_edge ], [ %skipnr.080, %lor.lhs.false25.found_crit_edge ]
  %inc34 = add nuw i32 %skipnr.078, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc34, i32 %num_entries)
  %cmp35 = icmp slt i32 %inc34, %num_entries
  %spec.select = select i1 %cmp35, i32 %inc34, i32 0
  br label %cleanup36

cleanup36:                                        ; preds = %found, %for.end.cleanup36_crit_edge, %if.then.cleanup36_crit_edge, %if.then.cleanup36_crit_edge93, %if.then.cleanup36_crit_edge94
  %retval.0 = phi i32 [ %spec.select, %found ], [ 0, %if.then.cleanup36_crit_edge ], [ 0, %if.then.cleanup36_crit_edge93 ], [ 0, %if.then.cleanup36_crit_edge94 ], [ %fallback.0.lcssa, %for.end.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_trace_print(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_stack_print_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_error_report_end(i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 1), ptr blockaddress(@trace_error_report_end, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !153

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !138) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !154

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %call42 = tail call i32 @__traceiter_error_report_end(ptr noundef null, i32 noundef 0, i32 noundef %id) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !156
  %13 = tail call i32 @llvm.read_register.i32(metadata !138) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !138) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !154

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !138) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_error_report_end.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_error_report_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.82, i32 noundef 71, ptr noundef nonnull @.str.83) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !158
  %31 = tail call i32 @llvm.read_register.i32(metadata !138) #11
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

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_vprintf(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_error_report_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137}
!llvm.named.register.sp = !{!138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/kfence/report.c", i32 130, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/kfence/report.c", i32 133, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/kfence/report.c", i32 137, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/kfence/report.c", i32 139, i32 55}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/kfence/report.c", i32 144, i32 23}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/kfence/report.c", i32 212, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @kfence_report_error._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @kfence_report_error._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../mm/kfence/report.c", i32 218, i32 3}
!17 = !{ptr @kfence_report_error._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @kfence_report_error._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/kfence/report.c", i32 220, i32 3}
!21 = !{ptr @kfence_report_error._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @kfence_report_error._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../mm/kfence/report.c", i32 227, i32 3}
!27 = !{ptr @kfence_report_error._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @kfence_report_error._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../mm/kfence/report.c", i32 229, i32 3}
!31 = !{ptr @kfence_report_error._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @kfence_report_error._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../mm/kfence/report.c", i32 233, i32 3}
!35 = !{ptr @kfence_report_error._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @kfence_report_error._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../mm/kfence/report.c", i32 234, i32 3}
!39 = !{ptr @kfence_report_error._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @kfence_report_error._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../mm/kfence/report.c", i32 236, i32 3}
!43 = !{ptr @kfence_report_error._entry.27, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @kfence_report_error._entry_ptr.29, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.31, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../mm/kfence/report.c", i32 239, i32 3}
!47 = !{ptr @kfence_report_error._entry.30, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @kfence_report_error._entry_ptr.32, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../mm/kfence/report.c", i32 241, i32 3}
!51 = !{ptr @kfence_report_error._entry.33, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @kfence_report_error._entry_ptr.35, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../mm/kfence/report.c", i32 245, i32 3}
!55 = !{ptr @kfence_report_error._entry.36, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @kfence_report_error._entry_ptr.38, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../mm/kfence/report.c", i32 246, i32 3}
!59 = !{ptr @kfence_report_error._entry.39, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @kfence_report_error._entry_ptr.41, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/kfence/report.c", i32 255, i32 3}
!63 = !{ptr @kfence_report_error._entry.42, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @kfence_report_error._entry_ptr.44, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @kfence_report_error._entry.45, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../mm/kfence/report.c", i32 260, i32 2}
!67 = !{ptr @kfence_report_error._entry_ptr.46, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.47, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../mm/kfence/report.c", i32 264, i32 25}
!70 = !{ptr @kfence_report_error._entry.48, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../mm/kfence/report.c", i32 266, i32 2}
!72 = !{ptr @kfence_report_error._entry_ptr.49, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.50, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../mm/kfence/report.c", i32 271, i32 9}
!75 = !{ptr @.str.51, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../mm/kfence/report.c", i32 108, i32 22}
!77 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../mm/kfence/report.c", i32 109, i32 23}
!79 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../mm/kfence/report.c", i32 109, i32 37}
!81 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../mm/kfence/report.c", i32 118, i32 24}
!83 = !{ptr @.str.55, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../mm/kfence/report.c", i32 120, i32 23}
!85 = !{ptr @.str.56, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../mm/kfence/report.c", i32 120, i32 54}
!87 = !{ptr @.str.57, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../mm/kfence/report.c", i32 120, i32 69}
!89 = !{ptr @.str.58, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../mm/kfence/report.c", i32 74, i32 41}
!91 = !{ptr @.str.59, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../mm/kfence/report.c", i32 76, i32 27}
!93 = !{ptr @.str.60, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../mm/kfence/report.c", i32 77, i32 27}
!95 = !{ptr @.str.61, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../mm/kfence/report.c", i32 78, i32 21}
!97 = !{ptr @.str.62, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../mm/kfence/report.c", i32 87, i32 27}
!99 = !{ptr @.str.63, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../mm/kfence/report.c", i32 88, i32 27}
!101 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../mm/kfence/report.c", i32 89, i32 27}
!103 = !{ptr @.str.65, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../mm/kfence/report.c", i32 90, i32 27}
!105 = !{ptr @.str.66, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../mm/kfence/report.c", i32 177, i32 20}
!107 = !{ptr @.str.67, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../mm/kfence/report.c", i32 177, i32 30}
!109 = !{ptr @.str.68, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../mm/kfence/report.c", i32 163, i32 2}
!111 = !{ptr @.str.69, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @print_diff_canary._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @print_diff_canary._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../mm/kfence/report.c", i32 166, i32 4}
!116 = !{ptr @print_diff_canary._entry.70, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @print_diff_canary._entry_ptr.72, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../mm/kfence/report.c", i32 168, i32 4}
!120 = !{ptr @print_diff_canary._entry.73, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @print_diff_canary._entry_ptr.75, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../mm/kfence/report.c", i32 170, i32 4}
!124 = !{ptr @print_diff_canary._entry.76, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @print_diff_canary._entry_ptr.78, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.80, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../mm/kfence/report.c", i32 172, i32 2}
!128 = !{ptr @print_diff_canary._entry.79, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @print_diff_canary._entry_ptr.81, !127, !"_entry_ptr", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/trace/events/error_report.h", i32 69, i32 1}
!132 = !{ptr @.str.82, !131, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!134 = !{ptr @.str.83, !131, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!137 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!138 = !{!"sp"}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 1, i32 2000}
!149 = !{!"auto-init"}
!150 = !{i64 1121332, i64 1121359, i64 1121381, i64 1121409}
!151 = !{i64 1121740, i64 1121767, i64 1121800, i64 1121821, i64 1121848, i64 1121874}
!152 = !{i8 0, i8 2}
!153 = !{i64 2148698157, i64 2148698162, i64 2148698175, i64 2148698219, i64 2148698253, i64 2148698274}
!154 = !{!"branch_weights", i32 2000, i32 1}
!155 = !{i64 2153088426}
!156 = !{i64 2153088657}
!157 = !{i64 2149540673}
!158 = !{i64 2149541709}
