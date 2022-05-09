; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/umem.c_pt.bc'
source_filename = "../drivers/infiniband/core/umem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_umem_find_best_pgsz\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_find_best_pgsz\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_find_best_pgsz\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_find_best_pgsz:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_find_best_pgsz\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_find_best_pgsz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_umem_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_get\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_get\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_umem_release\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_release\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_release:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_release\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_umem_copy_from\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_umem_copy_from\09\09\09\09"
module asm "\09.long\09__crc_ib_umem_copy_from\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_umem_copy_from:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_umem_copy_from\22\09\09\09\09\09"
module asm "__kstrtabns_ib_umem_copy_from:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ib_umem_odp = type { %struct.ib_umem, %struct.mmu_interval_notifier, ptr, ptr, ptr, %struct.mutex, ptr, i32, i8, i32 }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%union.anon.109 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__kstrtab_ib_umem_find_best_pgsz = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_find_best_pgsz = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_find_best_pgsz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_find_best_pgsz to i32), ptr @__kstrtab_ib_umem_find_best_pgsz, ptr @__kstrtabns_ib_umem_find_best_pgsz }, section "___ksymtab+ib_umem_find_best_pgsz", align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/infiniband/core/umem.c\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_ib_umem_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_get to i32), ptr @__kstrtab_ib_umem_get, ptr @__kstrtabns_ib_umem_get }, section "___ksymtab+ib_umem_get", align 4
@__kstrtab_ib_umem_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_release = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_release to i32), ptr @__kstrtab_ib_umem_release, ptr @__kstrtabns_ib_umem_release }, section "___ksymtab+ib_umem_release", align 4
@ib_umem_copy_from._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s not in range. offset: %zd umem length: %zd end: %zd\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ib_umem_copy_from\00", [46 x i8] zeroinitializer }, align 32
@ib_umem_copy_from._entry_ptr = internal global ptr @ib_umem_copy_from._entry, section ".printk_index", align 4
@__kstrtab_ib_umem_copy_from = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_umem_copy_from = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_umem_copy_from = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_umem_copy_from to i32), ptr @__kstrtab_ib_umem_copy_from, ptr @__kstrtabns_ib_umem_copy_from }, section "___ksymtab+ib_umem_copy_from", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 217, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [34 x i8] c"../drivers/infiniband/core/umem.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 301, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ib_umem_copy_from, ptr @__ksymtab_ib_umem_find_best_pgsz, ptr @__ksymtab_ib_umem_get, ptr @__ksymtab_ib_umem_release, ptr @ib_umem_copy_from._entry, ptr @ib_umem_copy_from._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_umem_copy_from._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_umem_find_best_pgsz(ptr nocapture noundef %umem, i32 noundef %pgsz_bitmap, i32 noundef %virt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_odp = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 5
  %0 = ptrtoint ptr %is_odp to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_odp, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %page_shift = getelementptr inbounds %struct.ib_umem_odp, ptr %umem, i32 0, i32 9
  %2 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_shift, align 8
  %shl = shl nuw i32 1, %3
  %and = and i32 %shl, %pgsz_bitmap
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %.shl = select i1 %tobool1.not, i32 0, i32 %shl
  br label %cleanup113

if.end3:                                          ; preds = %entry
  %and4 = and i32 %pgsz_bitmap, -4096
  %conv = zext i32 %virt to i64
  %iova = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 2
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %iova, align 8
  %length = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 8
  %sub = add i32 %virt, -1
  %add = add i32 %sub, %6
  %xor = xor i32 %add, %virt
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor)
  %switch = icmp ult i32 %xor, 2
  br i1 %switch, label %if.end3.cond.end53_crit_edge, label %if.end.i

if.end3.cond.end53_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end53

if.end.i:                                         ; preds = %if.end3
  %7 = tail call i32 @llvm.ctpop.i32(i32 %xor) #7, !range !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.i.i = icmp ult i32 %7, 2
  %sub.i = add i32 %xor, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 false) #7, !range !25
  br i1 %cmp1.i.i, label %cond.end21.i, label %__order_base_2.exit86.i

cond.end21.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add23.i = sub nuw nsw i32 33, %8
  br label %cond.end53

__order_base_2.exit86.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i85.i = sub nuw nsw i32 32, %8
  br label %cond.end53

cond.end53:                                       ; preds = %__order_base_2.exit86.i, %cond.end21.i, %if.end3.cond.end53_crit_edge
  %cond54 = phi i32 [ %add23.i, %cond.end21.i ], [ 1, %if.end3.cond.end53_crit_edge ], [ %add.i85.i, %__order_base_2.exit86.i ]
  %shl55.neg = shl nsw i32 -1, %cond54
  %and60 = and i32 %shl55.neg, %and4
  %nents = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 1
  %9 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp64169.not = icmp eq i32 %10, 0
  br i1 %cmp64169.not, label %cond.end53.for.end_crit_edge, label %for.body.preheader

cond.end53.for.end_crit_edge:                     ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %cond.end53
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %11 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sgt_append, align 8
  %address = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 4
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address, align 4
  %and61 = and i32 %14, 4095
  %dma_address.peel = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %dma_address.peel to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_address.peel, align 4
  %add66.peel = add i32 %16, %and61
  %xor67.peel = xor i32 %add66.peel, %virt
  %or.peel = or i32 %xor67.peel, %and60
  %dma_length.peel = getelementptr inbounds %struct.scatterlist, ptr %12, i32 0, i32 4
  %17 = ptrtoint ptr %dma_length.peel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_length.peel, align 4
  %sub68.peel = sub i32 %18, %and61
  %add69.peel = add i32 %sub68.peel, %virt
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp74.not.peel = icmp eq i32 %10, 1
  %or77.peel = select i1 %cmp74.not.peel, i32 0, i32 %add69.peel
  %spec.select.peel = or i32 %or.peel, %or77.peel
  %call79.peel = tail call ptr @sg_next(ptr noundef %12) #7
  %19 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp64.peel = icmp ugt i32 %20, 1
  br i1 %cmp64.peel, label %for.body.preheader.for.body_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader.for.body_crit_edge:            ; preds = %for.body.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader.for.body_crit_edge
  %21 = phi i32 [ %27, %for.body.for.body_crit_edge ], [ %20, %for.body.preheader.for.body_crit_edge ]
  %i.0174 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader.for.body_crit_edge ]
  %mask.0173 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ %spec.select.peel, %for.body.preheader.for.body_crit_edge ]
  %va.0171 = phi i32 [ %add69, %for.body.for.body_crit_edge ], [ %add69.peel, %for.body.preheader.for.body_crit_edge ]
  %sg.0170 = phi ptr [ %call79, %for.body.for.body_crit_edge ], [ %call79.peel, %for.body.preheader.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0170, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address, align 4
  %xor67 = xor i32 %23, %va.0171
  %or = or i32 %xor67, %mask.0173
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0170, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length, align 4
  %add69 = add i32 %25, %va.0171
  %sub73 = add i32 %21, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0174, i32 %sub73)
  %cmp74.not = icmp eq i32 %i.0174, %sub73
  %or77 = select i1 %cmp74.not, i32 0, i32 %add69
  %spec.select = or i32 %or, %or77
  %inc = add nuw i32 %i.0174, 1
  %call79 = tail call ptr @sg_next(ptr noundef %sg.0170) #7
  %26 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nents, align 4
  %cmp64 = icmp ult i32 %inc, %27
  br i1 %cmp64, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !26

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %cond.end53.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ %and60, %cond.end53.for.end_crit_edge ], [ %spec.select.peel, %for.body.preheader.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.0.lcssa)
  %tobool80.not = icmp eq i32 %mask.0.lcssa, 0
  br i1 %tobool80.not, label %for.end.if.end87_crit_edge, label %if.then81

for.end.if.end87_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call i32 @llvm.cttz.i32(i32 %mask.0.lcssa, i1 true) #7, !range !25
  %sub83 = sub nsw i32 30, %28
  %shr = lshr i32 -1, %sub83
  %and86 = and i32 %shr, %and4
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %for.end.if.end87_crit_edge
  %pgsz_bitmap.addr.0 = phi i32 [ %and86, %if.then81 ], [ %and4, %for.end.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgsz_bitmap.addr.0)
  %tobool88.not = icmp eq i32 %pgsz_bitmap.addr.0, 0
  br i1 %tobool88.not, label %if.end87.cleanup113_crit_edge, label %cond.false106

if.end87.cleanup113_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup113

cond.false106:                                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call i32 @llvm.ctlz.i32(i32 %pgsz_bitmap.addr.0, i1 true) #7, !range !25
  %shl.i = lshr i32 -2147483648, %29
  br label %cleanup113

cleanup113:                                       ; preds = %cond.false106, %if.end87.cleanup113_crit_edge, %if.then
  %retval.1 = phi i32 [ %.shl, %if.then ], [ %shl.i, %cond.false106 ], [ 0, %if.end87.cleanup113_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_umem_get(ptr noundef %device, i32 noundef %addr, i32 noundef %size, i32 noundef %access) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, %addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr)
  %cmp = icmp ult i32 %add, %addr
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add2 = add i32 %add, 4095
  %and = and i32 %add2, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add)
  %cmp4 = icmp ult i32 %and, %add
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call5 = tail call zeroext i1 @can_do_mlock() #7
  br i1 %call5, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %and9 = and i32 %access, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #10
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %device, ptr %call7.i.i, align 8
  %length = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %length, align 8
  %address = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %address to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %addr, ptr %address, align 4
  %conv = zext i32 %addr to i64
  %iova = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %iova to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %iova, align 8
  %and.i = and i32 %access, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %writable = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %writable, align 8
  %bf.shl = select i1 %tobool.i.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %writable, align 8
  %6 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i162 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i162 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm21 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm21, align 8
  %owning_mm = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %owning_mm to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %owning_mm, align 4
  %mm_count.i = getelementptr inbounds %struct.anon.10, ptr %11, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #7, !srcloc !28
  %call22 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %14 = inttoptr i32 %call22 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end17.if.then82_crit_edge, label %if.end25

if.end17.if.then82_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end25:                                         ; preds = %if.end17
  %15 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %iova, align 8
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 8
  %conv.i.i = zext i32 %18 to i64
  %add.i.i = add i64 %16, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %16, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div1.i.i = lshr exact i32 %conv17.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv17.i.i)
  %cmp27 = icmp eq i32 %conv17.i.i, 0
  br i1 %cmp27, label %if.end25.umem_kfree.thread180_crit_edge, label %if.end33

if.end25.umem_kfree.thread180_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %umem_kfree.thread180

if.end33:                                         ; preds = %if.end25
  %19 = tail call i32 @llvm.read_register.i32(metadata !15) #7
  %and.i.i163 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i163 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 111
  %23 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %24, i32 0, i32 51, i32 8
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i.i, align 8
  %shr = lshr i32 %26, 12
  %conv35 = zext i32 %div1.i.i to i64
  %pinned_vm = getelementptr inbounds %struct.anon.10, ptr %11, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pinned_vm, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_add_return(i64 noundef %conv35, ptr noundef %pinned_vm) #7
  %conv37 = trunc i64 %call.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv37)
  %cmp38 = icmp ult i32 %shr, %conv37
  br i1 %cmp38, label %land.lhs.true, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end33
  %call40 = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call40, label %land.lhs.true.if.end44_crit_edge, label %land.lhs.true.umem_kfree.thread180.sink.split_crit_edge

land.lhs.true.umem_kfree.thread180.sink.split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %umem_kfree.thread180.sink.split

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end33.if.end44_crit_edge
  %and45 = and i32 %addr, -4096
  %27 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load47 = load i8, ptr %writable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load47)
  %tobool48.not = icmp sgt i8 %bf.load47, -1
  %spec.select = select i1 %tobool48.not, i32 65553, i32 65537
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %call7.i.i, i32 0, i32 7
  br label %while.cond

while.cond:                                       ; preds = %ib_dma_max_seg_size.exit.while.cond_crit_edge, %if.end44
  %cur_base.0 = phi i32 [ %and45, %if.end44 ], [ %add62, %ib_dma_max_seg_size.exit.while.cond_crit_edge ]
  %npages.0 = phi i32 [ %div1.i.i, %if.end44 ], [ %sub, %ib_dma_max_seg_size.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages.0)
  %tobool51.not = icmp eq i32 %npages.0, 0
  br i1 %tobool51.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 0) #7
  %call.i164 = tail call i32 @__cond_resched() #7
  %28 = tail call i32 @llvm.umin.i32(i32 %npages.0, i32 1024)
  %call57 = tail call i32 @pin_user_pages_fast(i32 noundef %cur_base.0, i32 noundef %28, i32 noundef %spec.select, ptr noundef nonnull %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %while.body.umem_release_crit_edge, label %if.end61

while.body.umem_release_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %umem_release

if.end61:                                         ; preds = %while.body
  %mul = shl i32 %call57, 12
  %add62 = add i32 %mul, %cur_base.0
  %sub = sub i32 %npages.0, %call57
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 8
  %dma_parms.i.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end61.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end61.if.end.i.i_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end61
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool2.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.ib_dma_max_seg_size.exit_crit_edge

land.lhs.true.i.i.ib_dma_max_seg_size.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_dma_max_seg_size.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end61.if.end.i.i_crit_edge
  br label %ib_dma_max_seg_size.exit

ib_dma_max_seg_size.exit:                         ; preds = %if.end.i.i, %land.lhs.true.i.i.ib_dma_max_seg_size.exit_crit_edge
  %retval.0.i.i = phi i32 [ 65536, %if.end.i.i ], [ %34, %land.lhs.true.i.i.ib_dma_max_seg_size.exit_crit_edge ]
  %call64 = tail call i32 @sg_alloc_append_table_from_pages(ptr noundef %sgt_append, ptr noundef nonnull %14, i32 noundef %call57, i32 noundef 0, i32 noundef %mul, i32 noundef %retval.0.i.i, i32 noundef %sub, i32 noundef 3264) #7
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %ib_dma_max_seg_size.exit.while.cond_crit_edge, label %if.then66

ib_dma_max_seg_size.exit.while.cond_crit_edge:    ; preds = %ib_dma_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then66:                                        ; preds = %ib_dma_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %14, i32 noundef %call57, i1 noundef zeroext false) #7
  br label %umem_release

while.end:                                        ; preds = %while.cond
  %and68 = lshr i32 %access, 19
  %35 = and i32 %and68, 2
  %36 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device, align 8
  %call5.i = tail call i32 @dma_map_sgtable(ptr noundef %37, ptr noundef %sgt_append, i32 noundef 0, i32 noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool75.not = icmp eq i32 %call5.i, 0
  br i1 %tobool75.not, label %umem_kfree, label %while.end.umem_release_crit_edge

while.end.umem_release_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %umem_release

umem_release:                                     ; preds = %while.end.umem_release_crit_edge, %if.then66, %while.body.umem_release_crit_edge
  %ret.0 = phi i32 [ %call64, %if.then66 ], [ %call5.i, %while.end.umem_release_crit_edge ], [ %call57, %while.body.umem_release_crit_edge ]
  tail call fastcc void @__ib_umem_release(ptr noundef %device, ptr noundef nonnull %call7.i.i, i32 noundef 0)
  %38 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %iova, align 8
  %40 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length, align 8
  %conv.i.i167 = zext i32 %41 to i64
  %add.i.i168 = add i64 %39, 4095
  %add2.i.i169 = add i64 %add.i.i168, %conv.i.i167
  %and.i.i170 = and i64 %add2.i.i169, 4294963200
  %and15.i.i171 = and i64 %39, 4294963200
  %sub16.i.i172 = sub nsw i64 %and.i.i170, %and15.i.i171
  %conv17.i.i173 = trunc i64 %sub16.i.i172 to i32
  %div1.i.i174 = lshr exact i32 %conv17.i.i173, 12
  %conv79 = zext i32 %div1.i.i174 to i64
  br label %umem_kfree.thread180.sink.split

umem_kfree.thread180.sink.split:                  ; preds = %umem_release, %land.lhs.true.umem_kfree.thread180.sink.split_crit_edge
  %conv79.sink = phi i64 [ %conv79, %umem_release ], [ %conv35, %land.lhs.true.umem_kfree.thread180.sink.split_crit_edge ]
  %ret.1.ph.ph = phi i32 [ %ret.0, %umem_release ], [ -12, %land.lhs.true.umem_kfree.thread180.sink.split_crit_edge ]
  %call.i.i161 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pinned_vm, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef %conv79.sink, ptr noundef %pinned_vm) #7
  br label %umem_kfree.thread180

umem_kfree.thread180:                             ; preds = %umem_kfree.thread180.sink.split, %if.end25.umem_kfree.thread180_crit_edge
  %ret.1.ph = phi i32 [ -22, %if.end25.umem_kfree.thread180_crit_edge ], [ %ret.1.ph.ph, %umem_kfree.thread180.sink.split ]
  tail call void @free_pages(i32 noundef %call22, i32 noundef 0) #7
  br label %if.then82

umem_kfree:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_pages(i32 noundef %call22, i32 noundef 0) #7
  br label %cleanup

if.then82:                                        ; preds = %umem_kfree.thread180, %if.end17.if.then82_crit_edge
  %ret.2179 = phi i32 [ %ret.1.ph, %umem_kfree.thread180 ], [ -12, %if.end17.if.then82_crit_edge ]
  %42 = ptrtoint ptr %owning_mm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %owning_mm, align 4
  %mm_count.i175 = getelementptr inbounds %struct.anon.10, ptr %43, i32 0, i32 11
  %call.i.i.i176 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i175, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %mm_count.i175, i32 1, i32 3, i32 1) #7
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i175, ptr %mm_count.i175, i32 1, ptr elementtype(i32) %mm_count.i175) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then82.mmdrop.exit_crit_edge, !prof !32

if.then82.mmdrop.exit_crit_edge:                  ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmdrop.exit

if.then.i:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmdrop(ptr noundef %43) #7
  br label %mmdrop.exit

mmdrop.exit:                                      ; preds = %if.then.i, %if.then82.mmdrop.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %45 = inttoptr i32 %ret.2179 to ptr
  br label %cleanup

cleanup:                                          ; preds = %mmdrop.exit, %umem_kfree, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %45, %mmdrop.exit ], [ %call7.i.i, %umem_kfree ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @can_do_mlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_append_table_from_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ib_umem_release(ptr nocapture noundef readonly %dev, ptr noundef %umem, i32 noundef %dirty) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %writable = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 5
  %0 = ptrtoint ptr %writable to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %writable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not = icmp slt i8 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty)
  %tobool1 = icmp ne i32 %dirty, 0
  %spec.select = and i1 %tobool1, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty)
  %tobool2.not = icmp eq i32 %dirty, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sgt_append, align 4
  %orig_nents.i.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 2
  %5 = ptrtoint ptr %orig_nents.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %orig_nents.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %2, ptr noundef %4, i32 noundef %6, i32 noundef 0, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sgt_append3 = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %orig_nents = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %orig_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19.not = icmp eq i32 %8, 0
  br i1 %cmp19.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %sgt_append3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sgt_append3, align 8
  br label %for.body

for.body:                                         ; preds = %sg_page.exit.for.body_crit_edge, %for.body.preheader
  %i.021 = phi i32 [ %inc, %sg_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.020 = phi ptr [ %call8, %sg_page.exit.for.body_crit_edge ], [ %10, %for.body.preheader ]
  %11 = ptrtoint ptr %sg.020 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg.020, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !33

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !34
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %12, -4
  %13 = inttoptr i32 %and.i to ptr
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.020, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %sub = add i32 %15, 4095
  %div18 = lshr i32 %sub, 12
  tail call void @unpin_user_page_range_dirty_lock(ptr noundef %13, i32 noundef %div18, i1 noundef zeroext %spec.select) #7
  %inc = add nuw i32 %i.021, 1
  %call8 = tail call ptr @sg_next(ptr noundef %sg.020) #7
  %16 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %orig_nents, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %sg_page.exit.for.body_crit_edge, label %sg_page.exit.for.end_crit_edge

sg_page.exit.for.end_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

sg_page.exit.for.body_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %sg_page.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @sg_free_append_table(ptr noundef %sgt_append3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_umem_release(ptr noundef %umem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %umem, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %is_dmabuf = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 5
  %0 = ptrtoint ptr %is_dmabuf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_dmabuf, align 8
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ib_umem_dmabuf_release(ptr noundef nonnull %umem) #7
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool8.not = icmp eq i8 %2, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ib_umem_odp_release(ptr noundef nonnull %umem) #7
  br label %return

if.end11:                                         ; preds = %if.end3
  %3 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %umem, align 8
  tail call fastcc void @__ib_umem_release(ptr noundef %4, ptr noundef nonnull %umem, i32 noundef 1)
  %iova.i.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 2
  %5 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %iova.i.i, align 8
  %length.i.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
  %7 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length.i.i, align 8
  %conv.i.i = zext i32 %8 to i64
  %add.i.i = add i64 %6, 4095
  %add2.i.i = add i64 %add.i.i, %conv.i.i
  %and.i.i = and i64 %add2.i.i, 4294963200
  %and15.i.i = and i64 %6, 4294963200
  %sub16.i.i = sub nsw i64 %and.i.i, %and15.i.i
  %conv17.i.i = trunc i64 %sub16.i.i to i32
  %div1.i.i = lshr exact i32 %conv17.i.i, 12
  %conv = zext i32 %div1.i.i to i64
  %owning_mm = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 1
  %9 = ptrtoint ptr %owning_mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owning_mm, align 4
  %pinned_vm = getelementptr inbounds %struct.anon.10, ptr %10, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pinned_vm, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef %conv, ptr noundef %pinned_vm) #7
  %11 = ptrtoint ptr %owning_mm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owning_mm, align 4
  %mm_count.i = getelementptr inbounds %struct.anon.10, ptr %12, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end11.mmdrop.exit_crit_edge, !prof !32

if.end11.mmdrop.exit_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmdrop.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmdrop(ptr noundef %12) #7
  br label %mmdrop.exit

mmdrop.exit:                                      ; preds = %if.then.i, %if.end11.mmdrop.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %umem) #7
  br label %return

return:                                           ; preds = %mmdrop.exit, %if.then9, %if.then2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_dmabuf_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_odp_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_umem_copy_from(ptr noundef %dst, ptr nocapture noundef readonly %umem, i32 noundef %offset, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %length1 = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 3
  %0 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp = icmp ult i32 %1, %offset
  %sub = sub i32 %1, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %length)
  %cmp3 = icmp ult i32 %sub, %length
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %length, %offset
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %offset, i32 noundef %1, i32 noundef %add) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7
  %2 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt_append, align 8
  %orig_nents = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 7, i32 0, i32 2
  %4 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %orig_nents, align 8
  %address.i = getelementptr inbounds %struct.ib_umem, ptr %umem, i32 0, i32 4
  %6 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address.i, align 4
  %and.i = and i32 %7, 4095
  %add8 = add i32 %and.i, %offset
  %call9 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %3, i32 noundef %5, ptr noundef %dst, i32 noundef %length, i32 noundef %add8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %length)
  %cmp12.not = icmp eq i32 %call9, %length
  %. = select i1 %cmp12.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call9, %if.end.cleanup_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_page_range_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_append_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_ib_umem_find_best_pgsz, !1, !"__ksymtab_ib_umem_find_best_pgsz", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/umem.c", i32 137, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/umem.c", i32 217, i32 3}
!4 = !{ptr @__ksymtab_ib_umem_get, !5, !"__ksymtab_ib_umem_get", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/umem.c", i32 261, i32 1}
!6 = !{ptr @__ksymtab_ib_umem_release, !7, !"__ksymtab_ib_umem_release", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/umem.c", i32 282, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/umem.c", i32 301, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ib_umem_copy_from._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ib_umem_copy_from._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_ib_umem_copy_from, !14, !"__ksymtab_ib_umem_copy_from", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/core/umem.c", i32 317, i32 1}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i32 0, i32 33}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.peeled.count", i32 1}
!28 = !{i64 2148672351, i64 2148672377, i64 2148672406, i64 2148672440, i64 2148672471, i64 2148672494}
!29 = !{i64 2148760827}
!30 = !{i64 2148675536, i64 2148675568, i64 2148675597, i64 2148675631, i64 2148675662, i64 2148675685}
!31 = !{i64 2148761056}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2153785464, i64 2153785956, i64 2153785501, i64 2153785557, i64 2153785591, i64 2153785615, i64 2153785656, i64 2153785677, i64 2153785705, i64 2153785739}
