; ModuleID = '/llk/IR_all_yes/kernel/watch_queue.c_pt.bc'
source_filename = "../kernel/watch_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__post_watch_notification\22, \22a\22\09"
module asm "\09.weak\09__crc___post_watch_notification\09\09\09\09"
module asm "\09.long\09__crc___post_watch_notification\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___post_watch_notification:\09\09\09\09\09"
module asm "\09.asciz \09\22__post_watch_notification\22\09\09\09\09\09"
module asm "__kstrtabns___post_watch_notification:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+put_watch_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_put_watch_queue\09\09\09\09"
module asm "\09.long\09__crc_put_watch_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_watch_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22put_watch_queue\22\09\09\09\09\09"
module asm "__kstrtabns_put_watch_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_watch_to_object\22, \22a\22\09"
module asm "\09.weak\09__crc_add_watch_to_object\09\09\09\09"
module asm "\09.long\09__crc_add_watch_to_object\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_watch_to_object:\09\09\09\09\09"
module asm "\09.asciz \09\22add_watch_to_object\22\09\09\09\09\09"
module asm "__kstrtabns_add_watch_to_object:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+remove_watch_from_object\22, \22a\22\09"
module asm "\09.weak\09__crc_remove_watch_from_object\09\09\09\09"
module asm "\09.long\09__crc_remove_watch_from_object\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_watch_from_object:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_watch_from_object\22\09\09\09\09\09"
module asm "__kstrtabns_remove_watch_from_object:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+get_watch_queue\22, \22a\22\09"
module asm "\09.weak\09__crc_get_watch_queue\09\09\09\09"
module asm "\09.long\09__crc_get_watch_queue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_watch_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22get_watch_queue\22\09\09\09\09\09"
module asm "__kstrtabns_get_watch_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.54 }
%struct.atomic_t = type { i32 }
%union.anon.54 = type { i32 }
%struct.watch_notification = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.watch_list = type { %struct.callback_head, %struct.hlist_head, ptr, %struct.spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.watch = type { %union.anon, ptr, %struct.hlist_node, ptr, %struct.hlist_node, ptr, ptr, i64, %struct.kref }
%union.anon = type { %struct.callback_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.watch_queue = type { %struct.callback_head, ptr, ptr, %struct.hlist_head, ptr, ptr, %struct.kref, %struct.spinlock, i32, i32, i8 }
%struct.watch_filter = type { %union.anon.0, i32, [0 x %struct.watch_type_filter] }
%union.anon.0 = type { %struct.callback_head }
%struct.watch_type_filter = type { i32, [1 x i32], i32, i32 }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.page = type { i32, %union.anon.4, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.44, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.12 }
%struct.llist_node = type { ptr }
%union.anon.12 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.44 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }
%struct.watch_notification_filter = type { i32, i32, [0 x %struct.watch_notification_type_filter] }
%struct.watch_notification_type_filter = type { i32, i32, i32, [8 x i32] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.27 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.27 = type { %struct.callback_head }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.watch_notification_removal = type { %struct.watch_notification, i64 }

@__UNIQUE_ID_description243 = internal constant [36 x i8] c"watch_queue.description=Watch queue\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [33 x i8] c"watch_queue.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [36 x i8] c"watch_queue.file=kernel/watch_queue\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"watch_queue.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/watch_queue.c\00", [43 x i8] zeroinitializer }, align 32
@__post_watch_notification.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__post_watch_notification.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__post_watch_notification.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab___post_watch_notification = external dso_local constant [0 x i8], align 1
@__kstrtabns___post_watch_notification = external dso_local constant [0 x i8], align 1
@__ksymtab___post_watch_notification = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__post_watch_notification to i32), ptr @__kstrtab___post_watch_notification, ptr @__kstrtabns___post_watch_notification }, section "___ksymtab+__post_watch_notification", align 4
@watch_queue_set_filter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_put_watch_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_watch_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_put_watch_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_watch_queue to i32), ptr @__kstrtab_put_watch_queue, ptr @__kstrtabns_put_watch_queue }, section "___ksymtab+put_watch_queue", align 4
@__kstrtab_add_watch_to_object = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_watch_to_object = external dso_local constant [0 x i8], align 1
@__ksymtab_add_watch_to_object = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_watch_to_object to i32), ptr @__kstrtab_add_watch_to_object, ptr @__kstrtabns_add_watch_to_object }, section "___ksymtab+add_watch_to_object", align 4
@remove_watch_from_object.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_remove_watch_from_object = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_watch_from_object = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_watch_from_object = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_watch_from_object to i32), ptr @__kstrtab_remove_watch_from_object, ptr @__kstrtabns_remove_watch_from_object }, section "___ksymtab+remove_watch_from_object", align 4
@watch_queue_clear.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_get_watch_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_watch_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_get_watch_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_watch_queue to i32), ptr @__kstrtab_get_watch_queue, ptr @__kstrtabns_get_watch_queue }, section "___ksymtab+get_watch_queue", align 4
@watch_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wqueue->lock\00", [18 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@watch_queue_pipe_buf_ops = internal constant { %struct.pipe_buf_operations, [16 x i8] } { %struct.pipe_buf_operations { ptr null, ptr @watch_queue_pipe_buf_release, ptr null, ptr @generic_pipe_buf_get }, [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 186, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 192, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 198, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 352, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 658, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 695, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"watch_queue_pipe_buf_ops\00", align 1
@___asan_gen_.41 = private constant [24 x i8] c"../kernel/watch_queue.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 64, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1160, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 723, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 156, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 253, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__ksymtab___post_watch_notification, ptr @__ksymtab_add_watch_to_object, ptr @__ksymtab_get_watch_queue, ptr @__ksymtab_put_watch_queue, ptr @__ksymtab_remove_watch_from_object, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.5, ptr @watch_queue_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @watch_queue_pipe_buf_ops, ptr @.str.9, ptr @.str.10, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watch_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watch_queue_pipe_buf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__post_watch_notification(ptr noundef %wlist, ptr noundef %n, ptr noundef %cred, i64 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.watch_notification, ptr %n, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  %and = and i32 %1, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 186, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end16:                                         ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end16.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end16.rcu_read_lock.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end16.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end26_crit_edge

rcu_read_lock.exit.do.end26_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true.do.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b126 = load i1, ptr @__post_watch_notification.__warned, align 1
  br i1 %.b126, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__post_watch_notification.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 192, ptr noundef nonnull @.str.1) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true.do.end26_crit_edge, %rcu_read_lock.exit.do.end26_crit_edge
  %watchers = getelementptr inbounds %struct.watch_list, ptr %wlist, i32 0, i32 1
  %6 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %watchers, align 4
  %tobool33.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -24
  %tobool35.not142144 = icmp eq ptr %add.ptr, null
  %tobool35.not142 = or i1 %tobool33.not, %tobool35.not142144
  br i1 %tobool35.not142, label %do.end26.for.end_crit_edge, label %do.end26.for.body_crit_edge

do.end26.for.body_crit_edge:                      ; preds = %do.end26
  br label %for.body

do.end26.for.end_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end26.for.body_crit_edge
  %watch.0143 = phi ptr [ %add.ptr99, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end26.for.body_crit_edge ]
  %id36 = getelementptr inbounds %struct.watch, ptr %watch.0143, i32 0, i32 7
  %8 = ptrtoint ptr %id36 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %id36, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %id)
  %cmp37.not = icmp eq i64 %9, %id
  br i1 %cmp37.not, label %if.end39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end39:                                         ; preds = %for.body
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %and41 = and i32 %11, -65281
  store i32 %and41, ptr %info, align 4
  %12 = ptrtoint ptr %watch.0143 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %watch.0143, align 8
  %or = or i32 %13, %and41
  store i32 %or, ptr %info, align 4
  %queue = getelementptr inbounds %struct.watch, ptr %watch.0143, i32 0, i32 1
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %queue, align 8
  %call48 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %if.end39.do.end58_crit_edge

if.end39.do.end58_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

land.lhs.true50:                                  ; preds = %if.end39
  %call51 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true50.do.end58_crit_edge, label %land.lhs.true53

land.lhs.true50.do.end58_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %.b122125 = load i1, ptr @__post_watch_notification.__warned.2, align 1
  br i1 %.b122125, label %land.lhs.true53.do.end58_crit_edge, label %if.then55

land.lhs.true53.do.end58_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

if.then55:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__post_watch_notification.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @.str.3) #9
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %land.lhs.true53.do.end58_crit_edge, %land.lhs.true50.do.end58_crit_edge, %if.end39.do.end58_crit_edge
  %filter = getelementptr inbounds %struct.watch_queue, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %filter, align 4
  %call65 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %do.end58.do.end75_crit_edge

do.end58.do.end75_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

land.lhs.true67:                                  ; preds = %do.end58
  %call68 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true67.do.end75_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %.b123124 = load i1, ptr @__post_watch_notification.__warned.4, align 1
  br i1 %.b123124, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__post_watch_notification.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @.str.3) #9
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true67.do.end75_crit_edge, %do.end58.do.end75_crit_edge
  %tobool77.not = icmp eq ptr %17, null
  br i1 %tobool77.not, label %do.end75.if.end81_crit_edge, label %land.lhs.true78

do.end75.if.end81_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

land.lhs.true78:                                  ; preds = %do.end75
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %n, align 4
  %bf.clear.i = lshr i32 %bf.load.i, 5
  %div30.i = and i32 %bf.clear.i, 7
  %rem.i = and i32 %bf.load.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  %div3.i.i = lshr i32 %bf.load.i, 13
  %arrayidx.i.i = getelementptr i32, ptr %17, i32 %div3.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %bf.lshr.i, 31
  %21 = shl nuw i32 1, %and.i.i
  %22 = and i32 %21, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i128 = icmp eq i32 %22, 0
  br i1 %tobool.not.i128, label %land.lhs.true78.for.inc_crit_edge, label %for.cond.preheader.i

land.lhs.true78.for.inc_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.preheader.i:                             ; preds = %land.lhs.true78
  %nr_filters.i = getelementptr inbounds %struct.watch_filter, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %nr_filters.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_filters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp31.not.i = icmp eq i32 %24, 0
  br i1 %cmp31.not.i, label %for.cond.preheader.i.for.inc_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.watch_filter, ptr %17, i32 0, i32 2, i32 %i.032.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %26)
  %cmp6.i = icmp eq i32 %bf.lshr.i, %26
  br i1 %cmp6.i, label %land.lhs.true.i129, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i129:                               ; preds = %for.body.i
  %arrayidx7.i = getelementptr %struct.watch_filter, ptr %17, i32 0, i32 2, i32 %i.032.i, i32 1, i32 %div30.i
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7.i, align 4
  %and.i = and i32 %28, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i129.for.inc.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i129.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i129
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %info, align 4
  %info_mask.i = getelementptr %struct.watch_filter, ptr %17, i32 0, i32 2, i32 %i.032.i, i32 3
  %31 = ptrtoint ptr %info_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %info_mask.i, align 4
  %and10.i = and i32 %32, %30
  %info_filter.i = getelementptr %struct.watch_filter, ptr %17, i32 0, i32 2, i32 %i.032.i, i32 2
  %33 = ptrtoint ptr %info_filter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %info_filter.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and10.i, i32 %34)
  %cmp11.i = icmp eq i32 %and10.i, %34
  br i1 %cmp11.i, label %land.lhs.true9.i.if.end81_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true9.i.if.end81_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i129.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end81:                                         ; preds = %land.lhs.true9.i.if.end81_crit_edge, %do.end75.if.end81_crit_edge
  %cred82 = getelementptr inbounds %struct.watch, ptr %watch.0143, i32 0, i32 5
  %35 = ptrtoint ptr %cred82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cred82, align 8
  %call83 = tail call i32 @security_post_notification(ptr noundef %36, ptr noundef %cred, ptr noundef %n) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end81.for.inc_crit_edge, label %if.end86

if.end81.for.inc_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end86:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @post_one_notification(ptr noundef %15, ptr noundef %n)
  br label %for.inc

for.inc:                                          ; preds = %if.end86, %if.end81.for.inc_crit_edge, %for.inc.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge, %land.lhs.true78.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list_node = getelementptr inbounds %struct.watch, ptr %watch.0143, i32 0, i32 4
  %37 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %list_node, align 8
  %tobool95.not = icmp eq ptr %38, null
  %add.ptr99 = getelementptr i8, ptr %38, i32 -24
  %tobool35.not145 = icmp eq ptr %add.ptr99, null
  %tobool35.not = or i1 %tobool95.not, %tobool35.not145
  br i1 %tobool35.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end26.for.end_crit_edge
  %call.i130 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i130, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i133

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i133:                               ; preds = %for.end
  %call1.i131 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i131)
  %tobool.not.i132 = icmp eq i32 %call1.i131, 0
  br i1 %tobool.not.i132, label %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i135

land.lhs.true.i133.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i135:                              ; preds = %land.lhs.true.i133
  %.b4.i134 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i134, label %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, label %if.then.i136

land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i136:                                     ; preds = %land.lhs.true2.i135
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i136, %land.lhs.true2.i135.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i133.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %39 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i137 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i137 to ptr
  %preempt_count.i.i.i.i138 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i138 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i138, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i138, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_post_notification(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @post_one_notification(ptr noundef %wqueue, ptr nocapture noundef readonly %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe1 = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 2
  %0 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rd_wait = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %rd_wait) #9
  %defunct = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 10
  %2 = ptrtoint ptr %defunct to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %defunct, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end4, label %if.end63.critedge

if.end4:                                          ; preds = %if.end
  %ring_size = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring_size, align 4
  %sub = add i32 %5, -1
  %head5 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %head5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %head5, align 4
  %tail6 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %tail6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail6, align 4
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %5)
  %cmp.i.not = icmp ult i32 %sub.i.i, %5
  br i1 %cmp.i.not, label %if.end9, label %if.end4.lost_crit_edge

if.end4.lost_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %lost

if.end9:                                          ; preds = %if.end4
  %notes_bitmap = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 5
  %10 = ptrtoint ptr %notes_bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notes_bitmap, align 4
  %nr_notes = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 8
  %12 = ptrtoint ptr %nr_notes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_notes, align 4
  %call10 = tail call i32 @_find_first_bit_be(ptr noundef %11, i32 noundef %13) #9
  %14 = ptrtoint ptr %nr_notes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_notes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %15)
  %cmp.not = icmp ult i32 %call10, %15
  br i1 %cmp.not, label %if.end13, label %if.end9.lost_crit_edge

if.end9.lost_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %lost

if.end13:                                         ; preds = %if.end9
  %notes = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 4
  %16 = ptrtoint ptr %notes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %notes, align 4
  %div1 = lshr i32 %call10, 5
  %arrayidx = getelementptr ptr, ptr %17, i32 %div1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %rem = shl i32 %call10, 7
  %mul = and i32 %rem, 3968
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !74

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i3 = add i32 %22, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %19 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i3, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %25 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %26, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !75

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@post_one_notification, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !78

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %24, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %info = getelementptr inbounds %struct.watch_notification, ptr %n, i32 0, i32 1
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info, align 4
  %and = and i32 %29, 127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %30 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %30, 512
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !79
  %35 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i1.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 213
  %39 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %19, i32 noundef %or.i) #9
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %mul
  %41 = call ptr @memcpy(ptr %add.ptr, ptr %n, i32 %and)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %42 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i1.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %47, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %48 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i4 = add i32 %51, -1
  store volatile i32 %sub.i.i4, ptr %preempt_count.i.i.i, align 4
  %bufs = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 18
  %52 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bufs, align 4
  %and18 = and i32 %7, %sub
  %arrayidx19 = getelementptr %struct.pipe_buffer, ptr %53, i32 %and18
  %54 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %19, ptr %arrayidx19, align 4
  %55 = ptrtoint ptr %wqueue to i32
  %private = getelementptr %struct.pipe_buffer, ptr %53, i32 %and18, i32 5
  %56 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %private, align 4
  %ops = getelementptr %struct.pipe_buffer, ptr %53, i32 %and18, i32 3
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @watch_queue_pipe_buf_ops, ptr %ops, align 4
  %offset21 = getelementptr %struct.pipe_buffer, ptr %53, i32 %and18, i32 1
  %58 = ptrtoint ptr %offset21 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul, ptr %offset21, align 4
  %len22 = getelementptr %struct.pipe_buffer, ptr %53, i32 %and18, i32 2
  %59 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and, ptr %len22, align 4
  %flags = getelementptr %struct.pipe_buffer, ptr %53, i32 %and18, i32 4
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 32, ptr %flags, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  %add = add i32 %7, 1
  %61 = ptrtoint ptr %head5 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 %add, ptr %head5, align 4
  %62 = ptrtoint ptr %notes_bitmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %notes_bitmap, align 4
  %call46 = tail call i32 @_test_and_clear_bit(i32 noundef %call10, ptr noundef %63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end57

if.then48:                                        ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %rd_wait) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/watch_queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

if.end57:                                         ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up_locked_sync_key(ptr noundef %rd_wait, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %rd_wait) #9
  %fasync_readers = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 16
  tail call void @kill_fasync(ptr noundef %fasync_readers, i32 noundef 29, i32 noundef 1) #9
  br label %cleanup

if.end63.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %rd_wait) #9
  br label %cleanup

lost:                                             ; preds = %if.end9.lost_crit_edge, %if.end4.lost_crit_edge
  %bufs65 = getelementptr inbounds %struct.pipe_inode_info, ptr %1, i32 0, i32 18
  %64 = ptrtoint ptr %bufs65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bufs65, align 4
  %sub66 = add i32 %7, -1
  %and67 = and i32 %sub66, %sub
  %flags69 = getelementptr %struct.pipe_buffer, ptr %65, i32 %and67, i32 4
  %66 = ptrtoint ptr %flags69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags69, align 4
  %or = or i32 %67, 64
  store i32 %or, ptr %flags69, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %rd_wait) #9
  br label %cleanup

cleanup:                                          ; preds = %lost, %if.end63.critedge, %if.end57, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watch_queue_set_size(ptr noundef %pipe, i32 noundef %nr_notes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %watch_queue = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 20
  %0 = ptrtoint ptr %watch_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %watch_queue, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %notes = getelementptr inbounds %struct.watch_queue, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %notes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notes, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = add i32 %nr_notes, -513
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %4)
  %5 = icmp ult i32 %4, -512
  br i1 %5, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %sub = add nuw nsw i32 %nr_notes, 31
  %div128 = lshr i32 %sub, 5
  %user = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 19
  %6 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user, align 4
  %nr_accounted = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 8
  %8 = ptrtoint ptr %nr_accounted to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_accounted, align 4
  %call = tail call i32 @account_pipe_buffers(ptr noundef %7, i32 noundef %9, i32 noundef %div128) #9
  %max_usage = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 5
  %10 = ptrtoint ptr %max_usage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_usage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div128, i32 %11)
  %cmp7 = icmp ugt i32 %div128, %11
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %call8 = tail call zeroext i1 @too_many_pipe_buffers_hard(i32 noundef %call) #9
  br i1 %call8, label %land.lhs.true.land.lhs.true11_crit_edge, label %lor.lhs.false9

land.lhs.true.land.lhs.true11_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true11

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %call10 = tail call zeroext i1 @too_many_pipe_buffers_soft(i32 noundef %call) #9
  br i1 %call10, label %lor.lhs.false9.land.lhs.true11_crit_edge, label %lor.lhs.false9.if.end14_crit_edge

lor.lhs.false9.if.end14_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false9.land.lhs.true11_crit_edge:         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %lor.lhs.false9.land.lhs.true11_crit_edge, %land.lhs.true.land.lhs.true11_crit_edge
  %call12 = tail call zeroext i1 @pipe_is_unprivileged_user() #9
  br i1 %call12, label %land.lhs.true11.error_crit_edge, label %land.lhs.true11.if.end14_crit_edge

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true11.error_crit_edge:                  ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end14:                                         ; preds = %land.lhs.true11.if.end14_crit_edge, %lor.lhs.false9.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %mul = and i32 %sub, -32
  %sub17 = add nsw i32 %mul, -1
  %12 = tail call i32 @llvm.ctlz.i32(i32 %sub17, i1 true) #9, !range !85
  %sub.i.i.i.pn = sub nuw nsw i32 32, %12
  %cond36 = shl nuw i32 1, %sub.i.i.i.pn
  %call37 = tail call i32 @pipe_resize_ring(ptr noundef %pipe, i32 noundef %cond36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end14.error_crit_edge, label %if.end7.i.i

if.end14.error_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end7.i.i:                                      ; preds = %if.end14
  %13 = shl nuw nsw i32 %div128, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #12
  %tobool43.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool43.not, label %if.end7.i.i.error_crit_edge, label %if.end7.i.i.for.body_crit_edge

if.end7.i.i.for.body_crit_edge:                   ; preds = %if.end7.i.i
  br label %for.body

if.end7.i.i.error_crit_edge:                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %if.end7.i.i.for.body_crit_edge
  %i.0134 = phi i32 [ %inc, %if.end52.for.body_crit_edge ], [ 0, %if.end7.i.i.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.0134
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %tobool50.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool50.not, label %for.body.for.body65.preheader_crit_edge, label %if.end52

for.body.for.body65.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65.preheader

if.end52:                                         ; preds = %for.body
  %mul53 = shl i32 %i.0134, 5
  %index = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul53, ptr %index, align 4
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %div128
  br i1 %exitcond.not, label %for.end, label %if.end52.for.body_crit_edge

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end52
  %call55 = tail call ptr @bitmap_alloc(i32 noundef %mul, i32 noundef 3264) #9
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %for.end.for.body65.preheader_crit_edge, label %if.end58

for.end.for.body65.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65.preheader

if.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i129 = lshr i32 %sub, 3
  %mul.i = and i32 %sub.i129, 536870908
  %16 = call ptr @memset(ptr %call55, i32 255, i32 %mul.i)
  %17 = ptrtoint ptr %notes to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %notes, align 4
  %notes_bitmap = getelementptr inbounds %struct.watch_queue, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %notes_bitmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call55, ptr %notes_bitmap, align 4
  %nr_pages60 = getelementptr inbounds %struct.watch_queue, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %nr_pages60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div128, ptr %nr_pages60, align 4
  %nr_notes61 = getelementptr inbounds %struct.watch_queue, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %nr_notes61 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %nr_notes61, align 4
  br label %cleanup

for.body65.preheader:                             ; preds = %for.end.for.body65.preheader_crit_edge, %for.body.for.body65.preheader_crit_edge
  %umax137 = call i32 @llvm.umax.i32(i32 %div128, i32 1)
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.body65.preheader
  %i.1136 = phi i32 [ %inc68, %for.body65.for.body65_crit_edge ], [ 0, %for.body65.preheader ]
  %arrayidx66 = getelementptr ptr, ptr %call8.i.i, i32 %i.1136
  %21 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx66, align 4
  tail call void @__free_pages(ptr noundef %22, i32 noundef 0) #9
  %inc68 = add nuw nsw i32 %i.1136, 1
  %exitcond138.not = icmp eq i32 %inc68, %umax137
  br i1 %exitcond138.not, label %for.end69, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

for.end69:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %error

error:                                            ; preds = %for.end69, %if.end7.i.i.error_crit_edge, %if.end14.error_crit_edge, %land.lhs.true11.error_crit_edge
  %ret.0 = phi i32 [ %call37, %if.end14.error_crit_edge ], [ %call37, %for.end69 ], [ %call37, %if.end7.i.i.error_crit_edge ], [ -1, %land.lhs.true11.error_crit_edge ]
  %23 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user, align 4
  %25 = ptrtoint ptr %nr_accounted to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_accounted, align 4
  %call72 = tail call i32 @account_pipe_buffers(ptr noundef %24, i32 noundef %div128, i32 noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end58, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end58 ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @account_pipe_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @too_many_pipe_buffers_hard(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @too_many_pipe_buffers_soft(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pipe_is_unprivileged_user() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pipe_resize_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watch_queue_set_filter(ptr noundef %pipe, ptr noundef %_filter) local_unnamed_addr #0 align 64 {
entry:
  %filter = alloca %struct.watch_notification_filter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filter) #9
  %0 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %filter, align 4, !annotation !86
  %1 = getelementptr inbounds %struct.watch_notification_filter, ptr %filter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !86
  %watch_queue = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 20
  %3 = ptrtoint ptr %watch_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %watch_queue, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %_filter, null
  br i1 %tobool1.not, label %if.end.set_crit_edge, label %if.then.i

if.end.set_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %set

if.then.i:                                        ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %_filter, i32 8, i32 -1226833920) #13, !srcloc !87
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !74

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %filter, i32 noundef 8) #9
  %6 = call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !88
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %filter, ptr noundef nonnull %_filter, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !74

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.then.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %filter, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  %10 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter, align 4
  %12 = add i32 %11, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %12)
  %13 = icmp ult i32 %12, -16
  br i1 %13, label %if.end5.cleanup_crit_edge, label %lor.lhs.false9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false9:                                   ; preds = %if.end5
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10.not = icmp eq i32 %15, 0
  br i1 %cmp10.not, label %if.end12, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false9
  %filters = getelementptr inbounds %struct.watch_notification_filter, ptr %_filter, i32 0, i32 2
  %mul = mul nuw nsw i32 %11, 44
  %call14 = call ptr @memdup_user(ptr noundef %filters, i32 noundef %mul) #9
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end12
  %16 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20194.not = icmp eq i32 %17, 0
  br i1 %cmp20194.not, label %for.cond.preheader.if.end8.i.i_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end8.i.i_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call14 to i32
  br label %cleanup

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0196 = phi i32 [ %inc34, %if.end29.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %nr_filter.0195 = phi i32 [ %spec.select, %if.end29.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %info_filter = getelementptr %struct.watch_notification_type_filter, ptr %call14, i32 %i.0196, i32 1
  %19 = ptrtoint ptr %info_filter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %info_filter, align 4
  %info_mask = getelementptr %struct.watch_notification_type_filter, ptr %call14, i32 %i.0196, i32 2
  %21 = ptrtoint ptr %info_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %info_mask, align 4
  %neg = xor i32 %22, -1
  %and = and i32 %20, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %and26 = and i32 %22, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond187 = select i1 %tobool22.not, i1 %tobool27.not, i1 false
  br i1 %or.cond187, label %if.end29, label %for.body.err_filter_crit_edge

for.body.err_filter_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_filter

if.end29:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.watch_notification_type_filter, ptr %call14, i32 %i.0196
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp31 = icmp ult i32 %24, 2
  %inc = zext i1 %cmp31 to i32
  %spec.select = add i32 %nr_filter.0195, %inc
  %inc34 = add nuw i32 %i.0196, 1
  %exitcond.not = icmp eq i32 %inc34, %17
  br i1 %exitcond.not, label %if.end29.if.end8.i.i_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end29.if.end8.i.i_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end29.if.end8.i.i_crit_edge, %for.cond.preheader.if.end8.i.i_crit_edge
  %nr_filter.0.lcssa = phi i32 [ 0, %for.cond.preheader.if.end8.i.i_crit_edge ], [ %spec.select, %if.end29.if.end8.i.i_crit_edge ]
  %25 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_filter.0.lcssa, i32 16) #9
  %26 = extractvalue { i32, i1 } %25, 1
  %27 = extractvalue { i32, i1 } %25, 0
  %28 = or i32 %27, 12
  %retval.0.i = select i1 %26, i32 -1, i32 %28
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %tobool37.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool37.not, label %if.end8.i.i.err_filter_crit_edge, label %if.end39

if.end8.i.i.err_filter_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_filter

if.end39:                                         ; preds = %if.end8.i.i
  %nr_filters40 = getelementptr inbounds %struct.watch_filter, ptr %call9.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %nr_filters40 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %nr_filter.0.lcssa, ptr %nr_filters40, align 8
  %30 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp45197.not = icmp eq i32 %31, 0
  br i1 %cmp45197.not, label %if.end39.for.end69_crit_edge, label %for.body46.preheader

if.end39.for.end69_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.body46.preheader:                             ; preds = %if.end39
  %filters41 = getelementptr inbounds %struct.watch_filter, ptr %call9.i.i, i32 0, i32 2
  br label %for.body46

for.body46:                                       ; preds = %for.inc67.for.body46_crit_edge, %for.body46.preheader
  %q.0200 = phi ptr [ %q.1, %for.inc67.for.body46_crit_edge ], [ %filters41, %for.body46.preheader ]
  %i.1198 = phi i32 [ %inc68, %for.inc67.for.body46_crit_edge ], [ 0, %for.body46.preheader ]
  %arrayidx47 = getelementptr %struct.watch_notification_type_filter, ptr %call14, i32 %i.1198
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp49 = icmp ugt i32 %33, 1
  br i1 %cmp49, label %for.body46.for.inc67_crit_edge, label %if.end51

for.body46.for.inc67_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc67

if.end51:                                         ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %q.0200 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %q.0200, align 4
  %info_filter56 = getelementptr %struct.watch_notification_type_filter, ptr %call14, i32 %i.1198, i32 1
  %35 = ptrtoint ptr %info_filter56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %info_filter56, align 4
  %info_filter57 = getelementptr inbounds %struct.watch_type_filter, ptr %q.0200, i32 0, i32 2
  %37 = ptrtoint ptr %info_filter57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %info_filter57, align 4
  %info_mask59 = getelementptr %struct.watch_notification_type_filter, ptr %call14, i32 %i.1198, i32 2
  %38 = ptrtoint ptr %info_mask59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %info_mask59, align 4
  %info_mask60 = getelementptr inbounds %struct.watch_type_filter, ptr %q.0200, i32 0, i32 3
  %40 = ptrtoint ptr %info_mask60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %info_mask60, align 4
  %subtype_filter = getelementptr %struct.watch_notification_type_filter, ptr %call14, i32 %i.1198, i32 3
  %41 = ptrtoint ptr %subtype_filter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subtype_filter, align 4
  %subtype_filter63 = getelementptr inbounds %struct.watch_type_filter, ptr %q.0200, i32 0, i32 1
  %43 = ptrtoint ptr %subtype_filter63 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %subtype_filter63, align 4
  %shl.i = shl nuw nsw i32 1, %33
  %div2.i = lshr i32 %33, 5
  %add.ptr.i = getelementptr i32, ptr %call9.i.i, i32 %div2.i
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %45, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %incdec.ptr = getelementptr %struct.watch_type_filter, ptr %q.0200, i32 1
  br label %for.inc67

for.inc67:                                        ; preds = %if.end51, %for.body46.for.inc67_crit_edge
  %q.1 = phi ptr [ %q.0200, %for.body46.for.inc67_crit_edge ], [ %incdec.ptr, %if.end51 ]
  %inc68 = add nuw i32 %i.1198, 1
  %46 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %filter, align 4
  %cmp45 = icmp ult i32 %inc68, %47
  br i1 %cmp45, label %for.inc67.for.body46_crit_edge, label %for.inc67.for.end69_crit_edge

for.inc67.for.end69_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.inc67.for.body46_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46

for.end69:                                        ; preds = %for.inc67.for.end69_crit_edge, %if.end39.for.end69_crit_edge
  call void @kfree(ptr noundef %call14) #9
  br label %set

set:                                              ; preds = %for.end69, %if.end.set_crit_edge
  %wfilter.0 = phi ptr [ %call9.i.i, %for.end69 ], [ null, %if.end.set_crit_edge ]
  call void @pipe_lock(ptr noundef %pipe) #9
  %dep_map = getelementptr inbounds %struct.mutex, ptr %pipe, i32 0, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool71.not = icmp eq i32 %call.i, 0
  br i1 %tobool71.not, label %land.lhs.true, label %set.do.end_crit_edge

set.do.end_crit_edge:                             ; preds = %set
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %set
  %call72 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true74

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true74:                                  ; preds = %land.lhs.true
  %.b186 = load i1, ptr @watch_queue_set_filter.__warned, align 1
  br i1 %.b186, label %land.lhs.true74.do.end_crit_edge, label %if.then76

land.lhs.true74.do.end_crit_edge:                 ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then76:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @watch_queue_set_filter.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 353, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then76, %land.lhs.true74.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %set.do.end_crit_edge
  %filter78 = getelementptr inbounds %struct.watch_queue, ptr %4, i32 0, i32 1
  %48 = ptrtoint ptr %filter78 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %filter78, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  %50 = ptrtoint ptr %filter78 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %wfilter.0, ptr %filter78, align 4
  call void @pipe_unlock(ptr noundef %pipe) #9
  %tobool119.not = icmp eq ptr %49, null
  br i1 %tobool119.not, label %do.end.cleanup_crit_edge, label %do.end126

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end126:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @kvfree_call_rcu(ptr noundef nonnull %49, ptr noundef null) #9
  br label %cleanup

err_filter:                                       ; preds = %if.end8.i.i.err_filter_crit_edge, %for.body.err_filter_crit_edge
  %ret.0 = phi i32 [ -12, %if.end8.i.i.err_filter_crit_edge ], [ -22, %for.body.err_filter_crit_edge ]
  call void @kfree(ptr noundef %call14) #9
  br label %cleanup

cleanup:                                          ; preds = %err_filter, %do.end126, %do.end.cleanup_crit_edge, %if.then16, %lor.lhs.false9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then16 ], [ %ret.0, %err_filter ], [ -19, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %do.end126 ], [ 0, %do.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filter) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_watch_queue(ptr noundef %wqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !74

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  %nr_pages.i = getelementptr %struct.watch_queue, ptr %wqueue, i32 0, i32 9
  %1 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp31.not.i = icmp eq i32 %2, 0
  br i1 %cmp31.not.i, label %if.then.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %notes.i = getelementptr %struct.watch_queue, ptr %wqueue, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %notes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notes.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %4, i32 %i.032.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  tail call void @__free_pages(ptr noundef %6, i32 noundef 0) #9
  %inc.i = add nuw i32 %i.032.i, 1
  %7 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_pages.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %notes_bitmap.i = getelementptr %struct.watch_queue, ptr %wqueue, i32 0, i32 5
  %9 = ptrtoint ptr %notes_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notes_bitmap.i, align 4
  tail call void @bitmap_free(ptr noundef %10) #9
  %filter.i = getelementptr %struct.watch_queue, ptr %wqueue, i32 0, i32 1
  %11 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %filter.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.end.i.do.body12.i_crit_edge, label %do.end8.i

for.end.i.do.body12.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i

do.end8.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree_call_rcu(ptr noundef nonnull %12, ptr noundef null) #9
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.end8.i, %for.end.i.do.body12.i_crit_edge
  %tobool14.not.i = icmp eq ptr %wqueue, null
  br i1 %tobool14.not.i, label %do.body12.i.kref_put.exit_crit_edge, label %do.end18.i

do.body12.i.kref_put.exit_crit_edge:              ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

do.end18.i:                                       ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kvfree_call_rcu(ptr noundef nonnull %wqueue, ptr noundef null) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %do.end18.i, %do.body12.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_watch(ptr noundef %watch, ptr noundef %wqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  %0 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %usage, align 4
  %list_node = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 4
  %1 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %list_node, align 4
  %pprev.i = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pprev.i, align 4
  %queue_node = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 2
  %3 = ptrtoint ptr %queue_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %queue_node, align 4
  %pprev.i35 = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pprev.i35 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i35, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %queue21 = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 1
  %5 = ptrtoint ptr %queue21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %wqueue, ptr %queue21, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_watch_to_object(ptr noundef %watch, ptr noundef %wlist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 8
  %watchers = getelementptr inbounds %struct.watch_list, ptr %wlist, i32 0, i32 1
  %2 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %watchers, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -24
  %tobool4.not132135 = icmp eq ptr %add.ptr, null
  %tobool4.not132 = or i1 %tobool.not, %tobool4.not132135
  br i1 %tobool4.not132, label %entry.do.end25_crit_edge, label %for.body.lr.ph

entry.do.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

for.body.lr.ph:                                   ; preds = %entry
  %id = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %w.0133 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr19, %for.inc.critedge.for.body_crit_edge ]
  %queue9 = getelementptr inbounds %struct.watch, ptr %w.0133, i32 0, i32 1
  %4 = ptrtoint ptr %queue9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %queue9, align 8
  %cmp = icmp eq ptr %1, %5
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc.critedge_crit_edge

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %id, align 8
  %id11 = getelementptr inbounds %struct.watch, ptr %w.0133, i32 0, i32 7
  %8 = ptrtoint ptr %id11 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %id11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp12 = icmp eq i64 %7, %9
  br i1 %cmp12, label %land.lhs.true.cleanup83_crit_edge, label %land.lhs.true.for.inc.critedge_crit_edge

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.critedge

land.lhs.true.cleanup83_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

for.inc.critedge:                                 ; preds = %land.lhs.true.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %list_node = getelementptr inbounds %struct.watch, ptr %w.0133, i32 0, i32 4
  %10 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list_node, align 8
  %tobool15.not = icmp eq ptr %11, null
  %add.ptr19 = getelementptr i8, ptr %11, i32 -24
  %tobool4.not136 = icmp eq ptr %add.ptr19, null
  %tobool4.not = or i1 %tobool15.not, %tobool4.not136
  br i1 %tobool4.not, label %for.inc.critedge.do.end25_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.critedge.do.end25_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end25:                                         ; preds = %for.inc.critedge.do.end25_crit_edge, %entry.do.end25_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred, align 16
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end25.get_cred.exit_crit_edge, label %do.body.i

do.end25.get_cred.exit_crit_edge:                 ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit

do.body.i:                                        ; preds = %do.end25
  %call.i.i108 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %17) #9
  br i1 %call.i.i108, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !75

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %17, ptr noundef nonnull @.str.15, i32 noundef 253) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %18 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 28
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #9, !srcloc !77
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %do.end25.get_cred.exit_crit_edge
  %cred28 = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 5
  %21 = ptrtoint ptr %cred28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %cred28, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  %watch_list55 = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 3
  %22 = ptrtoint ptr %watch_list55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %wlist, ptr %watch_list55, align 4
  %23 = ptrtoint ptr %cred28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cred28, align 8
  %user = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %user, align 4
  %nr_watches = getelementptr inbounds %struct.user_struct, ptr %26, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_watches, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %nr_watches, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_watches, ptr %nr_watches, i32 1, ptr elementtype(i32) %nr_watches) #9, !srcloc !98
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 111
  %30 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %31, i32 0, i32 51, i32 7
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %33)
  %cmp72 = icmp ugt i32 %asmresult.i.i.i.i, %33
  br i1 %cmp72, label %if.then73, label %if.end78

if.then73:                                        ; preds = %get_cred.exit
  %34 = ptrtoint ptr %cred28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cred28, align 8
  %user75 = getelementptr inbounds %struct.cred, ptr %35, i32 0, i32 24
  %36 = ptrtoint ptr %user75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user75, align 4
  %nr_watches76 = getelementptr inbounds %struct.user_struct, ptr %37, i32 0, i32 7
  %call.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_watches76, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_watches76, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_watches76, ptr %nr_watches76, i32 1, ptr elementtype(i32) %nr_watches76) #9, !srcloc !100
  %39 = ptrtoint ptr %cred28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cred28, align 8
  %tobool.not.i109 = icmp eq ptr %40, null
  br i1 %tobool.not.i109, label %if.then73.cleanup83_crit_edge, label %do.body.i111

if.then73.cleanup83_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

do.body.i111:                                     ; preds = %if.then73
  %call.i.i110 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %40) #9
  br i1 %call.i.i110, label %if.then.i.i112, label %do.body.i111.__validate_creds.exit.i113_crit_edge, !prof !75

do.body.i111.__validate_creds.exit.i113_crit_edge: ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i113

if.then.i.i112:                                   ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %40, ptr noundef nonnull @.str.15, i32 noundef 286) #9
  br label %__validate_creds.exit.i113

__validate_creds.exit.i113:                       ; preds = %if.then.i.i112, %do.body.i111.__validate_creds.exit.i113_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %40, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr nonnull %40, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 1, ptr nonnull elementtype(i32) %40) #9, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i113.cleanup83_crit_edge

__validate_creds.exit.i113.cleanup83_crit_edge:   ; preds = %__validate_creds.exit.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup83

if.then1.i:                                       ; preds = %__validate_creds.exit.i113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %40) #9
  br label %cleanup83

if.end78:                                         ; preds = %get_cred.exit
  %lock = getelementptr inbounds %struct.watch_queue, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %usage = getelementptr inbounds %struct.watch_queue, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !104
  %asmresult.i.i.i.i.i.i114 = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i114)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i114, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end78.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !75

if.end78.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end78
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i114, 1
  %43 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !74

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end78.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end78.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %usage79 = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 8
  %call.i.i.i.i.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage79, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage79, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage79, ptr %usage79, i32 1, ptr elementtype(i32) %usage79) #9, !srcloc !104
  %asmresult.i.i.i.i.i.i116 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i116)
  %tobool1.not.i.i.i.i117 = icmp eq i32 %asmresult.i.i.i.i.i.i116, 0
  br i1 %tobool1.not.i.i.i.i117, label %kref_get.exit.if.end15.sink.split.i.i.i.i122_crit_edge, label %if.else.i.i.i.i120, !prof !75

kref_get.exit.if.end15.sink.split.i.i.i.i122_crit_edge: ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i122

if.else.i.i.i.i120:                               ; preds = %kref_get.exit
  %add.i.i.i.i118 = add i32 %asmresult.i.i.i.i.i.i116, 1
  %45 = or i32 %add.i.i.i.i118, %asmresult.i.i.i.i.i.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i119 = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i119, label %if.else.i.i.i.i120.kref_get.exit123_crit_edge, label %if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge, !prof !74

if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge: ; preds = %if.else.i.i.i.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i122

if.else.i.i.i.i120.kref_get.exit123_crit_edge:    ; preds = %if.else.i.i.i.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit123

if.end15.sink.split.i.i.i.i122:                   ; preds = %if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge, %kref_get.exit.if.end15.sink.split.i.i.i.i122_crit_edge
  %.sink.i.i.i.i121 = phi i32 [ 2, %kref_get.exit.if.end15.sink.split.i.i.i.i122_crit_edge ], [ 1, %if.else.i.i.i.i120.if.end15.sink.split.i.i.i.i122_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage79, i32 noundef %.sink.i.i.i.i121) #9
  br label %kref_get.exit123

kref_get.exit123:                                 ; preds = %if.end15.sink.split.i.i.i.i122, %if.else.i.i.i.i120.kref_get.exit123_crit_edge
  %queue_node = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 2
  %watches = getelementptr inbounds %struct.watch_queue, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %watches to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %watches, align 4
  %48 = ptrtoint ptr %queue_node to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %queue_node, align 4
  %tobool.not.i124 = icmp eq ptr %47, null
  br i1 %tobool.not.i124, label %kref_get.exit123.hlist_add_head.exit_crit_edge, label %do.body12.i

kref_get.exit123.hlist_add_head.exit_crit_edge:   ; preds = %kref_get.exit123
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %kref_get.exit123
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %queue_node, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %kref_get.exit123.hlist_add_head.exit_crit_edge
  %50 = ptrtoint ptr %watches to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %queue_node, ptr %watches, align 4
  %pprev34.i = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %watches, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %list_node81 = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 4
  %52 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %watchers, align 4
  %54 = ptrtoint ptr %list_node81 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %53, ptr %list_node81, align 4
  %tobool.not.i125 = icmp eq ptr %53, null
  br i1 %tobool.not.i125, label %hlist_add_head.exit.hlist_add_head.exit129_crit_edge, label %do.body12.i127

hlist_add_head.exit.hlist_add_head.exit129_crit_edge: ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit129

do.body12.i127:                                   ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i126 = getelementptr inbounds %struct.hlist_node, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %pprev.i126 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list_node81, ptr %pprev.i126, align 4
  br label %hlist_add_head.exit129

hlist_add_head.exit129:                           ; preds = %do.body12.i127, %hlist_add_head.exit.hlist_add_head.exit129_crit_edge
  %56 = ptrtoint ptr %watchers to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list_node81, ptr %watchers, align 4
  %pprev34.i128 = getelementptr inbounds %struct.watch, ptr %watch, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %pprev34.i128 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %watchers, ptr %pprev34.i128, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %hlist_add_head.exit129, %if.then1.i, %__validate_creds.exit.i113.cleanup83_crit_edge, %if.then73.cleanup83_crit_edge, %land.lhs.true.cleanup83_crit_edge
  %retval.2 = phi i32 [ 0, %hlist_add_head.exit129 ], [ -11, %if.then73.cleanup83_crit_edge ], [ -11, %__validate_creds.exit.i113.cleanup83_crit_edge ], [ -11, %if.then1.i ], [ -16, %land.lhs.true.cleanup83_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @remove_watch_from_object(ptr noundef %wlist, ptr noundef readnone %wq, i64 noundef %id, i1 noundef zeroext %all) #0 align 64 {
entry:
  %n = alloca %struct.watch_notification_removal, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %n) #9
  %0 = getelementptr inbounds %struct.watch_notification, ptr %n, i32 0, i32 1
  %1 = getelementptr inbounds %struct.watch_notification_removal, ptr %n, i32 0, i32 1
  %2 = call ptr @memset(ptr %n, i32 255, i32 16)
  %3 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lock = getelementptr inbounds %struct.watch_list, ptr %wlist, i32 0, i32 3
  %watchers = getelementptr inbounds %struct.watch_list, ptr %wlist, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %id)
  %cmp65.not = icmp eq i64 %id, 0
  %release_watch = getelementptr inbounds %struct.watch_list, ptr %wlist, i32 0, i32 2
  br label %again

again:                                            ; preds = %land.lhs.true106.again_crit_edge, %rcu_read_lock.exit
  %ret.0 = phi i32 [ -57, %rcu_read_lock.exit ], [ 0, %land.lhs.true106.again_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %7 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %watchers, align 4
  %tobool.not = icmp eq ptr %8, null
  %add.ptr = getelementptr i8, ptr %8, i32 -24
  %tobool2.not205219 = icmp eq ptr %add.ptr, null
  %tobool2.not205 = or i1 %tobool.not, %tobool2.not205219
  br i1 %tobool2.not205, label %again.for.end_crit_edge, label %again.for.body_crit_edge

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %again.for.body_crit_edge
  %watch.0206 = phi ptr [ %add.ptr14, %for.inc.for.body_crit_edge ], [ %add.ptr, %again.for.body_crit_edge ]
  br i1 %all, label %for.body.found_crit_edge, label %lor.lhs.false

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

lor.lhs.false:                                    ; preds = %for.body
  %id4 = getelementptr inbounds %struct.watch, ptr %watch.0206, i32 0, i32 7
  %9 = ptrtoint ptr %id4 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %id)
  %cmp = icmp eq i64 %10, %id
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  %queue = getelementptr inbounds %struct.watch, ptr %watch.0206, i32 0, i32 1
  %11 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %queue, align 8
  %cmp7 = icmp eq ptr %12, %wq
  br i1 %cmp7, label %land.lhs.true.found_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.found_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %list_node = getelementptr inbounds %struct.watch, ptr %watch.0206, i32 0, i32 4
  %13 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list_node, align 8
  %tobool10.not = icmp eq ptr %14, null
  %add.ptr14 = getelementptr i8, ptr %14, i32 -24
  %tobool2.not224 = icmp eq ptr %add.ptr14, null
  %tobool2.not = or i1 %tobool10.not, %tobool2.not224
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %again.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %out

found:                                            ; preds = %land.lhs.true.found_crit_edge, %for.body.found_crit_edge
  %watch.0206.lcssa = phi ptr [ %add.ptr, %for.body.found_crit_edge ], [ %watch.0206, %land.lhs.true.found_crit_edge ]
  %pprev.i.i = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.not.i, label %found.hlist_del_init_rcu.exit_crit_edge, label %if.then.i158

found.hlist_del_init_rcu.exit_crit_edge:          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init_rcu.exit

if.then.i158:                                     ; preds = %found
  %list_node19 = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 4
  %17 = ptrtoint ptr %list_node19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list_node19, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %16, align 4
  %tobool.not.i7.i = icmp eq ptr %18, null
  br i1 %tobool.not.i7.i, label %if.then.i158.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i158.__hlist_del.exit.i_crit_edge:        ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i158.__hlist_del.exit.i_crit_edge
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %found.hlist_del_init_rcu.exit_crit_edge
  %watch_list = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 3
  %22 = ptrtoint ptr %watch_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %watch_list, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %23 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %n, align 8
  %24 = ptrtoint ptr %watch.0206.lcssa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %watch.0206.lcssa, align 8
  %or = or i32 %25, 8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %id, ptr %1, align 8
  br i1 %cmp65.not, label %hlist_del_init_rcu.exit.if.end70_crit_edge, label %if.then66

hlist_del_init_rcu.exit.if.end70_crit_edge:       ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then66:                                        ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %or67 = or i32 %25, 16
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or67, ptr %0, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then66, %hlist_del_init_rcu.exit.if.end70_crit_edge
  %queue75 = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 1
  %29 = ptrtoint ptr %queue75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %queue75, align 8
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool77.not = icmp eq i32 %call, 0
  br i1 %tobool77.not, label %land.lhs.true78, label %if.end70.do.end86_crit_edge

if.end70.do.end86_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

land.lhs.true78:                                  ; preds = %if.end70
  %call79 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %land.lhs.true78.do.end86_crit_edge, label %land.lhs.true81

land.lhs.true78.do.end86_crit_edge:               ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %.b145 = load i1, ptr @remove_watch_from_object.__warned, align 1
  br i1 %.b145, label %land.lhs.true81.do.end86_crit_edge, label %if.then83

land.lhs.true81.do.end86_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

if.then83:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @remove_watch_from_object.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 519, ptr noundef nonnull @.str.3) #9
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %land.lhs.true81.do.end86_crit_edge, %land.lhs.true78.do.end86_crit_edge, %if.end70.do.end86_crit_edge
  %tobool88.not = icmp eq ptr %30, null
  br i1 %tobool88.not, label %do.end86.if.end99_crit_edge, label %if.then89

do.end86.if.end99_crit_edge:                      ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then89:                                        ; preds = %do.end86
  call fastcc void @post_one_notification(ptr noundef nonnull %30, ptr noundef nonnull %n)
  %lock92 = getelementptr inbounds %struct.watch_queue, ptr %30, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock92) #9
  %pprev.i = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i159 = icmp eq ptr %32, null
  br i1 %tobool.not.i159, label %if.then89.if.end97_crit_edge, label %if.then.i163

if.then89.if.end97_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then.i163:                                     ; preds = %if.then89
  %queue_node = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 2
  %33 = ptrtoint ptr %queue_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queue_node, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %32, align 4
  %tobool.not.i7.i162 = icmp eq ptr %34, null
  br i1 %tobool.not.i7.i162, label %if.then.i163.__hlist_del.exit.i166_crit_edge, label %do.body13.i.i165

if.then.i163.__hlist_del.exit.i166_crit_edge:     ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i166

do.body13.i.i165:                                 ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i164 = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %pprev14.i.i164 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %32, ptr %pprev14.i.i164, align 4
  br label %__hlist_del.exit.i166

__hlist_del.exit.i166:                            ; preds = %do.body13.i.i165, %if.then.i163.__hlist_del.exit.i166_crit_edge
  %37 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr null, ptr %pprev.i, align 4
  %usage.i = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %__hlist_del.exit.i166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end97_crit_edge, label %if.then10.i.i.i.i.i, !prof !74

if.end5.i.i.i.i.i.if.end97_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #9
  br label %if.end97

if.then.i.i:                                      ; preds = %__hlist_del.exit.i166
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @call_rcu(ptr noundef nonnull %watch.0206.lcssa, ptr noundef nonnull @free_watch) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end97_crit_edge, %if.then89.if.end97_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock92) #9
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %do.end86.if.end99_crit_edge
  %39 = ptrtoint ptr %release_watch to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %release_watch, align 4
  %tobool100.not = icmp eq ptr %40, null
  br i1 %tobool100.not, label %if.end99.if.end104_crit_edge, label %if.then101

if.end99.if.end104_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then101:                                       ; preds = %if.end99
  %call.i168 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i168, label %if.then101.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i171

if.then101.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i171:                               ; preds = %if.then101
  %call1.i169 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %tobool.not.i170 = icmp eq i32 %call1.i169, 0
  br i1 %tobool.not.i170, label %land.lhs.true.i171.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i173

land.lhs.true.i171.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i173:                              ; preds = %land.lhs.true.i171
  %.b4.i172 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i172, label %land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge, label %if.then.i174

land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i174:                                     ; preds = %land.lhs.true2.i173
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i174, %land.lhs.true2.i173.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i171.rcu_read_unlock.exit_crit_edge, %if.then101.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %41 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i175 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i175 to ptr
  %preempt_count.i.i.i.i176 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i176, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i176, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void %40(ptr noundef nonnull %watch.0206.lcssa) #9
  %45 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i147 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i147 to ptr
  %preempt_count.i.i.i.i148 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i148, align 4
  %add.i.i.i149 = add i32 %48, 1
  store volatile i32 %add.i.i.i149, ptr %preempt_count.i.i.i.i148, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i150 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i150, label %rcu_read_unlock.exit.if.end104_crit_edge, label %land.lhs.true.i153

rcu_read_unlock.exit.if.end104_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

land.lhs.true.i153:                               ; preds = %rcu_read_unlock.exit
  %call1.i151 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i151)
  %tobool.not.i152 = icmp eq i32 %call1.i151, 0
  br i1 %tobool.not.i152, label %land.lhs.true.i153.if.end104_crit_edge, label %land.lhs.true2.i155

land.lhs.true.i153.if.end104_crit_edge:           ; preds = %land.lhs.true.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

land.lhs.true2.i155:                              ; preds = %land.lhs.true.i153
  %.b4.i154 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i154, label %land.lhs.true2.i155.if.end104_crit_edge, label %if.then.i156

land.lhs.true2.i155.if.end104_crit_edge:          ; preds = %land.lhs.true2.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then.i156:                                     ; preds = %land.lhs.true2.i155
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %if.end104

if.end104:                                        ; preds = %if.then.i156, %land.lhs.true2.i155.if.end104_crit_edge, %land.lhs.true.i153.if.end104_crit_edge, %rcu_read_unlock.exit.if.end104_crit_edge, %if.end99.if.end104_crit_edge
  %usage.i177 = getelementptr inbounds %struct.watch, ptr %watch.0206.lcssa, i32 0, i32 8
  %call.i.i.i.i.i.i.i178 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i177, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage.i177, i32 1, i32 3, i32 1) #9
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i177, ptr %usage.i177, i32 1, ptr elementtype(i32) %usage.i177) #9, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i179 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i179)
  %cmp.i.i.i.i.i180 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i179, 1
  br i1 %cmp.i.i.i.i.i180, label %if.then.i.i184, label %if.end5.i.i.i.i.i182

if.end5.i.i.i.i.i182:                             ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i179)
  %.not.i.i.i.i.i181 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i179, 0
  br i1 %.not.i.i.i.i.i181, label %if.end5.i.i.i.i.i182.put_watch.exit185_crit_edge, label %if.then10.i.i.i.i.i183, !prof !74

if.end5.i.i.i.i.i182.put_watch.exit185_crit_edge: ; preds = %if.end5.i.i.i.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_watch.exit185

if.then10.i.i.i.i.i183:                           ; preds = %if.end5.i.i.i.i.i182
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage.i177, i32 noundef 3) #9
  br label %put_watch.exit185

if.then.i.i184:                                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @call_rcu(ptr noundef nonnull %watch.0206.lcssa, ptr noundef nonnull @free_watch) #9
  br label %put_watch.exit185

put_watch.exit185:                                ; preds = %if.then.i.i184, %if.then10.i.i.i.i.i183, %if.end5.i.i.i.i.i182.put_watch.exit185_crit_edge
  br i1 %all, label %land.lhs.true106, label %put_watch.exit185.out_crit_edge

put_watch.exit185.out_crit_edge:                  ; preds = %put_watch.exit185
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true106:                                 ; preds = %put_watch.exit185
  %50 = ptrtoint ptr %watchers to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %watchers, align 4
  %tobool.not.i186.not = icmp eq ptr %51, null
  br i1 %tobool.not.i186.not, label %land.lhs.true106.out_crit_edge, label %land.lhs.true106.again_crit_edge

land.lhs.true106.again_crit_edge:                 ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %again

land.lhs.true106.out_crit_edge:                   ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %land.lhs.true106.out_crit_edge, %put_watch.exit185.out_crit_edge, %for.end
  %ret.1 = phi i32 [ %ret.0, %for.end ], [ 0, %land.lhs.true106.out_crit_edge ], [ 0, %put_watch.exit185.out_crit_edge ]
  %call.i188 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i188, label %out.rcu_read_unlock.exit198_crit_edge, label %land.lhs.true.i191

out.rcu_read_unlock.exit198_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit198

land.lhs.true.i191:                               ; preds = %out
  %call1.i189 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i189)
  %tobool.not.i190 = icmp eq i32 %call1.i189, 0
  br i1 %tobool.not.i190, label %land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge, label %land.lhs.true2.i193

land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge: ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit198

land.lhs.true2.i193:                              ; preds = %land.lhs.true.i191
  %.b4.i192 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i192, label %land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge, label %if.then.i194

land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge: ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit198

if.then.i194:                                     ; preds = %land.lhs.true2.i193
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit198

rcu_read_unlock.exit198:                          ; preds = %if.then.i194, %land.lhs.true2.i193.rcu_read_unlock.exit198_crit_edge, %land.lhs.true.i191.rcu_read_unlock.exit198_crit_edge, %out.rcu_read_unlock.exit198_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %52 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i195 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i195 to ptr
  %preempt_count.i.i.i.i196 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i196, align 4
  %sub.i.i.i197 = add i32 %55, -1
  store volatile i32 %sub.i.i.i197, ptr %preempt_count.i.i.i.i196, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %n) #9
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @watch_queue_clear(ptr noundef %wqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %lock = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %defunct = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 10
  %4 = ptrtoint ptr %defunct to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %defunct, align 4
  %watches = getelementptr inbounds %struct.watch_queue, ptr %wqueue, i32 0, i32 3
  %5 = ptrtoint ptr %watches to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %watches, align 4
  %tobool.not.i106.not148 = icmp eq ptr %6, null
  br i1 %tobool.not.i106.not148, label %rcu_read_lock.exit.while.end_crit_edge, label %rcu_read_lock.exit.while.body_crit_edge

rcu_read_lock.exit.while.body_crit_edge:          ; preds = %rcu_read_lock.exit
  br label %while.body

rcu_read_lock.exit.while.end_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %put_watch.exit135.while.body_crit_edge, %rcu_read_lock.exit.while.body_crit_edge
  %7 = phi ptr [ %38, %put_watch.exit135.while.body_crit_edge ], [ %6, %rcu_read_lock.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %7, i32 -12
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i, label %while.body.hlist_del_init_rcu.exit_crit_edge, label %if.then.i107

while.body.hlist_del_init_rcu.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del_init_rcu.exit

if.then.i107:                                     ; preds = %while.body
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %9, align 4
  %tobool.not.i7.i = icmp eq ptr %11, null
  br i1 %tobool.not.i7.i, label %if.then.i107.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i107.__hlist_del.exit.i_crit_edge:        ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i107.__hlist_del.exit.i_crit_edge
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %while.body.hlist_del_init_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %watch_list = getelementptr i8, ptr %7, i32 8
  %15 = ptrtoint ptr %watch_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %watch_list, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %hlist_del_init_rcu.exit.do.end12_crit_edge

hlist_del_init_rcu.exit.do.end12_crit_edge:       ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true:                                    ; preds = %hlist_del_init_rcu.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b94 = load i1, ptr @watch_queue_clear.__warned, align 1
  br i1 %.b94, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @watch_queue_clear.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 583, ptr noundef nonnull @.str.3) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %hlist_del_init_rcu.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %do.end12.if.end69_crit_edge, label %if.then15

do.end12.if.end69_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then15:                                        ; preds = %do.end12
  %lock16 = getelementptr inbounds %struct.watch_list, ptr %16, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock16) #9
  %pprev.i = getelementptr i8, ptr %7, i32 16
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i108 = icmp eq ptr %18, null
  br i1 %tobool.not.i108, label %if.end60, label %if.then.i113

if.then.i113:                                     ; preds = %if.then15
  %list_node = getelementptr i8, ptr %7, i32 12
  %19 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list_node, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %18, align 4
  %tobool.not.i7.i112 = icmp eq ptr %20, null
  br i1 %tobool.not.i7.i112, label %if.then.i113.__hlist_del.exit.i116_crit_edge, label %do.body13.i.i115

if.then.i113.__hlist_del.exit.i116_crit_edge:     ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i116

do.body13.i.i115:                                 ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i114 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev14.i.i114 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %18, ptr %pprev14.i.i114, align 4
  br label %__hlist_del.exit.i116

__hlist_del.exit.i116:                            ; preds = %do.body13.i.i115, %if.then.i113.__hlist_del.exit.i116_crit_edge
  %23 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr null, ptr %pprev.i, align 4
  %24 = ptrtoint ptr %watch_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr null, ptr %watch_list, align 4
  %release_watch61147 = getelementptr inbounds %struct.watch_list, ptr %16, i32 0, i32 2
  %25 = ptrtoint ptr %release_watch61147 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %release_watch61147, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock16) #9
  %tobool65.not = icmp eq ptr %26, null
  br i1 %tobool65.not, label %__hlist_del.exit.i116.if.end67_crit_edge, label %if.then66

__hlist_del.exit.i116.if.end67_crit_edge:         ; preds = %__hlist_del.exit.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end60:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock16) #9
  br label %if.end69

if.then66:                                        ; preds = %__hlist_del.exit.i116
  %call.i118 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i118, label %if.then66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i121

if.then66.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i121:                               ; preds = %if.then66
  %call1.i119 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %tobool.not.i120 = icmp eq i32 %call1.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i123

land.lhs.true.i121.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i123:                              ; preds = %land.lhs.true.i121
  %.b4.i122 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i122, label %land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge, label %if.then.i124

land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i124:                                     ; preds = %land.lhs.true2.i123
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i124, %land.lhs.true2.i123.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i121.rcu_read_unlock.exit_crit_edge, %if.then66.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %27 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i125 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i125 to ptr
  %preempt_count.i.i.i.i126 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i126 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i126, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i126, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  tail call void %26(ptr noundef %add.ptr) #9
  %31 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i95 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i96, align 4
  %add.i.i.i97 = add i32 %34, 1
  store volatile i32 %add.i.i.i97, ptr %preempt_count.i.i.i.i96, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i98 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i98, label %rcu_read_unlock.exit.if.end67_crit_edge, label %land.lhs.true.i101

rcu_read_unlock.exit.if.end67_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

land.lhs.true.i101:                               ; preds = %rcu_read_unlock.exit
  %call1.i99 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i99)
  %tobool.not.i100 = icmp eq i32 %call1.i99, 0
  br i1 %tobool.not.i100, label %land.lhs.true.i101.if.end67_crit_edge, label %land.lhs.true2.i103

land.lhs.true.i101.if.end67_crit_edge:            ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

land.lhs.true2.i103:                              ; preds = %land.lhs.true.i101
  %.b4.i102 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i102, label %land.lhs.true2.i103.if.end67_crit_edge, label %if.then.i104

land.lhs.true2.i103.if.end67_crit_edge:           ; preds = %land.lhs.true2.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then.i104:                                     ; preds = %land.lhs.true2.i103
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #9
  br label %if.end67

if.end67:                                         ; preds = %if.then.i104, %land.lhs.true2.i103.if.end67_crit_edge, %land.lhs.true.i101.if.end67_crit_edge, %rcu_read_unlock.exit.if.end67_crit_edge, %__hlist_del.exit.i116.if.end67_crit_edge
  %usage.i = getelementptr i8, ptr %7, i32 36
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #9, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end69_crit_edge, label %if.then10.i.i.i.i.i, !prof !74

if.end5.i.i.i.i.i.if.end69_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #9
  br label %if.end69

if.then.i.i:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @call_rcu(ptr noundef %add.ptr, ptr noundef nonnull @free_watch) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end69_crit_edge, %if.end60, %do.end12.if.end69_crit_edge
  %usage.i127 = getelementptr i8, ptr %7, i32 36
  %call.i.i.i.i.i.i.i128 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i127, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %usage.i127, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i127, ptr %usage.i127, i32 1, ptr elementtype(i32) %usage.i127) #9, !srcloc !93
  %asmresult.i.i.i.i.i.i.i.i129 = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i129)
  %cmp.i.i.i.i.i130 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i129, 1
  br i1 %cmp.i.i.i.i.i130, label %if.then.i.i134, label %if.end5.i.i.i.i.i132

if.end5.i.i.i.i.i132:                             ; preds = %if.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i129)
  %.not.i.i.i.i.i131 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i129, 0
  br i1 %.not.i.i.i.i.i131, label %if.end5.i.i.i.i.i132.put_watch.exit135_crit_edge, label %if.then10.i.i.i.i.i133, !prof !74

if.end5.i.i.i.i.i132.put_watch.exit135_crit_edge: ; preds = %if.end5.i.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_watch.exit135

if.then10.i.i.i.i.i133:                           ; preds = %if.end5.i.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %usage.i127, i32 noundef 3) #9
  br label %put_watch.exit135

if.then.i.i134:                                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @call_rcu(ptr noundef %add.ptr, ptr noundef nonnull @free_watch) #9
  br label %put_watch.exit135

put_watch.exit135:                                ; preds = %if.then.i.i134, %if.then10.i.i.i.i.i133, %if.end5.i.i.i.i.i132.put_watch.exit135_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %37 = ptrtoint ptr %watches to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %watches, align 4
  %tobool.not.i106.not = icmp eq ptr %38, null
  br i1 %tobool.not.i106.not, label %put_watch.exit135.while.end_crit_edge, label %put_watch.exit135.while.body_crit_edge

put_watch.exit135.while.body_crit_edge:           ; preds = %put_watch.exit135
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

put_watch.exit135.while.end_crit_edge:            ; preds = %put_watch.exit135
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %put_watch.exit135.while.end_crit_edge, %rcu_read_lock.exit.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %call.i136 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i136, label %while.end.rcu_read_unlock.exit146_crit_edge, label %land.lhs.true.i139

while.end.rcu_read_unlock.exit146_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit146

land.lhs.true.i139:                               ; preds = %while.end
  %call1.i137 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137)
  %tobool.not.i138 = icmp eq i32 %call1.i137, 0
  br i1 %tobool.not.i138, label %land.lhs.true.i139.rcu_read_unlock.exit146_crit_edge, label %land.lhs.true2.i141

land.lhs.true.i139.rcu_read_unlock.exit146_crit_edge: ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit146

land.lhs.true2.i141:                              ; preds = %land.lhs.true.i139
  %.b4.i140 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i140, label %land.lhs.true2.i141.rcu_read_unlock.exit146_crit_edge, label %if.then.i142

land.lhs.true2.i141.rcu_read_unlock.exit146_crit_edge: ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit146

if.then.i142:                                     ; preds = %land.lhs.true2.i141
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit146

rcu_read_unlock.exit146:                          ; preds = %if.then.i142, %land.lhs.true2.i141.rcu_read_unlock.exit146_crit_edge, %land.lhs.true.i139.rcu_read_unlock.exit146_crit_edge, %while.end.rcu_read_unlock.exit146_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  %39 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i143 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i143 to ptr
  %preempt_count.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i144, align 4
  %sub.i.i.i145 = add i32 %42, -1
  store volatile i32 %sub.i.i.i145, ptr %preempt_count.i.i.i.i144, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_watch_queue(i32 noundef %fd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__fdget(i32 noundef %fd) #9, !noalias !105
  %and.i.i = and i32 %call.i, -4
  %0 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @get_pipe_info(ptr noundef nonnull %0, i1 noundef zeroext false) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %watch_queue = getelementptr inbounds %struct.pipe_inode_info, ptr %call2, i32 0, i32 20
  %1 = ptrtoint ptr %watch_queue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %watch_queue, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %usage = getelementptr inbounds %struct.watch_queue, ptr %2, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #9, !srcloc !104
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !75

if.then5.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !74

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %wqueue.0 = phi ptr [ inttoptr (i32 -22 to ptr), %land.lhs.true.if.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.if.end_crit_edge ], [ %2, %if.else.i.i.i.i.if.end_crit_edge ], [ %2, %if.end15.sink.split.i.i.i.i ]
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end7_crit_edge, label %if.then.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fput(ptr noundef nonnull %0) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  %wqueue.1 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.if.end7_crit_edge ], [ %wqueue.0, %if.end.if.end7_crit_edge ], [ %wqueue.0, %if.then.i ]
  ret ptr %wqueue.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pipe_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @watch_queue_init(ptr noundef %pipe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pipe1 = getelementptr inbounds %struct.watch_queue, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %pipe1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pipe, ptr %pipe1, align 4
  %usage = getelementptr inbounds %struct.watch_queue, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #9
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %usage, align 4
  %lock = getelementptr inbounds %struct.watch_queue, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @watch_queue_init.__key, i16 noundef signext 3) #9
  %watches = getelementptr inbounds %struct.watch_queue, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %watches to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %watches, align 8
  %watch_queue = getelementptr inbounds %struct.pipe_inode_info, ptr %pipe, i32 0, i32 20
  %4 = ptrtoint ptr %watch_queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %watch_queue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_sync_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @watch_queue_pipe_buf_release(ptr noundef %pipe, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %offset = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %len = getelementptr inbounds %struct.pipe_buffer, ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add = add i32 %5, %3
  %and = and i32 %add, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %sub = add i32 %add, -128
  %spec.select = select i1 %cmp, i32 %sub, i32 %add
  %6 = inttoptr i32 %1 to ptr
  %div11 = lshr i32 %spec.select, 7
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %index = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %add2 = add i32 %div11, %10
  %notes_bitmap = getelementptr inbounds %struct.watch_queue, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %notes_bitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notes_bitmap, align 4
  tail call void @_set_bit(i32 noundef %add2, ptr noundef %12) #9
  tail call void @generic_pipe_buf_release(ptr noundef %pipe, ptr noundef %buf) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @generic_pipe_buf_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_pipe_buf_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_watch(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.watch, ptr %rcu, i32 0, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 8
  tail call void @put_watch_queue(ptr noundef %1)
  %cred = getelementptr inbounds %struct.watch, ptr %rcu, i32 0, i32 5
  %2 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cred, align 8
  %user = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user, align 4
  %nr_watches = getelementptr inbounds %struct.user_struct, ptr %5, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_watches, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nr_watches, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_watches, ptr %nr_watches, i32 1, ptr elementtype(i32) %nr_watches) #9, !srcloc !100
  %7 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cred, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i6 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %8) #9
  br i1 %call.i.i6, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !75

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %8, ptr noundef nonnull @.str.15, i32 noundef 286) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @llvm.prefetch.p0(ptr nonnull %8, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #9, !srcloc !102
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %8) #9
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !42, !43, !45, !47, !49, !50, !52, !54, !55, !57, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__UNIQUE_ID_description243, !1, !"__UNIQUE_ID_description243", i1 false, i1 false}
!1 = !{!"../kernel/watch_queue.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_author244, !3, !"__UNIQUE_ID_author244", i1 false, i1 false}
!3 = !{!"../kernel/watch_queue.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file245, !5, !"__UNIQUE_ID_file245", i1 false, i1 false}
!5 = !{!"../kernel/watch_queue.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license246, !5, !"__UNIQUE_ID_license246", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../kernel/watch_queue.c", i32 186, i32 3}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../kernel/watch_queue.c", i32 192, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../kernel/watch_queue.c", i32 198, i32 12}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../kernel/watch_queue.c", i32 199, i32 8}
!17 = !{ptr @__ksymtab___post_watch_notification, !18, !"__ksymtab___post_watch_notification", i1 false, i1 false}
!18 = !{!"../kernel/watch_queue.c", i32 211, i32 1}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../kernel/watch_queue.c", i32 352, i32 12}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_put_watch_queue, !23, !"__ksymtab_put_watch_queue", i1 false, i1 false}
!23 = !{!"../kernel/watch_queue.c", i32 389, i32 1}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../kernel/watch_queue.c", i32 453, i32 16}
!26 = !{ptr @__ksymtab_add_watch_to_object, !27, !"__ksymtab_add_watch_to_object", i1 false, i1 false}
!27 = !{!"../kernel/watch_queue.c", i32 472, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../kernel/watch_queue.c", i32 519, i32 11}
!30 = !{ptr @__ksymtab_remove_watch_from_object, !31, !"__ksymtab_remove_watch_from_object", i1 false, i1 false}
!31 = !{!"../kernel/watch_queue.c", i32 553, i32 1}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../kernel/watch_queue.c", i32 583, i32 11}
!34 = !{ptr @__ksymtab_get_watch_queue, !35, !"__ksymtab_get_watch_queue", i1 false, i1 false}
!35 = !{!"../kernel/watch_queue.c", i32 643, i32 1}
!36 = !{ptr @watch_queue_init.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../kernel/watch_queue.c", i32 658, i32 2}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!45 = !{ptr @watch_queue_pipe_buf_ops, !46, !"watch_queue_pipe_buf_ops", i1 false, i1 false}
!46 = !{!"../kernel/watch_queue.c", i32 64, i32 41}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/cred.h", i32 253, i32 2}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2149370979}
!72 = !{i64 2149371245}
!73 = !{i8 0, i8 2}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2153611023, i64 2153611507, i64 2153611060, i64 2153611116, i64 2153611150, i64 2153611174, i64 2153611215, i64 2153611236, i64 2153611264, i64 2153611298}
!77 = !{i64 2148354820, i64 2148354846, i64 2148354875, i64 2148354909, i64 2148354940, i64 2148354963}
!78 = !{i64 2148968197, i64 2148968202, i64 2148968215, i64 2148968259, i64 2148968293, i64 2148968314}
!79 = !{i64 2154028890}
!80 = !{i64 2153065209}
!81 = !{i64 2153065416}
!82 = !{i64 2154031661}
!83 = !{i64 2154219508}
!84 = !{i64 2154222014, i64 2154222499, i64 2154222051, i64 2154222107, i64 2154222141, i64 2154222165, i64 2154222206, i64 2154222227, i64 2154222255, i64 2154222289}
!85 = !{i32 0, i32 33}
!86 = !{!"auto-init"}
!87 = !{i64 2153062392, i64 2153062417}
!88 = !{i64 5557947}
!89 = !{i64 5558144}
!90 = !{i64 2153043377}
!91 = !{i64 2154263430}
!92 = !{i64 2148444375}
!93 = !{i64 2148358815, i64 2148358847, i64 2148358876, i64 2148358910, i64 2148358941, i64 2148358964}
!94 = !{i64 2149320489}
!95 = !{i64 2154294157}
!96 = !{i64 2154312729}
!97 = !{i64 2148440255}
!98 = !{i64 2148355540, i64 2148355572, i64 2148355601, i64 2148355635, i64 2148355666, i64 2148355689}
!99 = !{i64 2148440484}
!100 = !{i64 2148357285, i64 2148357311, i64 2148357340, i64 2148357374, i64 2148357405, i64 2148357428}
!101 = !{i64 2148443296}
!102 = !{i64 2148358005, i64 2148358037, i64 2148358066, i64 2148358100, i64 2148358131, i64 2148358154}
!103 = !{i64 2148443525}
!104 = !{i64 2148356350, i64 2148356382, i64 2148356411, i64 2148356445, i64 2148356476, i64 2148356499}
!105 = !{!106}
!106 = distinct !{!106, !107, !"fdget: %agg.result"}
!107 = distinct !{!107, !"fdget"}
