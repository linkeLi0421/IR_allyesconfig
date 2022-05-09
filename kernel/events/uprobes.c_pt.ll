; ModuleID = '/llk/IR_all_yes/kernel/events/uprobes.c_pt.bc'
source_filename = "../kernel/events/uprobes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+uprobe_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_uprobe_unregister\09\09\09\09"
module asm "\09.long\09__crc_uprobe_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uprobe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22uprobe_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_uprobe_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+uprobe_register\22, \22a\22\09"
module asm "\09.weak\09__crc_uprobe_register\09\09\09\09"
module asm "\09.long\09__crc_uprobe_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uprobe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22uprobe_register\22\09\09\09\09\09"
module asm "__kstrtabns_uprobe_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+uprobe_register_refctr\22, \22a\22\09"
module asm "\09.weak\09__crc_uprobe_register_refctr\09\09\09\09"
module asm "\09.long\09__crc_uprobe_register_refctr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uprobe_register_refctr:\09\09\09\09\09"
module asm "\09.asciz \09\22uprobe_register_refctr\22\09\09\09\09\09"
module asm "__kstrtabns_uprobe_register_refctr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.5, %union.anon.77, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }
%struct.anon.83 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.file = type { %union.anon.9, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.9 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.81 = type { ptr }
%struct.uprobe = type { %struct.rb_node, %struct.refcount_struct, %struct.rw_semaphore, %struct.rw_semaphore, %struct.list_head, ptr, ptr, i64, i64, i32, %struct.arch_uprobe }
%struct.arch_uprobe = type { [4 x i8], [2 x i32], i32, i8, i32, ptr, ptr, %struct.arch_probes_insn }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.delayed_uprobe = type { %struct.list_head, ptr, ptr }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.uprobe_consumer = type { ptr, ptr, ptr, ptr }
%struct.map_info = type { ptr, ptr, i32 }
%struct.xol_area = type { %struct.wait_queue_head, %struct.atomic_t, ptr, %struct.vm_special_mapping, [2 x ptr], i32 }
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.uprobe_task = type { i32, %union.anon.58, ptr, i32, ptr, i32 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { %struct.arch_uprobe_task, i32 }
%struct.arch_uprobe_task = type { i32, i32 }
%struct.return_instance = type { ptr, i32, i32, i32, i8, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/events/uprobes.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"uprobe unregister should never work on compound page\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(!PageAnon(old_page))\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_uprobe_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_uprobe_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_uprobe_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uprobe_unregister to i32), ptr @__kstrtab_uprobe_unregister, ptr @__kstrtabns_uprobe_unregister }, section "___ksymtab_gpl+uprobe_unregister", align 4
@__kstrtab_uprobe_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_uprobe_register = external dso_local constant [0 x i8], align 1
@__ksymtab_uprobe_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uprobe_register to i32), ptr @__kstrtab_uprobe_register, ptr @__kstrtabns_uprobe_register }, section "___ksymtab_gpl+uprobe_register", align 4
@__kstrtab_uprobe_register_refctr = external dso_local constant [0 x i8], align 1
@__kstrtabns_uprobe_register_refctr = external dso_local constant [0 x i8], align 1
@__ksymtab_uprobe_register_refctr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uprobe_register_refctr to i32), ptr @__kstrtab_uprobe_register_refctr, ptr @__kstrtabns_uprobe_register_refctr }, section "___ksymtab_gpl+uprobe_register_refctr", align 4
@uprobes_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@uprobes_mmap_mutex = internal global { [13 x %struct.mutex], [308 x i8] } zeroinitializer, align 32
@delayed_uprobe_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @delayed_uprobe_lock, i64 52), ptr getelementptr (i8, ptr @delayed_uprobe_lock, i64 52) }, ptr @delayed_uprobe_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dup_mmap_sem = internal global { %struct.percpu_rw_semaphore, [32 x i8] } { %struct.percpu_rw_semaphore { %struct.rcu_sync { i32 0, i32 0, %struct.wait_queue_head { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @dup_mmap_sem, i64 52), ptr getelementptr (i8, ptr @dup_mmap_sem, i64 52) } }, %struct.callback_head zeroinitializer }, ptr @__percpu_rwsem_rc_dup_mmap_sem, %struct.rcuwait zeroinitializer, %struct.wait_queue_head { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @dup_mmap_sem, i64 120), ptr getelementptr (i8, ptr @dup_mmap_sem, i64 120) } }, %struct.atomic_t zeroinitializer, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dup ret instances\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dup xol area\00", [19 x i8] zeroinitializer }, align 32
@uprobe_deny_signal.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@uprobes_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&uprobes_mmap_mutex[i]\00", [41 x i8] zeroinitializer }, align 32
@uprobe_exception_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @arch_uprobe_exception_notify, ptr null, i32 2147483646 }, [20 x i8] zeroinitializer }, align 32
@__pcpu_unique___percpu_rwsem_rc_dup_mmap_sem = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__percpu_rwsem_rc_dup_mmap_sem = weak dso_local global i32 0, section ".data..percpu", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__update_ref_ctr._entry = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 395, ptr null, ptr null }, align 1
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014ref_ctr going negative. vaddr: 0x%lx, curr val: %d, delta: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__update_ref_ctr\00", [47 x i8] zeroinitializer }, align 32
@__update_ref_ctr._entry_ptr = internal global ptr @__update_ref_ctr._entry, section ".printk_index", align 4
@update_ref_ctr_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014ref_ctr %s failed for inode: 0x%lx offset: 0x%llx ref_ctr_offset: 0x%llx of mm: 0x%pK\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"update_ref_ctr_warn\00", [44 x i8] zeroinitializer }, align 32
@update_ref_ctr_warn._entry_ptr = internal global ptr @update_ref_ctr_warn._entry, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"increment\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"decrement\00", [22 x i8] zeroinitializer }, align 32
@delayed_uprobe_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @delayed_uprobe_list, ptr @delayed_uprobe_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(addr != pvmw.address)\00", [59 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@uprobes_treelock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uprobes_treelock\00", [47 x i8] zeroinitializer }, align 32
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@alloc_uprobe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&uprobe->register_rwsem\00", [40 x i8] zeroinitializer }, align 32
@alloc_uprobe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&uprobe->consumer_rwsem\00", [40 x i8] zeroinitializer }, align 32
@ref_ctr_mismatch_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\014ref_ctr_offset mismatch. inode: 0x%lx offset: 0x%llx ref_ctr_offset(old): 0x%llx ref_ctr_offset(new): 0x%llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ref_ctr_mismatch_warn\00", [42 x i8] zeroinitializer }, align 32
@ref_ctr_mismatch_warn._entry_ptr = internal global ptr @ref_ctr_mismatch_warn._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"delayed_uprobe_lock.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"delayed_uprobe_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dup_mmap_sem.rss.gp_wait.lock\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dup_mmap_sem.waiters.lock\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dup_mmap_sem\00", [19 x i8] zeroinitializer }, align 32
@uprobe_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014uprobe: %s:%d failed to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uprobe_warn\00", [20 x i8] zeroinitializer }, align 32
@uprobe_warn._entry_ptr = internal global ptr @uprobe_warn._entry, section ".printk_index", align 4
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[uprobes]\00", [22 x i8] zeroinitializer }, align 32
@__create_xol_area.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&area->wq\00", [22 x i8] zeroinitializer }, align 32
@handle_singlestep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"execute the probed insn, sending SIGILL.\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"handle uretprobe, sending SIGILL.\00", [62 x i8] zeroinitializer }, align 32
@is_trap_at_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bad rc=0x%x from %ps()\0A\00", [40 x i8] zeroinitializer }, align 32
@prepare_uretprobe._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.prepare_uretprobe = private unnamed_addr constant [18 x i8] c"prepare_uretprobe\00", align 1
@prepare_uretprobe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.prepare_uretprobe, ptr @.str, i32 1878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016uprobe: omit uretprobe due to nestedness limit pid/tgid=%d/%d\0A\00", [63 x i8] zeroinitializer }, align 32
@prepare_uretprobe._entry_ptr = internal global ptr @prepare_uretprobe._entry, section ".printk_index", align 4
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle tail call\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 491, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 527, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"uprobes_tree\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 36, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"uprobes_mmap_mutex\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 47, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"delayed_uprobe_lock\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"dup_mmap_sem\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1814, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1819, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 2357, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"uprobe_exception_nb\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 2347, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 394, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 411, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [20 x i8] c"delayed_uprobe_list\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 87, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 260, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 717, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 183, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 788, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 454, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1160, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 443, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"uprobes_treelock\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 43, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 740, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 741, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 721, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 86, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 49, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 34, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 50, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1782, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1497, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1506, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 2284, i32 24 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 2168, i32 23 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 2085, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1876, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [27 x i8] c"../kernel/events/uprobes.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1906, i32 25 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__ksymtab_uprobe_register, ptr @__ksymtab_uprobe_register_refctr, ptr @__ksymtab_uprobe_unregister, ptr @__update_ref_ctr._entry, ptr @__update_ref_ctr._entry_ptr, ptr @prepare_uretprobe._entry, ptr @prepare_uretprobe._entry_ptr, ptr @ref_ctr_mismatch_warn._entry, ptr @ref_ctr_mismatch_warn._entry_ptr, ptr @update_ref_ctr_warn._entry, ptr @update_ref_ctr_warn._entry_ptr, ptr @uprobe_warn._entry, ptr @uprobe_warn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @uprobes_tree, ptr @uprobes_mmap_mutex, ptr @delayed_uprobe_lock, ptr @dup_mmap_sem, ptr @.str.3, ptr @.str.4, ptr @uprobes_init.__key, ptr @.str.5, ptr @uprobe_exception_nb, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @delayed_uprobe_list, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @uprobes_treelock, ptr @.str.21, ptr @alloc_uprobe.__key, ptr @.str.22, ptr @alloc_uprobe.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @prepare_uretprobe._rs, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobes_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobes_mmap_mutex to i32), i32 1196, i32 1504, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_uprobe_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dup_mmap_sem to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobes_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_exception_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_ref_ctr_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_uprobe_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobes_treelock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_uprobe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_uprobe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_ctr_mismatch_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uprobe_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_uretprobe._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prepare_uretprobe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @is_swbp_insn(ptr noundef %insn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %insn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117313305, i32 %1)
  %cmp = icmp eq i32 %1, -117313305
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @is_trap_insn(ptr noundef %insn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @is_swbp_insn(ptr noundef %insn)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uprobe_write_opcode(ptr noundef %auprobe, ptr noundef %mm, i32 noundef %vaddr, i32 noundef %opcode) local_unnamed_addr #0 align 64 {
entry:
  %old_opcode.i = alloca i32, align 4
  %opcode.addr = alloca i32, align 4
  %old_page = alloca ptr, align 4
  %vma = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %opcode.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %opcode, ptr %opcode.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_page) #12
  %1 = ptrtoint ptr %old_page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %old_page, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma) #12
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %vma, align 4, !annotation !128
  %call = call zeroext i1 @is_swbp_insn(ptr noundef nonnull %opcode.addr)
  %add.ptr = getelementptr i8, ptr %auprobe, i32 -244
  %and.i.i208 = and i32 %vaddr, 4095
  %ref_ctr_offset = getelementptr i8, ptr %auprobe, i32 -12
  %conv42 = select i1 %call, i16 1, i16 -1
  %and = and i32 %vaddr, -4096
  br label %retry

retry:                                            ; preds = %put_page.exit276.retry_crit_edge, %entry
  %ref_ctr_updated.0 = phi i32 [ 0, %entry ], [ %ref_ctr_updated.2, %put_page.exit276.retry_crit_edge ]
  %gup_flags.0 = phi i32 [ 16, %entry ], [ %spec.select, %put_page.exit276.retry_crit_edge ]
  %or = or i32 %gup_flags.0, 131072
  %spec.select = select i1 %call, i32 %or, i32 %gup_flags.0
  %call1 = call i32 @get_user_pages_remote(ptr noundef %mm, i32 noundef %vaddr, i32 noundef 1, i32 noundef %spec.select, ptr noundef nonnull %old_page, ptr noundef nonnull %vma, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %retry.cleanup_crit_edge, label %if.end4

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %retry
  %3 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %old_page, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_opcode.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %5 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i207 = or i32 %5, 512
  %6 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %10 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 213
  %14 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %call.i.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %4, i32 noundef %or.i.i.i207) #12
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 %and.i.i208
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr.i.i, align 1
  %18 = ptrtoint ptr %old_opcode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %old_opcode.i, align 4
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %19 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %25 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  %call.i = call zeroext i1 @is_swbp_insn(ptr noundef nonnull %old_opcode.i) #12
  %call1.i = call zeroext i1 @is_swbp_insn(ptr noundef nonnull %opcode.addr) #12
  br i1 %call1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end4
  br i1 %call.i, label %if.then.i.verify_opcode.exit.thread_crit_edge, label %if.then.i.if.end9_crit_edge

if.then.i.if.end9_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then.i.verify_opcode.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verify_opcode.exit.thread

if.else.i:                                        ; preds = %if.end4
  br i1 %call.i, label %if.else.i.if.end9_crit_edge, label %if.else.i.verify_opcode.exit.thread_crit_edge

if.else.i.verify_opcode.exit.thread_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verify_opcode.exit.thread

if.else.i.if.end9_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

verify_opcode.exit.thread:                        ; preds = %if.else.i.verify_opcode.exit.thread_crit_edge, %if.then.i.verify_opcode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_opcode.i) #12
  br label %put_old

if.end9:                                          ; preds = %if.else.i.if.end9_crit_edge, %if.then.i.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_opcode.i) #12
  br i1 %call, label %if.end9.if.end37_crit_edge, label %land.rhs

if.end9.if.end37_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

land.rhs:                                         ; preds = %if.end9
  %29 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %old_page, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

PageCompound.exit:                                ; preds = %land.rhs
  %34 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool12.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool12.not, label %PageCompound.exit.if.end37_crit_edge, label %PageCompound.exit.do.end_crit_edge, !prof !133

PageCompound.exit.do.end_crit_edge:               ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

PageCompound.exit.if.end37_crit_edge:             ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.end:                                           ; preds = %PageCompound.exit.do.end_crit_edge, %land.rhs.do.end_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef nonnull @.str.1) #12
  br label %put_old

if.end37:                                         ; preds = %PageCompound.exit.if.end37_crit_edge, %if.end9.if.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ref_ctr_updated.0)
  %tobool38.not = icmp eq i32 %ref_ctr_updated.0, 0
  br i1 %tobool38.not, label %land.lhs.true, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end37
  %37 = ptrtoint ptr %ref_ctr_offset to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ref_ctr_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool39.not = icmp eq i64 %38, 0
  br i1 %tobool39.not, label %land.lhs.true.if.end47_crit_edge, label %if.then40

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then40:                                        ; preds = %land.lhs.true
  %call43 = call fastcc i32 @update_ref_ctr(ptr noundef %add.ptr, ptr noundef %mm, i16 noundef signext %conv42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then40.if.end47_crit_edge, label %if.then40.put_old_crit_edge

if.then40.put_old_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_old

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.end47:                                         ; preds = %if.then40.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %if.end37.if.end47_crit_edge
  %ref_ctr_updated.1 = phi i32 [ 1, %if.end37.if.end47_crit_edge ], [ 0, %land.lhs.true.if.end47_crit_edge ], [ 1, %if.then40.if.end47_crit_edge ]
  br i1 %call, label %if.end47.if.end52_crit_edge, label %land.lhs.true49

if.end47.if.end52_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true49:                                  ; preds = %if.end47
  %39 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %old_page, align 4
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i2.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !133

if.then.i.i:                                      ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %43, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %40 to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %44, %if.end.i.i ]
  %45 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.83, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mapping.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %and.i.i192 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i192)
  %cmp.i.i.not = icmp eq i32 %and.i.i192, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.put_old_crit_edge, label %PageAnon.exit.if.end52_crit_edge

PageAnon.exit.if.end52_crit_edge:                 ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

PageAnon.exit.put_old_crit_edge:                  ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_old

if.end52:                                         ; preds = %PageAnon.exit.if.end52_crit_edge, %if.end47.if.end52_crit_edge
  %49 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vma, align 4
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %anon_vma.i, align 4
  %tobool.not.i209 = icmp eq ptr %52, null
  br i1 %tobool.not.i209, label %anon_vma_prepare.exit, label %if.end52.if.end56_crit_edge, !prof !134

if.end52.if.end56_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

anon_vma_prepare.exit:                            ; preds = %if.end52
  %call.i210 = call i32 @__anon_vma_prepare(ptr noundef %50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool54.not = icmp eq i32 %call.i210, 0
  br i1 %tobool54.not, label %anon_vma_prepare.exit.if.end56_crit_edge, label %anon_vma_prepare.exit.put_old_crit_edge

anon_vma_prepare.exit.put_old_crit_edge:          ; preds = %anon_vma_prepare.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_old

anon_vma_prepare.exit.if.end56_crit_edge:         ; preds = %anon_vma_prepare.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.end56:                                         ; preds = %anon_vma_prepare.exit.if.end56_crit_edge, %if.end52.if.end56_crit_edge
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool58.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool58.not, label %if.end56.put_old_crit_edge, label %if.end60

if.end56.put_old_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_old

if.end60:                                         ; preds = %if.end56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %53 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__SetPageUptodate.exit, label %if.then.i.i.i, !prof !133

if.then.i.i.i:                                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.13) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

__SetPageUptodate.exit:                           ; preds = %if.end60
  %56 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call38.i.i.i, align 4
  %or.i.i.i = or i32 %57, 4
  store i32 %or.i.i.i, ptr %call38.i.i.i, align 4
  %58 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %old_page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %60 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %60, 512
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %59, i32 noundef %or.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %61 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %61, 512
  %call.i14.i = call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i13.i) #12
  call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #12
  call void @kunmap_local_indexed(ptr noundef %call.i14.i) #12
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %62 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i212 = or i32 %62, 512
  %63 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i213 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i213 to ptr
  %preempt_count.i.i.i.i.i214 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i.i214 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i.i214, align 4
  %add.i.i.i.i = add i32 %66, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i214, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %67 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i.i215 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i1.i.i.i215 to ptr
  %task.i.i.i.i.i216 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task.i.i.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task.i.i.i.i.i216, align 8
  %pagefault_disabled.i.i.i.i.i217 = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 213
  %71 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pagefault_disabled.i.i.i.i.i217, align 8
  %inc.i.i.i.i.i = add i32 %72, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i217, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i.i212) #12
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i.i208
  %73 = ptrtoint ptr %opcode.addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %opcode.addr, align 4
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %add.ptr.i, align 1
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %76 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 213
  %80 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %81, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %82 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br i1 %call, label %__SetPageUptodate.exit.if.end100_crit_edge, label %if.then62

__SetPageUptodate.exit.if.end100_crit_edge:       ; preds = %__SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then62:                                        ; preds = %__SetPageUptodate.exit
  %86 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %old_page, align 4
  %88 = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %88, align 4
  %and.i2.i193 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i193)
  %tobool.not.i.i194 = icmp eq i32 %and.i2.i193, 0
  br i1 %tobool.not.i.i194, label %if.end.i.i197, label %if.then.i.i196, !prof !133

if.then.i.i196:                                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i195 = add i32 %90, -1
  br label %PageAnon.exit202

if.end.i.i197:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %87 to i32
  br label %PageAnon.exit202

PageAnon.exit202:                                 ; preds = %if.end.i.i197, %if.then.i.i196
  %retval.0.i.i198 = phi i32 [ %sub.i.i195, %if.then.i.i196 ], [ %91, %if.end.i.i197 ]
  %92 = inttoptr i32 %retval.0.i.i198 to ptr
  %mapping.i.i199 = getelementptr inbounds %struct.anon.83, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %mapping.i.i199 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mapping.i.i199, align 4
  %95 = ptrtoint ptr %94 to i32
  %and.i.i200 = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i200)
  %cmp.i.i201.not = icmp eq i32 %and.i.i200, 0
  br i1 %cmp.i.i201.not, label %if.then73, label %do.end82, !prof !134

if.then73:                                        ; preds = %PageAnon.exit202
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.2) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/events/uprobes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #12, !srcloc !137
  unreachable

do.end82:                                         ; preds = %PageAnon.exit202
  %96 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %vma, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %97, i32 0, i32 13
  %98 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %vm_pgoff.i, align 4
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %97, align 4
  %sub.i = sub i32 %and, %101
  %102 = lshr i32 %sub.i, 12
  %103 = add i32 %102, %99
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %97, i32 0, i32 14
  %104 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vm_file, align 4
  %f_inode = getelementptr inbounds %struct.file, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %f_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %107, i32 0, i32 9
  %108 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i_mapping, align 8
  %call.i218 = call ptr @pagecache_get_page(ptr noundef %109, i32 noundef %103, i32 noundef 0, i32 noundef 0) #12
  %tobool86.not = icmp eq ptr %call.i218, null
  br i1 %tobool86.not, label %do.end82.if.end100_crit_edge, label %if.then87

do.end82.if.end100_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then87:                                        ; preds = %do.end82
  %110 = getelementptr inbounds %struct.page, ptr %call.i218, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %110, align 4
  %and.i.i219 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i219)
  %tobool.not.i.i220 = icmp eq i32 %and.i.i219, 0
  br i1 %tobool.not.i.i220, label %if.end.i.i223, label %if.then.i.i222, !prof !133

if.then.i.i222:                                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i221 = add i32 %112, -1
  br label %_compound_head.exit.i

if.end.i.i223:                                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %call.i218 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i223, %if.then.i.i222
  %retval.0.i.i224 = phi i32 [ %sub.i.i221, %if.then.i.i222 ], [ %113, %if.end.i.i223 ]
  %114 = inttoptr i32 %retval.0.i.i224 to ptr
  %115 = getelementptr inbounds %struct.page, ptr %114, i32 0, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %115, align 4
  %and.i.i.i.i225 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i225)
  %tobool.not.i.i.i226 = icmp eq i32 %and.i.i.i.i225, 0
  br i1 %tobool.not.i.i.i226, label %folio_flags.exit.i.i, label %if.then.i.i.i227, !prof !133

if.then.i.i.i227:                                 ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = inttoptr i32 %retval.0.i.i224 to ptr
  call void @dump_page(ptr noundef %118, ptr noundef nonnull @.str.13) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %119 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %114, align 4
  %121 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.i.not.i = icmp eq i32 %121, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.if.end98_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.if.end98_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !138
  %call.i228 = call i32 @memcmp_pages(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull %call.i218) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool.not.i229.not = icmp eq i32 %call.i228, 0
  br i1 %tobool.not.i229.not, label %if.then93, label %PageUptodate.exit.if.end98_crit_edge

PageUptodate.exit.if.end98_crit_edge:             ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

if.then93:                                        ; preds = %PageUptodate.exit
  call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i)
  %122 = ptrtoint ptr %call.i218 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %call.i218, align 4
  %124 = and i32 %123, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i203 = icmp eq i32 %124, 0
  br i1 %tobool.not.i203, label %PageCompound.exit206, label %if.then93.if.end98_crit_edge

if.then93.if.end98_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

PageCompound.exit206:                             ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %110, align 4
  br label %if.end98

if.end98:                                         ; preds = %PageCompound.exit206, %if.then93.if.end98_crit_edge, %PageUptodate.exit.if.end98_crit_edge, %folio_flags.exit.i.i.if.end98_crit_edge
  %new_page.0 = phi ptr [ %call38.i.i.i, %PageUptodate.exit.if.end98_crit_edge ], [ %call38.i.i.i, %folio_flags.exit.i.i.if.end98_crit_edge ], [ null, %if.then93.if.end98_crit_edge ], [ null, %PageCompound.exit206 ]
  %127 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %110, align 4
  %and.i.i230 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i230)
  %tobool.not.i.i231 = icmp eq i32 %and.i.i230, 0
  br i1 %tobool.not.i.i231, label %if.end.i.i234, label %if.then.i.i233, !prof !133

if.then.i.i233:                                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i232 = add i32 %128, -1
  br label %_compound_head.exit.i236

if.end.i.i234:                                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %call.i218 to i32
  br label %_compound_head.exit.i236

_compound_head.exit.i236:                         ; preds = %if.end.i.i234, %if.then.i.i233
  %retval.0.i.i235 = phi i32 [ %sub.i.i232, %if.then.i.i233 ], [ %129, %if.end.i.i234 ]
  %130 = inttoptr i32 %retval.0.i.i235 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %130, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %131 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.i.i.i.i = icmp eq i32 %132, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i236
  call void @__sanitizer_cov_trace_pc() #14
  %133 = inttoptr i32 %retval.0.i.i235 to ptr
  call void @dump_page(ptr noundef %133, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i236
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %134 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %134, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@uprobe_write_opcode, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !143

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %130, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end100_crit_edge

folio_put_testzero.exit.i.i.if.end100_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %130) #12
  br label %if.end100

if.end100:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end100_crit_edge, %do.end82.if.end100_crit_edge, %__SetPageUptodate.exit.if.end100_crit_edge
  %new_page.2 = phi ptr [ %call38.i.i.i, %__SetPageUptodate.exit.if.end100_crit_edge ], [ %call38.i.i.i, %do.end82.if.end100_crit_edge ], [ %new_page.0, %folio_put_testzero.exit.i.i.if.end100_crit_edge ], [ %new_page.0, %if.then.i4.i ]
  %135 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %vma, align 4
  %137 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %old_page, align 4
  %call101 = call fastcc i32 @__replace_page(ptr noundef %136, i32 noundef %vaddr, ptr noundef %138, ptr noundef %new_page.2)
  %tobool102.not = icmp eq ptr %new_page.2, null
  br i1 %tobool102.not, label %if.end100.put_old_crit_edge, label %if.then103

if.end100.put_old_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_old

if.then103:                                       ; preds = %if.end100
  %139 = getelementptr inbounds %struct.page, ptr %new_page.2, i32 0, i32 1
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %139, align 4
  %and.i.i237 = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i237)
  %tobool.not.i.i238 = icmp eq i32 %and.i.i237, 0
  br i1 %tobool.not.i.i238, label %if.end.i.i241, label %if.then.i.i240, !prof !133

if.then.i.i240:                                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i239 = add i32 %141, -1
  br label %_compound_head.exit.i246

if.end.i.i241:                                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %142 = ptrtoint ptr %new_page.2 to i32
  br label %_compound_head.exit.i246

_compound_head.exit.i246:                         ; preds = %if.end.i.i241, %if.then.i.i240
  %retval.0.i.i242 = phi i32 [ %sub.i.i239, %if.then.i.i240 ], [ %142, %if.end.i.i241 ]
  %143 = inttoptr i32 %retval.0.i.i242 to ptr
  %_refcount.i.i.i.i.i243 = getelementptr inbounds %struct.page, ptr %143, i32 0, i32 3
  %call.i.i.i.i.i.i.i244 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i243, i32 noundef 4) #12
  %144 = ptrtoint ptr %_refcount.i.i.i.i.i243 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %_refcount.i.i.i.i.i243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i.i.i.i245 = icmp eq i32 %145, 0
  br i1 %cmp.i.i.i.i245, label %if.then.i.i.i.i247, label %do.end5.i.i.i.i251, !prof !134

if.then.i.i.i.i247:                               ; preds = %_compound_head.exit.i246
  call void @__sanitizer_cov_trace_pc() #14
  %146 = inttoptr i32 %retval.0.i.i242 to ptr
  call void @dump_page(ptr noundef %146, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i251:                               ; preds = %_compound_head.exit.i246
  %call.i.i.i10.i.i.i.i248 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i243, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i243, i32 1, i32 3, i32 1) #12
  %147 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i243, ptr %_refcount.i.i.i.i.i243, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i243) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i249 = extractvalue { i32, i32 } %147, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i249)
  %cmp.i.i.i.i.i.i.i250 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i249, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@uprobe_write_opcode, %if.then.i.i.i.i.i253)) #12
          to label %folio_put_testzero.exit.i.i254 [label %if.then.i.i.i.i.i253], !srcloc !143

if.then.i.i.i.i.i253:                             ; preds = %do.end5.i.i.i.i251
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i252 = zext i1 %cmp.i.i.i.i.i.i.i250 to i32
  call void @__page_ref_mod_and_test(ptr noundef %143, i32 noundef -1, i32 noundef %conv.i.i.i.i.i252) #12
  br label %folio_put_testzero.exit.i.i254

folio_put_testzero.exit.i.i254:                   ; preds = %if.then.i.i.i.i.i253, %do.end5.i.i.i.i251
  br i1 %cmp.i.i.i.i.i.i.i250, label %if.then.i4.i255, label %folio_put_testzero.exit.i.i254.put_old_crit_edge

folio_put_testzero.exit.i.i254.put_old_crit_edge: ; preds = %folio_put_testzero.exit.i.i254
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_old

if.then.i4.i255:                                  ; preds = %folio_put_testzero.exit.i.i254
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %143) #12
  br label %put_old

put_old:                                          ; preds = %if.then.i4.i255, %folio_put_testzero.exit.i.i254.put_old_crit_edge, %if.end100.put_old_crit_edge, %if.end56.put_old_crit_edge, %anon_vma_prepare.exit.put_old_crit_edge, %PageAnon.exit.put_old_crit_edge, %if.then40.put_old_crit_edge, %do.end, %verify_opcode.exit.thread
  %ret.0 = phi i32 [ -22, %do.end ], [ %call.i210, %anon_vma_prepare.exit.put_old_crit_edge ], [ %call101, %if.end100.put_old_crit_edge ], [ -12, %if.end56.put_old_crit_edge ], [ 0, %PageAnon.exit.put_old_crit_edge ], [ %call43, %if.then40.put_old_crit_edge ], [ 0, %verify_opcode.exit.thread ], [ %call101, %folio_put_testzero.exit.i.i254.put_old_crit_edge ], [ %call101, %if.then.i4.i255 ]
  %ref_ctr_updated.2 = phi i32 [ %ref_ctr_updated.0, %do.end ], [ %ref_ctr_updated.1, %anon_vma_prepare.exit.put_old_crit_edge ], [ %ref_ctr_updated.1, %if.end100.put_old_crit_edge ], [ %ref_ctr_updated.1, %if.end56.put_old_crit_edge ], [ %ref_ctr_updated.1, %PageAnon.exit.put_old_crit_edge ], [ 0, %if.then40.put_old_crit_edge ], [ %ref_ctr_updated.0, %verify_opcode.exit.thread ], [ %ref_ctr_updated.1, %folio_put_testzero.exit.i.i254.put_old_crit_edge ], [ %ref_ctr_updated.1, %if.then.i4.i255 ]
  %148 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %old_page, align 4
  %150 = getelementptr inbounds %struct.page, ptr %149, i32 0, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %150, align 4
  %and.i.i257 = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i257)
  %tobool.not.i.i258 = icmp eq i32 %and.i.i257, 0
  br i1 %tobool.not.i.i258, label %if.end.i.i261, label %if.then.i.i260, !prof !133

if.then.i.i260:                                   ; preds = %put_old
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i259 = add i32 %152, -1
  br label %_compound_head.exit.i266

if.end.i.i261:                                    ; preds = %put_old
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %149 to i32
  br label %_compound_head.exit.i266

_compound_head.exit.i266:                         ; preds = %if.end.i.i261, %if.then.i.i260
  %retval.0.i.i262 = phi i32 [ %sub.i.i259, %if.then.i.i260 ], [ %153, %if.end.i.i261 ]
  %154 = inttoptr i32 %retval.0.i.i262 to ptr
  %_refcount.i.i.i.i.i263 = getelementptr inbounds %struct.page, ptr %154, i32 0, i32 3
  %call.i.i.i.i.i.i.i264 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i263, i32 noundef 4) #12
  %155 = ptrtoint ptr %_refcount.i.i.i.i.i263 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %_refcount.i.i.i.i.i263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp.i.i.i.i265 = icmp eq i32 %156, 0
  br i1 %cmp.i.i.i.i265, label %if.then.i.i.i.i267, label %do.end5.i.i.i.i271, !prof !134

if.then.i.i.i.i267:                               ; preds = %_compound_head.exit.i266
  call void @__sanitizer_cov_trace_pc() #14
  %157 = inttoptr i32 %retval.0.i.i262 to ptr
  call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i271:                               ; preds = %_compound_head.exit.i266
  %call.i.i.i10.i.i.i.i268 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i263, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i263, i32 1, i32 3, i32 1) #12
  %158 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i263, ptr %_refcount.i.i.i.i.i263, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i263) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i269 = extractvalue { i32, i32 } %158, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i269)
  %cmp.i.i.i.i.i.i.i270 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i269, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@uprobe_write_opcode, %if.then.i.i.i.i.i273)) #12
          to label %folio_put_testzero.exit.i.i274 [label %if.then.i.i.i.i.i273], !srcloc !143

if.then.i.i.i.i.i273:                             ; preds = %do.end5.i.i.i.i271
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i272 = zext i1 %cmp.i.i.i.i.i.i.i270 to i32
  call void @__page_ref_mod_and_test(ptr noundef %154, i32 noundef -1, i32 noundef %conv.i.i.i.i.i272) #12
  br label %folio_put_testzero.exit.i.i274

folio_put_testzero.exit.i.i274:                   ; preds = %if.then.i.i.i.i.i273, %do.end5.i.i.i.i271
  br i1 %cmp.i.i.i.i.i.i.i270, label %if.then.i4.i275, label %folio_put_testzero.exit.i.i274.put_page.exit276_crit_edge

folio_put_testzero.exit.i.i274.put_page.exit276_crit_edge: ; preds = %folio_put_testzero.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit276

if.then.i4.i275:                                  ; preds = %folio_put_testzero.exit.i.i274
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %154) #12
  br label %put_page.exit276

put_page.exit276:                                 ; preds = %if.then.i4.i275, %folio_put_testzero.exit.i.i274.put_page.exit276_crit_edge
  %cmp105 = icmp eq i32 %ret.0, -11
  br i1 %cmp105, label %put_page.exit276.retry_crit_edge, label %if.end114, !prof !134

put_page.exit276.retry_crit_edge:                 ; preds = %put_page.exit276
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

if.end114:                                        ; preds = %put_page.exit276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool115.not = icmp eq i32 %ret.0, 0
  %call.not = xor i1 %call, true
  %brmerge = select i1 %tobool115.not, i1 true, i1 %call.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ref_ctr_updated.2)
  %tobool119.not = icmp eq i32 %ref_ctr_updated.2, 0
  %or.cond = select i1 %brmerge, i1 true, i1 %tobool119.not
  br i1 %or.cond, label %if.end114.cleanup_crit_edge, label %if.then120

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then120:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  %call121 = call fastcc i32 @update_ref_ctr(ptr noundef %add.ptr, ptr noundef %mm, i16 noundef signext -1)
  br label %cleanup

cleanup:                                          ; preds = %if.then120, %if.end114.cleanup_crit_edge, %retry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end114.cleanup_crit_edge ], [ %ret.0, %if.then120 ], [ %call1, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_page) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_ref_ctr(ptr noundef %uprobe, ptr noundef %mm, i16 noundef signext %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %tmp.04.i = load ptr, ptr %mm, align 4
  %tobool.not5.i = icmp eq ptr %tmp.04.i, null
  br i1 %tobool.not5.i, label %entry.if.end8_crit_edge, label %for.body.lr.ph.i

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %entry
  %ref_ctr_offset.i.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 8
  %1 = ptrtoint ptr %ref_ctr_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ref_ctr_offset.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not.i.i = icmp eq i64 %2, 0
  %inode.i.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %tmp.06.i = phi ptr [ %tmp.04.i, %for.body.lr.ph.i ], [ %tmp.0.i, %for.inc.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %tmp.06.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.06.i, align 4
  %conv.i.i.i = zext i32 %4 to i64
  %add.i.i.i = add i64 %2, %conv.i.i.i
  %vm_pgoff.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.06.i, i32 0, i32 13
  %5 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_pgoff.i.i.i, align 4
  %conv1.i.i.i = zext i32 %6 to i64
  %shl.neg.i.i.i = mul nuw i64 %conv1.i.i.i, 4294963200
  %sub.i.i.i = add i64 %add.i.i.i, %shl.neg.i.i.i
  %conv2.i.i.i = trunc i64 %sub.i.i.i to i32
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.06.i, i32 0, i32 14
  %7 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_file.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i.i, align 8
  %11 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inode.i.i, align 4
  %cmp.i.i = icmp eq ptr %10, %12
  br i1 %cmp.i.i, label %land.lhs.true6.i.i, label %land.lhs.true3.i.i.for.inc.i_crit_edge

land.lhs.true3.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.06.i, i32 0, i32 8
  %13 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_flags.i.i, align 4
  %and.i.i = and i32 %14, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp7.i.i = icmp ne i32 %and.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv2.i.i.i)
  %cmp9.not.i.i = icmp ugt i32 %4, %conv2.i.i.i
  %or.cond.i.i = select i1 %cmp7.i.i, i1 true, i1 %cmp9.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true6.i.i.for.inc.i_crit_edge, label %valid_ref_ctr_vma.exit.i

land.lhs.true6.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

valid_ref_ctr_vma.exit.i:                         ; preds = %land.lhs.true6.i.i
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.06.i, i32 0, i32 1
  %15 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv2.i.i.i)
  %cmp10.i.i = icmp ugt i32 %16, %conv2.i.i.i
  br i1 %cmp10.i.i, label %if.then, label %valid_ref_ctr_vma.exit.i.for.inc.i_crit_edge

valid_ref_ctr_vma.exit.i.for.inc.i_crit_edge:     ; preds = %valid_ref_ctr_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %valid_ref_ctr_vma.exit.i.for.inc.i_crit_edge, %land.lhs.true6.i.i.for.inc.i_crit_edge, %land.lhs.true3.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.06.i, i32 0, i32 2
  %17 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %tmp.0.i = load ptr, ptr %vm_next.i, align 4
  %tobool.not.i = icmp eq ptr %tmp.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end8_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %valid_ref_ctr_vma.exit.i
  %vm_pgoff.i.i.i.le = getelementptr inbounds %struct.vm_area_struct, ptr %tmp.06.i, i32 0, i32 13
  %18 = ptrtoint ptr %ref_ctr_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ref_ctr_offset.i.i, align 8
  %20 = ptrtoint ptr %tmp.06.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp.06.i, align 4
  %conv.i = zext i32 %21 to i64
  %add.i = add i64 %19, %conv.i
  %22 = ptrtoint ptr %vm_pgoff.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vm_pgoff.i.i.i.le, align 4
  %conv1.i = zext i32 %23 to i64
  %shl.neg.i = mul nuw i64 %conv1.i, 4294963200
  %sub.i = add i64 %add.i, %shl.neg.i
  %conv2.i = trunc i64 %sub.i to i32
  %call2 = tail call fastcc i32 @__update_ref_ctr(ptr noundef %mm, i32 noundef %conv2.i, i16 noundef signext %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %d)
  %cmp.i = icmp sgt i16 %d, 0
  %cond.i = select i1 %cmp.i, ptr @.str.10, ptr @.str.11
  %24 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inode.i.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino.i, align 8
  %offset.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 7
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %offset.i, align 8
  %30 = ptrtoint ptr %ref_ctr_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ref_ctr_offset.i.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %cond.i, i32 noundef %27, i64 noundef %29, i64 noundef %31, ptr noundef %mm) #15
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %d)
  %cmp = icmp sgt i16 %d, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8.thread

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @delayed_uprobe_lock, i32 noundef 0) #12
  br label %if.else

if.end8:                                          ; preds = %for.inc.i.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @delayed_uprobe_lock, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %d)
  %cmp10 = icmp sgt i16 %d, 0
  br i1 %cmp10, label %if.then12, label %if.end8.if.else_crit_edge

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then12:                                        ; preds = %if.end8
  %du.013.i.i = load ptr, ptr @delayed_uprobe_list, align 4
  %cmp.not14.i.i = icmp eq ptr %du.013.i.i, @delayed_uprobe_list
  br i1 %cmp.not14.i.i, label %if.then12.if.end.i_crit_edge, label %if.then12.for.body.i.i_crit_edge

if.then12.for.body.i.i_crit_edge:                 ; preds = %if.then12
  br label %for.body.i.i

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then12.for.body.i.i_crit_edge
  %du.015.i.i = phi ptr [ %du.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %du.013.i.i, %if.then12.for.body.i.i_crit_edge ]
  %uprobe1.i.i = getelementptr inbounds %struct.delayed_uprobe, ptr %du.015.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %uprobe1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uprobe1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %33, %uprobe
  br i1 %cmp2.i.i, label %land.lhs.true.i.i31, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i31:                              ; preds = %for.body.i.i
  %mm3.i.i = getelementptr inbounds %struct.delayed_uprobe, ptr %du.015.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %mm3.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mm3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %35, %mm
  br i1 %cmp4.i.i, label %delayed_uprobe_check.exit.i, label %land.lhs.true.i.i31.for.inc.i.i_crit_edge

land.lhs.true.i.i31.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i31.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %du.015.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %du.0.i.i = load ptr, ptr %du.015.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %du.0.i.i, @delayed_uprobe_list
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

delayed_uprobe_check.exit.i:                      ; preds = %land.lhs.true.i.i31
  %tobool.not.i32 = icmp eq ptr %du.015.i.i, null
  br i1 %tobool.not.i32, label %delayed_uprobe_check.exit.i.if.end.i_crit_edge, label %delayed_uprobe_check.exit.i.if.end14_crit_edge

delayed_uprobe_check.exit.i.if.end14_crit_edge:   ; preds = %delayed_uprobe_check.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

delayed_uprobe_check.exit.i.if.end.i_crit_edge:   ; preds = %delayed_uprobe_check.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %delayed_uprobe_check.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %if.then12.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 16) #16
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.end4.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end4.i:                                        ; preds = %if.end.i
  %uprobe5.i = getelementptr inbounds %struct.delayed_uprobe, ptr %call7.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %uprobe5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %uprobe, ptr %uprobe5.i, align 8
  %mm6.i = getelementptr inbounds %struct.delayed_uprobe, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %mm6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mm, ptr %mm6.i, align 4
  %40 = load ptr, ptr @delayed_uprobe_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @delayed_uprobe_list, ptr noundef %40) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.if.end14_crit_edge

if.end4.i.if.end14_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @delayed_uprobe_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @delayed_uprobe_list, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end8.if.else_crit_edge, %if.end8.thread
  %ret.043 = phi i32 [ %call2, %if.end8.thread ], [ 0, %if.end8.if.else_crit_edge ]
  %tobool.not.i33 = icmp eq ptr %uprobe, null
  %tobool1.not.i = icmp eq ptr %mm, null
  %or.cond.i = and i1 %tobool.not.i33, %tobool1.not.i
  br i1 %or.cond.i, label %if.else.if.end14_crit_edge, label %if.end.i34

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i34:                                       ; preds = %if.else
  %44 = load ptr, ptr @delayed_uprobe_list, align 4
  %cmp.i.not27.i = icmp eq ptr %44, @delayed_uprobe_list
  br i1 %cmp.i.not27.i, label %if.end.i34.if.end14_crit_edge, label %if.end.i34.for.body.i35_crit_edge

if.end.i34.for.body.i35_crit_edge:                ; preds = %if.end.i34
  br label %for.body.i35

if.end.i34.if.end14_crit_edge:                    ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body.i35:                                     ; preds = %for.inc.i38.for.body.i35_crit_edge, %if.end.i34.for.body.i35_crit_edge
  %pos.028.i = phi ptr [ %q.030.i, %for.inc.i38.for.body.i35_crit_edge ], [ %44, %if.end.i34.for.body.i35_crit_edge ]
  %45 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %q.030.i = load ptr, ptr %pos.028.i, align 4
  br i1 %tobool.not.i33, label %for.body.i35.if.end7.i_crit_edge, label %land.lhs.true4.i

for.body.i35.if.end7.i_crit_edge:                 ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true4.i:                                 ; preds = %for.body.i35
  %uprobe5.i36 = getelementptr inbounds %struct.delayed_uprobe, ptr %pos.028.i, i32 0, i32 1
  %46 = ptrtoint ptr %uprobe5.i36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %uprobe5.i36, align 4
  %cmp.not.i = icmp eq ptr %47, %uprobe
  br i1 %cmp.not.i, label %land.lhs.true4.i.if.end7.i_crit_edge, label %land.lhs.true4.i.for.inc.i38_crit_edge

land.lhs.true4.i.for.inc.i38_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i38

land.lhs.true4.i.if.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true4.i.if.end7.i_crit_edge, %for.body.i35.if.end7.i_crit_edge
  br i1 %tobool1.not.i, label %if.end7.i.if.end13.i_crit_edge, label %land.lhs.true9.i

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

land.lhs.true9.i:                                 ; preds = %if.end7.i
  %mm10.i = getelementptr inbounds %struct.delayed_uprobe, ptr %pos.028.i, i32 0, i32 2
  %48 = ptrtoint ptr %mm10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mm10.i, align 4
  %cmp11.not.i = icmp eq ptr %49, %mm
  br i1 %cmp11.not.i, label %land.lhs.true9.i.if.end13.i_crit_edge, label %land.lhs.true9.i.for.inc.i38_crit_edge

land.lhs.true9.i.for.inc.i38_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i38

land.lhs.true9.i.if.end13.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true9.i.if.end13.i_crit_edge, %if.end7.i.if.end13.i_crit_edge
  %tobool.not.i.i37 = icmp eq ptr %pos.028.i, null
  br i1 %tobool.not.i.i37, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !134

do.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #12
  br label %for.inc.i38

if.end23.critedge.i.i:                            ; preds = %if.end13.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.028.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge

if.end23.critedge.i.i.list_del.exit.i.i_crit_edge: ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.028.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i.i.i.i, align 4
  %52 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pos.028.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev1.i.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %53, ptr %51, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge
  %56 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.028.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.028.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %pos.028.i) #12
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %list_del.exit.i.i, %do.end.i.i, %land.lhs.true9.i.for.inc.i38_crit_edge, %land.lhs.true4.i.for.inc.i38_crit_edge
  %cmp.i.not.i = icmp eq ptr %q.030.i, @delayed_uprobe_list
  br i1 %cmp.i.not.i, label %for.inc.i38.if.end14_crit_edge, label %for.inc.i38.for.body.i35_crit_edge

for.inc.i38.for.body.i35_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i35

for.inc.i38.if.end14_crit_edge:                   ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %for.inc.i38.if.end14_crit_edge, %if.end.i34.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.end.i.i.i, %if.end4.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %delayed_uprobe_check.exit.i.if.end14_crit_edge
  %ret.1 = phi i32 [ 0, %delayed_uprobe_check.exit.i.if.end14_crit_edge ], [ -12, %if.end.i.if.end14_crit_edge ], [ 0, %if.end4.i.if.end14_crit_edge ], [ 0, %if.end.i.i.i ], [ %ret.043, %if.else.if.end14_crit_edge ], [ %ret.043, %if.end.i34.if.end14_crit_edge ], [ %ret.043, %for.inc.i38.if.end14_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end14 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !133

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !134

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !143

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #12
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %4) #12
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__replace_page(ptr noundef %vma, i32 noundef %addr, ptr noundef %old_page, ptr noundef %new_page) unnamed_addr #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  %range = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #12
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %5 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %7 = getelementptr inbounds %struct.page, ptr %old_page, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i103 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i103, label %if.end.i, label %if.then.i, !prof !133

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %9, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %old_page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %10, %if.end.i ]
  %11 = inttoptr i32 %retval.0.i to ptr
  %12 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pvmw, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vma, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %addr, ptr %3, align 4
  %15 = call ptr @memset(ptr %4, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #12
  %16 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %17 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %18 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %19 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %20 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  %add = add i32 %addr, 4096
  %21 = getelementptr inbounds i8, ptr %range, i32 24
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  %23 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vma, ptr %range, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %20, align 4
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %16, align 4
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %addr, ptr %17, align 4
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %18, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %19, align 4
  %tobool.not = icmp eq ptr %new_page, null
  br i1 %tobool.not, label %_compound_head.exit.if.end7_crit_edge, label %if.then

_compound_head.exit.if.end7_crit_edge:            ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %_compound_head.exit
  %29 = getelementptr inbounds %struct.page, ptr %new_page, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i104 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool.not.i105 = icmp eq i32 %and.i104, 0
  br i1 %tobool.not.i105, label %if.end.i108, label %if.then.i107, !prof !133

if.then.i107:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i106 = add i32 %31, -1
  br label %_compound_head.exit110

if.end.i108:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %new_page to i32
  br label %_compound_head.exit110

_compound_head.exit110:                           ; preds = %if.end.i108, %if.then.i107
  %retval.0.i109 = phi i32 [ %sub.i106, %if.then.i107 ], [ %32, %if.end.i108 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@__replace_page, %mem_cgroup_charge.exit)) #12
          to label %if.end.i111 [label %mem_cgroup_charge.exit], !srcloc !143

if.end.i111:                                      ; preds = %_compound_head.exit110
  call void @__sanitizer_cov_trace_pc() #14
  %33 = inttoptr i32 %retval.0.i109 to ptr
  %call1.i = tail call i32 @__mem_cgroup_charge(ptr noundef %33, ptr noundef %1, i32 noundef 3264) #12
  br label %mem_cgroup_charge.exit

mem_cgroup_charge.exit:                           ; preds = %if.end.i111, %_compound_head.exit110
  %retval.0.i112 = phi i32 [ %call1.i, %if.end.i111 ], [ 0, %_compound_head.exit110 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i112)
  %tobool5.not = icmp eq i32 %retval.0.i112, 0
  br i1 %tobool5.not, label %mem_cgroup_charge.exit.if.end7_crit_edge, label %mem_cgroup_charge.exit.cleanup_crit_edge

mem_cgroup_charge.exit.cleanup_crit_edge:         ; preds = %mem_cgroup_charge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

mem_cgroup_charge.exit.if.end7_crit_edge:         ; preds = %mem_cgroup_charge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %mem_cgroup_charge.exit.if.end7_crit_edge, %_compound_head.exit.if.end7_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 788) #12
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %7, align 4
  %and.i.i113 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113)
  %tobool.not.i.i114 = icmp eq i32 %and.i.i113, 0
  br i1 %tobool.not.i.i114, label %if.end.i.i117, label %if.then.i.i116, !prof !133

if.then.i.i116:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i115 = add i32 %35, -1
  br label %_compound_head.exit.i

if.end.i.i117:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %old_page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i117, %if.then.i.i116
  %retval.0.i.i118 = phi i32 [ %sub.i.i115, %if.then.i.i116 ], [ %36, %if.end.i.i117 ]
  %37 = inttoptr i32 %retval.0.i.i118 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !133

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.13) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef 4) #12
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %37, align 4
  %and.i.i4.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i119_crit_edge

folio_flags.exit.i.i.if.then.i119_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i119

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %37, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #12, !srcloc !144
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !145
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i119_crit_edge

folio_trylock.exit.i.if.then.i119_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i119

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_page.exit

if.then.i119:                                     ; preds = %folio_trylock.exit.i.if.then.i119_crit_edge, %folio_flags.exit.i.i.if.then.i119_crit_edge
  tail call void @__folio_lock(ptr noundef %37) #12
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i119, %folio_trylock.exit.i.lock_page.exit_crit_edge
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range)
  %call8 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #12
  br i1 %call8, label %do.body, label %lock_page.exit.unlock_crit_edge

lock_page.exit.unlock_crit_edge:                  ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.body:                                          ; preds = %lock_page.exit
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %addr)
  %cmp.not = icmp eq i32 %45, %addr
  br i1 %cmp.not, label %do.end21, label %if.then14, !prof !133

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %old_page, ptr noundef nonnull @.str.16) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/events/uprobes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 183, 0\0A.popsection", ""() #12, !srcloc !146
  unreachable

do.end21:                                         ; preds = %do.body
  br i1 %tobool.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.end21
  %46 = getelementptr inbounds %struct.page, ptr %new_page, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i121 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i121)
  %tobool.not.i.i122 = icmp eq i32 %and.i.i121, 0
  br i1 %tobool.not.i.i122, label %if.end.i.i125, label %if.then.i.i124, !prof !133

if.then.i.i124:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i123 = add i32 %48, -1
  br label %_compound_head.exit.i128

if.end.i.i125:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %new_page to i32
  br label %_compound_head.exit.i128

_compound_head.exit.i128:                         ; preds = %if.end.i.i125, %if.then.i.i124
  %retval.0.i.i126 = phi i32 [ %sub.i.i123, %if.then.i.i124 ], [ %49, %if.end.i.i125 ]
  %50 = inttoptr i32 %retval.0.i.i126 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %51 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %52, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i127 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i127, label %if.then.i1.i, label %do.end5.i.i, !prof !134

if.then.i1.i:                                     ; preds = %_compound_head.exit.i128
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.19) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !147
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i128
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@__replace_page, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !143

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_mod(ptr noundef %50, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  call void @page_add_new_anon_rmap(ptr noundef nonnull %new_page, ptr noundef %vma, i32 noundef %addr, i1 noundef zeroext false) #12
  call void @lru_cache_add_inactive_or_unevictable(ptr noundef nonnull %new_page, ptr noundef %vma) #12
  br label %if.end24

if.else:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %54 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i) #12
  br label %if.end24

if.end24:                                         ; preds = %if.else, %get_page.exit
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %7, align 4
  %and.i2.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !133

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %56, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %old_page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %57, %if.end.i.i ]
  %58 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.83, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mapping.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %and.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %if.then26, label %PageAnon.exit.if.end28_crit_edge

PageAnon.exit.if.end28_crit_edge:                 ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %PageAnon.exit
  %62 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i129 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i129, label %if.end.i.i.i, label %if.then.i.i.i130, !prof !133

if.then.i.i.i130:                                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %63, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %old_page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i130
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i130 ], [ %64, %if.end.i.i.i ]
  %65 = inttoptr i32 %retval.0.i.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp.i.not.i.i = icmp eq i32 %67, -1
  %68 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %7, align 4
  %and.i16.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i131, label %do.end10.i.i, !prof !134

if.then.i.i131:                                   ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !133

if.then.i19.i.i:                                  ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i.i = add i32 %69, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %old_page to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %70, %if.end.i20.i.i ]
  %71 = inttoptr i32 %retval.0.i21.i.i to ptr
  call void @dump_page(ptr noundef %71, ptr noundef nonnull @.str.20) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #12, !srcloc !149
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !133

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i.i = add i32 %69, -1
  br label %mm_counter_file.exit

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %old_page to i32
  br label %mm_counter_file.exit

mm_counter_file.exit:                             ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %72, %if.end.i27.i.i ]
  %73 = inttoptr i32 %retval.0.i28.i.i to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %76 = and i32 %75, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i132 = icmp eq i32 %76, 0
  %..i = select i1 %tobool.not.i132, i32 0, i32 3
  %rss_stat.i133 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 40
  %arrayidx.i134 = getelementptr [4 x %struct.atomic_t], ptr %rss_stat.i133, i32 0, i32 %..i
  %call.i.i.i135 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i134, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %arrayidx.i134, i32 1, i32 3, i32 1) #12
  %77 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i134, ptr %arrayidx.i134, i32 1, ptr elementtype(i32) %arrayidx.i134) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i136 = extractvalue { i32, i32 } %77, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef %..i, i32 noundef %asmresult.i.i.i.i.i.i136) #12
  %arrayidx.i137 = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i138 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i137, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !150
  call void @llvm.prefetch.p0(ptr %arrayidx.i137, i32 1, i32 3, i32 1) #12
  %78 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i137, ptr %arrayidx.i137, i32 1, ptr elementtype(i32) %arrayidx.i137) #12, !srcloc !151
  %asmresult.i.i.i.i.i.i139 = extractvalue { i32, i32 } %78, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !152
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i139) #12
  br label %if.end28

if.end28:                                         ; preds = %mm_counter_file.exit, %PageAnon.exit.if.end28_crit_edge
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %5, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %shr = lshr i32 %82, 12
  call void @flush_cache_page(ptr noundef %vma, i32 noundef %addr, i32 noundef %shr) #12
  %83 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %vm_mm, align 4
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %5, align 4
  %call33 = call i32 @ptep_clear_flush(ptr noundef %vma, i32 noundef %addr, ptr noundef %86) #12
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon, ptr %84, i32 0, i32 49
  %87 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %88, null
  br i1 %tobool.i.not.i, label %if.end28.mmu_notifier_invalidate_range.exit_crit_edge, label %if.then.i140

if.end28.mmu_notifier_invalidate_range.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmu_notifier_invalidate_range.exit

if.then.i140:                                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %and30 = and i32 %addr, -4096
  %add34 = add i32 %and30, 4096
  call void @__mmu_notifier_invalidate_range(ptr noundef %84, i32 noundef %and30, i32 noundef %add34) #12
  br label %mmu_notifier_invalidate_range.exit

mmu_notifier_invalidate_range.exit:               ; preds = %if.then.i140, %if.end28.mmu_notifier_invalidate_range.exit_crit_edge
  br i1 %tobool.not, label %mmu_notifier_invalidate_range.exit.if.end41_crit_edge, label %if.then36

mmu_notifier_invalidate_range.exit.if.end41_crit_edge: ; preds = %mmu_notifier_invalidate_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then36:                                        ; preds = %mmu_notifier_invalidate_range.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %89 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %new_page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %89 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %90 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add39 = add i32 %sub.ptr.div, %90
  %shl = shl i32 %add39, 12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %91 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vm_page_prot, align 4
  %or = or i32 %shl, %92
  %notifier_subscriptions.i.i142 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 49
  %93 = ptrtoint ptr %notifier_subscriptions.i.i142 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %notifier_subscriptions.i.i142, align 8
  %tobool.i.not.i143 = icmp eq ptr %94, null
  br i1 %tobool.i.not.i143, label %if.then36.mmu_notifier_change_pte.exit_crit_edge, label %if.then.i144

if.then36.mmu_notifier_change_pte.exit_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmu_notifier_change_pte.exit

if.then.i144:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmu_notifier_change_pte(ptr noundef %1, i32 noundef %addr, i32 noundef %or) #12
  br label %mmu_notifier_change_pte.exit

mmu_notifier_change_pte.exit:                     ; preds = %if.then.i144, %if.then36.mmu_notifier_change_pte.exit_crit_edge
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %5, align 4
  call void @set_pte_at(ptr noundef %1, i32 noundef %addr, ptr noundef %96, i32 noundef %or) #12
  br label %if.end41

if.end41:                                         ; preds = %mmu_notifier_change_pte.exit, %mmu_notifier_invalidate_range.exit.if.end41_crit_edge
  call void @page_remove_rmap(ptr noundef %old_page, i1 noundef zeroext false) #12
  %call42 = call zeroext i1 @page_mapped(ptr noundef %old_page) #12
  br i1 %call42, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = call i32 @try_to_free_swap(ptr noundef %old_page) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %5, align 4
  %tobool.not.i146 = icmp eq ptr %98, null
  br i1 %tobool.not.i146, label %if.end45.if.end.i148_crit_edge, label %land.lhs.true.i

if.end45.if.end.i148_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i148

land.lhs.true.i:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  call void @kunmap_local_indexed(ptr noundef nonnull %98) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %99 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 213
  %103 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %104, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %105 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i147 = add i32 %108, -1
  store volatile i32 %sub.i.i.i147, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end.i148

if.end.i148:                                      ; preds = %land.lhs.true.i, %if.end45.if.end.i148_crit_edge
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %6, align 4
  %tobool5.not.i = icmp eq ptr %110, null
  br i1 %tobool5.not.i, label %if.end.i148.page_vma_mapped_walk_done.exit_crit_edge, label %if.then6.i

if.end.i148.page_vma_mapped_walk_done.exit_crit_edge: ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #14
  br label %page_vma_mapped_walk_done.exit

if.then6.i:                                       ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef nonnull %110) #12
  br label %page_vma_mapped_walk_done.exit

page_vma_mapped_walk_done.exit:                   ; preds = %if.then6.i, %if.end.i148.page_vma_mapped_walk_done.exit_crit_edge
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %111 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vm_flags, align 4
  %and46 = and i32 %112, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %page_vma_mapped_walk_done.exit.if.end52_crit_edge, label %land.lhs.true

page_vma_mapped_walk_done.exit.if.end52_crit_edge: ; preds = %page_vma_mapped_walk_done.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true:                                    ; preds = %page_vma_mapped_walk_done.exit
  %113 = ptrtoint ptr %old_page to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %old_page, align 4
  %115 = and i32 %114, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

PageCompound.exit:                                ; preds = %land.lhs.true
  %116 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %7, align 4
  %and.i.i102 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i102)
  %tobool49.not = icmp eq i32 %and.i.i102, 0
  br i1 %tobool49.not, label %if.then50, label %PageCompound.exit.if.end52_crit_edge

PageCompound.exit.if.end52_crit_edge:             ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then50:                                        ; preds = %PageCompound.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call51 = call i32 @munlock_vma_page(ptr noundef %old_page) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %PageCompound.exit.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %page_vma_mapped_walk_done.exit.if.end52_crit_edge
  %118 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %7, align 4
  %and.i.i149 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i149)
  %tobool.not.i.i150 = icmp eq i32 %and.i.i149, 0
  br i1 %tobool.not.i.i150, label %if.end.i.i153, label %if.then.i.i152, !prof !133

if.then.i.i152:                                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i151 = add i32 %119, -1
  br label %_compound_head.exit.i155

if.end.i.i153:                                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %120 = ptrtoint ptr %old_page to i32
  br label %_compound_head.exit.i155

_compound_head.exit.i155:                         ; preds = %if.end.i.i153, %if.then.i.i152
  %retval.0.i.i154 = phi i32 [ %sub.i.i151, %if.then.i.i152 ], [ %120, %if.end.i.i153 ]
  %121 = inttoptr i32 %retval.0.i.i154 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %121, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %122 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp.i.i.i.i = icmp eq i32 %123, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i156, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i156:                               ; preds = %_compound_head.exit.i155
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %121, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i155
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %124 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %124, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__replace_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !143

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %121, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.unlock_crit_edge

folio_put_testzero.exit.i.i.unlock_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %121) #12
  br label %unlock

unlock:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.unlock_crit_edge, %lock_page.exit.unlock_crit_edge
  %err.0 = phi i32 [ -11, %lock_page.exit.unlock_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.unlock_crit_edge ], [ 0, %if.then.i4.i ]
  %125 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %19, align 4
  %and.i.i157 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i157)
  %tobool.i.not.i158 = icmp eq i32 %and.i.i157, 0
  br i1 %tobool.i.not.i158, label %unlock.if.end.i160_crit_edge, label %do.body.i

unlock.if.end.i160_crit_edge:                     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i160

do.body.i:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 482) #12
  br label %if.end.i160

if.end.i160:                                      ; preds = %do.body.i, %unlock.if.end.i160_crit_edge
  %127 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %16, align 4
  %notifier_subscriptions.i.i159 = getelementptr inbounds %struct.anon, ptr %128, i32 0, i32 49
  %129 = ptrtoint ptr %notifier_subscriptions.i.i159 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %notifier_subscriptions.i.i159, align 8
  %tobool.i8.not.i = icmp eq ptr %130, null
  br i1 %tobool.i8.not.i, label %if.end.i160.mmu_notifier_invalidate_range_end.exit_crit_edge, label %if.then4.i

if.end.i160.mmu_notifier_invalidate_range_end.exit_crit_edge: ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %mmu_notifier_invalidate_range_end.exit

if.then4.i:                                       ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range, i1 noundef zeroext false) #12
  br label %mmu_notifier_invalidate_range_end.exit

mmu_notifier_invalidate_range_end.exit:           ; preds = %if.then4.i, %if.end.i160.mmu_notifier_invalidate_range_end.exit_crit_edge
  call void @unlock_page(ptr noundef %old_page) #12
  br label %cleanup

cleanup:                                          ; preds = %mmu_notifier_invalidate_range_end.exit, %mem_cgroup_charge.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %mmu_notifier_invalidate_range_end.exit ], [ %retval.0.i112, %mem_cgroup_charge.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @set_swbp(ptr noundef %auprobe, ptr noundef %mm, i32 noundef %vaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uprobe_write_opcode(ptr noundef %auprobe, ptr noundef %mm, i32 noundef %vaddr, i32 noundef -117313305)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @set_orig_insn(ptr noundef %auprobe, ptr noundef %mm, i32 noundef %vaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %auprobe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %auprobe, align 4
  %call = tail call i32 @uprobe_write_opcode(ptr noundef %auprobe, ptr noundef %mm, i32 noundef %vaddr, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_unregister(ptr noundef %inode, i64 noundef %offset, ptr noundef %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @find_uprobe(ptr noundef %inode, i64 noundef %offset)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !134

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1114, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %register_rwsem = getelementptr inbounds %struct.uprobe, ptr %call, i32 0, i32 2
  tail call void @down_write(ptr noundef %register_rwsem) #12
  tail call fastcc void @__uprobe_unregister(ptr noundef nonnull %call, ptr noundef %uc)
  tail call void @up_write(ptr noundef %register_rwsem) #12
  tail call fastcc void @put_uprobe(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_uprobe(ptr noundef readnone %inode, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #12
  %node.08.i.i = load ptr, ptr @uprobes_tree, align 4
  %tobool.not9.i.i = icmp eq ptr %node.08.i.i, null
  br i1 %tobool.not9.i.i, label %entry.__find_uprobe.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.__find_uprobe.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__find_uprobe.exit

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %node.010.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.08.i.i, %entry.while.body.i.i_crit_edge ]
  %inode.i.i.i.i = getelementptr inbounds %struct.uprobe, ptr %node.010.i.i, i32 0, i32 6
  %0 = ptrtoint ptr %inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %1, %inode
  br i1 %cmp.i.i.i.i, label %while.body.i.i.if.then.i.i_crit_edge, label %if.end.i.i.i.i

while.body.i.i.if.then.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  %cmp2.i.i.i.i = icmp ult ptr %1, %inode
  br i1 %cmp2.i.i.i.i, label %if.end.i.i.i.i.if.then3.i.i_crit_edge, label %if.end4.i.i.i.i

if.end.i.i.i.i.if.then3.i.i_crit_edge:            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i

if.end4.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  %offset.i.i.i.i = getelementptr inbounds %struct.uprobe, ptr %node.010.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp5.i.i.i.i = icmp sgt i64 %3, %offset
  br i1 %cmp5.i.i.i.i, label %if.end4.i.i.i.i.if.then.i.i_crit_edge, label %if.else.i.i

if.end4.i.i.i.i.if.then.i.i_crit_edge:            ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end4.i.i.i.i.if.then.i.i_crit_edge, %while.body.i.i.if.then.i.i_crit_edge
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.010.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp9.i.i.not.i.i = icmp slt i64 %3, %offset
  br i1 %cmp9.i.i.not.i.i, label %if.else.i.i.if.then3.i.i_crit_edge, label %if.then.i

if.else.i.i.if.then3.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.else.i.i.if.then3.i.i_crit_edge, %if.end.i.i.i.i.if.then3.i.i_crit_edge
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.010.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then3.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then3.i.i ]
  %4 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.__find_uprobe.exit_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

cleanup.i.i.__find_uprobe.exit_crit_edge:         ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__find_uprobe.exit

if.then.i:                                        ; preds = %if.else.i.i
  %ref.i.i = getelementptr inbounds %struct.uprobe, ptr %node.010.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__find_uprobe.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !133

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__find_uprobe.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__find_uprobe.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %__find_uprobe.exit

__find_uprobe.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__find_uprobe.exit_crit_edge, %cleanup.i.i.__find_uprobe.exit_crit_edge, %entry.__find_uprobe.exit_crit_edge
  %retval.0.i = phi ptr [ %node.010.i.i, %if.else.i.i.i.i.i.__find_uprobe.exit_crit_edge ], [ %node.010.i.i, %if.end15.sink.split.i.i.i.i.i ], [ null, %entry.__find_uprobe.exit_crit_edge ], [ null, %cleanup.i.i.__find_uprobe.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__uprobe_unregister(ptr noundef %uprobe, ptr noundef readonly %uc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %consumer_rwsem.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 3
  tail call void @down_write(ptr noundef %consumer_rwsem.i) #12
  %consumers.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 5
  %0 = ptrtoint ptr %consumers.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %consumers.i, align 4
  %tobool.not13.i = icmp eq ptr %1, null
  br i1 %tobool.not13.i, label %entry.do.end_crit_edge, label %for.body.i.preheader, !prof !154

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i.preheader:                             ; preds = %entry
  %cmp.i34 = icmp eq ptr %1, %uc
  br i1 %cmp.i34, label %for.body.i.preheader.if.end22_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.if.end22_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %2 = phi ptr [ %4, %for.body.i.for.cond.i_crit_edge ], [ %1, %for.body.i.preheader.for.cond.i_crit_edge ]
  %next1.i = getelementptr inbounds %struct.uprobe_consumer, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next1.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i, !prof !154

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %cmp.i = icmp eq ptr %4, %uc
  br i1 %cmp.i, label %if.end22.loopexit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

do.end:                                           ; preds = %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void @up_write(ptr noundef %consumer_rwsem.i) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1094, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end22.loopexit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %next1.i.le = getelementptr inbounds %struct.uprobe_consumer, ptr %2, i32 0, i32 3
  br label %if.end22

if.end22:                                         ; preds = %if.end22.loopexit, %for.body.i.preheader.if.end22_crit_edge
  %con.014.i.lcssa = phi ptr [ %consumers.i, %for.body.i.preheader.if.end22_crit_edge ], [ %next1.i.le, %if.end22.loopexit ]
  %next.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc, i32 0, i32 3
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next.i, align 4
  %7 = ptrtoint ptr %con.014.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %con.014.i.lcssa, align 4
  tail call void @up_write(ptr noundef %consumer_rwsem.i) #12
  %call23 = tail call fastcc i32 @register_for_each_vma(ptr noundef %uprobe, ptr noundef null)
  %8 = ptrtoint ptr %consumers.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumers.i, align 8
  %tobool24.not = icmp eq ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool25.not = icmp eq i32 %call23, 0
  %or.cond = select i1 %tobool24.not, i1 %tobool25.not, i1 false
  br i1 %or.cond, label %if.then26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  %10 = ptrtoint ptr %uprobe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uprobe, align 8
  %12 = ptrtoint ptr %uprobe to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp.i.not.i = icmp eq i32 %11, %12
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end22.critedge.i, !prof !134

do.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 942, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end22.critedge.i:                              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #12
  tail call void @rb_erase(ptr noundef %uprobe, ptr noundef nonnull @uprobes_tree) #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  %13 = ptrtoint ptr %uprobe to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %uprobe, align 8
  tail call fastcc void @put_uprobe(ptr noundef %uprobe) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end22.critedge.i, %do.end.i, %if.end22.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_uprobe(ptr noundef %uprobe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ref = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #12, !srcloc !156
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !133

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  tail call void @mutex_lock_nested(ptr noundef nonnull @delayed_uprobe_lock, i32 noundef 0) #12
  %tobool.not.i = icmp eq ptr %uprobe, null
  br i1 %tobool.not.i, label %if.then.delayed_uprobe_remove.exit_crit_edge, label %if.end.i

if.then.delayed_uprobe_remove.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_uprobe_remove.exit

if.end.i:                                         ; preds = %if.then
  %1 = load ptr, ptr @delayed_uprobe_list, align 4
  %cmp.i.not27.i = icmp eq ptr %1, @delayed_uprobe_list
  br i1 %cmp.i.not27.i, label %if.end.i.delayed_uprobe_remove.exit_crit_edge, label %if.end.i.land.lhs.true4.i_crit_edge

if.end.i.land.lhs.true4.i_crit_edge:              ; preds = %if.end.i
  br label %land.lhs.true4.i

if.end.i.delayed_uprobe_remove.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_uprobe_remove.exit

land.lhs.true4.i:                                 ; preds = %for.inc.i.land.lhs.true4.i_crit_edge, %if.end.i.land.lhs.true4.i_crit_edge
  %pos.028.i = phi ptr [ %q.030.i, %for.inc.i.land.lhs.true4.i_crit_edge ], [ %1, %if.end.i.land.lhs.true4.i_crit_edge ]
  %2 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %q.030.i = load ptr, ptr %pos.028.i, align 4
  %uprobe5.i = getelementptr inbounds %struct.delayed_uprobe, ptr %pos.028.i, i32 0, i32 1
  %3 = ptrtoint ptr %uprobe5.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %uprobe5.i, align 4
  %cmp.not.i = icmp eq ptr %4, %uprobe
  br i1 %cmp.not.i, label %if.end7.i, label %land.lhs.true4.i.for.inc.i_crit_edge

land.lhs.true4.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end7.i:                                        ; preds = %land.lhs.true4.i
  %tobool.not.i.i = icmp eq ptr %pos.028.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !134

do.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #12
  br label %for.inc.i

if.end23.critedge.i.i:                            ; preds = %if.end7.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.028.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge

if.end23.critedge.i.i.list_del.exit.i.i_crit_edge: ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.028.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i.i, align 4
  %7 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pos.028.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge
  %11 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.028.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.028.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %pos.028.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i.i, %do.end.i.i, %land.lhs.true4.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %q.030.i, @delayed_uprobe_list
  br i1 %cmp.i.not.i, label %for.inc.i.delayed_uprobe_remove.exit_crit_edge, label %for.inc.i.land.lhs.true4.i_crit_edge

for.inc.i.land.lhs.true4.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true4.i

for.inc.i.delayed_uprobe_remove.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_uprobe_remove.exit

delayed_uprobe_remove.exit:                       ; preds = %for.inc.i.delayed_uprobe_remove.exit_crit_edge, %if.end.i.delayed_uprobe_remove.exit_crit_edge, %if.then.delayed_uprobe_remove.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #12
  tail call void @kfree(ptr noundef %uprobe) #12
  br label %if.end

if.end:                                           ; preds = %delayed_uprobe_remove.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uprobe_register(ptr noundef %inode, i64 noundef %offset, ptr noundef %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__uprobe_register(ptr noundef %inode, i64 noundef %offset, i64 noundef 0, ptr noundef %uc)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uprobe_register(ptr noundef %inode, i64 noundef %offset, i64 noundef %ref_ctr_offset, ptr noundef %uc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ret_handler = getelementptr inbounds %struct.uprobe_consumer, ptr %uc, i32 0, i32 1
  %2 = ptrtoint ptr %ret_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ret_handler, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %a_ops, align 4
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %readpage, align 4
  %tobool2.not = icmp ne ptr %9, null
  %cmp.i = icmp eq ptr %7, @shmem_aops
  %or.cond80 = select i1 %tobool2.not, i1 true, i1 %cmp.i
  br i1 %or.cond80, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call7, i64 %offset)
  %cmp = icmp sge i64 %call7, %offset
  %and = and i64 %offset, 3
  %and13 = and i64 %ref_ctr_offset, 1
  %10 = or i64 %and13, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %11 = icmp eq i64 %10, 0
  %12 = and i1 %11, %cmp
  br i1 %12, label %retry.preheader, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

retry.preheader:                                  ; preds = %if.end6
  %next.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc, i32 0, i32 3
  br label %retry

retry:                                            ; preds = %if.end33.retry_crit_edge, %retry.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 312) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %retry.cleanup_crit_edge, label %if.end.i

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %retry
  %inode1.i = getelementptr inbounds %struct.uprobe, ptr %call7.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %inode1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %inode, ptr %inode1.i, align 4
  %offset2.i = getelementptr inbounds %struct.uprobe, ptr %call7.i.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %offset, ptr %offset2.i, align 8
  %ref_ctr_offset3.i = getelementptr inbounds %struct.uprobe, ptr %call7.i.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %ref_ctr_offset3.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %ref_ctr_offset, ptr %ref_ctr_offset3.i, align 8
  %register_rwsem.i = getelementptr inbounds %struct.uprobe, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %register_rwsem.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @alloc_uprobe.__key) #12
  %consumer_rwsem.i = getelementptr inbounds %struct.uprobe, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__init_rwsem(ptr noundef %consumer_rwsem.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @alloc_uprobe.__key.23) #12
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #12
  %17 = load ptr, ptr @uprobes_tree, align 4
  %tobool.not8.i.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not8.i.i.i.i, label %if.end.i.alloc_uprobe.exit_crit_edge, label %while.body.lr.ph.i.i.i.i

if.end.i.alloc_uprobe.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_uprobe.exit

while.body.lr.ph.i.i.i.i:                         ; preds = %if.end.i
  %18 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode1.i, align 4
  %20 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %offset2.i, align 8
  br label %while.body.i.i.i.i

while.body.i.i.i.i:                               ; preds = %if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge, %while.body.lr.ph.i.i.i.i
  %22 = phi ptr [ %17, %while.body.lr.ph.i.i.i.i ], [ %28, %if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge ]
  %inode.i.i.i.i.i.i = getelementptr inbounds %struct.uprobe, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %inode.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inode.i.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i.i = icmp ugt ptr %24, %19
  br i1 %cmp.i.i.i.i.i.i, label %while.body.i.i.i.i.if.then.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i

while.body.i.i.i.i.if.then.i.i.i.i_crit_edge:     ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %while.body.i.i.i.i
  %cmp2.i.i.i.i.i.i = icmp ult ptr %24, %19
  br i1 %cmp2.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.if.then3.i.i.i.i_crit_edge, label %if.end4.i.i.i.i.i.i

if.end.i.i.i.i.i.i.if.then3.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i.i.i

if.end4.i.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.i
  %offset.i.i.i.i.i.i = getelementptr inbounds %struct.uprobe, ptr %22, i32 0, i32 7
  %25 = ptrtoint ptr %offset.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %offset.i.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %21)
  %cmp5.i.i.i.i.i.i = icmp sgt i64 %26, %21
  br i1 %cmp5.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.if.then.i.i.i.i_crit_edge, label %if.else.i.i.i.i

if.end4.i.i.i.i.i.i.if.then.i.i.i.i_crit_edge:    ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end4.i.i.i.i.i.i.if.then.i.i.i.i_crit_edge, %while.body.i.i.i.i.if.then.i.i.i.i_crit_edge
  %rb_left.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 2
  br label %if.end5.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end4.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %21)
  %cmp9.i.i.not.i.i.i.i = icmp slt i64 %26, %21
  br i1 %cmp9.i.i.not.i.i.i.i, label %if.else.i.i.i.i.if.then3.i.i.i.i_crit_edge, label %if.then.i.i.i

if.else.i.i.i.i.if.then3.i.i.i.i_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.else.i.i.i.i.if.then3.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.if.then3.i.i.i.i_crit_edge
  %rb_right.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %22, i32 0, i32 1
  br label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.then.i.i.i.i
  %link.1.i.i.i.i = phi ptr [ %rb_left.i.i.i.i, %if.then.i.i.i.i ], [ %rb_right.i.i.i.i, %if.then3.i.i.i.i ]
  %27 = ptrtoint ptr %link.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.1.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i.i, label %while.cond.while.end_crit_edge.i.i.i.i, label %if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge

if.end5.i.i.i.i.while.body.i.i.i.i_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i.i

while.cond.while.end_crit_edge.i.i.i.i:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le.i.i.i.i = ptrtoint ptr %22 to i32
  br label %alloc_uprobe.exit

if.then.i.i.i:                                    ; preds = %if.else.i.i.i.i
  %ref.i.i.i.i = getelementptr inbounds %struct.uprobe, ptr %22, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i.i, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i.i, ptr %ref.i.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !134

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.if.then9.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !133

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.if.then9.i_crit_edge:       ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #12
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.if.then9.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  %ref_ctr_offset10.i = getelementptr inbounds %struct.uprobe, ptr %22, i32 0, i32 8
  %31 = ptrtoint ptr %ref_ctr_offset10.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ref_ctr_offset10.i, align 8
  %33 = ptrtoint ptr %ref_ctr_offset3.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ref_ctr_offset3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp.not.i = icmp eq i64 %32, %34
  br i1 %cmp.not.i, label %if.end14.i, label %if.end20.thread

if.end20.thread:                                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inode1.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino.i.i, align 8
  %39 = ptrtoint ptr %offset2.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %offset2.i, align 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %38, i64 noundef %40, i64 noundef %32, i64 noundef %34) #15
  tail call fastcc void @put_uprobe(ptr noundef nonnull %22) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.then22

if.end14.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end20

alloc_uprobe.exit:                                ; preds = %while.cond.while.end_crit_edge.i.i.i.i, %if.end.i.alloc_uprobe.exit_crit_edge
  %link.0.lcssa.i.i.i.i = phi ptr [ %link.1.i.i.i.i, %while.cond.while.end_crit_edge.i.i.i.i ], [ @uprobes_tree, %if.end.i.alloc_uprobe.exit_crit_edge ]
  %parent.0.lcssa.i.i.i.i = phi i32 [ %phi.cast.le.i.i.i.i, %while.cond.while.end_crit_edge.i.i.i.i ], [ 0, %if.end.i.alloc_uprobe.exit_crit_edge ]
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %parent.0.lcssa.i.i.i.i, ptr %call7.i.i.i, align 8
  %rb_right.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %rb_right.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rb_right.i.i.i.i.i, align 4
  %rb_left.i.i.i.i.i = getelementptr inbounds %struct.rb_node, ptr %call7.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %rb_left.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rb_left.i.i.i.i.i, align 8
  %44 = ptrtoint ptr %link.0.lcssa.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i, ptr %link.0.lcssa.i.i.i.i, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @uprobes_tree) #12
  %ref.i.i.i = getelementptr inbounds %struct.uprobe, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #12
  %45 = ptrtoint ptr %ref.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 2, ptr %ref.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  br label %if.end20

if.end20:                                         ; preds = %alloc_uprobe.exit, %if.end14.i
  %retval.0.i72 = phi ptr [ %call7.i.i.i, %alloc_uprobe.exit ], [ %22, %if.end14.i ]
  %cmp.i67 = icmp ugt ptr %retval.0.i72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.end20.if.then22_crit_edge, label %if.end24

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %if.end20.thread
  %retval.0.i7279 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end20.thread ], [ %retval.0.i72, %if.end20.if.then22_crit_edge ]
  %46 = ptrtoint ptr %retval.0.i7279 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %register_rwsem = getelementptr inbounds %struct.uprobe, ptr %retval.0.i72, i32 0, i32 2
  tail call void @down_write(ptr noundef %register_rwsem) #12
  %47 = ptrtoint ptr %retval.0.i72 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %retval.0.i72, align 8
  %49 = ptrtoint ptr %retval.0.i72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %49)
  %cmp.i68.not = icmp eq i32 %48, %49
  br i1 %cmp.i68.not, label %if.end24.if.end33_crit_edge, label %if.then28, !prof !134

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then28:                                        ; preds = %if.end24
  %consumer_rwsem.i69 = getelementptr inbounds %struct.uprobe, ptr %retval.0.i72, i32 0, i32 3
  tail call void @down_write(ptr noundef %consumer_rwsem.i69) #12
  %consumers.i = getelementptr inbounds %struct.uprobe, ptr %retval.0.i72, i32 0, i32 5
  %50 = ptrtoint ptr %consumers.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %consumers.i, align 8
  %52 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %next.i, align 4
  store ptr %uc, ptr %consumers.i, align 8
  tail call void @up_write(ptr noundef %consumer_rwsem.i69) #12
  %call29 = tail call fastcc i32 @register_for_each_vma(ptr noundef nonnull %retval.0.i72, ptr noundef %uc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then31

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @__uprobe_unregister(ptr noundef nonnull %retval.0.i72, ptr noundef %uc)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then28.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %ret.0 = phi i32 [ %call29, %if.then31 ], [ 0, %if.then28.if.end33_crit_edge ], [ -11, %if.end24.if.end33_crit_edge ]
  tail call void @up_write(ptr noundef %register_rwsem) #12
  tail call fastcc void @put_uprobe(ptr noundef nonnull %retval.0.i72)
  %cmp35 = icmp eq i32 %ret.0, -11
  br i1 %cmp35, label %if.end33.retry_crit_edge, label %if.end33.cleanup_crit_edge, !prof !134

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33.retry_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

cleanup:                                          ; preds = %if.end33.cleanup_crit_edge, %if.then22, %retry.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.then22 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -12, %retry.cleanup_crit_edge ], [ %ret.0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uprobe_register_refctr(ptr noundef %inode, i64 noundef %offset, i64 noundef %ref_ctr_offset, ptr noundef %uc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__uprobe_register(ptr noundef %inode, i64 noundef %offset, i64 noundef %ref_ctr_offset, ptr noundef %uc)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uprobe_apply(ptr noundef %inode, i64 noundef %offset, ptr noundef %uc, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @find_uprobe(ptr noundef %inode, i64 noundef %offset)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !134

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1224, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  %register_rwsem = getelementptr inbounds %struct.uprobe, ptr %call, i32 0, i32 2
  tail call void @down_write(ptr noundef %register_rwsem) #12
  %consumers = getelementptr inbounds %struct.uprobe, ptr %call, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end23
  %con.0.in = phi ptr [ %consumers, %if.end23 ], [ %next, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %con.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %con.0 = load ptr, ptr %con.0.in, align 4
  %tobool24.not = icmp eq ptr %con.0, null
  %cmp.not = icmp eq ptr %con.0, %uc
  %or.cond = or i1 %tobool24.not, %cmp.not
  %next = getelementptr inbounds %struct.uprobe_consumer, ptr %con.0, i32 0, i32 3
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %tobool24.not, label %for.end.if.end29_crit_edge, label %if.then26

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select = select i1 %add, ptr %uc, ptr null
  %call28 = tail call fastcc i32 @register_for_each_vma(ptr noundef nonnull %call, ptr noundef %spec.select)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %for.end.if.end29_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then26 ], [ -2, %for.end.if.end29_crit_edge ]
  tail call void @up_write(ptr noundef %register_rwsem) #12
  tail call fastcc void @put_uprobe(ptr noundef nonnull %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %ret.0, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_for_each_vma(ptr noundef %uprobe, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not92 = icmp eq ptr %new, null
  tail call void @percpu_down_write(ptr noundef nonnull @dup_mmap_sem) #12
  %inode = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 6
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %offset = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 7
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  %6 = lshr i64 %5, 12
  %conv.i = trunc i64 %6 to i32
  %i_mmap_rwsem.i.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 6
  %i_mmap.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 5
  %spec.select.i.i = select i1 %tobool.not92, i32 4194496, i32 4194498
  tail call void @down_read(ptr noundef %i_mmap_rwsem.i.i) #12
  %call.i100 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %i_mmap.i, i32 noundef %conv.i, i32 noundef %conv.i) #12
  %tobool.not83.i101 = icmp eq ptr %call.i100, null
  br i1 %tobool.not83.i101, label %entry.for.end.thread.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

again.i.loopexit:                                 ; preds = %if.end32.i
  tail call void @down_read(ptr noundef %i_mmap_rwsem.i.i) #12
  %call.i = tail call ptr @vma_interval_tree_iter_first(ptr noundef %i_mmap.i, i32 noundef %conv.i, i32 noundef %conv.i) #12
  %tobool.not83.i = icmp eq ptr %call.i, null
  br i1 %tobool.not83.i, label %again.i.loopexit.for.end.thread.i_crit_edge, label %again.i.loopexit.for.body.i.backedge_crit_edge

again.i.loopexit.for.body.i.backedge_crit_edge:   ; preds = %again.i.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.backedge

again.i.loopexit.for.end.thread.i_crit_edge:      ; preds = %again.i.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %again.i.loopexit.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  %prev.0.i.lcssa = phi ptr [ null, %entry.for.end.thread.i_crit_edge ], [ %call7.i73.i, %again.i.loopexit.for.end.thread.i_crit_edge ]
  tail call void @up_read(ptr noundef %i_mmap_rwsem.i.i) #12
  br label %out.i

for.body.i:                                       ; preds = %for.body.i.backedge, %entry.for.body.i_crit_edge
  %more.190.i = phi i32 [ %more.190.i.be, %for.body.i.backedge ], [ 0, %entry.for.body.i_crit_edge ]
  %prev.189.i = phi ptr [ %prev.189.i.be, %for.body.i.backedge ], [ null, %entry.for.body.i_crit_edge ]
  %curr.187.i = phi ptr [ %curr.187.i.be, %for.body.i.backedge ], [ null, %entry.for.body.i_crit_edge ]
  %vma.084.i = phi ptr [ %vma.084.i.be, %for.body.i.backedge ], [ %call.i100, %entry.for.body.i_crit_edge ]
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 14
  %7 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vm_file.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %valid_vma.exit.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

valid_vma.exit.i:                                 ; preds = %for.body.i
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 8
  %9 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags.i.i, align 4
  %and.i.i = and i32 %10, %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 64
  br i1 %cmp.i.i, label %if.end.i, label %valid_vma.exit.i.for.inc.i_crit_edge

valid_vma.exit.i.for.inc.i_crit_edge:             ; preds = %valid_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %valid_vma.exit.i
  %tobool3.not.i = icmp eq ptr %prev.189.i, null
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %more.190.i)
  %tobool4.not.i = icmp eq i32 %more.190.i, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %land.lhs.true.i.if.then12.i_crit_edge

land.lhs.true.i.if.then12.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 534528, i32 noundef 12) #16
  %tobool7.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not.i, label %if.then5.i.if.then12.i_crit_edge, label %if.then8.i

if.then5.i.if.then12.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %call7.i.i, align 8
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.then5.i.if.then12.i_crit_edge, %land.lhs.true.i.if.then12.i_crit_edge
  %inc.i = add i32 %more.190.i, 1
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end.i.if.end13.i_crit_edge
  %prev.2.i = phi ptr [ %prev.189.i, %if.end.i.if.end13.i_crit_edge ], [ %call7.i.i, %if.then8.i ]
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 6
  %13 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vm_mm.i, align 4
  %mm_users.i.i = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  tail call void @llvm.prefetch.p0(ptr %mm_users.i.i, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i.i, ptr %mm_users.i.i, i32 0, i32 1, ptr elementtype(i32) %mm_users.i.i) #12, !srcloc !159
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end13.i.for.inc.i_crit_edge, label %if.end16.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end16.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !160
  %16 = ptrtoint ptr %prev.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.2.i, align 4
  store ptr %curr.187.i, ptr %prev.2.i, align 4
  %18 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm_mm.i, align 4
  %mm.i = getelementptr inbounds %struct.map_info, ptr %prev.2.i, i32 0, i32 1
  %20 = ptrtoint ptr %mm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %mm.i, align 4
  %21 = ptrtoint ptr %vma.084.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vma.084.i, align 4
  %conv.i.i = zext i32 %22 to i64
  %add.i.i = add i64 %5, %conv.i.i
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.084.i, i32 0, i32 13
  %23 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_pgoff.i.i, align 4
  %conv1.i.i = zext i32 %24 to i64
  %shl.neg.i.i = mul nuw i64 %conv1.i.i, 4294963200
  %sub.i.i = add i64 %add.i.i, %shl.neg.i.i
  %conv2.i.i = trunc i64 %sub.i.i to i32
  %vaddr.i = getelementptr inbounds %struct.map_info, ptr %prev.2.i, i32 0, i32 2
  %25 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv2.i.i, ptr %vaddr.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i, %if.end13.i.for.inc.i_crit_edge, %if.then12.i, %valid_vma.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %curr.2.i = phi ptr [ %prev.2.i, %if.end16.i ], [ %curr.187.i, %if.then12.i ], [ %curr.187.i, %valid_vma.exit.i.for.inc.i_crit_edge ], [ %curr.187.i, %if.end13.i.for.inc.i_crit_edge ], [ %curr.187.i, %for.body.i.for.inc.i_crit_edge ]
  %prev.3.i = phi ptr [ %17, %if.end16.i ], [ null, %if.then12.i ], [ %prev.189.i, %valid_vma.exit.i.for.inc.i_crit_edge ], [ %prev.2.i, %if.end13.i.for.inc.i_crit_edge ], [ %prev.189.i, %for.body.i.for.inc.i_crit_edge ]
  %more.2.i = phi i32 [ %more.190.i, %if.end16.i ], [ %inc.i, %if.then12.i ], [ %more.190.i, %valid_vma.exit.i.for.inc.i_crit_edge ], [ %more.190.i, %if.end13.i.for.inc.i_crit_edge ], [ %more.190.i, %for.body.i.for.inc.i_crit_edge ]
  %call21.i = tail call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %vma.084.i, i32 noundef %conv.i, i32 noundef %conv.i) #12
  %tobool.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i.for.body.i.backedge_crit_edge

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.for.body.i.backedge_crit_edge, %again.i.loopexit.for.body.i.backedge_crit_edge
  %more.190.i.be = phi i32 [ %more.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ 0, %again.i.loopexit.for.body.i.backedge_crit_edge ]
  %prev.189.i.be = phi ptr [ %prev.3.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %call7.i73.i, %again.i.loopexit.for.body.i.backedge_crit_edge ]
  %curr.187.i.be = phi ptr [ %curr.2.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ null, %again.i.loopexit.for.body.i.backedge_crit_edge ]
  %vma.084.i.be = phi ptr [ %call21.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %call.i, %again.i.loopexit.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @up_read(ptr noundef %i_mmap_rwsem.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %more.2.i)
  %tobool22.not.i = icmp eq i32 %more.2.i, 0
  br i1 %tobool22.not.i, label %for.end.i.out.i_crit_edge, label %while.cond.preheader.i

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

while.cond.preheader.i:                           ; preds = %for.end.i
  %tobool25.not94.i = icmp eq ptr %curr.2.i, null
  br i1 %tobool25.not94.i, label %while.cond.preheader.i.do.body.i.preheader_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.do.body.i.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.preheader

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %curr.395.i = phi ptr [ %29, %while.body.i.while.body.i_crit_edge ], [ %curr.2.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %mm26.i = getelementptr inbounds %struct.map_info, ptr %curr.395.i, i32 0, i32 1
  %26 = ptrtoint ptr %mm26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mm26.i, align 4
  tail call void @mmput(ptr noundef %27) #12
  %28 = ptrtoint ptr %curr.395.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %curr.395.i, align 4
  %tobool25.not.i = icmp eq ptr %29, null
  br i1 %tobool25.not.i, label %while.body.i.do.body.i.preheader_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.do.body.i.preheader_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %while.body.i.do.body.i.preheader_crit_edge, %while.cond.preheader.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %if.end32.i.do.body.i_crit_edge, %do.body.i.preheader
  %prev.4.i = phi ptr [ %call7.i73.i, %if.end32.i.do.body.i_crit_edge ], [ %curr.2.i, %do.body.i.preheader ]
  %more.3.i = phi i32 [ %dec.i, %if.end32.i.do.body.i_crit_edge ], [ %more.2.i, %do.body.i.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i73.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 12) #16
  %tobool29.not.i = icmp eq ptr %call7.i73.i, null
  br i1 %tobool29.not.i, label %do.body.i.out.i_crit_edge, label %if.end32.i

do.body.i.out.i_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end32.i:                                       ; preds = %do.body.i
  %31 = ptrtoint ptr %call7.i73.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %prev.4.i, ptr %call7.i73.i, align 8
  %dec.i = add i32 %more.3.i, -1
  %tobool34.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool34.not.i, label %again.i.loopexit, label %if.end32.i.do.body.i_crit_edge

if.end32.i.do.body.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

out.i:                                            ; preds = %do.body.i.out.i_crit_edge, %for.end.i.out.i_crit_edge, %for.end.thread.i
  %curr.4.i = phi ptr [ null, %for.end.thread.i ], [ inttoptr (i32 -12 to ptr), %do.body.i.out.i_crit_edge ], [ %curr.2.i, %for.end.i.out.i_crit_edge ]
  %prev.5.i = phi ptr [ %prev.0.i.lcssa, %for.end.thread.i ], [ %prev.4.i, %do.body.i.out.i_crit_edge ], [ %prev.3.i, %for.end.i.out.i_crit_edge ]
  %tobool36.not97.i = icmp eq ptr %prev.5.i, null
  br i1 %tobool36.not97.i, label %out.i.build_map_info.exit_crit_edge, label %out.i.while.body37.i_crit_edge

out.i.while.body37.i_crit_edge:                   ; preds = %out.i
  br label %while.body37.i

out.i.build_map_info.exit_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_map_info.exit

while.body37.i:                                   ; preds = %while.body37.i.while.body37.i_crit_edge, %out.i.while.body37.i_crit_edge
  %prev.698.i = phi ptr [ %33, %while.body37.i.while.body37.i_crit_edge ], [ %prev.5.i, %out.i.while.body37.i_crit_edge ]
  %32 = ptrtoint ptr %prev.698.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.698.i, align 4
  tail call void @kfree(ptr noundef nonnull %prev.698.i) #12
  %tobool36.not.i = icmp eq ptr %33, null
  br i1 %tobool36.not.i, label %while.body37.i.build_map_info.exit_crit_edge, label %while.body37.i.while.body37.i_crit_edge

while.body37.i.while.body37.i_crit_edge:          ; preds = %while.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body37.i

while.body37.i.build_map_info.exit_crit_edge:     ; preds = %while.body37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_map_info.exit

build_map_info.exit:                              ; preds = %while.body37.i.build_map_info.exit_crit_edge, %out.i.build_map_info.exit_crit_edge
  %cmp.i = icmp ugt ptr %curr.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %build_map_info.exit
  %tobool5.not104 = icmp eq ptr %curr.4.i, null
  br i1 %tobool5.not104, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %filter.i = getelementptr inbounds %struct.uprobe_consumer, ptr %new, i32 0, i32 2
  %consumer_rwsem.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 3
  %consumers.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 5
  %arch.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 10
  br label %while.body

if.then:                                          ; preds = %build_map_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %curr.4.i to i32
  br label %out

while.body:                                       ; preds = %free.while.body_crit_edge, %while.body.lr.ph
  %err.0106 = phi i32 [ 0, %while.body.lr.ph ], [ %err.2, %free.while.body_crit_edge ]
  %info.0105 = phi ptr [ %curr.4.i, %while.body.lr.ph ], [ %69, %free.while.body_crit_edge ]
  %mm6 = getelementptr inbounds %struct.map_info, ptr %info.0105, i32 0, i32 1
  %35 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mm6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0106)
  %tobool7.not = icmp eq i32 %err.0106, 0
  %brmerge = or i1 %tobool.not92, %tobool7.not
  br i1 %brmerge, label %if.end10, label %while.body.free_crit_edge

while.body.free_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %free

if.end10:                                         ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@register_for_each_vma, %if.then.i.i)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !143

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %36, i1 noundef zeroext true) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end10
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@register_for_each_vma, %if.then.i3.i)) #12
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !143

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %36, i1 noundef zeroext true, i1 noundef zeroext true) #12
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %vaddr = getelementptr inbounds %struct.map_info, ptr %info.0105, i32 0, i32 2
  %37 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vaddr, align 4
  %call11 = tail call ptr @find_vma(ptr noundef %36, i32 noundef %38) #12
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %mmap_write_lock.exit.unlock_crit_edge, label %lor.lhs.false

mmap_write_lock.exit.unlock_crit_edge:            ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

lor.lhs.false:                                    ; preds = %mmap_write_lock.exit
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %call11, i32 0, i32 14
  %39 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vm_file.i, align 4
  %tobool1.not.i = icmp eq ptr %40, null
  br i1 %tobool1.not.i, label %lor.lhs.false.unlock_crit_edge, label %valid_vma.exit

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

valid_vma.exit:                                   ; preds = %lor.lhs.false
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call11, i32 0, i32 8
  %41 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %42, %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp.i81 = icmp eq i32 %and.i, 64
  br i1 %cmp.i81, label %lor.lhs.false15, label %valid_vma.exit.unlock_crit_edge

valid_vma.exit.unlock_crit_edge:                  ; preds = %valid_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

lor.lhs.false15:                                  ; preds = %valid_vma.exit
  %f_inode.i = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %f_inode.i, align 8
  %45 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %inode, align 4
  %cmp.not = icmp eq ptr %44, %46
  br i1 %cmp.not, label %if.end19, label %lor.lhs.false15.unlock_crit_edge

lor.lhs.false15.unlock_crit_edge:                 ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end19:                                         ; preds = %lor.lhs.false15
  %47 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %call11, align 4
  %49 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp21 = icmp ult i32 %50, %48
  br i1 %cmp21, label %if.end19.unlock_crit_edge, label %lor.lhs.false22

if.end19.unlock_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

lor.lhs.false22:                                  ; preds = %if.end19
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %call11, i32 0, i32 13
  %51 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_pgoff.i, align 4
  %conv.i82 = zext i32 %52 to i64
  %shl.i = shl nuw nsw i64 %conv.i82, 12
  %sub.i = sub i32 %50, %48
  %conv1.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %shl.i, %conv1.i
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %54)
  %cmp26.not = icmp eq i64 %add.i, %54
  br i1 %cmp26.not, label %if.end28, label %lor.lhs.false22.unlock_crit_edge

lor.lhs.false22.unlock_crit_edge:                 ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end28:                                         ; preds = %lor.lhs.false22
  br i1 %tobool.not92, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end28
  %55 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %filter.i, align 4
  %tobool.not.i83 = icmp eq ptr %56, null
  br i1 %tobool.not.i83, label %if.then30.if.then32_crit_edge, label %consumer_filter.exit

if.then30.if.then32_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

consumer_filter.exit:                             ; preds = %if.then30
  %call.i84 = tail call zeroext i1 %56(ptr noundef nonnull %new, i32 noundef 0, ptr noundef %36) #12
  br i1 %call.i84, label %consumer_filter.exit.if.then32_crit_edge, label %consumer_filter.exit.unlock_crit_edge

consumer_filter.exit.unlock_crit_edge:            ; preds = %consumer_filter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

consumer_filter.exit.if.then32_crit_edge:         ; preds = %consumer_filter.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32

if.then32:                                        ; preds = %consumer_filter.exit.if.then32_crit_edge, %if.then30.if.then32_crit_edge
  %57 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vaddr, align 4
  %call34 = tail call fastcc i32 @install_breakpoint(ptr noundef %uprobe, ptr noundef %36, ptr noundef nonnull %call11, i32 noundef %58)
  br label %unlock

if.else:                                          ; preds = %if.end28
  %flags = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 43
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %flags, align 4
  %61 = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool37.not = icmp eq i32 %61, 0
  br i1 %tobool37.not, label %if.else.unlock_crit_edge, label %if.then38

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then38:                                        ; preds = %if.else
  tail call void @down_read(ptr noundef %consumer_rwsem.i) #12
  %62 = ptrtoint ptr %consumers.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %uc.011.i = load ptr, ptr %consumers.i, align 4
  %tobool.not12.i = icmp eq ptr %uc.011.i, null
  br i1 %tobool.not12.i, label %if.then38.if.then40_crit_edge, label %if.then38.for.body.i86_crit_edge

if.then38.for.body.i86_crit_edge:                 ; preds = %if.then38
  br label %for.body.i86

if.then38.if.then40_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

for.cond.i:                                       ; preds = %consumer_filter.exit.i
  %next.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.013.i, i32 0, i32 3
  %63 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %uc.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i85 = icmp eq ptr %uc.0.i, null
  br i1 %tobool.not.i85, label %for.cond.i.if.then40_crit_edge, label %for.cond.i.for.body.i86_crit_edge

for.cond.i.for.body.i86_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i86

for.cond.i.if.then40_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40

for.body.i86:                                     ; preds = %for.cond.i.for.body.i86_crit_edge, %if.then38.for.body.i86_crit_edge
  %uc.013.i = phi ptr [ %uc.0.i, %for.cond.i.for.body.i86_crit_edge ], [ %uc.011.i, %if.then38.for.body.i86_crit_edge ]
  %filter.i.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.013.i, i32 0, i32 2
  %64 = ptrtoint ptr %filter.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %filter.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %for.body.i86.filter_chain.exit.thread_crit_edge, label %consumer_filter.exit.i

for.body.i86.filter_chain.exit.thread_crit_edge:  ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %filter_chain.exit.thread

consumer_filter.exit.i:                           ; preds = %for.body.i86
  %call.i.i = tail call zeroext i1 %65(ptr noundef nonnull %uc.013.i, i32 noundef 1, ptr noundef %36) #12
  br i1 %call.i.i, label %consumer_filter.exit.i.filter_chain.exit.thread_crit_edge, label %for.cond.i

consumer_filter.exit.i.filter_chain.exit.thread_crit_edge: ; preds = %consumer_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filter_chain.exit.thread

filter_chain.exit.thread:                         ; preds = %consumer_filter.exit.i.filter_chain.exit.thread_crit_edge, %for.body.i86.filter_chain.exit.thread_crit_edge
  tail call void @up_read(ptr noundef %consumer_rwsem.i) #12
  br label %unlock

if.then40:                                        ; preds = %for.cond.i.if.then40_crit_edge, %if.then38.if.then40_crit_edge
  tail call void @up_read(ptr noundef %consumer_rwsem.i) #12
  %66 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vaddr, align 4
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags) #12
  %call.i88 = tail call i32 @set_orig_insn(ptr noundef %arch.i, ptr noundef %36, i32 noundef %67) #12
  %or = or i32 %call.i88, %err.0106
  br label %unlock

unlock:                                           ; preds = %if.then40, %filter_chain.exit.thread, %if.else.unlock_crit_edge, %if.then32, %consumer_filter.exit.unlock_crit_edge, %lor.lhs.false22.unlock_crit_edge, %if.end19.unlock_crit_edge, %lor.lhs.false15.unlock_crit_edge, %valid_vma.exit.unlock_crit_edge, %lor.lhs.false.unlock_crit_edge, %mmap_write_lock.exit.unlock_crit_edge
  %err.1 = phi i32 [ %err.0106, %lor.lhs.false15.unlock_crit_edge ], [ %err.0106, %if.end19.unlock_crit_edge ], [ %err.0106, %lor.lhs.false22.unlock_crit_edge ], [ %call34, %if.then32 ], [ %err.0106, %consumer_filter.exit.unlock_crit_edge ], [ %or, %if.then40 ], [ %err.0106, %if.else.unlock_crit_edge ], [ %err.0106, %valid_vma.exit.unlock_crit_edge ], [ %err.0106, %mmap_write_lock.exit.unlock_crit_edge ], [ %err.0106, %filter_chain.exit.thread ], [ %err.0106, %lor.lhs.false.unlock_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@register_for_each_vma, %if.then.i.i89)) #12
          to label %mmap_write_unlock.exit [label %if.then.i.i89], !srcloc !143

if.then.i.i89:                                    ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_released(ptr noundef %36, i1 noundef zeroext true) #12
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i89, %unlock
  tail call void @up_write(ptr noundef %mmap_lock.i) #12
  br label %free

free:                                             ; preds = %mmap_write_unlock.exit, %while.body.free_crit_edge
  %err.2 = phi i32 [ %err.1, %mmap_write_unlock.exit ], [ %err.0106, %while.body.free_crit_edge ]
  tail call void @mmput(ptr noundef %36) #12
  %68 = ptrtoint ptr %info.0105 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %info.0105, align 4
  tail call void @kfree(ptr noundef nonnull %info.0105) #12
  %tobool5.not = icmp eq ptr %69, null
  br i1 %tobool5.not, label %free.out_crit_edge, label %free.while.body_crit_edge

free.while.body_crit_edge:                        ; preds = %free
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

free.out_crit_edge:                               ; preds = %free
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %free.out_crit_edge, %if.then, %while.cond.preheader.out_crit_edge
  %err.3 = phi i32 [ %34, %if.then ], [ 0, %while.cond.preheader.out_crit_edge ], [ %err.2, %free.out_crit_edge ]
  tail call void @percpu_up_write(ptr noundef nonnull @dup_mmap_sem) #12
  ret i32 %err.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uprobe_mmap(ptr nocapture noundef readonly %vma) local_unnamed_addr #0 align 64 {
entry:
  %tmp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %1 = load volatile ptr, ptr @uprobes_tree, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %and = and i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp1 = icmp eq i32 %and, 2
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true2:                                   ; preds = %land.lhs.true
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %6 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vm_mm, align 4
  %flags = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 43
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end6_crit_edge, label %if.then4

land.lhs.true2.if.end6_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true2
  tail call void @mutex_lock_nested(ptr noundef nonnull @delayed_uprobe_lock, i32 noundef 0) #12
  %11 = load ptr, ptr @delayed_uprobe_list, align 4
  %cmp.i.not7.i = icmp eq ptr %11, @delayed_uprobe_list
  br i1 %cmp.i.not7.i, label %if.then4.delayed_ref_ctr_inc.exit_crit_edge, label %for.body.lr.ph.i

if.then4.delayed_ref_ctr_inc.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_ref_ctr_inc.exit

for.body.lr.ph.i:                                 ; preds = %if.then4
  %vm_pgoff.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %vm_end.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.09.i = phi ptr [ %11, %for.body.lr.ph.i ], [ %q.011.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %pos.09.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %q.011.i = load ptr, ptr %pos.09.i, align 4
  %mm.i = getelementptr inbounds %struct.delayed_uprobe, ptr %pos.09.i, i32 0, i32 2
  %13 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mm.i, align 4
  %15 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vm_mm, align 4
  %cmp.not.i = icmp eq ptr %14, %16
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %uprobe.i = getelementptr inbounds %struct.delayed_uprobe, ptr %pos.09.i, i32 0, i32 1
  %17 = ptrtoint ptr %uprobe.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uprobe.i, align 4
  %ref_ctr_offset.i.i = getelementptr inbounds %struct.uprobe, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %ref_ctr_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ref_ctr_offset.i.i, align 8
  %21 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vma, align 4
  %conv.i.i.i = zext i32 %22 to i64
  %add.i.i.i = add i64 %20, %conv.i.i.i
  %23 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_pgoff.i.i.i, align 4
  %conv1.i.i.i = zext i32 %24 to i64
  %shl.neg.i.i.i = mul nuw i64 %conv1.i.i.i, 4294963200
  %sub.i.i.i = add i64 %add.i.i.i, %shl.neg.i.i.i
  %conv2.i.i.i = trunc i64 %sub.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i.i = icmp eq i64 %20, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i
  %25 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm_file, align 4
  %tobool2.not.i.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_inode.i.i.i, align 8
  %inode.i.i = getelementptr inbounds %struct.uprobe, ptr %18, i32 0, i32 6
  %29 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %inode.i.i, align 4
  %cmp.i1.i = icmp eq ptr %28, %30
  br i1 %cmp.i1.i, label %land.lhs.true6.i.i, label %land.lhs.true3.i.i.for.inc.i_crit_edge

land.lhs.true3.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %31 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_flags, align 4
  %and.i.i = and i32 %32, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp7.i.i = icmp ne i32 %and.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv2.i.i.i)
  %cmp9.not.i.i = icmp ugt i32 %22, %conv2.i.i.i
  %or.cond.i.i = select i1 %cmp7.i.i, i1 true, i1 %cmp9.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true6.i.i.for.inc.i_crit_edge, label %valid_ref_ctr_vma.exit.i

land.lhs.true6.i.i.for.inc.i_crit_edge:           ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

valid_ref_ctr_vma.exit.i:                         ; preds = %land.lhs.true6.i.i
  %33 = ptrtoint ptr %vm_end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vm_end.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv2.i.i.i)
  %cmp10.i.i = icmp ugt i32 %34, %conv2.i.i.i
  br i1 %cmp10.i.i, label %if.end.i, label %valid_ref_ctr_vma.exit.i.for.inc.i_crit_edge

valid_ref_ctr_vma.exit.i.for.inc.i_crit_edge:     ; preds = %valid_ref_ctr_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %valid_ref_ctr_vma.exit.i
  %call5.i = tail call fastcc i32 @__update_ref_ctr(ptr noundef %14, i32 noundef %conv2.i.i.i, i16 noundef signext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then7.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %uprobe.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %uprobe.i, align 4
  %37 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vm_mm, align 4
  %inode.i3.i = getelementptr inbounds %struct.uprobe, ptr %36, i32 0, i32 6
  %39 = ptrtoint ptr %inode.i3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %inode.i3.i, align 4
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_ino.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.uprobe, ptr %36, i32 0, i32 7
  %43 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %offset.i.i, align 8
  %ref_ctr_offset.i4.i = getelementptr inbounds %struct.uprobe, ptr %36, i32 0, i32 8
  %45 = ptrtoint ptr %ref_ctr_offset.i4.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ref_ctr_offset.i4.i, align 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef %42, i64 noundef %44, i64 noundef %46, ptr noundef %38) #15
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i, %if.end.i.if.end13.i_crit_edge
  %tobool.not.i5.i = icmp eq ptr %pos.09.i, null
  br i1 %tobool.not.i5.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !134

do.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #12
  br label %for.inc.i

if.end23.critedge.i.i:                            ; preds = %if.end13.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.09.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge

if.end23.critedge.i.i.list_del.exit.i.i_crit_edge: ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.09.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i.i, align 4
  %49 = ptrtoint ptr %pos.09.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pos.09.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge
  %53 = ptrtoint ptr %pos.09.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.09.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.09.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %pos.09.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i.i, %do.end.i.i, %valid_ref_ctr_vma.exit.i.for.inc.i_crit_edge, %land.lhs.true6.i.i.for.inc.i_crit_edge, %land.lhs.true3.i.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %q.011.i, @delayed_uprobe_list
  br i1 %cmp.i.not.i, label %for.inc.i.delayed_ref_ctr_inc.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.delayed_ref_ctr_inc.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_ref_ctr_inc.exit

delayed_ref_ctr_inc.exit:                         ; preds = %for.inc.i.delayed_ref_ctr_inc.exit_crit_edge, %if.then4.delayed_ref_ctr_inc.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #12
  br label %if.end6

if.end6:                                          ; preds = %delayed_ref_ctr_inc.exit, %land.lhs.true2.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge
  %55 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load ptr, ptr %vm_file, align 4
  %tobool1.not.i = icmp eq ptr %.pr, null
  br i1 %tobool1.not.i, label %if.end6.cleanup_crit_edge, label %valid_vma.exit

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

valid_vma.exit:                                   ; preds = %if.end6
  %56 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vm_flags, align 4
  %and.i = and i32 %57, 4194498
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 64
  br i1 %cmp.i, label %if.end9, label %valid_vma.exit.cleanup_crit_edge

valid_vma.exit.cleanup_crit_edge:                 ; preds = %valid_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %valid_vma.exit
  %f_inode.i = getelementptr inbounds %struct.file, ptr %.pr, i32 0, i32 2
  %58 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %f_inode.i, align 8
  %tobool12.not = icmp eq ptr %59, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %60 = ptrtoint ptr %59 to i32
  %rem = urem i32 %60, 13
  %arrayidx = getelementptr [13 x %struct.mutex], ptr @uprobes_mmap_mutex, i32 0, i32 %rem
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #12
  %61 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %63 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vm_end, align 4
  %65 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %tmp_list, ptr %tmp_list, align 4
  %66 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %tmp_list, ptr %0, align 4
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %67 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vm_pgoff.i.i, align 4
  %conv.i.i = zext i32 %68 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %sub.i = sub i32 %64, %62
  %conv.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %shl.i.i, %conv.i
  call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #12
  %n.033.i.i = load ptr, ptr @uprobes_tree, align 4
  %tobool.not34.i.i = icmp eq ptr %n.033.i.i, null
  br i1 %tobool.not34.i.i, label %if.end14.build_probe_list.exit_crit_edge, label %if.end14.while.body.i.i_crit_edge

if.end14.while.body.i.i_crit_edge:                ; preds = %if.end14
  br label %while.body.i.i

if.end14.build_probe_list.exit_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_probe_list.exit

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end14.while.body.i.i_crit_edge
  %n.035.i.i = phi ptr [ %n.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %n.033.i.i, %if.end14.while.body.i.i_crit_edge ]
  %inode1.i.i = getelementptr inbounds %struct.uprobe, ptr %n.035.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %inode1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %inode1.i.i, align 4
  %cmp.i.i = icmp ugt ptr %70, %59
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %cmp3.i.i = icmp ult ptr %70, %59
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 1
  br label %cleanup.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %offset.i.i65 = getelementptr inbounds %struct.uprobe, ptr %n.035.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %offset.i.i65 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %offset.i.i65, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %add.i)
  %cmp6.i.not.i = icmp slt i64 %72, %add.i
  br i1 %cmp6.i.not.i, label %if.else9.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left8.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else9.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %shl.i.i)
  %cmp11.i.i = icmp slt i64 %72, %shl.i.i
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.else9.i.i.for.body.i68_crit_edge

if.else9.i.i.for.body.i68_crit_edge:              ; preds = %if.else9.i.i
  br label %for.body.i68

if.then12.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right13.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then12.i.i, %if.then7.i.i, %if.then4.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ], [ %rb_left8.i.i, %if.then7.i.i ], [ %rb_right13.i.i, %if.then12.i.i ]
  %73 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i66 = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i66, label %cleanup.i.i.build_probe_list.exit_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

cleanup.i.i.build_probe_list.exit_crit_edge:      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_probe_list.exit

for.body.i68:                                     ; preds = %get_uprobe.exit.i.for.body.i68_crit_edge, %if.else9.i.i.for.body.i68_crit_edge
  %t.072.i = phi ptr [ %call10.i, %get_uprobe.exit.i.for.body.i68_crit_edge ], [ %n.035.i.i, %if.else9.i.i.for.body.i68_crit_edge ]
  %inode4.i = getelementptr inbounds %struct.uprobe, ptr %t.072.i, i32 0, i32 6
  %74 = ptrtoint ptr %inode4.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %inode4.i, align 4
  %cmp.not.i67 = icmp eq ptr %75, %59
  br i1 %cmp.not.i67, label %lor.lhs.false.i69, label %for.body.i68.for.end.i_crit_edge

for.body.i68.for.end.i_crit_edge:                 ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

lor.lhs.false.i69:                                ; preds = %for.body.i68
  %offset.i = getelementptr inbounds %struct.uprobe, ptr %t.072.i, i32 0, i32 7
  %76 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %shl.i.i)
  %cmp6.i = icmp slt i64 %77, %shl.i.i
  br i1 %cmp6.i, label %lor.lhs.false.i69.for.end.i_crit_edge, label %if.end.i70

lor.lhs.false.i69.for.end.i_crit_edge:            ; preds = %lor.lhs.false.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end.i70:                                       ; preds = %lor.lhs.false.i69
  %pending_list.i = getelementptr inbounds %struct.uprobe, ptr %t.072.i, i32 0, i32 4
  %78 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tmp_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %pending_list.i, ptr noundef nonnull %tmp_list, ptr noundef %79) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i70.list_add.exit.i_crit_edge

if.end.i70.list_add.exit.i_crit_edge:             ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %pending_list.i, ptr %prev1.i.i.i, align 4
  %81 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %pending_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.uprobe, ptr %t.072.i, i32 0, i32 4, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %tmp_list, ptr %prev3.i.i.i, align 4
  %83 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %pending_list.i, ptr %tmp_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i70.list_add.exit.i_crit_edge
  %ref.i.i = getelementptr inbounds %struct.uprobe, ptr %t.072.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #12
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %84, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %list_add.exit.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %85 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %85)
  %.not.i.i.i.i.i = icmp sgt i32 %85, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_uprobe.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !133

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_uprobe.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uprobe.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %list_add.exit.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %get_uprobe.exit.i

get_uprobe.exit.i:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_uprobe.exit.i_crit_edge
  %call10.i = call ptr @rb_prev(ptr noundef nonnull %t.072.i) #12
  %tobool3.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool3.not.i, label %get_uprobe.exit.i.for.end.i_crit_edge, label %get_uprobe.exit.i.for.body.i68_crit_edge

get_uprobe.exit.i.for.body.i68_crit_edge:         ; preds = %get_uprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i68

get_uprobe.exit.i.for.end.i_crit_edge:            ; preds = %get_uprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %get_uprobe.exit.i.for.end.i_crit_edge, %lor.lhs.false.i69.for.end.i_crit_edge, %for.body.i68.for.end.i_crit_edge
  %call1274.i = call ptr @rb_next(ptr noundef nonnull %n.035.i.i) #12
  %tobool13.not75.i = icmp eq ptr %call1274.i, null
  br i1 %tobool13.not75.i, label %for.end.i.build_probe_list.exit_crit_edge, label %for.end.i.for.body14.i_crit_edge

for.end.i.for.body14.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body14.i

for.end.i.build_probe_list.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_probe_list.exit

for.body14.i:                                     ; preds = %get_uprobe.exit66.i.for.body14.i_crit_edge, %for.end.i.for.body14.i_crit_edge
  %call1276.i = phi ptr [ %call12.i, %get_uprobe.exit66.i.for.body14.i_crit_edge ], [ %call1274.i, %for.end.i.for.body14.i_crit_edge ]
  %inode18.i = getelementptr inbounds %struct.uprobe, ptr %call1276.i, i32 0, i32 6
  %86 = ptrtoint ptr %inode18.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %inode18.i, align 4
  %cmp19.not.i = icmp eq ptr %87, %59
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %for.body14.i.build_probe_list.exit_crit_edge

for.body14.i.build_probe_list.exit_crit_edge:     ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_probe_list.exit

lor.lhs.false21.i:                                ; preds = %for.body14.i
  %offset22.i = getelementptr inbounds %struct.uprobe, ptr %call1276.i, i32 0, i32 7
  %88 = ptrtoint ptr %offset22.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %offset22.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %add.i)
  %cmp23.not.i = icmp slt i64 %89, %add.i
  br i1 %cmp23.not.i, label %if.end26.i, label %lor.lhs.false21.i.build_probe_list.exit_crit_edge

lor.lhs.false21.i.build_probe_list.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_probe_list.exit

if.end26.i:                                       ; preds = %lor.lhs.false21.i
  %pending_list27.i = getelementptr inbounds %struct.uprobe, ptr %call1276.i, i32 0, i32 4
  %90 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tmp_list, align 4
  %call.i.i52.i = call zeroext i1 @__list_add_valid(ptr noundef %pending_list27.i, ptr noundef nonnull %tmp_list, ptr noundef %91) #12
  br i1 %call.i.i52.i, label %if.end.i.i55.i, label %if.end26.i.list_add.exit56.i_crit_edge

if.end26.i.list_add.exit56.i_crit_edge:           ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit56.i

if.end.i.i55.i:                                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i53.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %pending_list27.i, ptr %prev1.i.i53.i, align 4
  %93 = ptrtoint ptr %pending_list27.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %91, ptr %pending_list27.i, align 4
  %prev3.i.i54.i = getelementptr inbounds %struct.uprobe, ptr %call1276.i, i32 0, i32 4, i32 1
  %94 = ptrtoint ptr %prev3.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %tmp_list, ptr %prev3.i.i54.i, align 4
  %95 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %pending_list27.i, ptr %tmp_list, align 4
  br label %list_add.exit56.i

list_add.exit56.i:                                ; preds = %if.end.i.i55.i, %if.end26.i.list_add.exit56.i_crit_edge
  %ref.i57.i = getelementptr inbounds %struct.uprobe, ptr %call1276.i, i32 0, i32 1
  %call.i.i.i.i.i.i58.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i57.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %ref.i57.i, i32 1, i32 3, i32 1) #12
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i57.i, ptr %ref.i57.i, i32 1, ptr elementtype(i32) %ref.i57.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i59.i = extractvalue { i32, i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i59.i)
  %tobool1.not.i.i.i.i60.i = icmp eq i32 %asmresult.i.i.i.i.i.i59.i, 0
  br i1 %tobool1.not.i.i.i.i60.i, label %list_add.exit56.i.if.end15.sink.split.i.i.i.i65.i_crit_edge, label %if.else.i.i.i.i63.i, !prof !134

list_add.exit56.i.if.end15.sink.split.i.i.i.i65.i_crit_edge: ; preds = %list_add.exit56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i65.i

if.else.i.i.i.i63.i:                              ; preds = %list_add.exit56.i
  %add.i.i.i.i61.i = add i32 %asmresult.i.i.i.i.i.i59.i, 1
  %97 = or i32 %add.i.i.i.i61.i, %asmresult.i.i.i.i.i.i59.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %.not.i.i.i.i62.i = icmp sgt i32 %97, -1
  br i1 %.not.i.i.i.i62.i, label %if.else.i.i.i.i63.i.get_uprobe.exit66.i_crit_edge, label %if.else.i.i.i.i63.i.if.end15.sink.split.i.i.i.i65.i_crit_edge, !prof !133

if.else.i.i.i.i63.i.if.end15.sink.split.i.i.i.i65.i_crit_edge: ; preds = %if.else.i.i.i.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i65.i

if.else.i.i.i.i63.i.get_uprobe.exit66.i_crit_edge: ; preds = %if.else.i.i.i.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uprobe.exit66.i

if.end15.sink.split.i.i.i.i65.i:                  ; preds = %if.else.i.i.i.i63.i.if.end15.sink.split.i.i.i.i65.i_crit_edge, %list_add.exit56.i.if.end15.sink.split.i.i.i.i65.i_crit_edge
  %.sink.i.i.i.i64.i = phi i32 [ 2, %list_add.exit56.i.if.end15.sink.split.i.i.i.i65.i_crit_edge ], [ 1, %if.else.i.i.i.i63.i.if.end15.sink.split.i.i.i.i65.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref.i57.i, i32 noundef %.sink.i.i.i.i64.i) #12
  br label %get_uprobe.exit66.i

get_uprobe.exit66.i:                              ; preds = %if.end15.sink.split.i.i.i.i65.i, %if.else.i.i.i.i63.i.get_uprobe.exit66.i_crit_edge
  %call12.i = call ptr @rb_next(ptr noundef nonnull %call1276.i) #12
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %get_uprobe.exit66.i.build_probe_list.exit_crit_edge, label %get_uprobe.exit66.i.for.body14.i_crit_edge

get_uprobe.exit66.i.for.body14.i_crit_edge:       ; preds = %get_uprobe.exit66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14.i

get_uprobe.exit66.i.build_probe_list.exit_crit_edge: ; preds = %get_uprobe.exit66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %build_probe_list.exit

build_probe_list.exit:                            ; preds = %get_uprobe.exit66.i.build_probe_list.exit_crit_edge, %lor.lhs.false21.i.build_probe_list.exit_crit_edge, %for.body14.i.build_probe_list.exit_crit_edge, %for.end.i.build_probe_list.exit_crit_edge, %cleanup.i.i.build_probe_list.exit_crit_edge, %if.end14.build_probe_list.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  %98 = ptrtoint ptr %tmp_list to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tmp_list, align 4
  %cmp21.not88 = icmp eq ptr %99, %tmp_list
  br i1 %cmp21.not88, label %build_probe_list.exit.for.end_crit_edge, label %for.body.lr.ph

build_probe_list.exit.for.end_crit_edge:          ; preds = %build_probe_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %build_probe_list.exit
  %vm_mm26 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %.pn.in89 = phi ptr [ %99, %for.body.lr.ph ], [ %.pn91, %if.end32.for.body_crit_edge ]
  %uprobe.090 = getelementptr i8, ptr %.pn.in89, i32 -208
  %100 = ptrtoint ptr %.pn.in89 to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pn91 = load ptr, ptr %.pn.in89, align 8
  %101 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i71 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i71 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %stack.i.i.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  %and1.i.i.i.i.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %for.body.land.lhs.true25_crit_edge, label %fatal_signal_pending.exit

for.body.land.lhs.true25_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true25

fatal_signal_pending.exit:                        ; preds = %for.body
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %104, i32 0, i32 116, i32 1
  %109 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %signal.i.i, align 4
  %111 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool24.not = icmp eq i32 %111, 0
  br i1 %tobool24.not, label %fatal_signal_pending.exit.land.lhs.true25_crit_edge, label %fatal_signal_pending.exit.if.end32_crit_edge

fatal_signal_pending.exit.if.end32_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

fatal_signal_pending.exit.land.lhs.true25_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true25

land.lhs.true25:                                  ; preds = %fatal_signal_pending.exit.land.lhs.true25_crit_edge, %for.body.land.lhs.true25_crit_edge
  %112 = ptrtoint ptr %vm_mm26 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vm_mm26, align 4
  %consumer_rwsem.i = getelementptr i8, ptr %.pn.in89, i32 -96
  call void @down_read(ptr noundef %consumer_rwsem.i) #12
  %consumers.i = getelementptr i8, ptr %.pn.in89, i32 8
  %114 = ptrtoint ptr %consumers.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %uc.011.i = load ptr, ptr %consumers.i, align 4
  %tobool.not12.i = icmp eq ptr %uc.011.i, null
  br i1 %tobool.not12.i, label %land.lhs.true25.filter_chain.exit_crit_edge, label %land.lhs.true25.for.body.i75_crit_edge

land.lhs.true25.for.body.i75_crit_edge:           ; preds = %land.lhs.true25
  br label %for.body.i75

land.lhs.true25.filter_chain.exit_crit_edge:      ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %filter_chain.exit

for.cond.i:                                       ; preds = %consumer_filter.exit.i
  %next.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.013.i, i32 0, i32 3
  %115 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %uc.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i73 = icmp eq ptr %uc.0.i, null
  br i1 %tobool.not.i73, label %for.cond.i.filter_chain.exit_crit_edge, label %for.cond.i.for.body.i75_crit_edge

for.cond.i.for.body.i75_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i75

for.cond.i.filter_chain.exit_crit_edge:           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %filter_chain.exit

for.body.i75:                                     ; preds = %for.cond.i.for.body.i75_crit_edge, %land.lhs.true25.for.body.i75_crit_edge
  %uc.013.i = phi ptr [ %uc.0.i, %for.cond.i.for.body.i75_crit_edge ], [ %uc.011.i, %land.lhs.true25.for.body.i75_crit_edge ]
  %filter.i.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.013.i, i32 0, i32 2
  %116 = ptrtoint ptr %filter.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %filter.i.i, align 4
  %tobool.not.i.i74 = icmp eq ptr %117, null
  br i1 %tobool.not.i.i74, label %for.body.i75.if.then28_crit_edge, label %consumer_filter.exit.i

for.body.i75.if.then28_crit_edge:                 ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

consumer_filter.exit.i:                           ; preds = %for.body.i75
  %call.i.i76 = call zeroext i1 %117(ptr noundef nonnull %uc.013.i, i32 noundef 2, ptr noundef %113) #12
  br i1 %call.i.i76, label %consumer_filter.exit.i.if.then28_crit_edge, label %for.cond.i

consumer_filter.exit.i.if.then28_crit_edge:       ; preds = %consumer_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

filter_chain.exit:                                ; preds = %for.cond.i.filter_chain.exit_crit_edge, %land.lhs.true25.filter_chain.exit_crit_edge
  call void @up_read(ptr noundef %consumer_rwsem.i) #12
  br label %if.end32

if.then28:                                        ; preds = %consumer_filter.exit.i.if.then28_crit_edge, %for.body.i75.if.then28_crit_edge
  call void @up_read(ptr noundef %consumer_rwsem.i) #12
  %offset = getelementptr i8, ptr %.pn.in89, i32 16
  %118 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %offset, align 8
  %120 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %vma, align 4
  %conv.i78 = zext i32 %121 to i64
  %add.i79 = add i64 %119, %conv.i78
  %122 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vm_pgoff.i.i, align 4
  %conv1.i = zext i32 %123 to i64
  %shl.neg.i = mul nuw i64 %conv1.i, 4294963200
  %sub.i80 = add i64 %add.i79, %shl.neg.i
  %conv2.i = trunc i64 %sub.i80 to i32
  %124 = ptrtoint ptr %vm_mm26 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vm_mm26, align 4
  %call31 = call fastcc i32 @install_breakpoint(ptr noundef %uprobe.090, ptr noundef %125, ptr noundef %vma, i32 noundef %conv2.i)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %filter_chain.exit, %fatal_signal_pending.exit.if.end32_crit_edge
  call fastcc void @put_uprobe(ptr noundef %uprobe.090)
  %cmp21.not = icmp eq ptr %.pn91, %tmp_list
  br i1 %cmp21.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %build_probe_list.exit.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %arrayidx) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end9.cleanup_crit_edge, %valid_vma.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @install_breakpoint(ptr noundef %uprobe, ptr noundef %mm, ptr nocapture noundef readonly %vma, i32 noundef %vaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %flags.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 9
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %consumer_rwsem.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 3
  tail call void @down_write(ptr noundef %consumer_rwsem.i) #12
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i33.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i33.i)
  %tobool3.not.i = icmp eq i32 %and1.i33.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.prepare_uprobe.exit_crit_edge

if.end.i.prepare_uprobe.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_uprobe.exit

if.end5.i:                                        ; preds = %if.end.i
  %inode.i.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 6
  %6 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode.i.i, align 4
  %i_mapping.i.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %i_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_mapping.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 7
  %10 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset.i.i, align 8
  %call26.i.i = tail call fastcc i64 @i_size_read(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %call26.i.i)
  %cmp.not27.i.i = icmp slt i64 %11, %call26.i.i
  br i1 %cmp.not27.i.i, label %if.end.preheader.i.i, label %if.end5.i.prepare_uprobe.exit.thread30_crit_edge

if.end5.i.prepare_uprobe.exit.thread30_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_uprobe.exit.thread30

if.end.preheader.i.i:                             ; preds = %if.end5.i
  %arch.i.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 10
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %if.end7.i.i
  %add.ptr.i.i = getelementptr i8, ptr %insn.029.i.i, i32 %16
  %conv8.i.i = sext i32 %16 to i64
  %add.i.i = add i64 %offs.028.i.i, %conv8.i.i
  %12 = ptrtoint ptr %inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inode.i.i, align 4
  %call.i.i = tail call fastcc i64 @i_size_read(ptr noundef %13) #12
  %cmp.not.i.i = icmp slt i64 %add.i.i, %call.i.i
  br i1 %cmp.not.i.i, label %do.body.i.i.if.end.i.i_crit_edge, label %do.body.i.i.if.end9.i_crit_edge

do.body.i.i.if.end9.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

do.body.i.i.if.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i.if.end.i.i_crit_edge, %if.end.preheader.i.i
  %size.030.i.i = phi i32 [ %sub9.i.i, %do.body.i.i.if.end.i.i_crit_edge ], [ 4, %if.end.preheader.i.i ]
  %insn.029.i.i = phi ptr [ %add.ptr.i.i, %do.body.i.i.if.end.i.i_crit_edge ], [ %arch.i.i, %if.end.preheader.i.i ]
  %offs.028.i.i = phi i64 [ %add.i.i, %do.body.i.i.if.end.i.i_crit_edge ], [ %11, %if.end.preheader.i.i ]
  %14 = trunc i64 %offs.028.i.i to i32
  %15 = and i32 %14, 4095
  %conv.i.i = sub nuw nsw i32 4096, %15
  %16 = tail call i32 @llvm.smin.i32(i32 %size.030.i.i, i32 %conv.i.i) #12
  %call5.i.i = tail call fastcc i32 @__copy_insn(ptr noundef %9, ptr noundef %1, ptr noundef %insn.029.i.i, i32 noundef %16, i64 noundef %offs.028.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.i, label %if.end.i.i.prepare_uprobe.exit.thread30_crit_edge

if.end.i.i.prepare_uprobe.exit.thread30_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_uprobe.exit.thread30

if.end7.i.i:                                      ; preds = %if.end.i.i
  %sub9.i.i = sub i32 %size.030.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i.i)
  %tobool10.not.i.i = icmp eq i32 %sub9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end7.i.i.if.end9.i_crit_edge, label %do.body.i.i

if.end7.i.i.if.end9.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end7.i.i.if.end9.i_crit_edge, %do.body.i.i.if.end9.i_crit_edge
  %call10.i = tail call zeroext i1 @is_trap_insn(ptr noundef %arch.i.i) #12
  br i1 %call10.i, label %if.end9.i.prepare_uprobe.exit.thread30_crit_edge, label %if.end12.i

if.end9.i.prepare_uprobe.exit.thread30_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_uprobe.exit.thread30

if.end12.i:                                       ; preds = %if.end9.i
  %call14.i = tail call i32 @arch_uprobe_analyze_insn(ptr noundef %arch.i.i, ptr noundef %mm, i32 noundef %vaddr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %do.end.i, label %if.end12.i.prepare_uprobe.exit.thread30_crit_edge

if.end12.i.prepare_uprobe.exit.thread30_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_uprobe.exit.thread30

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #12
  br label %prepare_uprobe.exit

prepare_uprobe.exit.thread30:                     ; preds = %if.end12.i.prepare_uprobe.exit.thread30_crit_edge, %if.end9.i.prepare_uprobe.exit.thread30_crit_edge, %if.end.i.i.prepare_uprobe.exit.thread30_crit_edge, %if.end5.i.prepare_uprobe.exit.thread30_crit_edge
  %ret.0.i.ph = phi i32 [ -5, %if.end5.i.prepare_uprobe.exit.thread30_crit_edge ], [ %call14.i, %if.end12.i.prepare_uprobe.exit.thread30_crit_edge ], [ -524, %if.end9.i.prepare_uprobe.exit.thread30_crit_edge ], [ %call5.i.i, %if.end.i.i.prepare_uprobe.exit.thread30_crit_edge ]
  tail call void @up_write(ptr noundef %consumer_rwsem.i) #12
  br label %cleanup

prepare_uprobe.exit:                              ; preds = %do.end.i, %if.end.i.prepare_uprobe.exit_crit_edge
  tail call void @up_write(ptr noundef %consumer_rwsem.i) #12
  br label %if.end

if.end:                                           ; preds = %prepare_uprobe.exit, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 43
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool2.not = icmp eq i32 %19, 0
  br i1 %tobool2.not, label %if.end6, label %if.end6.thread

if.end6:                                          ; preds = %if.end
  tail call void @_set_bit(i32 noundef 19, ptr noundef %flags) #12
  %arch = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 10
  %call7 = tail call i32 @set_swbp(ptr noundef %arch, ptr noundef %mm, i32 noundef %vaddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.then9_crit_edge, label %if.then12

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end6.thread:                                   ; preds = %if.end
  %arch33 = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 10
  %call734 = tail call i32 @set_swbp(ptr noundef %arch33, ptr noundef %mm, i32 noundef %vaddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call734)
  %tobool8.not35 = icmp eq i32 %call734, 0
  br i1 %tobool8.not35, label %if.end6.thread.if.then9_crit_edge, label %if.end6.thread.cleanup_crit_edge

if.end6.thread.cleanup_crit_edge:                 ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6.thread.if.then9_crit_edge:                ; preds = %if.end6.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %if.end6.thread.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %flags) #12
  br label %cleanup

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 19, ptr noundef %flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then9, %if.end6.thread.cleanup_crit_edge, %prepare_uprobe.exit.thread30
  %retval.0 = phi i32 [ %call7, %if.then12 ], [ 0, %if.then9 ], [ %ret.0.i.ph, %prepare_uprobe.exit.thread30 ], [ %call734, %if.end6.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_munmap(ptr nocapture noundef readonly %vma, i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @uprobes_tree, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.if.end18_crit_edge, label %lor.lhs.false

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

lor.lhs.false:                                    ; preds = %entry
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %1 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm_file.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %lor.lhs.false.if.end18_crit_edge, label %valid_vma.exit

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

valid_vma.exit:                                   ; preds = %lor.lhs.false
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %3 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %4, 4194496
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 64
  br i1 %cmp.i, label %if.end, label %valid_vma.exit.if.end18_crit_edge

valid_vma.exit.if.end18_crit_edge:                ; preds = %valid_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end:                                           ; preds = %valid_vma.exit
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %5 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vm_mm, align 4
  %mm_users = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #12
  %7 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %mm_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.end3

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vm_mm, align 4
  %flags = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 43
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %if.end3.if.end18_crit_edge, label %lor.lhs.false7

if.end3.if.end18_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

lor.lhs.false7:                                   ; preds = %if.end3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false7.if.end18_crit_edge

lor.lhs.false7.if.end18_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.end13:                                         ; preds = %lor.lhs.false7
  %17 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm_file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %f_inode.i.i, align 8
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %21 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_pgoff.i.i, align 4
  %conv.i.i = zext i32 %22 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %23 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vma, align 4
  %sub.i.i = sub i32 %start, %24
  %conv1.i.i = zext i32 %sub.i.i to i64
  %add.i.i = add nuw nsw i64 %shl.i.i, %conv1.i.i
  %sub.i = sub i32 %end, %start
  %conv.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %add.i.i, %conv.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #12
  %n.033.i.i = load ptr, ptr @uprobes_tree, align 4
  %tobool.not34.i.i = icmp eq ptr %n.033.i.i, null
  br i1 %tobool.not34.i.i, label %if.end13.vma_has_uprobes.exit.thread_crit_edge, label %if.end13.while.body.i.i_crit_edge

if.end13.while.body.i.i_crit_edge:                ; preds = %if.end13
  br label %while.body.i.i

if.end13.vma_has_uprobes.exit.thread_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %vma_has_uprobes.exit.thread

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end13.while.body.i.i_crit_edge
  %n.035.i.i = phi ptr [ %n.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %n.033.i.i, %if.end13.while.body.i.i_crit_edge ]
  %inode1.i.i = getelementptr inbounds %struct.uprobe, ptr %n.035.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %inode1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inode1.i.i, align 4
  %cmp.i.i = icmp ugt ptr %26, %20
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %cmp3.i.i = icmp ult ptr %26, %20
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.else5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 1
  br label %cleanup.i.i

if.else5.i.i:                                     ; preds = %if.else.i.i
  %offset.i.i = getelementptr inbounds %struct.uprobe, ptr %n.035.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %add.i)
  %cmp6.i.not.i = icmp slt i64 %28, %add.i
  br i1 %cmp6.i.not.i, label %if.else9.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left8.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else9.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %add.i.i)
  %cmp11.i.i = icmp slt i64 %28, %add.i.i
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.then15

if.then12.i.i:                                    ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right13.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then12.i.i, %if.then7.i.i, %if.then4.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ], [ %rb_left8.i.i, %if.then7.i.i ], [ %rb_right13.i.i, %if.then12.i.i ]
  %29 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.vma_has_uprobes.exit.thread_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

cleanup.i.i.vma_has_uprobes.exit.thread_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vma_has_uprobes.exit.thread

vma_has_uprobes.exit.thread:                      ; preds = %cleanup.i.i.vma_has_uprobes.exit.thread_crit_edge, %if.end13.vma_has_uprobes.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  br label %if.end18

if.then15:                                        ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  %30 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vm_mm, align 4
  %flags17 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags17) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %vma_has_uprobes.exit.thread, %lor.lhs.false7.if.end18_crit_edge, %if.end3.if.end18_crit_edge, %if.end.if.end18_crit_edge, %valid_vma.exit.if.end18_crit_edge, %lor.lhs.false.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_clear_state(ptr noundef readonly %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %uprobes_state = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 51
  %0 = ptrtoint ptr %uprobes_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uprobes_state, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @delayed_uprobe_lock, i32 noundef 0) #12
  %tobool1.not.i = icmp eq ptr %mm, null
  br i1 %tobool1.not.i, label %entry.delayed_uprobe_remove.exit_crit_edge, label %if.end.i

entry.delayed_uprobe_remove.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_uprobe_remove.exit

if.end.i:                                         ; preds = %entry
  %2 = load ptr, ptr @delayed_uprobe_list, align 4
  %cmp.i.not27.i = icmp eq ptr %2, @delayed_uprobe_list
  br i1 %cmp.i.not27.i, label %if.end.i.delayed_uprobe_remove.exit_crit_edge, label %if.end.i.land.lhs.true9.i_crit_edge

if.end.i.land.lhs.true9.i_crit_edge:              ; preds = %if.end.i
  br label %land.lhs.true9.i

if.end.i.delayed_uprobe_remove.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_uprobe_remove.exit

land.lhs.true9.i:                                 ; preds = %for.inc.i.land.lhs.true9.i_crit_edge, %if.end.i.land.lhs.true9.i_crit_edge
  %pos.028.i = phi ptr [ %q.030.i, %for.inc.i.land.lhs.true9.i_crit_edge ], [ %2, %if.end.i.land.lhs.true9.i_crit_edge ]
  %3 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %q.030.i = load ptr, ptr %pos.028.i, align 4
  %mm10.i = getelementptr inbounds %struct.delayed_uprobe, ptr %pos.028.i, i32 0, i32 2
  %4 = ptrtoint ptr %mm10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm10.i, align 4
  %cmp11.not.i = icmp eq ptr %5, %mm
  br i1 %cmp11.not.i, label %if.end13.i, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end13.i:                                       ; preds = %land.lhs.true9.i
  %tobool.not.i.i = icmp eq ptr %pos.028.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !134

do.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 9, ptr noundef null) #12
  br label %for.inc.i

if.end23.critedge.i.i:                            ; preds = %if.end13.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.028.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge

if.end23.critedge.i.i.list_del.exit.i.i_crit_edge: ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end23.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.028.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i, align 4
  %8 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pos.028.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end23.critedge.i.i.list_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %pos.028.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.028.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.028.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %pos.028.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i.i, %do.end.i.i, %land.lhs.true9.i.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %q.030.i, @delayed_uprobe_list
  br i1 %cmp.i.not.i, label %for.inc.i.delayed_uprobe_remove.exit_crit_edge, label %for.inc.i.land.lhs.true9.i_crit_edge

for.inc.i.land.lhs.true9.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true9.i

for.inc.i.delayed_uprobe_remove.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %delayed_uprobe_remove.exit

delayed_uprobe_remove.exit:                       ; preds = %for.inc.i.delayed_uprobe_remove.exit_crit_edge, %if.end.i.delayed_uprobe_remove.exit_crit_edge, %entry.delayed_uprobe_remove.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_uprobe_lock) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %delayed_uprobe_remove.exit.cleanup_crit_edge, label %if.end

delayed_uprobe_remove.exit.cleanup_crit_edge:     ; preds = %delayed_uprobe_remove.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %delayed_uprobe_remove.exit
  %pages = getelementptr inbounds %struct.xol_area, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pages, align 4
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i, label %if.then.i.i, !prof !133

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %15 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@uprobe_clear_state, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !143

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %20, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %20) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %bitmap = getelementptr inbounds %struct.xol_area, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bitmap, align 4
  tail call void @kfree(ptr noundef %25) #12
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit, %delayed_uprobe_remove.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_start_dup_mmap() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 49) #12
  %0 = tail call ptr @llvm.returnaddress(i32 0) #12
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 5), i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !162
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 35, ptr noundef nonnull @.str.31) #12
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %6 = load volatile i32, ptr @dup_mmap_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body7.i, label %if.else.i, !prof !133

do.body7.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !163
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add21.i = add i32 %18, 1
  store i32 %add21.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !164
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then41.i, label %do.body7.i.do.end43.i_crit_edge, !prof !134

do.body7.i.do.end43.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43.i

if.then41.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then41.i, %do.body7.i.do.end43.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #12, !srcloc !165
  br label %percpu_down_read.exit

if.else.i:                                        ; preds = %rcu_sync_is_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call50.i = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @dup_mmap_sem, i1 noundef zeroext false) #12
  br label %percpu_down_read.exit

percpu_down_read.exit:                            ; preds = %if.else.i, %do.end43.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !166
  %20 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_end_dup_mmap() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call ptr @llvm.returnaddress(i32 0) #12
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 5), i32 noundef %1) #12
  %2 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !167
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.rcu_sync_is_idle.exit.i_crit_edge

entry.rcu_sync_is_idle.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_sync_is_idle.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 35, ptr noundef nonnull @.str.31) #12
  br label %rcu_sync_is_idle.exit.i

rcu_sync_is_idle.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true3.i.i.rcu_sync_is_idle.exit.i_crit_edge, %land.lhs.true.i.i.rcu_sync_is_idle.exit.i_crit_edge, %entry.rcu_sync_is_idle.exit.i_crit_edge
  %6 = load volatile i32, ptr @dup_mmap_sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i.i, label %do.body3.i, label %do.end49.i, !prof !133

do.body3.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !163
  %8 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add17.i = add i32 %18, -1
  store i32 %add17.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !164
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool28.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool28.not.i, label %if.then37.i, label %do.body3.i.do.end39.i_crit_edge, !prof !134

do.body3.i.do.end39.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39.i

if.then37.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then37.i, %do.body3.i.do.end39.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #12, !srcloc !165
  br label %percpu_up_read.exit

do.end49.i:                                       ; preds = %rcu_sync_is_idle.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !168
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !163
  %21 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i3.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i3.i to ptr
  %cpu78.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu78.i, align 4
  %arrayidx79.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx79.i, align 4
  %add80.i = add i32 %28, %22
  %29 = inttoptr i32 %add80.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add81.i = add i32 %31, -1
  store i32 %add81.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !164
  %and.i.i4.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool92.not.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool92.not.i, label %if.then101.i, label %do.end49.i.do.end104.i_crit_edge, !prof !134

do.end49.i.do.end104.i_crit_edge:                 ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end104.i

if.then101.i:                                     ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end104.i

do.end104.i:                                      ; preds = %if.then101.i, %do.end49.i.do.end104.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #12, !srcloc !165
  %call111.i = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @dup_mmap_sem, i32 0, i32 2)) #12
  br label %percpu_up_read.exit

percpu_up_read.exit:                              ; preds = %do.end104.i, %do.end39.i
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %33 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_dup_mmap(ptr noundef %oldmm, ptr noundef %newmm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.anon, ptr %oldmm, i32 0, i32 43
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags1 = getelementptr inbounds %struct.anon, ptr %newmm, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 19, ptr noundef %flags1) #12
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_uprobe_copy_ixol(ptr noundef %page, i32 noundef %vaddr, ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %5 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i) #12
  %and.i = and i32 %vaddr, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %src, i32 %len)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %12 = tail call i32 @llvm.read_register.i32(metadata !118) #12
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
  %dec.i.i.i.i = add i32 %17, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %18 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %page) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @uprobe_get_swbp_addr(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %1, -4
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @uprobe_get_trap_addr(ptr nocapture noundef readonly %regs) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask1, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %active_uprobe = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %active_uprobe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_uprobe, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.rhs.if.end_crit_edge, label %if.then, !prof !133

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %vaddr = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 1
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.in = phi ptr [ %vaddr, %if.then ], [ %arrayidx, %if.end ]
  %8 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_free_utask(ptr nocapture noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 208
  %0 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %utask1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_uprobe = getelementptr inbounds %struct.uprobe_task, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %active_uprobe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_uprobe, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @put_uprobe(ptr noundef nonnull %3)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %return_instances = getelementptr inbounds %struct.uprobe_task, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %return_instances to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %return_instances, align 4
  %tobool6.not17 = icmp eq ptr %5, null
  br i1 %tobool6.not17, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end5.while.body_crit_edge
  %ri.018 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %5, %if.end5.while.body_crit_edge ]
  %next1.i = getelementptr inbounds %struct.return_instance, ptr %ri.018, i32 0, i32 5
  %6 = ptrtoint ptr %next1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next1.i, align 4
  %8 = ptrtoint ptr %ri.018 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ri.018, align 4
  tail call fastcc void @put_uprobe(ptr noundef %9) #12
  tail call void @kfree(ptr noundef nonnull %ri.018) #12
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end5.while.end_crit_edge
  tail call fastcc void @xol_free_insn_slot(ptr noundef %t)
  tail call void @kfree(ptr noundef nonnull %1) #12
  %10 = ptrtoint ptr %utask1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %utask1, align 16
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xol_free_insn_slot(ptr nocapture noundef readonly %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 53
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup33_crit_edge, label %lor.lhs.false

entry.cleanup33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

lor.lhs.false:                                    ; preds = %entry
  %uprobes_state = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %uprobes_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uprobes_state, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup33_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %utask = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 208
  %4 = ptrtoint ptr %utask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask, align 16
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup33_crit_edge, label %if.end

lor.lhs.false3.cleanup33_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.end:                                           ; preds = %lor.lhs.false3
  %xol_vaddr = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %xol_vaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xol_vaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end.cleanup33_crit_edge, label %if.end11, !prof !134

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.end11:                                         ; preds = %if.end
  %vaddr = getelementptr inbounds %struct.xol_area, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp uge i32 %7, %9
  %add = add i32 %9, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp16 = icmp ult i32 %7, %add
  %or.cond = and i1 %cmp.not, %cmp16
  br i1 %or.cond, label %if.then17, label %if.end11.cleanup33_crit_edge

if.end11.cleanup33_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.then17:                                        ; preds = %if.end11
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub)
  %cmp19 = icmp ugt i32 %sub, 4095
  br i1 %cmp19, label %if.then17.cleanup33_crit_edge, label %if.end21

if.then17.cleanup33_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup33

if.end21:                                         ; preds = %if.then17
  %div57 = lshr i32 %sub, 6
  %bitmap = getelementptr inbounds %struct.xol_area, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bitmap, align 4
  tail call void @_clear_bit(i32 noundef %div57, ptr noundef %11) #12
  %slot_count = getelementptr inbounds %struct.xol_area, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %slot_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %slot_count, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %slot_count, ptr %slot_count, i32 1, ptr elementtype(i32) %slot_count) #12, !srcloc !170
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !171
  %head.i = getelementptr inbounds %struct.wait_queue_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %14, %head.i
  br i1 %cmp.i.i.not, label %if.end21.if.end28_crit_edge, label %if.then26

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__wake_up(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end21.if.end28_crit_edge
  %15 = ptrtoint ptr %utask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %utask, align 16
  %xol_vaddr30 = getelementptr inbounds %struct.uprobe_task, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %xol_vaddr30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %xol_vaddr30, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %if.end28, %if.then17.cleanup33_crit_edge, %if.end11.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %lor.lhs.false3.cleanup33_crit_edge, %lor.lhs.false.cleanup33_crit_edge, %entry.cleanup33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_copy_process(ptr noundef %t, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask1, align 16
  %mm4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %6 = ptrtoint ptr %mm4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm4, align 8
  %utask5 = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 208
  %8 = ptrtoint ptr %utask5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %utask5, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %return_instances = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %return_instances to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %return_instances, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mm7 = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 53
  %11 = ptrtoint ptr %mm7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mm7, align 8
  %cmp = icmp eq ptr %7, %12
  %and = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool8.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 32) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end10.if.then13_crit_edge, label %if.end.i

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end.i:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %utask5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %utask5, align 16
  %15 = ptrtoint ptr %return_instances to i32
  call void @__asan_load4_noabort(i32 %15)
  %o.023.i = load ptr, ptr %return_instances, align 4
  %tobool2.not24.i = icmp eq ptr %o.023.i, null
  br i1 %tobool2.not24.i, label %if.end.i.if.end14_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %return_instances.i = getelementptr inbounds %struct.uprobe_task, ptr %call7.i.i.i, i32 0, i32 4
  %depth.i = getelementptr inbounds %struct.uprobe_task, ptr %call7.i.i.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %get_uprobe.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %o.026.i = phi ptr [ %o.023.i, %for.body.lr.ph.i ], [ %o.0.i, %get_uprobe.exit.i.for.body.i_crit_edge ]
  %p.025.i = phi ptr [ %return_instances.i, %for.body.lr.ph.i ], [ %next.i, %get_uprobe.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 24) #16
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %for.body.i.if.then13_crit_edge, label %if.end6.i

for.body.i.if.then13_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end6.i:                                        ; preds = %for.body.i
  %17 = call ptr @memcpy(ptr %call7.i.i, ptr %o.026.i, i32 24)
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %ref.i.i = getelementptr inbounds %struct.uprobe, ptr %19, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !134

if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end6.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_uprobe.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !133

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_uprobe.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uprobe.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end6.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %get_uprobe.exit.i

get_uprobe.exit.i:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_uprobe.exit.i_crit_edge
  %next.i = getelementptr inbounds %struct.return_instance, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %next.i, align 4
  %23 = ptrtoint ptr %p.025.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %p.025.i, align 4
  %24 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %depth.i, align 4
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %depth.i, align 4
  %next9.i = getelementptr inbounds %struct.return_instance, ptr %o.026.i, i32 0, i32 5
  %26 = ptrtoint ptr %next9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %o.0.i = load ptr, ptr %next9.i, align 4
  %tobool2.not.i = icmp eq ptr %o.0.i, null
  br i1 %tobool2.not.i, label %get_uprobe.exit.i.if.end14_crit_edge, label %get_uprobe.exit.i.for.body.i_crit_edge

get_uprobe.exit.i.for.body.i_crit_edge:           ; preds = %get_uprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

get_uprobe.exit.i.if.end14_crit_edge:             ; preds = %get_uprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %for.body.i.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %27 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid.i, align 8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i, i32 noundef %32, ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end14:                                         ; preds = %get_uprobe.exit.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge
  %uprobes_state = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 51
  %33 = ptrtoint ptr %uprobes_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uprobes_state, align 8
  %tobool15.not = icmp eq ptr %34, null
  br i1 %tobool15.not, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %35 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i44 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i44 to ptr
  %task.i45 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task.i45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i45, align 8
  %comm.i46 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 101
  %pid.i47 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid.i47, align 8
  %call3.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i46, i32 noundef %40, ptr noundef nonnull @.str.4) #15
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %41 = ptrtoint ptr %mm7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm7, align 8
  %cmp19 = icmp eq ptr %7, %42
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %vaddr = getelementptr inbounds %struct.xol_area, ptr %34, i32 0, i32 5
  %43 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vaddr, align 4
  %45 = ptrtoint ptr %utask5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %utask5, align 16
  %dup_xol_addr = getelementptr inbounds %struct.uprobe_task, ptr %46, i32 0, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %dup_xol_addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %dup_xol_addr, align 4
  %48 = load ptr, ptr %utask5, align 16
  %func1.i = getelementptr inbounds %struct.uprobe_task, ptr %48, i32 0, i32 1, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @dup_xol_work, ptr %func1.i, align 4
  %50 = load ptr, ptr %utask5, align 16
  %51 = getelementptr inbounds %struct.uprobe_task, ptr %50, i32 0, i32 1
  %call26 = tail call i32 @task_work_add(ptr noundef %t, ptr noundef %51, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end17.cleanup_crit_edge, %if.then16, %if.then13, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dup_xol_work(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.end:                                           ; preds = %entry
  %utask = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %6 = ptrtoint ptr %utask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %utask, align 16
  %dup_xol_addr = getelementptr inbounds %struct.uprobe_task, ptr %7, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %dup_xol_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dup_xol_addr, align 4
  %call3 = tail call fastcc ptr @__create_xol_area(i32 noundef %9)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and1.i.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.then9_crit_edge, label %fatal_signal_pending.exit

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

fatal_signal_pending.exit:                        ; preds = %land.lhs.true
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 116, i32 1
  %16 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %signal.i.i, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool8.not = icmp eq i32 %18, 0
  br i1 %tobool8.not, label %fatal_signal_pending.exit.if.then9_crit_edge, label %fatal_signal_pending.exit.if.end12_crit_edge

fatal_signal_pending.exit.if.end12_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

fatal_signal_pending.exit.if.then9_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %fatal_signal_pending.exit.if.then9_crit_edge, %land.lhs.true.if.then9_crit_edge
  %19 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pid.i, align 8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i, i32 noundef %24, ptr noundef nonnull @.str.4) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %fatal_signal_pending.exit.if.end12_crit_edge, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_work_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @uprobe_deny_signal() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask1, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.end:                                          ; preds = %entry
  %active_uprobe = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %active_uprobe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_uprobe, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.end.cleanup_crit_edge, label %if.end, !prof !133

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.end
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end.if.end42_crit_edge, label %land.rhs

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.rhs:                                         ; preds = %if.end
  %.b75 = load i1, ptr @uprobe_deny_signal.__already_done, align 1
  br i1 %.b75, label %land.rhs.if.end42_crit_edge, label %if.then20, !prof !133

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @uprobe_deny_signal.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1974, i32 noundef 9, ptr noundef null) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then20, %land.rhs.if.end42_crit_edge, %if.end.if.end42_crit_edge
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stack.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and1.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool51.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool51.not, label %if.end42.cleanup_crit_edge, label %if.then52

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then52:                                        ; preds = %if.end42
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %14 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %15) #12
  %16 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %17) #12
  %18 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %19) #12
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %20 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal.i, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool56.not = icmp eq i32 %22, 0
  br i1 %tobool56.not, label %lor.lhs.false, label %if.then52.if.then58_crit_edge

if.then52.if.then58_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

lor.lhs.false:                                    ; preds = %if.then52
  %call57 = tail call zeroext i1 @arch_uprobe_xol_was_trapped(ptr noundef %3) #12
  br i1 %call57, label %lor.lhs.false.if.then58_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %if.then52.if.then58_crit_edge
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %5, align 4
  %24 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %25) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %lor.lhs.false.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %lor.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %26 = phi i1 [ true, %if.end42.cleanup_crit_edge ], [ true, %if.then58 ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ false, %lor.end.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @arch_uprobe_xol_was_trapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_uprobe_ignore(ptr noundef %aup, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_uretprobe_is_alive(ptr noundef %ret, i32 noundef %ctx, ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobe_notify_resume(ptr noundef %regs) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i.i.i.i = alloca %struct.wait_queue_entry, align 4
  %is_swbp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %1) #12
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask2 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask2, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %active_uprobe = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %active_uprobe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_uprobe, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %land.end.i [
    i32 2, label %if.then.i
    i32 3, label %if.then3.i
  ]

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arch.i = getelementptr inbounds %struct.uprobe, ptr %7, i32 0, i32 10
  %call.i = tail call i32 @arch_uprobe_post_xol(ptr noundef %arch.i, ptr noundef %regs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp eq i32 %call.i, 0
  br label %if.end40.i

if.then3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %arch4.i = getelementptr inbounds %struct.uprobe, ptr %7, i32 0, i32 10
  tail call void @arch_uprobe_abort_xol(ptr noundef %arch4.i, ptr noundef %regs) #12
  br label %if.end40.i

land.end.i:                                       ; preds = %if.then
  %.b70.i = load i1, ptr @handle_singlestep.__already_done, align 1
  br i1 %.b70.i, label %land.end.i.if.end40.i_crit_edge, label %if.then10.i, !prof !133

land.end.i.if.end40.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40.i

if.then10.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @handle_singlestep.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2272, i32 noundef 9, ptr noundef null) #12
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then10.i, %land.end.i.if.end40.i_crit_edge, %if.then3.i, %if.then.i
  %err.0.i = phi i1 [ %phi.cmp.i, %if.then.i ], [ true, %if.then3.i ], [ true, %if.then10.i ], [ true, %land.end.i.if.end40.i_crit_edge ]
  tail call fastcc void @put_uprobe(ptr noundef nonnull %7) #12
  %11 = ptrtoint ptr %active_uprobe to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %active_uprobe, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %5, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i, align 8
  tail call fastcc void @xol_free_insn_slot(ptr noundef %16) #12
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 112
  %19 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sighand.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #12
  tail call void @recalc_sigpending() #12
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %sighand48.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 112
  %23 = ptrtoint ptr %sighand48.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sighand48.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %24) #12
  br i1 %err.0.i, label %if.end40.i.if.end_crit_edge, label %if.then57.i, !prof !133

if.end40.i.if.end_crit_edge:                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then57.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i, align 8
  %comm.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 68
  %29 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pid.i.i, align 8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i.i, i32 noundef %30, ptr noundef nonnull @.str.39) #15
  tail call void @force_sig(i32 noundef 4) #12
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_swbp.i) #12
  %31 = ptrtoint ptr %is_swbp.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %is_swbp.i, align 4, !annotation !128
  %call.i7 = tail call i32 @uprobe_get_swbp_addr(ptr noundef %regs) #12
  %32 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i8 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i8 to ptr
  %task.i.i9 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i9, align 8
  %mm.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mm.i.i, align 8
  %uprobes_state.i.i = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 51
  %38 = ptrtoint ptr %uprobes_state.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %uprobes_state.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.else.get_trampoline_vaddr.exit.i_crit_edge, label %if.then.i.i

if.else.get_trampoline_vaddr.exit.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_trampoline_vaddr.exit.i

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %vaddr.i.i = getelementptr inbounds %struct.xol_area, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vaddr.i.i, align 4
  br label %get_trampoline_vaddr.exit.i

get_trampoline_vaddr.exit.i:                      ; preds = %if.then.i.i, %if.else.get_trampoline_vaddr.exit.i_crit_edge
  %trampoline_vaddr.0.i.i = phi i32 [ %41, %if.then.i.i ], [ -1, %if.else.get_trampoline_vaddr.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i7, i32 %trampoline_vaddr.0.i.i)
  %cmp.i = icmp eq i32 %call.i7, %trampoline_vaddr.0.i.i
  br i1 %cmp.i, label %if.then.i10, label %if.end.i

if.then.i10:                                      ; preds = %get_trampoline_vaddr.exit.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i52.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i52.i to ptr
  %task.i53.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i53.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i53.i, align 8
  %utask1.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 208
  %46 = ptrtoint ptr %utask1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %utask1.i.i, align 16
  %tobool.not.i54.i = icmp eq ptr %47, null
  br i1 %tobool.not.i54.i, label %if.then.i10.sigill.i.i_crit_edge, label %if.end.i.i

if.then.i10.sigill.i.i_crit_edge:                 ; preds = %if.then.i10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sigill.i.i

if.end.i.i:                                       ; preds = %if.then.i10
  %return_instances.i.i = getelementptr inbounds %struct.uprobe_task, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %return_instances.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %return_instances.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %49, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.sigill.i.i_crit_edge, label %do.body.preheader.i.i

if.end.i.i.sigill.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sigill.i.i

do.body.preheader.i.i:                            ; preds = %if.end.i.i
  %arrayidx.i.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %depth.i.i = getelementptr inbounds %struct.uprobe_task, ptr %47, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond13.i.i.do.body.i.i_crit_edge, %do.body.preheader.i.i
  %ri.0.i.i = phi ptr [ %53, %do.cond13.i.i.do.body.i.i_crit_edge ], [ %49, %do.body.preheader.i.i ]
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i
  %ri.addr.0.i.i.i = phi ptr [ %ri.0.i.i, %do.body.i.i ], [ %53, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %chained1.i.i.i = getelementptr inbounds %struct.return_instance, ptr %ri.addr.0.i.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %chained1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %chained1.i.i.i, align 4, !range !172
  %tobool.not.i.i.i = icmp eq i8 %51, 0
  %next.i.i.i = getelementptr inbounds %struct.return_instance, ptr %ri.addr.0.i.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %next.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %find_next_ret_chain.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

find_next_ret_chain.exit.i.i:                     ; preds = %do.body.i.i.i
  %tobool6.not.i.i = icmp eq ptr %53, null
  br i1 %tobool6.not.i.i, label %find_next_ret_chain.exit.i.i.lor.end.i.i_crit_edge, label %lor.rhs.i.i

find_next_ret_chain.exit.i.i.lor.end.i.i_crit_edge: ; preds = %find_next_ret_chain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i.i

lor.rhs.i.i:                                      ; preds = %find_next_ret_chain.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i.i = tail call zeroext i1 @arch_uretprobe_is_alive(ptr noundef nonnull %53, i32 noundef 2, ptr noundef %regs) #12
  br label %lor.end.i.i

lor.end.i.i:                                      ; preds = %lor.rhs.i.i, %find_next_ret_chain.exit.i.i.lor.end.i.i_crit_edge
  %54 = phi i1 [ true, %find_next_ret_chain.exit.i.i.lor.end.i.i_crit_edge ], [ %call7.i.i, %lor.rhs.i.i ]
  %orig_ret_vaddr.i.i = getelementptr inbounds %struct.return_instance, ptr %ri.0.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %orig_ret_vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %orig_ret_vaddr.i.i, align 4
  %57 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx.i.i.i, align 4
  br label %do.body8.i.i

do.body8.i.i:                                     ; preds = %if.end11.i.i.do.body8.i.i_crit_edge, %lor.end.i.i
  %ri.1.i.i = phi ptr [ %ri.0.i.i, %lor.end.i.i ], [ %67, %if.end11.i.i.do.body8.i.i_crit_edge ]
  br i1 %54, label %if.then10.i.i, label %do.body8.i.i.if.end11.i.i_crit_edge

do.body8.i.i.if.end11.i.i_crit_edge:              ; preds = %do.body8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %do.body8.i.i
  %58 = ptrtoint ptr %ri.1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ri.1.i.i, align 4
  %register_rwsem.i.i.i = getelementptr inbounds %struct.uprobe, ptr %59, i32 0, i32 2
  tail call void @down_read(ptr noundef %register_rwsem.i.i.i) #12
  %consumers.i.i.i = getelementptr inbounds %struct.uprobe, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %consumers.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %uc.012.i.i.i = load ptr, ptr %consumers.i.i.i, align 4
  %tobool.not13.i.i.i = icmp eq ptr %uc.012.i.i.i, null
  br i1 %tobool.not13.i.i.i, label %if.then10.i.i.handle_uretprobe_chain.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then10.i.i.handle_uretprobe_chain.exit.i.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_uretprobe_chain.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then10.i.i
  %func.i.i.i = getelementptr inbounds %struct.return_instance, ptr %ri.1.i.i, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %uc.014.i.i.i = phi ptr [ %uc.012.i.i.i, %for.body.lr.ph.i.i.i ], [ %uc.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %ret_handler.i.i.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.014.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %ret_handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ret_handler.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %62, null
  br i1 %tobool2.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %func.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %func.i.i.i, align 4
  %call.i.i.i = tail call i32 %62(ptr noundef nonnull %uc.014.i.i.i, i32 noundef %64, ptr noundef %regs) #12
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %next.i37.i.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.014.i.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %next.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %uc.0.i.i.i = load ptr, ptr %next.i37.i.i, align 4
  %tobool.not.i38.i.i = icmp eq ptr %uc.0.i.i.i, null
  br i1 %tobool.not.i38.i.i, label %for.inc.i.i.i.handle_uretprobe_chain.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.handle_uretprobe_chain.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handle_uretprobe_chain.exit.i.i

handle_uretprobe_chain.exit.i.i:                  ; preds = %for.inc.i.i.i.handle_uretprobe_chain.exit.i.i_crit_edge, %if.then10.i.i.handle_uretprobe_chain.exit.i.i_crit_edge
  tail call void @up_read(ptr noundef %register_rwsem.i.i.i) #12
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %handle_uretprobe_chain.exit.i.i, %do.body8.i.i.if.end11.i.i_crit_edge
  %next1.i.i.i = getelementptr inbounds %struct.return_instance, ptr %ri.1.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %next1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %next1.i.i.i, align 4
  %68 = ptrtoint ptr %ri.1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ri.1.i.i, align 4
  tail call fastcc void @put_uprobe(ptr noundef %69) #12
  tail call void @kfree(ptr noundef %ri.1.i.i) #12
  %70 = ptrtoint ptr %depth.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %depth.i.i, align 4
  %dec.i.i = add i32 %71, -1
  store i32 %dec.i.i, ptr %depth.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %67, %53
  br i1 %cmp.not.i.i, label %do.cond13.i.i, label %if.end11.i.i.do.body8.i.i_crit_edge

if.end11.i.i.do.body8.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body8.i.i

do.cond13.i.i:                                    ; preds = %if.end11.i.i
  br i1 %54, label %do.end15.i.i, label %do.cond13.i.i.do.body.i.i_crit_edge

do.cond13.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end15.i.i:                                     ; preds = %do.cond13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %return_instances.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %53, ptr %return_instances.i.i, align 4
  br label %handle_swbp.exit

sigill.i.i:                                       ; preds = %if.end.i.i.sigill.i.i_crit_edge, %if.then.i10.sigill.i.i_crit_edge
  %comm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 68
  %73 = ptrtoint ptr %pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pid.i.i.i, align 8
  %call3.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i.i.i, i32 noundef %74, ptr noundef nonnull @.str.40) #15
  tail call void @force_sig(i32 noundef 4) #12
  br label %handle_swbp.exit

if.end.i:                                         ; preds = %get_trampoline_vaddr.exit.i
  %call2.i = call fastcc ptr @find_active_uprobe(i32 noundef %call.i7, ptr noundef nonnull %is_swbp.i) #12
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then3.i11, label %if.end7.i

if.then3.i11:                                     ; preds = %if.end.i
  %75 = ptrtoint ptr %is_swbp.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %is_swbp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp4.i = icmp sgt i32 %76, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then3.i11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @force_sig(i32 noundef 5) #12
  br label %handle_swbp.exit

if.else.i:                                        ; preds = %if.then3.i11
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call.i7, ptr %arrayidx.i.i, align 4
  br label %handle_swbp.exit

if.end7.i:                                        ; preds = %if.end.i
  %arrayidx.i55.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %78 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call.i7, ptr %arrayidx.i55.i, align 4
  %flags.i = getelementptr inbounds %struct.uprobe, ptr %call2.i, i32 0, i32 9
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool9.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool9.not.i, label %if.end7.i.out.i_crit_edge, label %do.end.i, !prof !134

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.end.i:                                         ; preds = %if.end7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !173
  %81 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i56.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i56.i to ptr
  %task.i57.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i57.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i57.i, align 8
  %utask.i.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 208
  %85 = ptrtoint ptr %utask.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %utask.i.i, align 16
  %tobool.not.i58.i = icmp eq ptr %86, null
  br i1 %tobool.not.i58.i, label %if.then.i59.i, label %do.end.i.get_utask.exit.i_crit_edge

do.end.i.get_utask.exit.i_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_utask.exit.i

if.then.i59.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 32) #16
  %88 = ptrtoint ptr %task.i57.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task.i57.i, align 8
  %utask4.i.i = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 208
  %90 = ptrtoint ptr %utask4.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i.i.i, ptr %utask4.i.i, align 16
  br label %get_utask.exit.i

get_utask.exit.i:                                 ; preds = %if.then.i59.i, %do.end.i.get_utask.exit.i_crit_edge
  %91 = ptrtoint ptr %task.i57.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i57.i, align 8
  %utask7.i.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 208
  %93 = ptrtoint ptr %utask7.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %utask7.i.i, align 16
  %tobool19.not.i = icmp eq ptr %94, null
  br i1 %tobool19.not.i, label %get_utask.exit.i.out.i_crit_edge, label %if.end21.i

get_utask.exit.i.out.i_crit_edge:                 ; preds = %get_utask.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end21.i:                                       ; preds = %get_utask.exit.i
  %arch.i12 = getelementptr inbounds %struct.uprobe, ptr %call2.i, i32 0, i32 10
  %call22.i = tail call zeroext i1 @arch_uprobe_ignore(ptr noundef %arch.i12, ptr noundef %regs) #12
  br i1 %call22.i, label %if.end21.i.out.i_crit_edge, label %if.end24.i

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end24.i:                                       ; preds = %if.end21.i
  %register_rwsem.i.i = getelementptr inbounds %struct.uprobe, ptr %call2.i, i32 0, i32 2
  tail call void @down_read(ptr noundef %register_rwsem.i.i) #12
  %consumers.i.i = getelementptr inbounds %struct.uprobe, ptr %call2.i, i32 0, i32 5
  %95 = ptrtoint ptr %consumers.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %uc.097.i.i = load ptr, ptr %consumers.i.i, align 4
  %tobool.not98.i.i = icmp eq ptr %uc.097.i.i, null
  br i1 %tobool.not98.i.i, label %if.end24.i.handler_chain.exit.i_crit_edge, label %if.end24.i.for.body.i.i_crit_edge

if.end24.i.for.body.i.i_crit_edge:                ; preds = %if.end24.i
  br label %for.body.i.i

if.end24.i.handler_chain.exit.i_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handler_chain.exit.i

for.body.i.i:                                     ; preds = %if.end25.i.i.for.body.i.i_crit_edge, %if.end24.i.for.body.i.i_crit_edge
  %uc.0101.i.i = phi ptr [ %uc.0.i.i, %if.end25.i.i.for.body.i.i_crit_edge ], [ %uc.097.i.i, %if.end24.i.for.body.i.i_crit_edge ]
  %remove.0100.i.i = phi i32 [ %and29.i.i, %if.end25.i.i.for.body.i.i_crit_edge ], [ 1, %if.end24.i.for.body.i.i_crit_edge ]
  %need_prep.0.off099.i.i = phi i1 [ %spec.select.i.i, %if.end25.i.i.for.body.i.i_crit_edge ], [ false, %if.end24.i.for.body.i.i_crit_edge ]
  %96 = ptrtoint ptr %uc.0101.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %uc.0101.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %97, null
  br i1 %tobool1.not.i.i, label %for.body.i.i.if.end25.i.i_crit_edge, label %if.then.i61.i

for.body.i.i.if.end25.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i.i

if.then.i61.i:                                    ; preds = %for.body.i.i
  %call.i.i = tail call i32 %97(ptr noundef nonnull %uc.0101.i.i, ptr noundef %regs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool3.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool3.not.i.i, label %if.then.i61.i.if.end25.i.i_crit_edge, label %do.end.i.i, !prof !133

if.then.i61.i.if.end25.i.i_crit_edge:             ; preds = %if.then.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i.i

do.end.i.i:                                       ; preds = %if.then.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %uc.0101.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %uc.0101.i.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2086, i32 noundef 9, ptr noundef nonnull @.str.41, i32 noundef %call.i.i, ptr noundef %99) #12
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end.i.i, %if.then.i61.i.if.end25.i.i_crit_edge, %for.body.i.i.if.end25.i.i_crit_edge
  %rc.0.i.i = phi i32 [ 0, %for.body.i.i.if.end25.i.i_crit_edge ], [ %call.i.i, %do.end.i.i ], [ %call.i.i, %if.then.i61.i.if.end25.i.i_crit_edge ]
  %ret_handler.i.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.0101.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %ret_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ret_handler.i.i, align 4
  %tobool26.not.i.i = icmp ne ptr %101, null
  %spec.select.i.i = select i1 %tobool26.not.i.i, i1 true, i1 %need_prep.0.off099.i.i
  %and29.i.i = and i32 %rc.0.i.i, %remove.0100.i.i
  %next.i.i = getelementptr inbounds %struct.uprobe_consumer, ptr %uc.0101.i.i, i32 0, i32 3
  %102 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %uc.0.i.i = load ptr, ptr %next.i.i, align 4
  %tobool.not.i62.i = icmp eq ptr %uc.0.i.i, null
  br i1 %tobool.not.i62.i, label %for.end.i.i, label %if.end25.i.i.for.body.i.i_crit_edge

if.end25.i.i.for.body.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool31.not.i.i = icmp eq i32 %and29.i.i, 0
  %or.cond.i.i = select i1 %spec.select.i.i, i1 %tobool31.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then32.i.i, label %for.end.i.i.if.end33.i.i_crit_edge

for.end.i.i.if.end33.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

if.then32.i.i:                                    ; preds = %for.end.i.i
  %103 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i.i.i.i, align 8
  %mm1.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 53
  %107 = ptrtoint ptr %mm1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mm1.i.i.i.i, align 8
  %uprobes_state.i.i.i.i = getelementptr inbounds %struct.anon, ptr %108, i32 0, i32 51
  %109 = ptrtoint ptr %uprobes_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %uprobes_state.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %110, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.then32.i.i.get_xol_area.exit.i.i.i_crit_edge

if.then32.i.i.get_xol_area.exit.i.i.i_crit_edge:  ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_xol_area.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i.i.i = tail call fastcc ptr @__create_xol_area(i32 noundef 0) #12
  br label %get_xol_area.exit.i.i.i

get_xol_area.exit.i.i.i:                          ; preds = %if.then.i.i.i.i, %if.then32.i.i.get_xol_area.exit.i.i.i_crit_edge
  %111 = ptrtoint ptr %uprobes_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %uprobes_state.i.i.i.i, align 8
  %tobool.not.i.i63.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i63.i, label %get_xol_area.exit.i.i.i.if.end33.i.i_crit_edge, label %if.end.i.i.i

get_xol_area.exit.i.i.i.if.end33.i.i_crit_edge:   ; preds = %get_xol_area.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

if.end.i.i.i:                                     ; preds = %get_xol_area.exit.i.i.i
  %113 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i73.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i73.i.i.i to ptr
  %task.i74.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i74.i.i.i, align 8
  %utask.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 208
  %117 = ptrtoint ptr %utask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %utask.i.i.i.i, align 16
  %tobool.not.i75.i.i.i = icmp eq ptr %118, null
  br i1 %tobool.not.i75.i.i.i, label %if.then.i76.i.i.i, label %if.end.i.i.i.get_utask.exit.i.i.i_crit_edge

if.end.i.i.i.get_utask.exit.i.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_utask.exit.i.i.i

if.then.i76.i.i.i:                                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %119 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %119, i32 noundef 3520, i32 noundef 32) #16
  %120 = ptrtoint ptr %task.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task.i74.i.i.i, align 8
  %utask4.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 208
  %122 = ptrtoint ptr %utask4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call7.i.i.i.i.i.i, ptr %utask4.i.i.i.i, align 16
  br label %get_utask.exit.i.i.i

get_utask.exit.i.i.i:                             ; preds = %if.then.i76.i.i.i, %if.end.i.i.i.get_utask.exit.i.i.i_crit_edge
  %123 = ptrtoint ptr %task.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %task.i74.i.i.i, align 8
  %utask7.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 208
  %125 = ptrtoint ptr %utask7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %utask7.i.i.i.i, align 16
  %tobool2.not.i.i64.i = icmp eq ptr %126, null
  br i1 %tobool2.not.i.i64.i, label %get_utask.exit.i.i.i.if.end33.i.i_crit_edge, label %if.end4.i.i.i

get_utask.exit.i.i.i.if.end33.i.i_crit_edge:      ; preds = %get_utask.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

if.end4.i.i.i:                                    ; preds = %get_utask.exit.i.i.i
  %depth.i.i.i = getelementptr inbounds %struct.uprobe_task, ptr %126, i32 0, i32 5
  %127 = ptrtoint ptr %depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %depth.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %128)
  %cmp.i.i.i = icmp ugt i32 %128, 63
  br i1 %cmp.i.i.i, label %if.then5.i.i.i, label %if.end14.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end4.i.i.i
  %call6.i.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @prepare_uretprobe._rs, ptr noundef nonnull @__func__.prepare_uretprobe) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %call6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.then5.i.i.i.if.end33.i.i_crit_edge, label %do.end.i.i.i

if.then5.i.i.i.if.end33.i.i_crit_edge:            ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

do.end.i.i.i:                                     ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %129 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %task.i.i.i, align 8
  %pid.i.i65.i = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 68
  %133 = ptrtoint ptr %pid.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pid.i.i65.i, align 8
  %tgid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %132, i32 0, i32 69
  %135 = ptrtoint ptr %tgid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %tgid.i.i.i, align 4
  %call12.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %134, i32 noundef %136) #15
  br label %handler_chain.exit.i

if.end14.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %137 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i66.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %137, i32 noundef 3264, i32 noundef 24) #16
  %tobool16.not.i.i.i = icmp eq ptr %call7.i.i.i66.i, null
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.if.end33.i.i_crit_edge, label %if.end18.i.i.i

if.end14.i.i.i.if.end33.i.i_crit_edge:            ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i

if.end18.i.i.i:                                   ; preds = %if.end14.i.i.i
  %138 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i77.i.i.i = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i77.i.i.i to ptr
  %task.i78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %task.i78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %task.i78.i.i.i, align 8
  %mm.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 53
  %142 = ptrtoint ptr %mm.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %mm.i.i.i.i, align 8
  %uprobes_state.i79.i.i.i = getelementptr inbounds %struct.anon, ptr %143, i32 0, i32 51
  %144 = ptrtoint ptr %uprobes_state.i79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %uprobes_state.i79.i.i.i, align 8
  %tobool.not.i80.i.i.i = icmp eq ptr %145, null
  br i1 %tobool.not.i80.i.i.i, label %if.end18.i.i.i.get_trampoline_vaddr.exit.i.i.i_crit_edge, label %if.then.i81.i.i.i

if.end18.i.i.i.get_trampoline_vaddr.exit.i.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_trampoline_vaddr.exit.i.i.i

if.then.i81.i.i.i:                                ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vaddr.i.i.i.i = getelementptr inbounds %struct.xol_area, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %vaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %vaddr.i.i.i.i, align 4
  br label %get_trampoline_vaddr.exit.i.i.i

get_trampoline_vaddr.exit.i.i.i:                  ; preds = %if.then.i81.i.i.i, %if.end18.i.i.i.get_trampoline_vaddr.exit.i.i.i_crit_edge
  %trampoline_vaddr.0.i.i.i.i = phi i32 [ %147, %if.then.i81.i.i.i ], [ -1, %if.end18.i.i.i.get_trampoline_vaddr.exit.i.i.i_crit_edge ]
  %call20.i.i.i = tail call i32 @arch_uretprobe_hijack_return_addr(i32 noundef %trampoline_vaddr.0.i.i.i.i, ptr noundef %regs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call20.i.i.i)
  %cmp21.i.i.i = icmp eq i32 %call20.i.i.i, -1
  br i1 %cmp21.i.i.i, label %get_trampoline_vaddr.exit.i.i.i.fail.i.i.i_crit_edge, label %if.end23.i.i.i

get_trampoline_vaddr.exit.i.i.i.fail.i.i.i_crit_edge: ; preds = %get_trampoline_vaddr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i.i

if.end23.i.i.i:                                   ; preds = %get_trampoline_vaddr.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call20.i.i.i, i32 %trampoline_vaddr.0.i.i.i.i)
  %cmp24.i.i.i = icmp eq i32 %call20.i.i.i, %trampoline_vaddr.0.i.i.i.i
  %frombool.i.i.i = zext i1 %cmp24.i.i.i to i8
  %return_instances.i.i.i.i = getelementptr inbounds %struct.uprobe_task, ptr %126, i32 0, i32 4
  %148 = ptrtoint ptr %return_instances.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %return_instances.i.i.i.i, align 4
  %cond.i.i.i.i = zext i1 %cmp24.i.i.i to i32
  %tobool1.not9.i.i.i.i = icmp eq ptr %149, null
  br i1 %tobool1.not9.i.i.i.i, label %if.end23.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge, label %if.end23.i.i.i.land.rhs.i.i.i.i_crit_edge

if.end23.i.i.i.land.rhs.i.i.i.i_crit_edge:        ; preds = %if.end23.i.i.i
  br label %land.rhs.i.i.i.i

if.end23.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_return_instances.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %while.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.end23.i.i.i.land.rhs.i.i.i.i_crit_edge
  %ri.010.i.i.i.i = phi ptr [ %151, %while.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ %149, %if.end23.i.i.i.land.rhs.i.i.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @arch_uretprobe_is_alive(ptr noundef nonnull %ri.010.i.i.i.i, i32 noundef %cond.i.i.i.i, ptr noundef %regs) #12
  br i1 %call.i.i.i.i, label %land.rhs.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge, label %while.body.i.i.i.i

land.rhs.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_return_instances.exit.i.i.i

while.body.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %next1.i.i.i.i.i = getelementptr inbounds %struct.return_instance, ptr %ri.010.i.i.i.i, i32 0, i32 5
  %150 = ptrtoint ptr %next1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %next1.i.i.i.i.i, align 4
  %152 = ptrtoint ptr %ri.010.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ri.010.i.i.i.i, align 4
  tail call fastcc void @put_uprobe(ptr noundef %153) #12
  tail call void @kfree(ptr noundef nonnull %ri.010.i.i.i.i) #12
  %154 = ptrtoint ptr %depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %depth.i.i.i, align 4
  %dec.i.i.i.i = add i32 %155, -1
  store i32 %dec.i.i.i.i, ptr %depth.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %151, null
  br i1 %tobool1.not.i.i.i.i, label %while.body.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge, label %while.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge

while.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge:    ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i.i.i.i

while.body.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup_return_instances.exit.i.i.i

cleanup_return_instances.exit.i.i.i:              ; preds = %while.body.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge, %land.rhs.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge, %if.end23.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge
  %ri.0.lcssa.i.i.i.i = phi ptr [ null, %if.end23.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge ], [ null, %while.body.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge ], [ %ri.010.i.i.i.i, %land.rhs.i.i.i.i.cleanup_return_instances.exit.i.i.i_crit_edge ]
  %156 = ptrtoint ptr %return_instances.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %ri.0.lcssa.i.i.i.i, ptr %return_instances.i.i.i.i, align 4
  br i1 %cmp24.i.i.i, label %if.then27.i.i.i, label %cleanup_return_instances.exit.i.i.i.if.end35.i.i.i_crit_edge

cleanup_return_instances.exit.i.i.i.if.end35.i.i.i_crit_edge: ; preds = %cleanup_return_instances.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i.i

if.then27.i.i.i:                                  ; preds = %cleanup_return_instances.exit.i.i.i
  %tobool28.not.i.i.i = icmp eq ptr %ri.0.lcssa.i.i.i.i, null
  br i1 %tobool28.not.i.i.i, label %if.then29.i.i.i, label %if.end32.i.i.i

if.then29.i.i.i:                                  ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %157 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i82.i.i.i = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i82.i.i.i to ptr
  %task.i83.i.i.i = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %task.i83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %task.i83.i.i.i, align 8
  %comm.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %160, i32 0, i32 101
  %pid.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %160, i32 0, i32 68
  %161 = ptrtoint ptr %pid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pid.i.i.i.i, align 8
  %call3.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %comm.i.i.i.i, i32 noundef %162, ptr noundef nonnull @.str.44) #15
  br label %fail.i.i.i

if.end32.i.i.i:                                   ; preds = %if.then27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %orig_ret_vaddr34.i.i.i = getelementptr inbounds %struct.return_instance, ptr %ri.0.lcssa.i.i.i.i, i32 0, i32 3
  %163 = ptrtoint ptr %orig_ret_vaddr34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %orig_ret_vaddr34.i.i.i, align 4
  br label %if.end35.i.i.i

if.end35.i.i.i:                                   ; preds = %if.end32.i.i.i, %cleanup_return_instances.exit.i.i.i.if.end35.i.i.i_crit_edge
  %orig_ret_vaddr.0.i.i.i = phi i32 [ %164, %if.end32.i.i.i ], [ %call20.i.i.i, %cleanup_return_instances.exit.i.i.i.if.end35.i.i.i_crit_edge ]
  %ref.i.i.i.i = getelementptr inbounds %struct.uprobe, ptr %call2.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i.i, i32 1, i32 3, i32 1) #12
  %165 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i.i, ptr %ref.i.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i.i) #12, !srcloc !153
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %165, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end35.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !134

if.end35.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end35.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %166 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %166)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %166, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.get_uprobe.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !133

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.get_uprobe.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_uprobe.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end35.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end35.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #12
  br label %get_uprobe.exit.i.i.i

get_uprobe.exit.i.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.get_uprobe.exit.i.i.i_crit_edge
  %167 = ptrtoint ptr %call7.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call2.i, ptr %call7.i.i.i66.i, align 8
  %168 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i55.i, align 4
  %func.i.i68.i = getelementptr inbounds %struct.return_instance, ptr %call7.i.i.i66.i, i32 0, i32 1
  %170 = ptrtoint ptr %func.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %func.i.i68.i, align 4
  %arrayidx.i.i.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %171 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %stack.i.i.i = getelementptr inbounds %struct.return_instance, ptr %call7.i.i.i66.i, i32 0, i32 2
  %173 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %stack.i.i.i, align 8
  %orig_ret_vaddr39.i.i.i = getelementptr inbounds %struct.return_instance, ptr %call7.i.i.i66.i, i32 0, i32 3
  %174 = ptrtoint ptr %orig_ret_vaddr39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %orig_ret_vaddr.0.i.i.i, ptr %orig_ret_vaddr39.i.i.i, align 4
  %chained41.i.i.i = getelementptr inbounds %struct.return_instance, ptr %call7.i.i.i66.i, i32 0, i32 4
  %175 = ptrtoint ptr %chained41.i.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %frombool.i.i.i, ptr %chained41.i.i.i, align 8
  %176 = ptrtoint ptr %depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %depth.i.i.i, align 4
  %inc.i.i.i = add i32 %177, 1
  store i32 %inc.i.i.i, ptr %depth.i.i.i, align 4
  %178 = ptrtoint ptr %return_instances.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %return_instances.i.i.i.i, align 4
  %next.i.i69.i = getelementptr inbounds %struct.return_instance, ptr %call7.i.i.i66.i, i32 0, i32 5
  %180 = ptrtoint ptr %next.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %179, ptr %next.i.i69.i, align 4
  store ptr %call7.i.i.i66.i, ptr %return_instances.i.i.i.i, align 4
  br label %handler_chain.exit.i

fail.i.i.i:                                       ; preds = %if.then29.i.i.i, %get_trampoline_vaddr.exit.i.i.i.fail.i.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i66.i) #12
  br label %handler_chain.exit.i

if.end33.i.i:                                     ; preds = %if.end14.i.i.i.if.end33.i.i_crit_edge, %if.then5.i.i.i.if.end33.i.i_crit_edge, %get_utask.exit.i.i.i.if.end33.i.i_crit_edge, %get_xol_area.exit.i.i.i.if.end33.i.i_crit_edge, %for.end.i.i.if.end33.i.i_crit_edge
  br i1 %tobool31.not.i.i, label %if.end33.i.i.handler_chain.exit.i_crit_edge, label %land.lhs.true35.i.i

if.end33.i.i.handler_chain.exit.i_crit_edge:      ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handler_chain.exit.i

land.lhs.true35.i.i:                              ; preds = %if.end33.i.i
  %181 = ptrtoint ptr %consumers.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %.pr.i.i = load ptr, ptr %consumers.i.i, align 8
  %tobool37.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool37.not.i.i, label %land.lhs.true35.i.i.handler_chain.exit.i_crit_edge, label %if.then38.i.i

land.lhs.true35.i.i.handler_chain.exit.i_crit_edge: ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %handler_chain.exit.i

if.then38.i.i:                                    ; preds = %land.lhs.true35.i.i
  %182 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %call2.i, align 8
  %184 = ptrtoint ptr %call2.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %184)
  %cmp.i96.not.i.i = icmp eq i32 %183, %184
  br i1 %cmp.i96.not.i.i, label %do.end58.i.i, label %if.then38.i.i.if.end64.i.i_crit_edge, !prof !134

if.then38.i.i.if.end64.i.i_crit_edge:             ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i.i

do.end58.i.i:                                     ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2099, i32 noundef 9, ptr noundef null) #12
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %do.end58.i.i, %if.then38.i.i.if.end64.i.i_crit_edge
  %185 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i70.i = and i32 %185, -16384
  %186 = inttoptr i32 %and.i.i70.i to ptr
  %task.i71.i = getelementptr inbounds %struct.thread_info, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %task.i71.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %task.i71.i, align 8
  %mm.i72.i = getelementptr inbounds %struct.task_struct, ptr %188, i32 0, i32 53
  %189 = ptrtoint ptr %mm.i72.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mm.i72.i, align 8
  tail call fastcc void @unapply_uprobe(ptr noundef nonnull %call2.i, ptr noundef %190) #12
  br label %handler_chain.exit.i

handler_chain.exit.i:                             ; preds = %if.end64.i.i, %land.lhs.true35.i.i.handler_chain.exit.i_crit_edge, %if.end33.i.i.handler_chain.exit.i_crit_edge, %fail.i.i.i, %get_uprobe.exit.i.i.i, %do.end.i.i.i, %if.end24.i.handler_chain.exit.i_crit_edge
  tail call void @up_read(ptr noundef %register_rwsem.i.i) #12
  %call26.i = tail call zeroext i1 @arch_uprobe_skip_sstep(ptr noundef %arch.i12, ptr noundef %regs) #12
  br i1 %call26.i, label %handler_chain.exit.i.out.i_crit_edge, label %if.end28.i

handler_chain.exit.i.out.i_crit_edge:             ; preds = %handler_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end28.i:                                       ; preds = %handler_chain.exit.i
  %191 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i73.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i.i.i73.i to ptr
  %task.i.i74.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %task.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %task.i.i74.i, align 8
  %utask.i.i.i = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 208
  %195 = ptrtoint ptr %utask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %utask.i.i.i, align 16
  %tobool.not.i.i75.i = icmp eq ptr %196, null
  br i1 %tobool.not.i.i75.i, label %if.then.i.i76.i, label %if.end28.i.get_utask.exit.i.i_crit_edge

if.end28.i.get_utask.exit.i.i_crit_edge:          ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_utask.exit.i.i

if.then.i.i76.i:                                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %197 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %197, i32 noundef 3520, i32 noundef 32) #16
  %198 = ptrtoint ptr %task.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task.i.i74.i, align 8
  %utask4.i.i.i = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 208
  %200 = ptrtoint ptr %utask4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call7.i.i.i.i.i, ptr %utask4.i.i.i, align 16
  br label %get_utask.exit.i.i

get_utask.exit.i.i:                               ; preds = %if.then.i.i76.i, %if.end28.i.get_utask.exit.i.i_crit_edge
  %201 = ptrtoint ptr %task.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %task.i.i74.i, align 8
  %utask7.i.i.i = getelementptr inbounds %struct.task_struct, ptr %202, i32 0, i32 208
  %203 = ptrtoint ptr %utask7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %utask7.i.i.i, align 16
  %tobool.not.i77.i = icmp eq ptr %204, null
  br i1 %tobool.not.i77.i, label %get_utask.exit.i.i.out.i_crit_edge, label %if.end.i83.i

get_utask.exit.i.i.out.i_crit_edge:               ; preds = %get_utask.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end.i83.i:                                     ; preds = %get_utask.exit.i.i
  %205 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i78.i = and i32 %205, -16384
  %206 = inttoptr i32 %and.i.i.i.i78.i to ptr
  %task.i.i.i79.i = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %task.i.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %task.i.i.i79.i, align 8
  %mm1.i.i.i80.i = getelementptr inbounds %struct.task_struct, ptr %208, i32 0, i32 53
  %209 = ptrtoint ptr %mm1.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mm1.i.i.i80.i, align 8
  %uprobes_state.i.i.i81.i = getelementptr inbounds %struct.anon, ptr %210, i32 0, i32 51
  %211 = ptrtoint ptr %uprobes_state.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %uprobes_state.i.i.i81.i, align 8
  %tobool.not.i.i.i82.i = icmp eq ptr %212, null
  br i1 %tobool.not.i.i.i82.i, label %if.then.i.i.i85.i, label %if.end.i83.i.get_xol_area.exit.i.i86.i_crit_edge

if.end.i83.i.get_xol_area.exit.i.i86.i_crit_edge: ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_xol_area.exit.i.i86.i

if.then.i.i.i85.i:                                ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i.i84.i = tail call fastcc ptr @__create_xol_area(i32 noundef 0) #12
  br label %get_xol_area.exit.i.i86.i

get_xol_area.exit.i.i86.i:                        ; preds = %if.then.i.i.i85.i, %if.end.i83.i.get_xol_area.exit.i.i86.i_crit_edge
  %213 = ptrtoint ptr %uprobes_state.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile ptr, ptr %uprobes_state.i.i.i81.i, align 8
  %tobool.not.i23.i.i = icmp eq ptr %214, null
  br i1 %tobool.not.i23.i.i, label %get_xol_area.exit.i.i86.i.out.i_crit_edge, label %if.end.i.i87.i

get_xol_area.exit.i.i86.i.out.i_crit_edge:        ; preds = %get_xol_area.exit.i.i86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end.i.i87.i:                                   ; preds = %get_xol_area.exit.i.i86.i
  %bitmap.i.i.i.i = getelementptr inbounds %struct.xol_area, ptr %214, i32 0, i32 2
  %slot_count.i.i.i.i = getelementptr inbounds %struct.xol_area, ptr %214, i32 0, i32 1
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.backedge, %if.end.i.i87.i
  %215 = ptrtoint ptr %bitmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bitmap.i.i.i.i, align 4
  %call.i.i.i88.i = call i32 @_find_first_zero_bit_be(ptr noundef %216, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i.i.i88.i)
  %cmp.i.i.i.i = icmp ult i32 %call.i.i.i88.i, 64
  br i1 %cmp.i.i.i.i, label %if.then.i15.i.i.i, label %do.body6.i.i.i.i

if.then.i15.i.i.i:                                ; preds = %do.body.i.i.i.i
  %217 = ptrtoint ptr %bitmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %bitmap.i.i.i.i, align 4
  %call2.i13.i.i.i = call i32 @_test_and_set_bit(i32 noundef %call.i.i.i88.i, ptr noundef %218) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i13.i.i.i)
  %tobool.not.i14.i.i.i = icmp eq i32 %call2.i13.i.i.i, 0
  br i1 %tobool.not.i14.i.i.i, label %xol_take_insn_slot.exit.i.i.i, label %if.then.i15.i.i.i.do.body.i.i.i.i.backedge_crit_edge

if.then.i15.i.i.i.do.body.i.i.i.i.backedge_crit_edge: ; preds = %if.then.i15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.backedge

do.body6.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1598) #12
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %slot_count.i.i.i.i, i32 noundef 4) #12
  %219 = ptrtoint ptr %slot_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %slot_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %220)
  %cmp11.i.i.i.i = icmp ult i32 %220, 64
  br i1 %cmp11.i.i.i.i, label %do.body6.i.i.i.i.do.body.i.i.i.i.backedge_crit_edge, label %if.end13.i.i.i.i

do.body6.i.i.i.i.do.body.i.i.i.i.backedge_crit_edge: ; preds = %do.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.backedge

if.end13.i.i.i.i:                                 ; preds = %do.body6.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i.i.i) #12
  %221 = call ptr @memset(ptr %__wq_entry.i.i.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i.i.i, i32 noundef 0) #12
  %call1443.i.i.i.i = call i32 @prepare_to_wait_event(ptr noundef nonnull %214, ptr noundef nonnull %__wq_entry.i.i.i.i, i32 noundef 2) #12
  %call.i.i3944.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %slot_count.i.i.i.i, i32 noundef 4) #12
  %222 = ptrtoint ptr %slot_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load volatile i32, ptr %slot_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %223)
  %cmp1745.i.i.i.i = icmp ult i32 %223, 64
  br i1 %cmp1745.i.i.i.i, label %if.end13.i.i.i.i.for.end.i.i.i.i_crit_edge, label %if.end13.i.i.i.i.cleanup.i.i.i.i_crit_edge

if.end13.i.i.i.i.cleanup.i.i.i.i_crit_edge:       ; preds = %if.end13.i.i.i.i
  br label %cleanup.i.i.i.i

if.end13.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %if.end13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

cleanup.i.i.i.i:                                  ; preds = %cleanup.i.i.i.i.cleanup.i.i.i.i_crit_edge, %if.end13.i.i.i.i.cleanup.i.i.i.i_crit_edge
  call void @schedule() #12
  %call14.i.i.i.i = call i32 @prepare_to_wait_event(ptr noundef nonnull %214, ptr noundef nonnull %__wq_entry.i.i.i.i, i32 noundef 2) #12
  %call.i.i39.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %slot_count.i.i.i.i, i32 noundef 4) #12
  %224 = ptrtoint ptr %slot_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile i32, ptr %slot_count.i.i.i.i, align 4
  %cmp17.i.i.i.i = icmp ult i32 %225, 64
  br i1 %cmp17.i.i.i.i, label %cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge, label %cleanup.i.i.i.i.cleanup.i.i.i.i_crit_edge

cleanup.i.i.i.i.cleanup.i.i.i.i_crit_edge:        ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i.i.i

cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %cleanup.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %cleanup.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.end13.i.i.i.i.for.end.i.i.i.i_crit_edge
  call void @finish_wait(ptr noundef nonnull %214, ptr noundef nonnull %__wq_entry.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i.i.i) #12
  br label %do.body.i.i.i.i.backedge

do.body.i.i.i.i.backedge:                         ; preds = %for.end.i.i.i.i, %do.body6.i.i.i.i.do.body.i.i.i.i.backedge_crit_edge, %if.then.i15.i.i.i.do.body.i.i.i.i.backedge_crit_edge
  br label %do.body.i.i.i.i

xol_take_insn_slot.exit.i.i.i:                    ; preds = %if.then.i15.i.i.i
  %vaddr.i.i.i89.i = getelementptr inbounds %struct.xol_area, ptr %214, i32 0, i32 5
  %226 = ptrtoint ptr %vaddr.i.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %vaddr.i.i.i89.i, align 4
  %mul.i.i.i.i = shl nuw nsw i32 %call.i.i.i88.i, 6
  %add.i.i.i.i = add i32 %227, %mul.i.i.i.i
  %call.i.i40.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %slot_count.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %slot_count.i.i.i.i, i32 1, i32 3, i32 1) #12
  %228 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %slot_count.i.i.i.i, ptr %slot_count.i.i.i.i, i32 1, ptr elementtype(i32) %slot_count.i.i.i.i) #12, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i.i)
  %tobool2.not.i.i90.i = icmp eq i32 %add.i.i.i.i, 0
  br i1 %tobool2.not.i.i90.i, label %xol_take_insn_slot.exit.i.i.i.out.i_crit_edge, label %if.end4.i.i, !prof !134

xol_take_insn_slot.exit.i.i.i.out.i_crit_edge:    ; preds = %xol_take_insn_slot.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end4.i.i:                                      ; preds = %xol_take_insn_slot.exit.i.i.i
  %pages.i.i.i = getelementptr inbounds %struct.xol_area, ptr %214, i32 0, i32 4
  %229 = ptrtoint ptr %pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pages.i.i.i, align 4
  %ixol.i.i.i = getelementptr inbounds %struct.uprobe, ptr %call2.i, i32 0, i32 10, i32 1
  call void @arch_uprobe_copy_ixol(ptr noundef %230, i32 noundef %add.i.i.i.i, ptr noundef %ixol.i.i.i, i32 noundef 8) #12
  %xol_vaddr5.i.i = getelementptr inbounds %struct.uprobe_task, ptr %204, i32 0, i32 3
  %231 = ptrtoint ptr %xol_vaddr5.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %add.i.i.i.i, ptr %xol_vaddr5.i.i, align 4
  %vaddr.i91.i = getelementptr inbounds %struct.uprobe_task, ptr %204, i32 0, i32 1, i32 0, i32 1
  %232 = ptrtoint ptr %vaddr.i91.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %call.i7, ptr %vaddr.i91.i, align 4
  %call6.i.i = call i32 @arch_uprobe_pre_xol(ptr noundef %arch.i12, ptr noundef %regs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %pre_ssout.exit.i, label %if.then10.i94.i, !prof !133

if.then10.i94.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %233 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i92.i = and i32 %233, -16384
  %234 = inttoptr i32 %and.i.i92.i to ptr
  %task.i93.i = getelementptr inbounds %struct.thread_info, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %task.i93.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %task.i93.i, align 8
  call fastcc void @xol_free_insn_slot(ptr noundef %236) #12
  br label %out.i

pre_ssout.exit.i:                                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %active_uprobe.i.i = getelementptr inbounds %struct.uprobe_task, ptr %204, i32 0, i32 2
  %237 = ptrtoint ptr %active_uprobe.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call2.i, ptr %active_uprobe.i.i, align 4
  %238 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 1, ptr %204, align 4
  br label %handle_swbp.exit

out.i:                                            ; preds = %if.then10.i94.i, %xol_take_insn_slot.exit.i.i.i.out.i_crit_edge, %get_xol_area.exit.i.i86.i.out.i_crit_edge, %get_utask.exit.i.i.out.i_crit_edge, %handler_chain.exit.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge, %get_utask.exit.i.out.i_crit_edge, %if.end7.i.out.i_crit_edge
  call fastcc void @put_uprobe(ptr noundef nonnull %call2.i) #12
  br label %handle_swbp.exit

handle_swbp.exit:                                 ; preds = %out.i, %pre_ssout.exit.i, %if.else.i, %if.then5.i, %sigill.i.i, %do.end15.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_swbp.i) #12
  br label %if.end

if.end:                                           ; preds = %handle_swbp.exit, %if.then57.i, %if.end40.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uprobe_pre_sstep_notifier(ptr nocapture noundef readnone %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %utask = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %9 = ptrtoint ptr %utask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %utask, align 16
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true.return_crit_edge, label %lor.lhs.false

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %return_instances = getelementptr inbounds %struct.uprobe_task, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %return_instances to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %return_instances, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end14:                                         ; preds = %lor.lhs.false.if.end14_crit_edge, %if.end.if.end14_crit_edge
  tail call void @_set_bit(i32 noundef 3, ptr noundef %1) #12
  br label %return

return:                                           ; preds = %if.end14, %lor.lhs.false.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uprobe_post_sstep_notifier(ptr nocapture noundef readnone %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %utask1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 208
  %4 = ptrtoint ptr %utask1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %utask1, align 16
  %mm = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %6 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm, align 8
  %tobool.not = icmp eq ptr %7, null
  %tobool4.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false5:                                   ; preds = %entry
  %active_uprobe = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %active_uprobe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_uprobe, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %5, align 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false5.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @uprobes_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.mutex], ptr @uprobes_mmap_mutex, i32 0, i32 %i.014
  tail call void @__mutex_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.5, ptr noundef nonnull @uprobes_init.__key) #12
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %do.body1, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body1:                                         ; preds = %do.body
  %call = tail call i32 @register_die_notifier(ptr noundef nonnull @uprobe_exception_nb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end11, label %do.body4, !prof !133

do.body4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/events/uprobes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2359, 0\0A.popsection", ""() #12, !srcloc !174
  unreachable

do.end11:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__update_ref_ctr(ptr noundef %mm, i32 noundef %vaddr, i16 noundef signext %d) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %vma = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #12
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma) #12
  %1 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %vma, align 4, !annotation !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vaddr)
  %tobool.not = icmp eq i32 %vaddr, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %d)
  %tobool1.not = icmp eq i16 %d, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @get_user_pages_remote(ptr noundef %mm, i32 noundef %vaddr, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %page, ptr noundef nonnull %vma, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %if.then4, label %if.end6, !prof !134

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp5, i32 -16, i32 %call
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %4 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %4, 512
  %5 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %9 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %14, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %3, i32 noundef %or.i) #12
  %and = and i32 %vaddr, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr, align 2
  %conv = sext i16 %16 to i32
  %conv8 = sext i16 %d to i32
  %add = add nsw i32 %conv, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp9 = icmp slt i32 %add, 0
  br i1 %cmp9, label %do.end, label %if.end21, !prof !134

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %vaddr, i32 noundef %conv, i32 noundef %conv8) #15
  br label %do.end29

if.end21:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = trunc i32 %add to i16
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv25, ptr %add.ptr, align 2
  br label %do.end29

do.end29:                                         ; preds = %if.end21, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21 ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %18 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %23, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %24 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page, align 4
  %30 = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !133

if.then.i.i:                                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i48 = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %29 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i48, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %35 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %37 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__update_ref_ctr, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !143

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %34, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %34) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then4 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %ret.0, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_start(ptr noundef %range) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 454) #12
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here) to i32)) #12
  %mm = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  %notifier_subscriptions.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %notifier_subscriptions.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier_subscriptions.i, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %__here.__here4_crit_edge, label %if.then

__here.__here4_crit_edge:                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here4

if.then:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  %call3 = tail call i32 @__mmu_notifier_invalidate_range_start(ptr noundef %range) #12
  br label %__here4

__here4:                                          ; preds = %if.then, %__here.__here4_crit_edge
  tail call void @lock_release(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here4) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_new_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add_inactive_or_unevictable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_remove_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @munlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mem_cgroup_charge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_change_pte(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !163
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !164
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !134

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !165
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !176
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !177
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !178
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_analyze_insn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__copy_insn(ptr noundef %mapping, ptr noundef %filp, ptr nocapture noundef writeonly %insn, i32 noundef %nbytes, i64 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %a_ops = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %0 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_ops, align 4
  %readpage = getelementptr inbounds %struct.address_space_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %readpage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readpage, align 4
  %tobool.not = icmp eq ptr %3, null
  %4 = lshr i64 %offset, 12
  %conv2 = trunc i64 %4 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %conv2, ptr noundef null, ptr noundef %filp) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %5 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfp_mask.i.i, align 4
  %call1.i = tail call ptr @shmem_read_mapping_page_gfp(ptr noundef %mapping, i32 noundef %conv2, i32 noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %page.0 = phi ptr [ %call.i, %if.then ], [ %call1.i, %if.else ]
  %cmp.i = icmp ugt ptr %page.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %page.0 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conv8 = trunc i64 %offset to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %8, 512
  %9 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %13 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page.0, i32 noundef %or.i.i) #12
  %and.i = and i32 %conv8, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %19 = call ptr @memcpy(ptr %insn, ptr %add.ptr.i, i32 %nbytes)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %20 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %25, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %30 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !133

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %32, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %33, %if.end.i.i ]
  %34 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %35 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__copy_insn, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !143

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %34, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %34) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.then5
  %retval.0 = phi i32 [ %7, %if.then5 ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_read_mapping_page_gfp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__create_xol_area(i32 noundef %vaddr) unnamed_addr #0 align 64 {
entry:
  %insn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %insn) #12
  %6 = ptrtoint ptr %insn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -117313305, ptr %insn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 88) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !134

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #16
  %bitmap = getelementptr inbounds %struct.xol_area, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %bitmap, align 8
  %tobool8.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool8.not, label %if.end.free_area_crit_edge, label %if.end10

if.end.free_area_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_area

if.end10:                                         ; preds = %if.end
  %xol_mapping = getelementptr inbounds %struct.xol_area, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %xol_mapping to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.37, ptr %xol_mapping, align 4
  %fault = getelementptr inbounds %struct.xol_area, ptr %call7.i, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fault, align 4
  %pages = getelementptr inbounds %struct.xol_area, ptr %call7.i, i32 0, i32 4
  %pages13 = getelementptr inbounds %struct.xol_area, ptr %call7.i, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %pages13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pages, ptr %pages13, align 8
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 1051842, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %13 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38.i.i.i, ptr %pages, align 4
  %tobool18.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool18.not, label %if.end10.free_bitmap_crit_edge, label %if.end20

if.end10.free_bitmap_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_bitmap

if.end20:                                         ; preds = %if.end10
  %arrayidx22 = getelementptr %struct.xol_area, ptr %call7.i, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx22, align 8
  %vaddr23 = getelementptr inbounds %struct.xol_area, ptr %call7.i, i32 0, i32 5
  %15 = ptrtoint ptr %vaddr23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %vaddr, ptr %vaddr23, align 4
  tail call void @__init_waitqueue_head(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @__create_xol_area.__key) #12
  %16 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitmap, align 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %17) #12
  %slot_count = getelementptr inbounds %struct.xol_area, ptr %call7.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %slot_count, i32 noundef 4) #12
  %18 = ptrtoint ptr %slot_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %slot_count, align 4
  %19 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages, align 4
  call void @arch_uprobe_copy_ixol(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %insn, i32 noundef 4)
  %call27 = call fastcc i32 @xol_add_vma(ptr noundef %5, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end20.cleanup_crit_edge, label %if.end30

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pages, align 4
  call void @__free_pages(ptr noundef %22, i32 noundef 0) #12
  br label %free_bitmap

free_bitmap:                                      ; preds = %if.end30, %if.end10.free_bitmap_crit_edge
  %23 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bitmap, align 8
  call void @kfree(ptr noundef %24) #12
  br label %free_area

free_area:                                        ; preds = %free_bitmap, %if.end.free_area_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %free_area, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end20.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %free_area ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %insn) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xol_add_vma(ptr noundef %mm, ptr noundef %area) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@xol_add_vma, %if.then.i.i)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !143

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext true) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  %call.i = tail call i32 @down_write_killable(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@xol_add_vma, %if.then.i4.i)) #12
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !143

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #12
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mmap_write_lock_killable.exit.cleanup_crit_edge

mmap_write_lock_killable.exit.cleanup_crit_edge:  ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %mmap_write_lock_killable.exit
  %uprobes_state = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 51
  %0 = ptrtoint ptr %uprobes_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uprobes_state, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end3, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end3:                                          ; preds = %if.end
  %vaddr = getelementptr inbounds %struct.xol_area, ptr %area, i32 0, i32 5
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end3.if.end14_crit_edge

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then5:                                         ; preds = %if.end3
  %call6 = tail call i32 @get_unmapped_area(ptr noundef null, i32 noundef -1226838016, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #12
  %4 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call6, ptr %vaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %call6)
  %cmp = icmp ugt i32 %call6, -4096
  br i1 %cmp, label %if.then5.fail_crit_edge, label %if.then5.if.end14_crit_edge, !prof !134

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then5.fail_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end14:                                         ; preds = %if.then5.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %5 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vaddr, align 4
  %xol_mapping = getelementptr inbounds %struct.xol_area, ptr %area, i32 0, i32 3
  %call16 = tail call ptr @_install_special_mapping(ptr noundef %mm, i32 noundef %6, i32 noundef 4096, i32 noundef 147524, ptr noundef %xol_mapping) #12
  %cmp.i53 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call16 to i32
  br label %fail

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !179
  %8 = ptrtoint ptr %uprobes_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %area, ptr %uprobes_state, align 8
  br label %fail

fail:                                             ; preds = %if.end20, %if.then18, %if.then5.fail_crit_edge, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ %7, %if.then18 ], [ 0, %if.end20 ], [ -114, %if.end.fail_crit_edge ], [ %call6, %if.then5.fail_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@xol_add_vma, %if.then.i.i54)) #12
          to label %mmap_write_unlock.exit [label %if.then.i.i54], !srcloc !143

if.then.i.i54:                                    ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #12
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i54, %fail
  tail call void @up_write(ptr noundef %mmap_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %mmap_write_unlock.exit, %mmap_write_lock_killable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %mmap_write_unlock.exit ], [ -4, %mmap_write_lock_killable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_install_special_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_post_xol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_uprobe_abort_xol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @force_sig(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_active_uprobe(i32 noundef %bp_vaddr, ptr nocapture noundef writeonly %is_swbp) unnamed_addr #0 align 64 {
entry:
  %page.i = alloca ptr, align 4
  %opcode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@find_active_uprobe, %if.then.i.i)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !143

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@find_active_uprobe, %if.then.i3.i)) #12
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !143

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %call.i = tail call ptr @find_vma(ptr noundef %5, i32 noundef %bp_vaddr) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %mmap_read_lock.exit.land.lhs.true_crit_edge, label %land.lhs.true.i

mmap_read_lock.exit.land.lhs.true_crit_edge:      ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %mmap_read_lock.exit
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %bp_vaddr)
  %cmp.i = icmp ugt i32 %7, %bp_vaddr
  br i1 %cmp.i, label %land.lhs.true.i.land.lhs.true_crit_edge, label %if.then

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then:                                          ; preds = %land.lhs.true.i
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vm_file.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.then.if.then9_crit_edge, label %valid_vma.exit

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

valid_vma.exit:                                   ; preds = %if.then
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_flags.i, align 4
  %and.i31 = and i32 %11, 4194496
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i31)
  %cmp.i32 = icmp eq i32 %and.i31, 64
  br i1 %cmp.i32, label %if.end, label %valid_vma.exit.if.then9_crit_edge

valid_vma.exit.if.then9_crit_edge:                ; preds = %valid_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end:                                           ; preds = %valid_vma.exit
  %f_inode.i = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i, align 8
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vm_pgoff.i, align 4
  %conv.i = zext i32 %15 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i, align 4
  %sub.i = sub i32 %bp_vaddr, %17
  %conv1.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %shl.i, %conv1.i
  %call7 = tail call fastcc ptr @find_uprobe(ptr noundef %13, i64 noundef %add.i)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.if.then9_crit_edge, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %valid_vma.exit.if.then9_crit_edge, %if.then.if.then9_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #12
  %18 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %page.i, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opcode.i) #12
  %and.i33 = and i32 %bp_vaddr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %cmp.not.i = icmp eq i32 %and.i33, 0
  br i1 %cmp.not.i, label %if.end38.i, label %land.rhs.i34

land.rhs.i34:                                     ; preds = %if.then9
  %.b65.i = load i1, ptr @is_trap_at_addr.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i34.is_trap_at_addr.exit_crit_edge, label %if.then.i, !prof !133

land.rhs.i34.is_trap_at_addr.exit_crit_edge:      ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_trap_at_addr.exit

if.then.i:                                        ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @is_trap_at_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2016, i32 noundef 9, ptr noundef null) #12
  br label %is_trap_at_addr.exit

if.end38.i:                                       ; preds = %if.then9
  %19 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i67.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i67.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %24, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 2020) #12
  %25 = inttoptr i32 %bp_vaddr to ptr
  %26 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #10, !srcloc !180
  %and.i.i = and i32 %28, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #12, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  %29 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %25, i32 -1226833921) #12, !srcloc !183
  %asmresult.i = extractvalue { i32, i32 } %29, 0
  %asmresult40.i = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !182
  %30 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %asmresult40.i, ptr %opcode.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %31 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i68.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i68.i to ptr
  %task.i.i69.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i69.i, align 8
  %pagefault_disabled.i.i70.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 213
  %35 = ptrtoint ptr %pagefault_disabled.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pagefault_disabled.i.i70.i, align 8
  %dec.i.i.i = add i32 %36, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i70.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp42.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp42.i, label %if.end38.i.out.i_crit_edge, label %if.end50.i, !prof !133

if.end38.i.out.i_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end50.i:                                       ; preds = %if.end38.i
  %call51.i = call i32 @get_user_pages_remote(ptr noundef %5, i32 noundef %bp_vaddr, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %page.i, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end50.i.is_trap_at_addr.exit_crit_edge, label %if.end54.i

if.end50.i.is_trap_at_addr.exit_crit_edge:        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_trap_at_addr.exit

if.end54.i:                                       ; preds = %if.end50.i
  %37 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %page.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %39 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i44 = or i32 %39, 512
  %40 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !129
  %44 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 213
  %48 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !130
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %38, i32 noundef %or.i.i44) #12
  %and.i45 = and i32 %bp_vaddr, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i45
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %add.ptr.i, align 1
  %52 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %opcode.i, align 4
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !131
  %53 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 213
  %57 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %58, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !132
  %59 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %63 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %page.i, align 4
  %65 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %and.i.i41 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i = icmp eq i32 %and.i.i41, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i43, !prof !133

if.then.i.i43:                                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i42 = add i32 %67, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %64 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i43
  %retval.0.i.i = phi i32 [ %sub.i.i42, %if.then.i.i43 ], [ %68, %if.end.i.i ]
  %69 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %70 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !139
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !140
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !141
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %72, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@find_active_uprobe, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !143

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %69, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out.i_crit_edge

folio_put_testzero.exit.i.i.out.i_crit_edge:      ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %69) #12
  br label %out.i

out.i:                                            ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out.i_crit_edge, %if.end38.i.out.i_crit_edge
  %call55.i = call zeroext i1 @is_trap_insn(ptr noundef nonnull %opcode.i) #12
  %conv.i35 = zext i1 %call55.i to i32
  br label %is_trap_at_addr.exit

is_trap_at_addr.exit:                             ; preds = %out.i, %if.end50.i.is_trap_at_addr.exit_crit_edge, %if.then.i, %land.rhs.i34.is_trap_at_addr.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i35, %out.i ], [ -22, %if.then.i ], [ %call51.i, %if.end50.i.is_trap_at_addr.exit_crit_edge ], [ -22, %land.rhs.i34.is_trap_at_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opcode.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %is_trap_at_addr.exit, %land.lhs.true.i.land.lhs.true_crit_edge, %mmap_read_lock.exit.land.lhs.true_crit_edge
  %storemerge = phi i32 [ %retval.0.i, %is_trap_at_addr.exit ], [ -14, %land.lhs.true.i.land.lhs.true_crit_edge ], [ -14, %mmap_read_lock.exit.land.lhs.true_crit_edge ]
  %73 = ptrtoint ptr %is_swbp to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %storemerge, ptr %is_swbp, align 4
  %flags = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 43
  %call14 = call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end17_crit_edge, label %if.then16

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %vma.013.i = load ptr, ptr %5, align 4
  %tobool.not14.i = icmp eq ptr %vma.013.i, null
  br i1 %tobool.not14.i, label %if.then16.for.end.i_crit_edge, label %if.then16.for.body.i_crit_edge

if.then16.for.body.i_crit_edge:                   ; preds = %if.then16
  br label %for.body.i

if.then16.for.end.i_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then16.for.body.i_crit_edge
  %vma.015.i = phi ptr [ %vma.0.i37, %for.inc.i.for.body.i_crit_edge ], [ %vma.013.i, %if.then16.for.body.i_crit_edge ]
  %vm_file.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.015.i, i32 0, i32 14
  %75 = ptrtoint ptr %vm_file.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vm_file.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %76, null
  br i1 %tobool1.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %valid_vma.exit.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

valid_vma.exit.i:                                 ; preds = %for.body.i
  %vm_flags.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.015.i, i32 0, i32 8
  %77 = ptrtoint ptr %vm_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vm_flags.i.i, align 4
  %and.i.i36 = and i32 %78, 4194496
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i.i36)
  %cmp.i.i = icmp eq i32 %and.i.i36, 64
  br i1 %cmp.i.i, label %if.end.i, label %valid_vma.exit.i.for.inc.i_crit_edge

valid_vma.exit.i.for.inc.i_crit_edge:             ; preds = %valid_vma.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %valid_vma.exit.i
  %79 = ptrtoint ptr %vma.015.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %vma.015.i, align 4
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.015.i, i32 0, i32 1
  %81 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %vm_end.i, align 4
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %76, i32 0, i32 2
  %83 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %f_inode.i.i.i, align 8
  %vm_pgoff.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.015.i, i32 0, i32 13
  %85 = ptrtoint ptr %vm_pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vm_pgoff.i.i.i, align 4
  %conv.i.i.i = zext i32 %86 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  %sub.i.i = sub i32 %82, %80
  %conv.i.i = zext i32 %sub.i.i to i64
  %add.i.i = add nuw nsw i64 %shl.i.i.i, %conv.i.i
  call void @_raw_spin_lock(ptr noundef nonnull @uprobes_treelock) #12
  %n.033.i.i.i = load ptr, ptr @uprobes_tree, align 4
  %tobool.not34.i.i.i = icmp eq ptr %n.033.i.i.i, null
  br i1 %tobool.not34.i.i.i, label %if.end.i.vma_has_uprobes.exit.thread.i_crit_edge, label %if.end.i.while.body.i.i.i_crit_edge

if.end.i.while.body.i.i.i_crit_edge:              ; preds = %if.end.i
  br label %while.body.i.i.i

if.end.i.vma_has_uprobes.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vma_has_uprobes.exit.thread.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end.i.while.body.i.i.i_crit_edge
  %n.035.i.i.i = phi ptr [ %n.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %n.033.i.i.i, %if.end.i.while.body.i.i.i_crit_edge ]
  %inode1.i.i.i = getelementptr inbounds %struct.uprobe, ptr %n.035.i.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %inode1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %inode1.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %88, %84
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  %cmp3.i.i.i = icmp ult ptr %88, %84
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %if.else5.i.i.i

if.then4.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

if.else5.i.i.i:                                   ; preds = %if.else.i.i.i
  %offset.i.i.i = getelementptr inbounds %struct.uprobe, ptr %n.035.i.i.i, i32 0, i32 7
  %89 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %offset.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %add.i.i)
  %cmp6.i.not.i.i = icmp slt i64 %90, %add.i.i
  br i1 %cmp6.i.not.i.i, label %if.else9.i.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.else5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left8.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else9.i.i.i:                                   ; preds = %if.else5.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %shl.i.i.i)
  %cmp11.i.i.i = icmp slt i64 %90, %shl.i.i.i
  br i1 %cmp11.i.i.i, label %if.then12.i.i.i, label %vma_has_uprobes.exit.i

if.then12.i.i.i:                                  ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right13.i.i.i = getelementptr inbounds %struct.rb_node, ptr %n.035.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then12.i.i.i, %if.then7.i.i.i, %if.then4.i.i.i, %if.then.i.i.i
  %n.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then4.i.i.i ], [ %rb_left8.i.i.i, %if.then7.i.i.i ], [ %rb_right13.i.i.i, %if.then12.i.i.i ]
  %91 = ptrtoint ptr %n.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %n.0.i.i.i = load ptr, ptr %n.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %n.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.vma_has_uprobes.exit.thread.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

cleanup.i.i.i.vma_has_uprobes.exit.thread.i_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vma_has_uprobes.exit.thread.i

vma_has_uprobes.exit.thread.i:                    ; preds = %cleanup.i.i.i.vma_has_uprobes.exit.thread.i_crit_edge, %if.end.i.vma_has_uprobes.exit.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  br label %for.inc.i

vma_has_uprobes.exit.i:                           ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef nonnull @uprobes_treelock) #12
  br label %if.end17

for.inc.i:                                        ; preds = %vma_has_uprobes.exit.thread.i, %valid_vma.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.015.i, i32 0, i32 2
  %92 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %vma.0.i37 = load ptr, ptr %vm_next.i, align 4
  %tobool.not.i38 = icmp eq ptr %vma.0.i37, null
  br i1 %tobool.not.i38, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then16.for.end.i_crit_edge
  call void @_clear_bit(i32 noundef 19, ptr noundef %flags) #12
  br label %if.end17

if.end17:                                         ; preds = %for.end.i, %vma_has_uprobes.exit.i, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %uprobe.154 = phi ptr [ null, %land.lhs.true.if.end17_crit_edge ], [ %call7, %if.end.if.end17_crit_edge ], [ null, %vma_has_uprobes.exit.i ], [ null, %for.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@find_active_uprobe, %if.then.i.i39)) #12
          to label %mmap_read_unlock.exit [label %if.then.i.i39], !srcloc !143

if.then.i.i39:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #12
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i39, %if.end17
  call void @up_read(ptr noundef %mmap_lock.i) #12
  ret ptr %uprobe.154
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @arch_uprobe_skip_sstep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unapply_uprobe(ptr noundef %uprobe, ptr noundef %mm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@unapply_uprobe, %if.then.i.i)) #12
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !143

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@unapply_uprobe, %if.then.i3.i)) #12
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !143

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %vma.03 = load ptr, ptr %mm, align 4
  %tobool.not4 = icmp eq ptr %vma.03, null
  br i1 %tobool.not4, label %mmap_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

mmap_read_lock.exit.for.end_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %mmap_read_lock.exit
  %inode = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 6
  %offset2 = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 7
  %flags.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 43
  %arch.i = getelementptr inbounds %struct.uprobe, ptr %uprobe, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %vma.06 = phi ptr [ %vma.03, %for.body.lr.ph ], [ %vma.0, %cleanup.for.body_crit_edge ]
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.06, i32 0, i32 14
  %1 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm_file.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %for.body.cleanup_crit_edge, label %valid_vma.exit

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

valid_vma.exit:                                   ; preds = %for.body
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.06, i32 0, i32 8
  %3 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags.i, align 4
  %and.i = and i32 %4, 4194496
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 64
  br i1 %cmp.i, label %lor.lhs.false, label %valid_vma.exit.cleanup_crit_edge

valid_vma.exit.cleanup_crit_edge:                 ; preds = %valid_vma.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %valid_vma.exit
  %f_inode.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_inode.i, align 8
  %7 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inode, align 4
  %cmp.not = icmp eq ptr %6, %8
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma.06, i32 0, i32 13
  %9 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_pgoff, align 4
  %conv = zext i32 %10 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %11 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %offset2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %shl)
  %cmp3 = icmp slt i64 %12, %shl
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.06, i32 0, i32 1
  %13 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_end, align 4
  %conv7 = zext i32 %14 to i64
  %add = add nuw nsw i64 %shl, %conv7
  %15 = ptrtoint ptr %vma.06 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma.06, align 4
  %conv8 = zext i32 %16 to i64
  %sub = sub nsw i64 %add, %conv8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %sub)
  %cmp9.not = icmp slt i64 %12, %sub
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  %shl.neg.i = mul nuw i64 %conv, 4294963200
  %add.i = add i64 %shl.neg.i, %12
  %17 = trunc i64 %add.i to i32
  %conv2.i = add i32 %16, %17
  tail call void @_set_bit(i32 noundef 20, ptr noundef %flags.i) #12
  %call.i = tail call i32 @set_orig_insn(ptr noundef %arch.i, ptr noundef %mm, i32 noundef %conv2.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %valid_vma.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.06, i32 0, i32 2
  %18 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %18)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %vma.0, null
  br i1 %tobool.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %mmap_read_lock.exit.for.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@unapply_uprobe, %if.then.i.i1)) #12
          to label %mmap_read_unlock.exit [label %if.then.i.i1], !srcloc !143

if.then.i.i1:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #12
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i1, %for.end
  tail call void @up_read(ptr noundef %mmap_lock.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uretprobe_hijack_return_addr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_pre_xol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_uprobe_exception_notify(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !75, !76, !77, !79, !81, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !113, !114, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/events/uprobes.c", i32 491, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../kernel/events/uprobes.c", i32 527, i32 3}
!5 = !{ptr @__ksymtab_uprobe_unregister, !6, !"__ksymtab_uprobe_unregister", i1 false, i1 false}
!6 = !{!"../kernel/events/uprobes.c", i32 1122, i32 1}
!7 = !{ptr @__ksymtab_uprobe_register, !8, !"__ksymtab_uprobe_register", i1 false, i1 false}
!8 = !{!"../kernel/events/uprobes.c", i32 1200, i32 1}
!9 = !{ptr @__ksymtab_uprobe_register_refctr, !10, !"__ksymtab_uprobe_register_refctr", i1 false, i1 false}
!10 = !{!"../kernel/events/uprobes.c", i32 1207, i32 1}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/events/uprobes.c", i32 1814, i32 25}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/events/uprobes.c", i32 1819, i32 25}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../kernel/events/uprobes.c", i32 1974, i32 2}
!17 = !{ptr @uprobes_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../kernel/events/uprobes.c", i32 2357, i32 3}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @uprobes_mmap_mutex, !21, !"uprobes_mmap_mutex", i1 false, i1 false}
!21 = !{!"../kernel/events/uprobes.c", i32 47, i32 21}
!22 = !{ptr @__pcpu_unique___percpu_rwsem_rc_dup_mmap_sem, !23, !"__pcpu_unique___percpu_rwsem_rc_dup_mmap_sem", i1 false, i1 false}
!23 = !{!"../kernel/events/uprobes.c", i32 50, i32 1}
!24 = !{ptr @__percpu_rwsem_rc_dup_mmap_sem, !23, !"__percpu_rwsem_rc_dup_mmap_sem", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/events/uprobes.c", i32 394, i32 3}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__update_ref_ctr._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @__update_ref_ctr._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/events/uprobes.c", i32 411, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @update_ref_ctr_warn._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @update_ref_ctr_warn._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @delayed_uprobe_list, !38, !"delayed_uprobe_list", i1 false, i1 false}
!38 = !{!"../kernel/events/uprobes.c", i32 87, i32 8}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/mm.h", i32 717, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/events/uprobes.c", i32 183, i32 2}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/mmu_notifier.h", i32 454, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/page-flags.h", i32 443, i32 1}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../kernel/events/uprobes.c", i32 43, i32 8}
!59 = !{ptr @uprobes_treelock, !58, !"uprobes_treelock", i1 false, i1 false}
!60 = !{ptr @alloc_uprobe.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../kernel/events/uprobes.c", i32 740, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @alloc_uprobe.__key.23, !64, !"__key", i1 false, i1 false}
!64 = !{!"../kernel/events/uprobes.c", i32 741, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/events/uprobes.c", i32 721, i32 2}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ref_ctr_mismatch_warn._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ref_ctr_mismatch_warn._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @uprobes_tree, !72, !"uprobes_tree", i1 false, i1 false}
!72 = !{!"../kernel/events/uprobes.c", i32 36, i32 23}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../kernel/events/uprobes.c", i32 86, i32 8}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @delayed_uprobe_lock, !74, !"delayed_uprobe_lock", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !23, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.33, !23, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.34, !23, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @dup_mmap_sem, !23, !"dup_mmap_sem", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/events/uprobes.c", i32 1782, i32 2}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @uprobe_warn._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @uprobe_warn._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/events/uprobes.c", i32 1497, i32 27}
!94 = !{ptr @__create_xol_area.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../kernel/events/uprobes.c", i32 1506, i32 2}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../kernel/events/uprobes.c", i32 2272, i32 3}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/events/uprobes.c", i32 2284, i32 24}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../kernel/events/uprobes.c", i32 2168, i32 23}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../kernel/events/uprobes.c", i32 2016, i32 6}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/events/uprobes.c", i32 2085, i32 4}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/events/uprobes.c", i32 1876, i32 3}
!109 = !{ptr @prepare_uretprobe._rs, !108, !"_rs", i1 false, i1 false}
!110 = !{ptr @__func__.prepare_uretprobe, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @prepare_uretprobe._entry, !108, !"_entry", i1 false, i1 false}
!113 = !{ptr @prepare_uretprobe._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/events/uprobes.c", i32 1906, i32 25}
!116 = !{ptr @uprobe_exception_nb, !117, !"uprobe_exception_nb", i1 false, i1 false}
!117 = !{!"../kernel/events/uprobes.c", i32 2347, i32 30}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{i64 2153691790}
!130 = !{i64 2152235790}
!131 = !{i64 2152235997}
!132 = !{i64 2153694561}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2151379820}
!136 = !{i64 2150629239, i64 2150629730, i64 2150629276, i64 2150629332, i64 2150629366, i64 2150629390, i64 2150629431, i64 2150629452, i64 2150629480, i64 2150629514}
!137 = !{i64 2155251184, i64 2155251672, i64 2155251221, i64 2155251277, i64 2155251311, i64 2155251335, i64 2155251376, i64 2155251397, i64 2155251425, i64 2155251459}
!138 = !{i64 2151379131}
!139 = !{i64 2153195780, i64 2153196263, i64 2153195817, i64 2153195873, i64 2153195907, i64 2153195931, i64 2153195972, i64 2153195993, i64 2153196021, i64 2153196055}
!140 = !{i64 2148354735}
!141 = !{i64 2148269468, i64 2148269500, i64 2148269529, i64 2148269563, i64 2148269594, i64 2148269617}
!142 = !{i64 2148354964}
!143 = !{i64 2148748098, i64 2148748103, i64 2148748116, i64 2148748160, i64 2148748194, i64 2148748215}
!144 = !{i64 2148275141, i64 2148275173, i64 2148275202, i64 2148275236, i64 2148275267, i64 2148275290}
!145 = !{i64 2148364222}
!146 = !{i64 2155229599, i64 2155230087, i64 2155229636, i64 2155229692, i64 2155229726, i64 2155229750, i64 2155229791, i64 2155229812, i64 2155229840, i64 2155229874}
!147 = !{i64 2153219753, i64 2153220237, i64 2153219790, i64 2153219846, i64 2153219880, i64 2153219904, i64 2153219945, i64 2153219966, i64 2153219994, i64 2153220028}
!148 = !{i64 2148266283, i64 2148266309, i64 2148266338, i64 2148266372, i64 2148266403, i64 2148266426}
!149 = !{i64 2151052692, i64 2151053183, i64 2151052729, i64 2151052785, i64 2151052819, i64 2151052843, i64 2151052884, i64 2151052905, i64 2151052933, i64 2151052967}
!150 = !{i64 2148351694}
!151 = !{i64 2148267003, i64 2148267035, i64 2148267064, i64 2148267098, i64 2148267129, i64 2148267152}
!152 = !{i64 2148351923}
!153 = !{i64 2148267813, i64 2148267845, i64 2148267874, i64 2148267908, i64 2148267939, i64 2148267962}
!154 = !{!"branch_weights", i32 1073205, i32 2146410443}
!155 = !{i64 2148355814}
!156 = !{i64 2148270278, i64 2148270310, i64 2148270339, i64 2148270373, i64 2148270404, i64 2148270427}
!157 = !{i64 2150431138}
!158 = !{i64 2148265702}
!159 = !{i64 750525, i64 750550, i64 750572, i64 750588, i64 750600, i64 750620, i64 750644, i64 750660, i64 750672}
!160 = !{i64 2148265890}
!161 = !{i64 2155265416}
!162 = !{i64 2152403636}
!163 = !{i64 658764, i64 658825}
!164 = !{i64 661496}
!165 = !{i64 661781}
!166 = !{i64 2152412486}
!167 = !{i64 2152422440}
!168 = !{i64 2152431935}
!169 = !{i64 2152441412}
!170 = !{i64 2148268748, i64 2148268774, i64 2148268803, i64 2148268837, i64 2148268868, i64 2148268891}
!171 = !{i64 2155308888}
!172 = !{i8 0, i8 2}
!173 = !{i64 2155335742}
!174 = !{i64 2155338217, i64 2155338706, i64 2155338254, i64 2155338310, i64 2155338344, i64 2155338368, i64 2155338409, i64 2155338430, i64 2155338458, i64 2155338492}
!175 = !{i64 2152563325}
!176 = !{i64 2152563167}
!177 = !{i64 2152563495}
!178 = !{i64 2150149309}
!179 = !{i64 2155298490}
!180 = !{i64 4728528}
!181 = !{i64 4728725}
!182 = !{i64 2152213958}
!183 = !{i64 2155330407, i64 2155330687, i64 2155331021, i64 2155331355}
