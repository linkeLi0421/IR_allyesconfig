; ModuleID = '/llk/IR_all_yes/mm/mempool.c_pt.bc'
source_filename = "../mm/mempool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mempool_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_exit\09\09\09\09"
module asm "\09.long\09__crc_mempool_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_destroy\09\09\09\09"
module asm "\09.long\09__crc_mempool_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_init_node\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_init_node\09\09\09\09"
module asm "\09.long\09__crc_mempool_init_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_init_node\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_init\09\09\09\09"
module asm "\09.long\09__crc_mempool_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_init\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_create\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_create\09\09\09\09"
module asm "\09.long\09__crc_mempool_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_create\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_create_node\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_create_node\09\09\09\09"
module asm "\09.long\09__crc_mempool_create_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_create_node:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_create_node\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_create_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_resize\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_resize\09\09\09\09"
module asm "\09.long\09__crc_mempool_resize\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_resize\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_alloc\09\09\09\09"
module asm "\09.long\09__crc_mempool_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_free\09\09\09\09"
module asm "\09.long\09__crc_mempool_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_free\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_alloc_slab\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_alloc_slab\09\09\09\09"
module asm "\09.long\09__crc_mempool_alloc_slab\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_alloc_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_alloc_slab\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_alloc_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_free_slab\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_free_slab\09\09\09\09"
module asm "\09.long\09__crc_mempool_free_slab\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_free_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_free_slab\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_free_slab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_kmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_kmalloc\09\09\09\09"
module asm "\09.long\09__crc_mempool_kmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_kfree\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_kfree\09\09\09\09"
module asm "\09.long\09__crc_mempool_kfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_kfree\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_alloc_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_alloc_pages\09\09\09\09"
module asm "\09.long\09__crc_mempool_alloc_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_alloc_pages\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mempool_free_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_mempool_free_pages\09\09\09\09"
module asm "\09.long\09__crc_mempool_free_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mempool_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22mempool_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_mempool_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kasan_cache = type { i32, i32, i8 }

@__kstrtab_mempool_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_exit to i32), ptr @__kstrtab_mempool_exit, ptr @__kstrtabns_mempool_exit }, section "___ksymtab+mempool_exit", align 4
@__kstrtab_mempool_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_destroy to i32), ptr @__kstrtab_mempool_destroy, ptr @__kstrtabns_mempool_destroy }, section "___ksymtab+mempool_destroy", align 4
@mempool_init_node.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->lock\00", [20 x i8] zeroinitializer }, align 32
@mempool_init_node.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pool->wait\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_mempool_init_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_init_node = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_init_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_init_node to i32), ptr @__kstrtab_mempool_init_node, ptr @__kstrtabns_mempool_init_node }, section "___ksymtab+mempool_init_node", align 4
@__kstrtab_mempool_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_init to i32), ptr @__kstrtab_mempool_init, ptr @__kstrtabns_mempool_init }, section "___ksymtab+mempool_init", align 4
@__kstrtab_mempool_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_create = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_create to i32), ptr @__kstrtab_mempool_create, ptr @__kstrtabns_mempool_create }, section "___ksymtab+mempool_create", align 4
@__kstrtab_mempool_create_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_create_node = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_create_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_create_node to i32), ptr @__kstrtab_mempool_create_node, ptr @__kstrtabns_mempool_create_node }, section "___ksymtab+mempool_create_node", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/mempool.c\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_mempool_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_resize to i32), ptr @__kstrtab_mempool_resize, ptr @__kstrtabns_mempool_resize }, section "___ksymtab+mempool_resize", align 4
@mempool_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_mempool_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_alloc to i32), ptr @__kstrtab_mempool_alloc, ptr @__kstrtabns_mempool_alloc }, section "___ksymtab+mempool_alloc", align 4
@__kstrtab_mempool_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_free to i32), ptr @__kstrtab_mempool_free, ptr @__kstrtabns_mempool_free }, section "___ksymtab+mempool_free", align 4
@__kstrtab_mempool_alloc_slab = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_alloc_slab = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_alloc_slab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_alloc_slab to i32), ptr @__kstrtab_mempool_alloc_slab, ptr @__kstrtabns_mempool_alloc_slab }, section "___ksymtab+mempool_alloc_slab", align 4
@__kstrtab_mempool_free_slab = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_free_slab = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_free_slab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_free_slab to i32), ptr @__kstrtab_mempool_free_slab, ptr @__kstrtabns_mempool_free_slab }, section "___ksymtab+mempool_free_slab", align 4
@__kstrtab_mempool_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_kmalloc to i32), ptr @__kstrtab_mempool_kmalloc, ptr @__kstrtabns_mempool_kmalloc }, section "___ksymtab+mempool_kmalloc", align 4
@__kstrtab_mempool_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_kfree to i32), ptr @__kstrtab_mempool_kfree, ptr @__kstrtabns_mempool_kfree }, section "___ksymtab+mempool_kfree", align 4
@__kstrtab_mempool_alloc_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_alloc_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_alloc_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_alloc_pages to i32), ptr @__kstrtab_mempool_alloc_pages, ptr @__kstrtabns_mempool_alloc_pages }, section "___ksymtab+mempool_alloc_pages", align 4
@__kstrtab_mempool_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mempool_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_mempool_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mempool_free_pages to i32), ptr @__kstrtab_mempool_free_pages, ptr @__kstrtabns_mempool_free_pages }, section "___ksymtab+mempool_free_pages", align 4
@poison_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013BUG: mempool element poison mismatch\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"poison_error\00", [19 x i8] zeroinitializer }, align 32
@poison_error._entry_ptr = internal global ptr @poison_error._entry, section ".printk_index", align 4
@poison_error._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Mempool %p size %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@poison_error._entry_ptr.8 = internal global ptr @poison_error._entry.6, section ".printk_index", align 4
@poison_error._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013 nr=%d @ %p: %s0x\00", [44 x i8] zeroinitializer }, align 32
@poison_error._entry_ptr.11 = internal global ptr @poison_error._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"... \00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@poison_error._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.3, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%x \00", [26 x i8] zeroinitializer }, align 32
@poison_error._entry_ptr.16 = internal global ptr @poison_error._entry.14, section ".printk_index", align 4
@poison_error._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.3, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s\0A\00", [26 x i8] zeroinitializer }, align 32
@poison_error._entry_ptr.19 = internal global ptr @poison_error._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"...\00", [28 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 183, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 188, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 305, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 32, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 33, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 34, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 36, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [16 x i8] c"../mm/mempool.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 37, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_mempool_alloc, ptr @__ksymtab_mempool_alloc_pages, ptr @__ksymtab_mempool_alloc_slab, ptr @__ksymtab_mempool_create, ptr @__ksymtab_mempool_create_node, ptr @__ksymtab_mempool_destroy, ptr @__ksymtab_mempool_exit, ptr @__ksymtab_mempool_free, ptr @__ksymtab_mempool_free_pages, ptr @__ksymtab_mempool_free_slab, ptr @__ksymtab_mempool_init, ptr @__ksymtab_mempool_init_node, ptr @__ksymtab_mempool_kfree, ptr @__ksymtab_mempool_kmalloc, ptr @__ksymtab_mempool_resize, ptr @poison_error._entry, ptr @poison_error._entry.14, ptr @poison_error._entry.17, ptr @poison_error._entry.6, ptr @poison_error._entry.9, ptr @poison_error._entry_ptr, ptr @poison_error._entry_ptr.11, ptr @poison_error._entry_ptr.16, ptr @poison_error._entry_ptr.19, ptr @poison_error._entry_ptr.8, ptr @mempool_init_node.__key, ptr @.str, ptr @mempool_init_node.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mempool_init_node.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mempool_init_node.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poison_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poison_error._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poison_error._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poison_error._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poison_error._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mempool_exit(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not7 = icmp eq i32 %1, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %free = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 6
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call = tail call fastcc ptr @remove_element(ptr noundef %pool)
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free, align 4
  %4 = ptrtoint ptr %pool_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool_data, align 4
  tail call void %3(ptr noundef %call, ptr noundef %5) #9
  %6 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_nr, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %elements = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 3
  %8 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elements, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %elements, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @remove_element(ptr noundef %pool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %elements = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 3
  %0 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elements, align 4
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_nr, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %curr_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !76

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #9, !srcloc !77
  unreachable

do.end8:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %1, i32 %dec
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %alloc.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 5
  %6 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alloc.i, align 4
  %cmp.i = icmp eq ptr %7, @mempool_alloc_slab
  %cmp2.i = icmp eq ptr %7, @mempool_kmalloc
  %or.cond.i = or i1 %cmp.i, %cmp2.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__ksize(ptr noundef %5) #9
  tail call void @__kasan_unpoison_range(ptr noundef %5, i32 noundef %call.i) #9
  br label %kasan_unpoison_element.exit

if.else.i:                                        ; preds = %do.end8
  %cmp4.i = icmp eq ptr %7, @mempool_alloc_pages
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i.kasan_unpoison_element.exit_crit_edge

if.else.i.kasan_unpoison_element.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kasan_unpoison_element.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %pool_data.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  %8 = ptrtoint ptr %pool_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pool_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @__kasan_unpoison_pages(ptr noundef %5, i32 noundef %10, i1 noundef zeroext false) #9
  br label %kasan_unpoison_element.exit

kasan_unpoison_element.exit:                      ; preds = %if.then5.i, %if.else.i.kasan_unpoison_element.exit_crit_edge, %if.then.i
  %free.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 6
  %11 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free.i, align 4
  %cmp.i15 = icmp eq ptr %12, @mempool_free_slab
  %cmp2.i16 = icmp eq ptr %12, @mempool_kfree
  %or.cond.i17 = or i1 %cmp.i15, %cmp2.i16
  br i1 %or.cond.i17, label %if.then.i19, label %if.else.i21

if.then.i19:                                      ; preds = %kasan_unpoison_element.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i18 = tail call i32 @ksize(ptr noundef %5) #9
  tail call fastcc void @__check_element(ptr noundef %pool, ptr noundef %5, i32 noundef %call.i18) #9
  br label %check_element.exit

if.else.i21:                                      ; preds = %kasan_unpoison_element.exit
  %cmp4.i20 = icmp eq ptr %12, @mempool_free_pages
  br i1 %cmp4.i20, label %if.then5.i23, label %if.else.i21.check_element.exit_crit_edge

if.else.i21.check_element.exit_crit_edge:         ; preds = %if.else.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_element.exit

if.then5.i23:                                     ; preds = %if.else.i21
  call void @__sanitizer_cov_trace_pc() #11
  %pool_data.i22 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  %13 = ptrtoint ptr %pool_data.i22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pool_data.i22, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %16 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %16, 512
  %17 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %21 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %5, i32 noundef %or.i.i) #9
  %add.i = add i32 %15, 12
  %shl.i = shl nuw i32 1, %add.i
  tail call fastcc void @__check_element(ptr noundef %pool, ptr noundef %call.i.i.i, i32 noundef %shl.i) #9
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %27 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %32, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %33 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %check_element.exit

check_element.exit:                               ; preds = %if.then5.i23, %if.else.i21.check_element.exit_crit_edge, %if.then.i19
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mempool_destroy(ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !76

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %curr_nr.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %curr_nr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not7.i = icmp eq i32 %1, 0
  br i1 %tobool.not7.i, label %if.end.mempool_exit.exit_crit_edge, label %while.body.lr.ph.i

if.end.mempool_exit.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mempool_exit.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %free.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 6
  %pool_data.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call.i = tail call fastcc ptr @remove_element(ptr noundef nonnull %pool) #9
  %2 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free.i, align 4
  %4 = ptrtoint ptr %pool_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool_data.i, align 4
  tail call void %3(ptr noundef %call.i, ptr noundef %5) #9
  %6 = ptrtoint ptr %curr_nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curr_nr.i, align 4
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %while.body.i.mempool_exit.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.mempool_exit.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mempool_exit.exit

mempool_exit.exit:                                ; preds = %while.body.i.mempool_exit.exit_crit_edge, %if.end.mempool_exit.exit_crit_edge
  %elements.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 3
  %8 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %elements.i, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = ptrtoint ptr %elements.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %elements.i, align 4
  tail call void @kfree(ptr noundef nonnull %pool) #9
  br label %return

return:                                           ; preds = %mempool_exit.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mempool_init_node(ptr noundef %pool, i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data, i32 noundef %gfp_mask, i32 %node_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %pool, ptr noundef nonnull @.str, ptr noundef nonnull @mempool_init_node.__key, i16 noundef signext 3) #9
  %min_nr1 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 1
  %0 = ptrtoint ptr %min_nr1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %min_nr, ptr %min_nr1, align 4
  %pool_data2 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  %1 = ptrtoint ptr %pool_data2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pool_data, ptr %pool_data2, align 4
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 5
  %2 = ptrtoint ptr %alloc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %alloc_fn, ptr %alloc, align 4
  %free = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 6
  %3 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %free_fn, ptr %free, align 4
  %wait = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @mempool_init_node.__key.1) #9
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %min_nr, i32 4) #9
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kmalloc_array_node.exit.thread, label %if.end7.i, !prof !76

kmalloc_array_node.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %elements38 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 3
  %6 = ptrtoint ptr %elements38 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %elements38, align 4
  br label %return

if.end7.i:                                        ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call.i.i36 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef %gfp_mask) #12
  %elements = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 3
  %8 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i36, ptr %elements, align 4
  %tobool.not = icmp eq ptr %call.i.i36, null
  br i1 %tobool.not, label %if.end7.i.return_crit_edge, label %while.cond.preheader

if.end7.i.return_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

while.cond.preheader:                             ; preds = %if.end7.i
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %9 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %curr_nr, align 4
  %11 = ptrtoint ptr %min_nr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_nr1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp41 = icmp slt i32 %10, %12
  br i1 %cmp41, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.return_crit_edge

while.cond.preheader.return_crit_edge:            ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %13 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc, align 4
  %15 = ptrtoint ptr %pool_data2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pool_data2, align 4
  %call10 = tail call ptr %14(i32 noundef %gfp_mask, ptr noundef %16) #9
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %cleanup.thread, label %if.end16, !prof !76

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mempool_exit(ptr noundef %pool)
  br label %return

if.end16:                                         ; preds = %while.body
  %17 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %curr_nr, align 4
  %19 = ptrtoint ptr %min_nr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_nr1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not.i = icmp slt i32 %18, %20
  br i1 %cmp.not.i, label %do.end5.i, label %do.body2.i, !prof !82

do.body2.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #9, !srcloc !83
  unreachable

do.end5.i:                                        ; preds = %if.end16
  %21 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %alloc, align 4
  %cmp.i15.i = icmp eq ptr %22, @mempool_alloc_slab
  %cmp2.i16.i = icmp eq ptr %22, @mempool_kmalloc
  %or.cond.i17.i = or i1 %cmp.i15.i, %cmp2.i16.i
  br i1 %or.cond.i17.i, label %if.then.i18.i, label %if.else.i20.i

if.then.i18.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @ksize(ptr noundef nonnull %call10) #9
  %sub.i.i.i = add i32 %call.i.i, -1
  %23 = call ptr @memset(ptr %call10, i32 107, i32 %sub.i.i.i)
  %arrayidx.i.i.i = getelementptr i8, ptr %call10, i32 %sub.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -91, ptr %arrayidx.i.i.i, align 1
  br label %poison_element.exit.i

if.else.i20.i:                                    ; preds = %do.end5.i
  %cmp4.i19.i = icmp eq ptr %22, @mempool_alloc_pages
  br i1 %cmp4.i19.i, label %if.then5.i22.i, label %if.else.i20.i.poison_element.exit.i_crit_edge

if.else.i20.i.poison_element.exit.i_crit_edge:    ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poison_element.exit.i

if.then5.i22.i:                                   ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %pool_data2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pool_data2, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %28 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %28, 512
  %29 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %33 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 213
  %37 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call10, i32 noundef %or.i.i.i) #9
  %add.i.i = add i32 %27, 12
  %notmask.i.i = shl nsw i32 -1, %add.i.i
  %sub.i17.i.i = xor i32 %notmask.i.i, -1
  %39 = call ptr @memset(ptr %call.i.i.i.i, i32 107, i32 %sub.i17.i.i)
  %arrayidx.i18.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %sub.i17.i.i
  %40 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -91, ptr %arrayidx.i18.i.i, align 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %41 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 213
  %45 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %46, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %47 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %poison_element.exit.i

poison_element.exit.i:                            ; preds = %if.then5.i22.i, %if.else.i20.i.poison_element.exit.i_crit_edge, %if.then.i18.i
  %51 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %alloc, align 4
  %cmp.i.i = icmp eq ptr %52, @mempool_alloc_slab
  %cmp2.i.i = icmp eq ptr %52, @mempool_kmalloc
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %poison_element.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = tail call ptr @llvm.returnaddress(i32 0) #9
  %54 = ptrtoint ptr %53 to i32
  tail call void @__kasan_slab_free_mempool(ptr noundef nonnull %call10, i32 noundef %54) #9
  br label %cleanup

if.else.i.i:                                      ; preds = %poison_element.exit.i
  %cmp4.i.i = icmp eq ptr %52, @mempool_alloc_pages
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else.i.i.cleanup_crit_edge

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %pool_data2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pool_data2, align 4
  %57 = ptrtoint ptr %56 to i32
  tail call void @__kasan_poison_pages(ptr noundef nonnull %call10, i32 noundef %57, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i.i, %if.else.i.i.cleanup_crit_edge, %if.then.i.i
  %58 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %elements, align 4
  %60 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %curr_nr, align 4
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %curr_nr, align 4
  %arrayidx.i = getelementptr ptr, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call10, ptr %arrayidx.i, align 4
  %63 = load i32, ptr %curr_nr, align 4
  %64 = ptrtoint ptr %min_nr1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min_nr1, align 4
  %cmp = icmp slt i32 %63, %65
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.return_crit_edge

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %while.cond.preheader.return_crit_edge, %if.end7.i.return_crit_edge, %kmalloc_array_node.exit.thread
  %retval.2 = phi i32 [ -12, %if.end7.i.return_crit_edge ], [ -12, %kmalloc_array_node.exit.thread ], [ -12, %cleanup.thread ], [ 0, %while.cond.preheader.return_crit_edge ], [ 0, %cleanup.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mempool_init(ptr noundef %pool, i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mempool_init_node(ptr noundef %pool, i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data, i32 noundef 3264, i32 undef)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mempool_create(i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #13
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.mempool_create_node.exit_crit_edge, label %if.end.i

entry.mempool_create_node.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mempool_create_node.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @mempool_init_node(ptr noundef nonnull %call.i.i.i.i, i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data, i32 noundef 3264, i32 undef) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.mempool_create_node.exit_crit_edge, label %if.then3.i

if.end.i.mempool_create_node.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mempool_create_node.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i) #9
  br label %mempool_create_node.exit

mempool_create_node.exit:                         ; preds = %if.then3.i, %if.end.i.mempool_create_node.exit_crit_edge, %entry.mempool_create_node.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then3.i ], [ null, %entry.mempool_create_node.exit_crit_edge ], [ %call.i.i.i.i, %if.end.i.mempool_create_node.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mempool_create_node(i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data, i32 noundef %gfp_mask, i32 %node_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i1.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i2.i.i, !prof !82

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc_node.exit

if.end.i2.i.i:                                    ; preds = %entry
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i2.i.i.kzalloc_node.exit_crit_edge

if.end.i2.i.i.kzalloc_node.exit_crit_edge:        ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i2.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i3.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i2.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_mask, 256
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i3.i.i, i32 7
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 120) #13
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup_crit_edge, label %if.end

kzalloc_node.exit.cleanup_crit_edge:              ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kzalloc_node.exit
  %call1 = tail call i32 @mempool_init_node(ptr noundef nonnull %call.i.i.i, i32 noundef %min_nr, ptr noundef %alloc_fn, ptr noundef %free_fn, ptr noundef %pool_data, i32 noundef %gfp_mask, i32 undef)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %kzalloc_node.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ null, %kzalloc_node.exit.cleanup_crit_edge ], [ %call.i.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mempool_resize(ptr noundef %pool, i32 noundef %new_min_nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_min_nr)
  %cmp = icmp slt i32 %new_min_nr, 1
  br i1 %cmp, label %do.body2, label %do.body8, !prof !76

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.body8:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 305) #9
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool) #9
  %min_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 1
  %0 = ptrtoint ptr %min_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %new_min_nr)
  %cmp22.not = icmp slt i32 %1, %new_min_nr
  br i1 %cmp22.not, label %if.end44, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.body8
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_min_nr)
  %cmp25179 = icmp sgt i32 %3, %new_min_nr
  br i1 %cmp25179, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %free = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 6
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %flags.0180 = phi i32 [ %call17, %while.body.lr.ph ], [ %call38, %while.body.while.body_crit_edge ]
  %call27 = tail call fastcc ptr @remove_element(ptr noundef %pool)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %flags.0180) #9
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free, align 4
  %6 = ptrtoint ptr %pool_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pool_data, align 4
  tail call void %5(ptr noundef %call27, ptr noundef %7) #9
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool) #9
  %8 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curr_nr, align 4
  %cmp25 = icmp sgt i32 %9, %new_min_nr
  br i1 %cmp25, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call17, %while.cond.preheader.while.end_crit_edge ], [ %call38, %while.body.while.end_crit_edge ]
  %10 = ptrtoint ptr %min_nr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %new_min_nr, ptr %min_nr, align 4
  br label %out_unlock

if.end44:                                         ; preds = %do.body8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call17) #9
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %new_min_nr, i32 4) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end44.cleanup_crit_edge, label %if.end7.i, !prof !76

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end44
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #12
  %tobool47.not = icmp eq ptr %call8.i, null
  br i1 %tobool47.not, label %if.end7.i.cleanup_crit_edge, label %do.body51

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body51:                                        ; preds = %if.end7.i
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool) #9
  %14 = ptrtoint ptr %min_nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %new_min_nr)
  %cmp65.not = icmp slt i32 %15, %new_min_nr
  br i1 %cmp65.not, label %if.end75, label %if.then73, !prof !82

if.then73:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call59) #9
  tail call void @kfree(ptr noundef nonnull %call8.i) #9
  br label %cleanup

if.end75:                                         ; preds = %do.body51
  %elements = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 3
  %16 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %elements, align 4
  %curr_nr76 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %18 = ptrtoint ptr %curr_nr76 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curr_nr76, align 4
  %mul = shl i32 %19, 2
  %20 = call ptr @memcpy(ptr %call8.i, ptr %17, i32 %mul)
  tail call void @kfree(ptr noundef %17) #9
  %21 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i, ptr %elements, align 4
  %22 = ptrtoint ptr %min_nr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %new_min_nr, ptr %min_nr, align 4
  %23 = ptrtoint ptr %curr_nr76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %curr_nr76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %new_min_nr)
  %cmp83181 = icmp slt i32 %24, %new_min_nr
  br i1 %cmp83181, label %while.body85.lr.ph, label %if.end75.out_unlock_crit_edge

if.end75.out_unlock_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

while.body85.lr.ph:                               ; preds = %if.end75
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 5
  %pool_data87 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  br label %while.body85

while.body85:                                     ; preds = %add_element.exit.while.body85_crit_edge, %while.body85.lr.ph
  %flags.1182 = phi i32 [ %call59, %while.body85.lr.ph ], [ %call101, %add_element.exit.while.body85_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %flags.1182) #9
  %25 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %alloc, align 4
  %27 = ptrtoint ptr %pool_data87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pool_data87, align 4
  %call88 = tail call ptr %26(i32 noundef 3264, ptr noundef %28) #9
  %tobool89.not = icmp eq ptr %call88, null
  br i1 %tobool89.not, label %while.body85.cleanup_crit_edge, label %do.body93

while.body85.cleanup_crit_edge:                   ; preds = %while.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body93:                                        ; preds = %while.body85
  %call101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool) #9
  %29 = ptrtoint ptr %curr_nr76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %curr_nr76, align 4
  %31 = ptrtoint ptr %min_nr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp108 = icmp slt i32 %30, %32
  br i1 %cmp108, label %do.end5.i, label %if.else

do.end5.i:                                        ; preds = %do.body93
  %33 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alloc, align 4
  %cmp.i15.i = icmp eq ptr %34, @mempool_alloc_slab
  %cmp2.i16.i = icmp eq ptr %34, @mempool_kmalloc
  %or.cond.i17.i = or i1 %cmp.i15.i, %cmp2.i16.i
  br i1 %or.cond.i17.i, label %if.then.i18.i, label %if.else.i20.i

if.then.i18.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @ksize(ptr noundef nonnull %call88) #9
  %sub.i.i.i = add i32 %call.i.i, -1
  %35 = call ptr @memset(ptr %call88, i32 107, i32 %sub.i.i.i)
  %arrayidx.i.i.i = getelementptr i8, ptr %call88, i32 %sub.i.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -91, ptr %arrayidx.i.i.i, align 1
  br label %poison_element.exit.i

if.else.i20.i:                                    ; preds = %do.end5.i
  %cmp4.i19.i = icmp eq ptr %34, @mempool_alloc_pages
  br i1 %cmp4.i19.i, label %if.then5.i22.i, label %if.else.i20.i.poison_element.exit.i_crit_edge

if.else.i20.i.poison_element.exit.i_crit_edge:    ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poison_element.exit.i

if.then5.i22.i:                                   ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %pool_data87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pool_data87, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %40 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %40, 512
  %41 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %45 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 213
  %49 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call88, i32 noundef %or.i.i.i) #9
  %add.i.i = add i32 %39, 12
  %notmask.i.i = shl nsw i32 -1, %add.i.i
  %sub.i17.i.i = xor i32 %notmask.i.i, -1
  %51 = call ptr @memset(ptr %call.i.i.i.i, i32 107, i32 %sub.i17.i.i)
  %arrayidx.i18.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %sub.i17.i.i
  %52 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -91, ptr %arrayidx.i18.i.i, align 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %53 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %58, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %59 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %poison_element.exit.i

poison_element.exit.i:                            ; preds = %if.then5.i22.i, %if.else.i20.i.poison_element.exit.i_crit_edge, %if.then.i18.i
  %63 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %alloc, align 4
  %cmp.i.i = icmp eq ptr %64, @mempool_alloc_slab
  %cmp2.i.i = icmp eq ptr %64, @mempool_kmalloc
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %poison_element.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = tail call ptr @llvm.returnaddress(i32 0) #9
  %66 = ptrtoint ptr %65 to i32
  tail call void @__kasan_slab_free_mempool(ptr noundef nonnull %call88, i32 noundef %66) #9
  br label %add_element.exit

if.else.i.i:                                      ; preds = %poison_element.exit.i
  %cmp4.i.i = icmp eq ptr %64, @mempool_alloc_pages
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else.i.i.add_element.exit_crit_edge

if.else.i.i.add_element.exit_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_element.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %pool_data87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pool_data87, align 4
  %69 = ptrtoint ptr %68 to i32
  tail call void @__kasan_poison_pages(ptr noundef nonnull %call88, i32 noundef %69, i1 noundef zeroext false) #9
  br label %add_element.exit

add_element.exit:                                 ; preds = %if.then5.i.i, %if.else.i.i.add_element.exit_crit_edge, %if.then.i.i
  %70 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %elements, align 4
  %72 = ptrtoint ptr %curr_nr76 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %curr_nr76, align 4
  %inc.i = add i32 %73, 1
  store i32 %inc.i, ptr %curr_nr76, align 4
  %arrayidx.i = getelementptr ptr, ptr %71, i32 %73
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call88, ptr %arrayidx.i, align 4
  %75 = load i32, ptr %curr_nr76, align 4
  %76 = ptrtoint ptr %min_nr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %min_nr, align 4
  %cmp83 = icmp slt i32 %75, %77
  br i1 %cmp83, label %add_element.exit.while.body85_crit_edge, label %add_element.exit.out_unlock_crit_edge

add_element.exit.out_unlock_crit_edge:            ; preds = %add_element.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

add_element.exit.while.body85_crit_edge:          ; preds = %add_element.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body85

if.else:                                          ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call101) #9
  %free112 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 6
  %78 = ptrtoint ptr %free112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %free112, align 4
  %80 = ptrtoint ptr %pool_data87 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pool_data87, align 4
  tail call void %79(ptr noundef nonnull %call88, ptr noundef %81) #9
  br label %cleanup

out_unlock:                                       ; preds = %add_element.exit.out_unlock_crit_edge, %if.end75.out_unlock_crit_edge, %while.end
  %flags.2 = phi i32 [ %flags.0.lcssa, %while.end ], [ %call59, %if.end75.out_unlock_crit_edge ], [ %call101, %add_element.exit.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %flags.2) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.else, %while.body85.cleanup_crit_edge, %if.then73, %if.end7.i.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %out_unlock ], [ 0, %if.else ], [ 0, %if.then73 ], [ -12, %if.end44.cleanup_crit_edge ], [ 0, %while.body85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @mempool_alloc(ptr noundef %pool, i32 noundef %gfp_mask) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %and = and i32 %gfp_mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = call ptr @memset(ptr %wait, i32 255, i32 20)
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b137 = load i1, ptr @mempool_alloc.__already_done, align 1
  br i1 %.b137, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !82

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mempool_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 381, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %and37 = and i32 %gfp_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end28.do.end48_crit_edge, label %do.body40

if.end28.do.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48

do.body40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 382) #9
  br label %do.end48

do.end48:                                         ; preds = %do.body40, %if.end28.do.end48_crit_edge
  %or50 = or i32 %gfp_mask, 598016
  %and51 = and i32 %or50, -1089
  %alloc = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 5
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  %5 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc, align 4
  %7 = ptrtoint ptr %pool_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool_data, align 4
  %call143146 = call ptr %6(i32 noundef %and51, ptr noundef %8) #9
  %cmp.not144147 = icmp eq ptr %call143146, null
  br i1 %cmp.not144147, label %do.body61.lr.ph.lr.ph, label %do.end48.cleanup_crit_edge, !prof !76

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body61.lr.ph.lr.ph:                            ; preds = %do.end48
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %wait103 = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 7
  br label %do.body61.lr.ph

do.body61.lr.ph:                                  ; preds = %if.then89.do.body61.lr.ph_crit_edge, %do.body61.lr.ph.lr.ph
  %gfp_temp.0.ph148 = phi i32 [ %and51, %do.body61.lr.ph.lr.ph ], [ %or50, %if.then89.do.body61.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %gfp_temp.0.ph148, i32 %or50)
  %cmp87.not = icmp eq i32 %gfp_temp.0.ph148, %or50
  br label %do.body61

do.body61:                                        ; preds = %do.body97.do.body61_crit_edge, %do.body61.lr.ph
  %call65 = call i32 @_raw_spin_lock_irqsave(ptr noundef %pool) #9
  %9 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %curr_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool70.not = icmp eq i32 %10, 0
  br i1 %tobool70.not, label %if.end86, label %if.then77, !prof !76

if.then77:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  %call78 = call fastcc ptr @remove_element(ptr noundef %pool)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call65) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @kmemleak_update_trace(ptr noundef %call78) #9
  br label %cleanup

if.end86:                                         ; preds = %do.body61
  br i1 %cmp87.not, label %if.end91, label %if.then89

if.then89:                                        ; preds = %if.end86
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call65) #9
  %11 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alloc, align 4
  %13 = ptrtoint ptr %pool_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pool_data, align 4
  %call143 = call ptr %12(i32 noundef %or50, ptr noundef %14) #9
  %cmp.not144 = icmp eq ptr %call143, null
  br i1 %cmp.not144, label %if.then89.do.body61.lr.ph_crit_edge, label %if.then89.cleanup_crit_edge, !prof !76

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then89.do.body61.lr.ph_crit_edge:              ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61.lr.ph

if.end91:                                         ; preds = %if.end86
  br i1 %tobool38.not, label %if.then94, label %do.body97

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call65) #9
  br label %cleanup

do.body97:                                        ; preds = %if.end91
  %15 = call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %0, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %2, ptr %2, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %2, ptr %3, align 4
  %23 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %wait, align 4
  call void @prepare_to_wait(ptr noundef %wait103, ptr noundef nonnull %wait, i32 noundef 2) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call65) #9
  %call105 = call i32 @io_schedule_timeout(i32 noundef 500) #9
  call void @finish_wait(ptr noundef %wait103, ptr noundef nonnull %wait) #9
  %24 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %alloc, align 4
  %26 = ptrtoint ptr %pool_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pool_data, align 4
  %call = call ptr %25(i32 noundef %or50, ptr noundef %27) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %do.body97.do.body61_crit_edge, label %do.body97.cleanup_crit_edge, !prof !76

do.body97.cleanup_crit_edge:                      ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body97.do.body61_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61

cleanup:                                          ; preds = %do.body97.cleanup_crit_edge, %if.then94, %if.then89.cleanup_crit_edge, %if.then77, %do.end48.cleanup_crit_edge
  %retval.0 = phi ptr [ %call78, %if.then77 ], [ null, %if.then94 ], [ %call143146, %do.end48.cleanup_crit_edge ], [ %call, %do.body97.cleanup_crit_edge ], [ %call143, %if.then89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_update_trace(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mempool_free(ptr noundef %element, ptr noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %element, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end, !prof !76

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !86
  %curr_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %0 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %curr_nr, align 4
  %min_nr = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 1
  %2 = ptrtoint ptr %min_nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp8 = icmp slt i32 %1, %3
  br i1 %cmp8, label %do.body17, label %do.end.if.end39_crit_edge, !prof !76

do.end.if.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body17:                                        ; preds = %do.end
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pool) #9
  %4 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_nr, align 4
  %6 = ptrtoint ptr %min_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp27 = icmp slt i32 %5, %7
  br i1 %cmp27, label %do.end5.i, label %if.end37, !prof !82

do.end5.i:                                        ; preds = %do.body17
  %alloc.i14.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 5
  %8 = ptrtoint ptr %alloc.i14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alloc.i14.i, align 4
  %cmp.i15.i = icmp eq ptr %9, @mempool_alloc_slab
  %cmp2.i16.i = icmp eq ptr %9, @mempool_kmalloc
  %or.cond.i17.i = or i1 %cmp.i15.i, %cmp2.i16.i
  br i1 %or.cond.i17.i, label %if.then.i18.i, label %if.else.i20.i

if.then.i18.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @ksize(ptr noundef nonnull %element) #9
  %sub.i.i.i = add i32 %call.i.i, -1
  %10 = call ptr @memset(ptr %element, i32 107, i32 %sub.i.i.i)
  %arrayidx.i.i.i = getelementptr i8, ptr %element, i32 %sub.i.i.i
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -91, ptr %arrayidx.i.i.i, align 1
  br label %poison_element.exit.i

if.else.i20.i:                                    ; preds = %do.end5.i
  %cmp4.i19.i = icmp eq ptr %9, @mempool_alloc_pages
  br i1 %cmp4.i19.i, label %if.then5.i22.i, label %if.else.i20.i.poison_element.exit.i_crit_edge

if.else.i20.i.poison_element.exit.i_crit_edge:    ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poison_element.exit.i

if.then5.i22.i:                                   ; preds = %if.else.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  %pool_data.i21.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  %12 = ptrtoint ptr %pool_data.i21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool_data.i21.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !78
  %20 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %element, i32 noundef %or.i.i.i) #9
  %add.i.i = add i32 %14, 12
  %notmask.i.i = shl nsw i32 -1, %add.i.i
  %sub.i17.i.i = xor i32 %notmask.i.i, -1
  %26 = call ptr @memset(ptr %call.i.i.i.i, i32 107, i32 %sub.i17.i.i)
  %arrayidx.i18.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %sub.i17.i.i
  %27 = ptrtoint ptr %arrayidx.i18.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -91, ptr %arrayidx.i18.i.i, align 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %28 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i1.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 213
  %32 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %34 = tail call i32 @llvm.read_register.i32(metadata !66) #9
  %and.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %poison_element.exit.i

poison_element.exit.i:                            ; preds = %if.then5.i22.i, %if.else.i20.i.poison_element.exit.i_crit_edge, %if.then.i18.i
  %38 = ptrtoint ptr %alloc.i14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %alloc.i14.i, align 4
  %cmp.i.i = icmp eq ptr %39, @mempool_alloc_slab
  %cmp2.i.i = icmp eq ptr %39, @mempool_kmalloc
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %poison_element.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = tail call ptr @llvm.returnaddress(i32 0) #9
  %41 = ptrtoint ptr %40 to i32
  tail call void @__kasan_slab_free_mempool(ptr noundef nonnull %element, i32 noundef %41) #9
  br label %add_element.exit

if.else.i.i:                                      ; preds = %poison_element.exit.i
  %cmp4.i.i = icmp eq ptr %39, @mempool_alloc_pages
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else.i.i.add_element.exit_crit_edge

if.else.i.i.add_element.exit_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_element.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pool_data.i.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  %42 = ptrtoint ptr %pool_data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pool_data.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  tail call void @__kasan_poison_pages(ptr noundef nonnull %element, i32 noundef %44, i1 noundef zeroext false) #9
  br label %add_element.exit

add_element.exit:                                 ; preds = %if.then5.i.i, %if.else.i.i.add_element.exit_crit_edge, %if.then.i.i
  %elements.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 3
  %45 = ptrtoint ptr %elements.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %elements.i, align 4
  %47 = ptrtoint ptr %curr_nr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %curr_nr, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %curr_nr, align 4
  %arrayidx.i = getelementptr ptr, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %element, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call20) #9
  %wait = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

if.end37:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pool, i32 noundef %call20) #9
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %do.end.if.end39_crit_edge
  %free = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 6
  %50 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %free, align 4
  %pool_data = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 4
  %52 = ptrtoint ptr %pool_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pool_data, align 4
  tail call void %51(ptr noundef nonnull %element, ptr noundef %53) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %add_element.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mempool_alloc_slab(i32 noundef %gfp_mask, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctor = getelementptr inbounds %struct.kmem_cache, ptr %pool_data, i32 0, i32 14
  %0 = ptrtoint ptr %ctor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctor, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !82

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mempool.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 511, 0\0A.popsection", ""() #9, !srcloc !87
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %pool_data, i32 noundef %gfp_mask) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mempool_free_slab(ptr noundef %element, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kmem_cache_free(ptr noundef %pool_data, ptr noundef %element) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mempool_kmalloc(i32 noundef %gfp_mask, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool_data to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef %gfp_mask) #12
  ret ptr %call9.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mempool_kfree(ptr noundef %element, ptr nocapture readnone %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %element) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mempool_alloc_pages(i32 noundef %gfp_mask, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool_data to i32
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef %0, i32 noundef 0, ptr noundef null) #9
  ret ptr %call38.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mempool_free_pages(ptr noundef %element, ptr noundef %pool_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool_data to i32
  tail call void @__free_pages(ptr noundef %element, i32 noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kasan_unpoison_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kasan_unpoison_pages(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__check_element(ptr noundef %pool, ptr noundef %element, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp21.not = icmp eq i32 %size, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i32 %size, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.critedge.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.022, i32 %sub)
  %cmp1 = icmp ult i32 %i.022, %sub
  %arrayidx = getelementptr i8, ptr %element, i32 %i.022
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %1 to i32
  %conv3 = select i1 %cmp1, i32 107, i32 165
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv2)
  %cmp4.not = icmp eq i32 %conv3, %conv2
  br i1 %cmp4.not, label %for.inc.critedge, label %if.then

if.then:                                          ; preds = %for.body
  %curr_nr.i = getelementptr inbounds %struct.mempool_s, ptr %pool, i32 0, i32 2
  %2 = ptrtoint ptr %curr_nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_nr.i, align 4
  %sub.i = add i32 %i.022, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  %4 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #9
  %add.i = add i32 %i.022, 4
  %5 = tail call i32 @llvm.smin.i32(i32 %add.i, i32 %size) #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %pool, i32 noundef %size) #14
  %cond18.i = select i1 %cmp.i, ptr @.str.12, ptr @.str.13
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %3, ptr noundef %element, ptr noundef nonnull %cond18.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp2047.i = icmp slt i32 %4, %5
  br i1 %cmp2047.i, label %if.then.do.end23.i_crit_edge, label %if.then.poison_error.exit_crit_edge

if.then.poison_error.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %poison_error.exit

if.then.do.end23.i_crit_edge:                     ; preds = %if.then
  br label %do.end23.i

do.end23.i:                                       ; preds = %do.end23.i.do.end23.i_crit_edge, %if.then.do.end23.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %do.end23.i.do.end23.i_crit_edge ], [ %4, %if.then.do.end23.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %element, i32 %i.048.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %7 to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv.i) #14
  %inc.i = add nuw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %do.end23.i.poison_error.exit_crit_edge, label %do.end23.i.do.end23.i_crit_edge

do.end23.i.do.end23.i_crit_edge:                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23.i

do.end23.i.poison_error.exit_crit_edge:           ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poison_error.exit

poison_error.exit:                                ; preds = %do.end23.i.poison_error.exit_crit_edge, %if.then.poison_error.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp30.i = icmp ult i32 %5, %size
  %cond32.i = select i1 %cmp30.i, ptr @.str.20, ptr @.str.13
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %cond32.i) #14
  tail call void @dump_stack() #14
  br label %cleanup6

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.critedge.for.end_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.critedge.for.end_crit_edge:               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.critedge.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = call ptr @memset(ptr %element, i32 90, i32 %size)
  br label %cleanup6

cleanup6:                                         ; preds = %for.end, %poison_error.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kasan_slab_free_mempool(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kasan_poison_pages(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__ksymtab_mempool_exit, !1, !"__ksymtab_mempool_exit", i1 false, i1 false}
!1 = !{!"../mm/mempool.c", i32 159, i32 1}
!2 = !{ptr @__ksymtab_mempool_destroy, !3, !"__ksymtab_mempool_destroy", i1 false, i1 false}
!3 = !{!"../mm/mempool.c", i32 177, i32 1}
!4 = !{ptr @mempool_init_node.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../mm/mempool.c", i32 183, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mempool_init_node.__key.1, !8, !"__key", i1 false, i1 false}
!8 = !{!"../mm/mempool.c", i32 188, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mempool_init_node, !11, !"__ksymtab_mempool_init_node", i1 false, i1 false}
!11 = !{!"../mm/mempool.c", i32 211, i32 1}
!12 = !{ptr @__ksymtab_mempool_init, !13, !"__ksymtab_mempool_init", i1 false, i1 false}
!13 = !{!"../mm/mempool.c", i32 234, i32 1}
!14 = !{ptr @__ksymtab_mempool_create, !15, !"__ksymtab_mempool_create", i1 false, i1 false}
!15 = !{!"../mm/mempool.c", i32 258, i32 1}
!16 = !{ptr @__ksymtab_mempool_create_node, !17, !"__ksymtab_mempool_create_node", i1 false, i1 false}
!17 = !{!"../mm/mempool.c", i32 278, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/mempool.c", i32 305, i32 2}
!20 = !{ptr @__ksymtab_mempool_resize, !21, !"__ksymtab_mempool_resize", i1 false, i1 false}
!21 = !{!"../mm/mempool.c", i32 358, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../mm/mempool.c", i32 381, i32 2}
!24 = !{ptr @__ksymtab_mempool_alloc, !25, !"__ksymtab_mempool_alloc", i1 false, i1 false}
!25 = !{!"../mm/mempool.c", i32 441, i32 1}
!26 = !{ptr @__ksymtab_mempool_free, !27, !"__ksymtab_mempool_free", i1 false, i1 false}
!27 = !{!"../mm/mempool.c", i32 503, i32 1}
!28 = !{ptr @__ksymtab_mempool_alloc_slab, !29, !"__ksymtab_mempool_alloc_slab", i1 false, i1 false}
!29 = !{!"../mm/mempool.c", i32 514, i32 1}
!30 = !{ptr @__ksymtab_mempool_free_slab, !31, !"__ksymtab_mempool_free_slab", i1 false, i1 false}
!31 = !{!"../mm/mempool.c", i32 521, i32 1}
!32 = !{ptr @__ksymtab_mempool_kmalloc, !33, !"__ksymtab_mempool_kmalloc", i1 false, i1 false}
!33 = !{!"../mm/mempool.c", i32 532, i32 1}
!34 = !{ptr @__ksymtab_mempool_kfree, !35, !"__ksymtab_mempool_kfree", i1 false, i1 false}
!35 = !{!"../mm/mempool.c", i32 538, i32 1}
!36 = !{ptr @__ksymtab_mempool_alloc_pages, !37, !"__ksymtab_mempool_alloc_pages", i1 false, i1 false}
!37 = !{!"../mm/mempool.c", i32 549, i32 1}
!38 = !{ptr @__ksymtab_mempool_free_pages, !39, !"__ksymtab_mempool_free_pages", i1 false, i1 false}
!39 = !{!"../mm/mempool.c", i32 556, i32 1}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/mempool.c", i32 32, i32 2}
!42 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @poison_error._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @poison_error._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../mm/mempool.c", i32 33, i32 2}
!47 = !{ptr @poison_error._entry.6, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @poison_error._entry_ptr.8, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../mm/mempool.c", i32 34, i32 2}
!51 = !{ptr @poison_error._entry.9, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @poison_error._entry_ptr.11, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../mm/mempool.c", i32 36, i32 3}
!57 = !{ptr @poison_error._entry.14, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @poison_error._entry_ptr.16, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../mm/mempool.c", i32 37, i32 2}
!61 = !{ptr @poison_error._entry.17, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @poison_error._entry_ptr.19, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2154945745, i64 2154946222, i64 2154945782, i64 2154945838, i64 2154945872, i64 2154945896, i64 2154945937, i64 2154945958, i64 2154945986, i64 2154946020}
!78 = !{i64 2153649420}
!79 = !{i64 2152742535}
!80 = !{i64 2152742742}
!81 = !{i64 2153652191}
!82 = !{!"branch_weights", i32 2000, i32 1}
!83 = !{i64 2154944176, i64 2154944653, i64 2154944213, i64 2154944269, i64 2154944303, i64 2154944327, i64 2154944368, i64 2154944389, i64 2154944417, i64 2154944451}
!84 = !{i64 2154956630, i64 2154957107, i64 2154956667, i64 2154956723, i64 2154956757, i64 2154956781, i64 2154956822, i64 2154956843, i64 2154956871, i64 2154956905}
!85 = !{i64 2154963376}
!86 = !{i64 2154965295}
!87 = !{i64 2154971391, i64 2154971868, i64 2154971428, i64 2154971484, i64 2154971518, i64 2154971542, i64 2154971583, i64 2154971604, i64 2154971632, i64 2154971666}
