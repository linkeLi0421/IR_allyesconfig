; ModuleID = '/llk/IR_all_yes/mm/ksm.c_pt.bc'
source_filename = "../mm/ksm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ksm_madvise\22, \22a\22\09"
module asm "\09.weak\09__crc_ksm_madvise\09\09\09\09"
module asm "\09.long\09__crc_ksm_madvise\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ksm_madvise:\09\09\09\09\09"
module asm "\09.asciz \09\22ksm_madvise\22\09\09\09\09\09"
module asm "__kstrtabns_ksm_madvise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mm_slot = type { %struct.hlist_node, %struct.list_head, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_user_fns = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.82, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.18, %union.anon.30, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.anon.63 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.stable_node = type { %union.anon.87, %struct.hlist_head, %union.anon.90, i32 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { ptr, %struct.anon.89 }
%struct.anon.89 = type { %struct.hlist_node, %struct.list_head }
%union.anon.90 = type { i32 }
%struct.rmap_walk_control = type { ptr, ptr, ptr, ptr, ptr }
%struct.rmap_item = type { ptr, %union.anon.84, ptr, i32, i32, %union.anon.85 }
%union.anon.84 = type { ptr }
%union.anon.85 = type { %struct.rb_node }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }

@__kstrtab_ksm_madvise = external dso_local constant [0 x i8], align 1
@__kstrtabns_ksm_madvise = external dso_local constant [0 x i8], align 1
@__ksymtab_ksm_madvise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ksm_madvise to i32), ptr @__kstrtab_ksm_madvise, ptr @__kstrtabns_ksm_madvise }, section "___ksymtab_gpl+ksm_madvise", align 4
@ksm_mm_head = internal global { %struct.mm_slot, [40 x i8] } { %struct.mm_slot { %struct.hlist_node zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ksm_mm_head, i64 8), ptr getelementptr (i8, ptr @ksm_mm_head, i64 8) }, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ksm_mmlist_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ksm_run = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksm_scan.0 = internal global { ptr, [28 x i8] } { ptr @ksm_mm_head, [28 x i8] zeroinitializer }, align 32
@ksm_scan.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksm_scan.2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ksm_scan.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksm_thread_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @ksm_thread_wait, i64 44), ptr getelementptr (i8, ptr @ksm_thread_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@cpu_user = external dso_local local_unnamed_addr global %struct.cpu_user_fns, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(!PageKsm(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mm/ksm.c\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(newfolio))\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"VM_BUG_ON_FOLIO(newfolio->mapping != folio->mapping)\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(stable_node->kpfn != folio_pfn(folio))\00", [41 x i8] zeroinitializer }, align 32
@__initcall__kmod_ksm__313_3203_ksm_init4 = internal global ptr @ksm_init, section ".initcall4.init", align 4
@mm_slot_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ksm_mmlist_lock\00", [16 x i8] zeroinitializer }, align 32
@mm_slots_hash = internal global { [1024 x %struct.hlist_head], [1024 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ksm_thread_wait.lock\00", [43 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@zero_checksum = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@ksm_use_zero_pages = internal unnamed_addr global i8 0, section ".data..read_mostly", align 1
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ksmd\00", [27 x i8] zeroinitializer }, align 32
@ksm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 3175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013ksm: creating kthread failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ksm_init\00", [23 x i8] zeroinitializer }, align 32
@ksm_init._entry_ptr = internal global ptr @ksm_init._entry, section ".printk_index", align 4
@mm_kobj = external dso_local local_unnamed_addr global ptr, align 4
@ksm_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.32, ptr null, ptr null, ptr @ksm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ksm_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 3183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ksm: register sysfs failed\0A\00", [34 x i8] zeroinitializer }, align 32
@ksm_init._entry_ptr.20 = internal global ptr @ksm_init._entry.18, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ksm_rmap_item\00", [18 x i8] zeroinitializer }, align 32
@rmap_item_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ksm_stable_node\00", [16 x i8] zeroinitializer }, align 32
@stable_node_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ksm_mm_slot\00", [20 x i8] zeroinitializer }, align 32
@ksm_thread_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ksm_thread_mutex, i64 52), ptr getelementptr (i8, ptr @ksm_thread_mutex, i64 52) }, ptr @ksm_thread_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ksm_thread_pages_to_scan = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@ksm_thread_sleep_millisecs = internal global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@ksm_iter_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @ksm_iter_wait, i64 44), ptr getelementptr (i8, ptr @ksm_iter_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksm_thread_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksm_thread_mutex\00", [47 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@one_unstable_tree = internal global { [1 x %struct.rb_root], [28 x i8] } zeroinitializer, align 32
@ksm_pages_sharing = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksm_pages_shared = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksm_pages_unshared = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__tracepoint_page_ref_mod_unless = external dso_local global %struct.tracepoint, align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@migrate_nodes = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @migrate_nodes, ptr @migrate_nodes }, [24 x i8] zeroinitializer }, align 32
@ksm_stable_node_dups = internal global { i32, [28 x i8] } zeroinitializer, align 32
@one_stable_tree = internal global { [1 x %struct.rb_root], [28 x i8] } zeroinitializer, align 32
@ksm_rmap_items = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ksm_max_page_sharing = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ksm_stable_node_chains_prune_millisecs = internal global { i32, [28 x i8] } { i32 2000, [28 x i8] zeroinitializer }, align 32
@ksm_stable_node_chains = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stable_tree_append.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@write_protect_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unexpected PMD mapping?\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@zero_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ksm_iter_wait.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ksm\00", [28 x i8] zeroinitializer }, align 32
@ksm_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @sleep_millisecs_attr, ptr @pages_to_scan_attr, ptr @run_attr, ptr @pages_shared_attr, ptr @pages_sharing_attr, ptr @pages_unshared_attr, ptr @pages_volatile_attr, ptr @full_scans_attr, ptr @max_page_sharing_attr, ptr @stable_node_chains_attr, ptr @stable_node_dups_attr, ptr @stable_node_chains_prune_millisecs_attr, ptr @use_zero_pages_attr, ptr null], [40 x i8] zeroinitializer }, align 32
@sleep_millisecs_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sleep_millisecs_show, ptr @sleep_millisecs_store }, [36 x i8] zeroinitializer }, align 32
@pages_to_scan_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pages_to_scan_show, ptr @pages_to_scan_store }, [36 x i8] zeroinitializer }, align 32
@run_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @run_show, ptr @run_store }, [36 x i8] zeroinitializer }, align 32
@pages_shared_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pages_shared_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pages_sharing_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pages_sharing_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pages_unshared_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pages_unshared_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@pages_volatile_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pages_volatile_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@full_scans_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @full_scans_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@max_page_sharing_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_page_sharing_show, ptr @max_page_sharing_store }, [36 x i8] zeroinitializer }, align 32
@stable_node_chains_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stable_node_chains_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@stable_node_dups_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stable_node_dups_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@stable_node_chains_prune_millisecs_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stable_node_chains_prune_millisecs_show, ptr @stable_node_chains_prune_millisecs_store }, [36 x i8] zeroinitializer }, align 32
@use_zero_pages_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @use_zero_pages_show, ptr @use_zero_pages_store }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sleep_millisecs\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pages_to_scan\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"run\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pages_shared\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pages_sharing\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pages_unshared\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pages_volatile\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full_scans\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_page_sharing\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stable_node_chains\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stable_node_dups\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stable_node_chains_prune_millisecs\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"use_zero_pages\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 13]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966272]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966272]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966272]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966272]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966272]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966272]
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"ksm_mm_head\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 233, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"ksm_mmlist_lock\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"ksm_run\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 293, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"ksm_scan.0\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"ksm_scan.1\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"ksm_scan.2\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"ksm_scan.3\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"ksm_thread_wait\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2609, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2615, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2626, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2672, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2673, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2674, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2678, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"mm_slot_cache\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 242, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 299, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"mm_slots_hash\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 231, i32 8 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 296, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 260, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 717, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 420, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 414, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3173, i32 15 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3175, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"ksm_attr_group\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3153, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3183, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 307, i32 20 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"rmap_item_cache\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 240, i32 27 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 311, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"stable_node_cache\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 241, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 315, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"ksm_thread_mutex\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [25 x i8] c"ksm_thread_pages_to_scan\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 269, i32 21 }
@___asan_gen_.160 = private unnamed_addr constant [27 x i8] c"ksm_thread_sleep_millisecs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 272, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant [14 x i8] c"ksm_iter_wait\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 298, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"one_unstable_tree\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 222, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"ksm_pages_sharing\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 248, i32 22 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"ksm_pages_shared\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 245, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"ksm_pages_unshared\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 251, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 788, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"migrate_nodes\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 227, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant [21 x i8] c"ksm_stable_node_dups\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 260, i32 22 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"one_stable_tree\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 221, i32 23 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"ksm_rmap_items\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 254, i32 22 }
@___asan_gen_.199 = private unnamed_addr constant [21 x i8] c"ksm_max_page_sharing\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 266, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1160, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [39 x i8] c"ksm_stable_node_chains_prune_millisecs\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 263, i32 21 }
@___asan_gen_.208 = private unnamed_addr constant [23 x i8] c"ksm_stable_node_chains\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 257, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1058, i32 6 }
@___asan_gen_.215 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 454, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 57, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 297, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3155, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant [10 x i8] c"ksm_attrs\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3133, i32 26 }
@___asan_gen_.229 = private unnamed_addr constant [21 x i8] c"sleep_millisecs_attr\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"pages_to_scan_attr\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [9 x i8] c"run_attr\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"pages_shared_attr\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [19 x i8] c"pages_sharing_attr\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c"pages_unshared_attr\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c"pages_volatile_attr\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"full_scans_attr\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [22 x i8] c"max_page_sharing_attr\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [24 x i8] c"stable_node_chains_attr\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [22 x i8] c"stable_node_dups_attr\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [40 x i8] c"stable_node_chains_prune_millisecs_attr\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c"use_zero_pages_attr\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2854, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2835, i32 25 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2877, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2925, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2882, i32 25 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3053, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3060, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3067, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3084, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3082, i32 25 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3131, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3046, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3098, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3091, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3124, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [12 x i8] c"../mm/ksm.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 3005, i32 1 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__initcall__kmod_ksm__313_3203_ksm_init4, ptr @__ksymtab_ksm_madvise, ptr @ksm_init._entry, ptr @ksm_init._entry.18, ptr @ksm_init._entry_ptr, ptr @ksm_init._entry_ptr.20, ptr @ksm_mm_head, ptr @ksm_mmlist_lock, ptr @ksm_run, ptr @ksm_scan.0, ptr @ksm_scan.1, ptr @ksm_scan.2, ptr @ksm_scan.3, ptr @ksm_thread_wait, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mm_slot_cache, ptr @.str.7, ptr @mm_slots_hash, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ksm_attr_group, ptr @.str.19, ptr @.str.21, ptr @rmap_item_cache, ptr @.str.22, ptr @stable_node_cache, ptr @.str.23, ptr @ksm_thread_mutex, ptr @ksm_thread_pages_to_scan, ptr @ksm_thread_sleep_millisecs, ptr @ksm_iter_wait, ptr @.str.24, ptr @.str.25, ptr @one_unstable_tree, ptr @ksm_pages_sharing, ptr @ksm_pages_shared, ptr @ksm_pages_unshared, ptr @.str.26, ptr @migrate_nodes, ptr @ksm_stable_node_dups, ptr @one_stable_tree, ptr @ksm_rmap_items, ptr @ksm_max_page_sharing, ptr @.str.27, ptr @ksm_stable_node_chains_prune_millisecs, ptr @ksm_stable_node_chains, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ksm_attrs, ptr @sleep_millisecs_attr, ptr @pages_to_scan_attr, ptr @run_attr, ptr @pages_shared_attr, ptr @pages_sharing_attr, ptr @pages_unshared_attr, ptr @pages_volatile_attr, ptr @full_scans_attr, ptr @max_page_sharing_attr, ptr @stable_node_chains_attr, ptr @stable_node_dups_attr, ptr @stable_node_chains_prune_millisecs_attr, ptr @use_zero_pages_attr, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_mm_head to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_mmlist_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_run to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_scan.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_scan.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_scan.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_scan.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_thread_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_slot_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_slots_hash to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmap_item_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stable_node_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_thread_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_thread_pages_to_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_thread_sleep_millisecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_iter_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_unstable_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_pages_sharing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_pages_shared to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_pages_unshared to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @migrate_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_stable_node_dups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_stable_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_rmap_items to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_max_page_sharing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_stable_node_chains_prune_millisecs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_stable_node_chains to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksm_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sleep_millisecs_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pages_to_scan_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pages_shared_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pages_sharing_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pages_unshared_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pages_volatile_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_scans_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_page_sharing_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stable_node_chains_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stable_node_dups_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stable_node_chains_prune_millisecs_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_zero_pages_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksm_madvise(ptr noundef %vma, i32 noundef %start, i32 noundef %end, i32 noundef %advice, ptr nocapture noundef %vm_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  %2 = zext i32 %advice to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %advice, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 13, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vm_flags, align 4
  %and = and i32 %4, -1874574200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %flags = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 43
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @__ksm_enter(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %or = or i32 %9, -2147483648
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry
  %10 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool13.not = icmp sgt i32 %11, -1
  br i1 %tobool13.not, label %sw.bb11.cleanup_crit_edge, label %if.end15

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %sw.bb11
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %12 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %anon_vma, align 4
  %tobool16.not = icmp ne ptr %13, null
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp13.i = icmp ult i32 %start, %end
  %or.cond = and i1 %cmp13.i, %tobool16.not
  br i1 %or.cond, label %if.end15.for.body.i_crit_edge, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %addr.014.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ %start, %if.end15.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_mm, align 4
  %mm_users.i.i = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %mm_users.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %mm_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %for.body.i.if.end22_crit_edge, label %if.end.i

for.body.i.if.end22_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i:                                         ; preds = %for.body.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end.i.cleanup_crit_edge, !prof !182

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

signal_pending.exit.i:                            ; preds = %if.end.i
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %signal_pending.exit.i.cleanup_crit_edge

signal_pending.exit.i.cleanup_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %signal_pending.exit.i
  %call5.i = tail call fastcc i32 @break_ksm(ptr noundef %vma, i32 noundef %addr.014.i) #9
  %add.i = add i32 %addr.014.i, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %end)
  %cmp.i = icmp ult i32 %add.i, %end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %unmerge_ksm_pages.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

unmerge_ksm_pages.exit:                           ; preds = %for.inc.i
  br i1 %tobool.not.i, label %unmerge_ksm_pages.exit.if.end22_crit_edge, label %unmerge_ksm_pages.exit.cleanup_crit_edge

unmerge_ksm_pages.exit.cleanup_crit_edge:         ; preds = %unmerge_ksm_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

unmerge_ksm_pages.exit.if.end22_crit_edge:        ; preds = %unmerge_ksm_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %unmerge_ksm_pages.exit.if.end22_crit_edge, %for.body.i.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %29 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vm_flags, align 4
  %and23 = and i32 %30, 2147483647
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end22, %if.end10
  %or.sink = phi i32 [ %or, %if.end10 ], [ %and23, %if.end22 ]
  %31 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.sink, ptr %vm_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %unmerge_ksm_pages.exit.cleanup_crit_edge, %signal_pending.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ 0, %sw.bb11.cleanup_crit_edge ], [ %call5.i, %unmerge_ksm_pages.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -512, %if.end.i.cleanup_crit_edge ], [ -512, %signal_pending.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ksm_enter(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mm_slot_cache, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %alloc_mm_slot.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

alloc_mm_slot.exit:                               ; preds = %entry
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef nonnull %0, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %alloc_mm_slot.exit.cleanup_crit_edge, label %if.end

alloc_mm_slot.exit.cleanup_crit_edge:             ; preds = %alloc_mm_slot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %alloc_mm_slot.exit
  %1 = load volatile ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %1, getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1)
  tail call void @_raw_spin_lock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %mm1.i = getelementptr inbounds %struct.mm_slot, ptr %call.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mm, ptr %mm1.i, align 4
  %3 = ptrtoint ptr %mm to i32
  %mul.i.i.i = mul i32 %3, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr [1024 x %struct.hlist_head], ptr @mm_slots_hash, i32 0, i32 %shr.i.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %call.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.insert_to_mm_slots_hash.exit_crit_edge, label %do.body12.i.i

if.end.insert_to_mm_slots_hash.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %insert_to_mm_slots_hash.exit

do.body12.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call.i.i, ptr %pprev.i.i, align 4
  br label %insert_to_mm_slots_hash.exit

insert_to_mm_slots_hash.exit:                     ; preds = %do.body12.i.i, %if.end.insert_to_mm_slots_hash.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call.i.i, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  %10 = load i32, ptr @ksm_run, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %mm_list4 = getelementptr inbounds %struct.mm_slot, ptr %call.i.i, i32 0, i32 1
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %insert_to_mm_slots_hash.exit
  %11 = load ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1, i32 1), align 4
  %call.i.i16 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list4, ptr noundef %11, ptr noundef getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1)) #9
  br i1 %call.i.i16, label %if.then3.if.end6.sink.split_crit_edge, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.else:                                          ; preds = %insert_to_mm_slots_hash.exit
  %12 = load ptr, ptr @ksm_scan.0, align 4
  %mm_list5 = getelementptr inbounds %struct.mm_slot, ptr %12, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.mm_slot, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list4, ptr noundef %14, ptr noundef %mm_list5) #9
  br i1 %call.i.i17, label %if.else.if.end6.sink.split_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.else.if.end6.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.else.if.end6.sink.split_crit_edge, %if.then3.if.end6.sink.split_crit_edge
  %prev.i.sink = phi ptr [ getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1, i32 1), %if.then3.if.end6.sink.split_crit_edge ], [ %prev.i, %if.else.if.end6.sink.split_crit_edge ]
  %mm_list5.sink = phi ptr [ getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), %if.then3.if.end6.sink.split_crit_edge ], [ %mm_list5, %if.else.if.end6.sink.split_crit_edge ]
  %.sink23 = phi ptr [ %11, %if.then3.if.end6.sink.split_crit_edge ], [ %14, %if.else.if.end6.sink.split_crit_edge ]
  %15 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mm_list4, ptr %prev.i.sink, align 4
  %16 = ptrtoint ptr %mm_list4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mm_list5.sink, ptr %mm_list4, align 8
  %prev3.i.i18 = getelementptr inbounds %struct.mm_slot, ptr %call.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.sink23, ptr %prev3.i.i18, align 4
  %18 = ptrtoint ptr %.sink23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %mm_list4, ptr %.sink23, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %flags = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags) #9
  %mm_count.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #9, !srcloc !183
  br i1 %cmp.i.not, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull @ksm_thread_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %alloc_mm_slot.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %alloc_mm_slot.exit.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end6.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ksm_exit(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %0 = ptrtoint ptr %mm to i32
  %mul.i.i.i = mul i32 %0, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 22
  %arrayidx.i = getelementptr [1024 x %struct.hlist_head], ptr @mm_slots_hash, i32 0, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %slot.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %slot.0.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %slot.0.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %slot.0.i = load ptr, ptr %slot.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %slot.0.i, null
  br i1 %tobool2.not.i, label %if.end12.critedge, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %mm3.i = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 3
  %2 = ptrtoint ptr %mm3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm3.i, align 4
  %cmp.i = icmp eq ptr %3, %mm
  br i1 %cmp.i, label %land.lhs.true, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

land.lhs.true:                                    ; preds = %for.body.i
  %4 = load ptr, ptr @ksm_scan.0, align 4
  %cmp.not = icmp eq ptr %4, %slot.0.i
  br i1 %cmp.not, label %land.lhs.true.if.then10_crit_edge, label %if.then

land.lhs.true.if.then10_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then:                                          ; preds = %land.lhs.true
  %rmap_list = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %rmap_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmap_list, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %slot.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i.i, label %if.then2.hash_del.exit_crit_edge, label %if.then.i.i

if.then2.hash_del.exit_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.then2
  %9 = ptrtoint ptr %slot.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slot.0.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %8, align 4
  %tobool.not.i3.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %slot.0.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %slot.0.i, align 4
  %14 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then2.hash_del.exit_crit_edge
  %mm_list = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %hash_del.exit.list_del.exit_crit_edge

hash_del.exit.list_del.exit_crit_edge:            ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %mm_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mm_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %hash_del.exit.list_del.exit_crit_edge
  %21 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %mm_list, align 4
  %prev.i = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %23 = load ptr, ptr @mm_slot_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %23, ptr noundef nonnull %slot.0.i) #9
  %flags = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 43
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #9
  %mm_count.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %list_del.exit.if.end12_crit_edge, !prof !187

list_del.exit.if.end12_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmdrop(ptr noundef %mm) #9
  br label %if.end12

if.else:                                          ; preds = %if.then
  %mm_list3 = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 1
  %mm_list4 = getelementptr inbounds %struct.mm_slot, ptr %4, i32 0, i32 1
  %call.i.i25 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list3) #9
  br i1 %call.i.i25, label %if.end.i.i28, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i28:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i26 = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i26, align 4
  %27 = ptrtoint ptr %mm_list3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mm_list3, align 4
  %prev1.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i27, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i28, %if.else.__list_del_entry.exit.i_crit_edge
  %31 = ptrtoint ptr %mm_list4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mm_list4, align 4
  %call.i.i.i29 = tail call zeroext i1 @__list_add_valid(ptr noundef %mm_list3, ptr noundef %mm_list4, ptr noundef %32) #9
  br i1 %call.i.i.i29, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.then10_crit_edge

__list_del_entry.exit.i.if.then10_crit_edge:      ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mm_list3, ptr %prev1.i.i2.i, align 4
  %34 = ptrtoint ptr %mm_list3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %mm_list3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mm_slot, ptr %slot.0.i, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mm_list4, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %mm_list4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %mm_list3, ptr %mm_list4, align 4
  br label %if.then10

if.then10:                                        ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.then10_crit_edge, %land.lhs.true.if.then10_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@__ksm_exit, %if.then.i.i30)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i30], !srcloc !188

if.then.i.i30:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext true) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i30, %if.then10
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @down_write(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@__ksm_exit, %if.then.i3.i)) #9
          to label %mmap_write_lock.exit [label %if.then.i3.i], !srcloc !188

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext true, i1 noundef zeroext true) #9
  br label %mmap_write_lock.exit

mmap_write_lock.exit:                             ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@__ksm_exit, %if.then.i.i31)) #9
          to label %mmap_write_unlock.exit [label %if.then.i.i31], !srcloc !188

if.then.i.i31:                                    ; preds = %mmap_write_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #9
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i31, %mmap_write_lock.exit
  tail call void @up_write(ptr noundef %mmap_lock.i) #9
  br label %if.end12

if.end12.critedge:                                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  br label %if.end12

if.end12:                                         ; preds = %if.end12.critedge, %mmap_write_unlock.exit, %if.then.i, %list_del.exit.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksm_might_need_to_copy(ptr noundef %page, ptr noundef %vma, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_anon_vma(ptr noundef %page) #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %PageKsm.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %PageKsm.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i.i70 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70)
  %tobool.not.i.i71 = icmp eq i32 %and.i.i70, 0
  br i1 %tobool.not.i.i71, label %if.end.i.i74, label %if.then.i.i73, !prof !182

if.then.i.i73:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i72 = add i32 %9, -1
  br label %page_stable_node.exit

if.end.i.i74:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %page_stable_node.exit

page_stable_node.exit:                            ; preds = %if.end.i.i74, %if.then.i.i73
  %retval.0.i.i75 = phi i32 [ %sub.i.i72, %if.then.i.i73 ], [ %10, %if.end.i.i74 ]
  %11 = inttoptr i32 %retval.0.i.i75 to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping.i.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %and.i.i.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 3
  %tobool.not105 = icmp ult ptr %13, inttoptr (i32 4 to ptr)
  %tobool.not = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not105
  br i1 %tobool.not, label %page_stable_node.exit.if.end16_crit_edge, label %land.lhs.true

page_stable_node.exit.if.end16_crit_edge:         ; preds = %page_stable_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %page_stable_node.exit
  %15 = load i32, ptr @ksm_run, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %PageKsm.exit
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.else.cleanup_crit_edge, label %if.else7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else7:                                         ; preds = %if.else
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %18 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %address, %19
  %shr.i = lshr i32 %sub.i, 12
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %20 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_pgoff.i, align 4
  %add.i = add i32 %shr.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i)
  %cmp = icmp eq i32 %17, %add.i
  br i1 %cmp, label %land.lhs.true9, label %if.else7.if.end16_crit_edge

if.else7.if.end16_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true9:                                   ; preds = %if.else7
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %anon_vma10 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %24 = ptrtoint ptr %anon_vma10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %anon_vma10, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %cmp12 = icmp eq ptr %23, %27
  br i1 %cmp12, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end16_crit_edge

land.lhs.true9.if.end16_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true9.if.end16_crit_edge, %if.else7.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %page_stable_node.exit.if.end16_crit_edge
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %0, align 4
  %and.i.i77 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool.not.i.i78 = icmp eq i32 %and.i.i77, 0
  br i1 %tobool.not.i.i78, label %if.end.i.i81, label %if.then.i.i80, !prof !182

if.then.i.i80:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i79 = add i32 %29, -1
  br label %_compound_head.exit.i85

if.end.i.i81:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i85

_compound_head.exit.i85:                          ; preds = %if.end.i.i81, %if.then.i.i80
  %retval.0.i.i82 = phi i32 [ %sub.i.i79, %if.then.i.i80 ], [ %30, %if.end.i.i81 ]
  %31 = inttoptr i32 %retval.0.i.i82 to ptr
  %32 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i.i.i83 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i83)
  %tobool.not.i.i.i84 = icmp eq i32 %and.i.i.i.i83, 0
  br i1 %tobool.not.i.i.i84, label %folio_flags.exit.i.i, label %if.then.i.i.i86, !prof !182

if.then.i.i.i86:                                  ; preds = %_compound_head.exit.i85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i85
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %31, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.cleanup_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.cleanup_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !190
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 17829066, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool22.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool22.not, label %PageUptodate.exit.cleanup_crit_edge, label %land.lhs.true23

PageUptodate.exit.cleanup_crit_edge:              ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true23:                                  ; preds = %PageUptodate.exit
  %38 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i87 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i87, label %if.end.i, label %if.then.i89, !prof !182

if.then.i89:                                      ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i88 = add i32 %40, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i89
  %retval.0.i = phi i32 [ %sub.i88, %if.then.i89 ], [ %41, %if.end.i ]
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %42 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vm_mm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@ksm_might_need_to_copy, %mem_cgroup_charge.exit)) #9
          to label %if.end.i90 [label %mem_cgroup_charge.exit], !srcloc !188

if.end.i90:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  %44 = inttoptr i32 %retval.0.i to ptr
  %call1.i = tail call i32 @__mem_cgroup_charge(ptr noundef %44, ptr noundef %43, i32 noundef 3264) #9
  br label %mem_cgroup_charge.exit

mem_cgroup_charge.exit:                           ; preds = %if.end.i90, %_compound_head.exit
  %retval.0.i91 = phi i32 [ %call1.i, %if.end.i90 ], [ 0, %_compound_head.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i91)
  %tobool26.not = icmp eq i32 %retval.0.i91, 0
  br i1 %tobool26.not, label %if.then30, label %if.then27

if.then27:                                        ; preds = %mem_cgroup_charge.exit
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %38, align 4
  %and.i.i92 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92)
  %tobool.not.i.i93 = icmp eq i32 %and.i.i92, 0
  br i1 %tobool.not.i.i93, label %if.end.i.i96, label %if.then.i.i95, !prof !182

if.then.i.i95:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i94 = add i32 %46, -1
  br label %_compound_head.exit.i98

if.end.i.i96:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i98

_compound_head.exit.i98:                          ; preds = %if.end.i.i96, %if.then.i.i95
  %retval.0.i.i97 = phi i32 [ %sub.i.i94, %if.then.i.i95 ], [ %47, %if.end.i.i96 ]
  %48 = inttoptr i32 %retval.0.i.i97 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %49 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i.i.i = icmp eq i32 %50, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i98
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i98
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ksm_might_need_to_copy, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %48, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %48) #9
  br label %cleanup

if.then30:                                        ; preds = %mem_cgroup_charge.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_user_fns, ptr @cpu_user, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.cpu_user_fns, ptr @cpu_user, i32 0, i32 1), align 4
  tail call void %52(ptr noundef nonnull %call38.i.i.i, ptr noundef %page, i32 noundef %address, ptr noundef %vma) #9
  %53 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %38, align 4
  %and.i.i55 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.not.i.i56 = icmp eq i32 %and.i.i55, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i59, label %if.then.i.i58, !prof !182

if.then.i.i58:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i57 = add i32 %54, -1
  br label %_compound_head.exit.i

if.end.i.i59:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i59, %if.then.i.i58
  %retval.0.i.i60 = phi i32 [ %sub.i.i57, %if.then.i.i58 ], [ %55, %if.end.i.i59 ]
  %56 = inttoptr i32 %retval.0.i.i60 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.not.i = icmp eq i32 %58, -1
  %59 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %38, align 4
  %and.i12.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !187

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !182

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i14.i = add i32 %60, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %61, %if.end.i16.i ]
  %62 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !192
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !182

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i21.i = add i32 %60, -1
  br label %SetPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %call38.i.i.i to i32
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %63, %if.end.i23.i ]
  %64 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_set_bit(i32 noundef 3, ptr noundef %64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !193
  %65 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %38, align 4
  %and.i.i.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__SetPageUptodate.exit, label %if.then.i.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %SetPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

__SetPageUptodate.exit:                           ; preds = %SetPageDirty.exit
  %67 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call38.i.i.i, align 4
  %or.i.i.i = or i32 %68, 4
  store i32 %or.i.i.i, ptr %call38.i.i.i, align 4
  %69 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %38, align 4
  %and.i.i61 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.not.i = icmp eq i32 %and.i.i61, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i62, !prof !182

if.then.i62:                                      ; preds = %__SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !194
  unreachable

do.body7.i:                                       ; preds = %__SetPageUptodate.exit
  %71 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %38, align 4
  %and.i31.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i63 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i63, label %if.end.i.i66, label %if.then.i.i65, !prof !182

if.then.i.i65:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i64 = add i32 %72, -1
  br label %_compound_head.exit.i69

if.end.i.i66:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i69

_compound_head.exit.i69:                          ; preds = %if.end.i.i66, %if.then.i.i65
  %retval.0.i.i67 = phi i32 [ %sub.i.i64, %if.then.i.i65 ], [ %73, %if.end.i.i66 ]
  %74 = inttoptr i32 %retval.0.i.i67 to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i.not.i68 = icmp eq i32 %76, -1
  %77 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %38, align 4
  %and.i32.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i68, label %if.then17.i, label %do.end24.i, !prof !187

if.then17.i:                                      ; preds = %_compound_head.exit.i69
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !182

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %78, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %79, %if.end.i36.i ]
  %80 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %80, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !195
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i69
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !182

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %78, -1
  br label %__SetPageLocked.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %call38.i.i.i to i32
  br label %__SetPageLocked.exit

__SetPageLocked.exit:                             ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %81, %if.end.i43.i ]
  %82 = inttoptr i32 %retval.0.i44.i to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %or.i.i = or i32 %84, 1
  store i32 %or.i.i, ptr %82, align 4
  br label %cleanup

cleanup:                                          ; preds = %__SetPageLocked.exit, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %PageUptodate.exit.cleanup_crit_edge, %folio_flags.exit.i.i.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %page, %land.lhs.true.cleanup_crit_edge ], [ %page, %if.else.cleanup_crit_edge ], [ %page, %land.lhs.true9.cleanup_crit_edge ], [ %call38.i.i.i, %__SetPageLocked.exit ], [ %page, %folio_flags.exit.i.i.cleanup_crit_edge ], [ null, %PageUptodate.exit.cleanup_crit_edge ], [ null, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ null, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmap_walk_ksm(ptr noundef %page, ptr nocapture noundef readonly %rwc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %PageKsm.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %do.body9, label %if.then, !prof !182

if.then:                                          ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2609, 0\0A.popsection", ""() #9, !srcloc !196
  unreachable

do.body9:                                         ; preds = %PageKsm.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i.i136 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i136)
  %tobool.not.i.i137 = icmp eq i32 %and.i.i136, 0
  br i1 %tobool.not.i.i137, label %if.end.i.i140, label %if.then.i.i139, !prof !182

if.then.i.i139:                                   ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i138 = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i140:                                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i140, %if.then.i.i139
  %retval.0.i.i141 = phi i32 [ %sub.i.i138, %if.then.i.i139 ], [ %10, %if.end.i.i140 ]
  %11 = inttoptr i32 %retval.0.i.i141 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !187

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !182

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %15, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %16, %if.end.i20.i ]
  %17 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.13) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !197
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !182

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %15, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %18, %if.end.i27.i ]
  %19 = inttoptr i32 %retval.0.i28.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool11.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool11.not, label %if.then20, label %do.end29, !prof !187

if.then20:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2615, 0\0A.popsection", ""() #9, !srcloc !198
  unreachable

do.end29:                                         ; preds = %PageLocked.exit
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i.i142 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i142)
  %tobool.not.i.i143 = icmp eq i32 %and.i.i142, 0
  br i1 %tobool.not.i.i143, label %if.end.i.i146, label %if.then.i.i145, !prof !182

if.then.i.i145:                                   ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i144 = add i32 %23, -1
  br label %page_stable_node.exit

if.end.i.i146:                                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %page to i32
  br label %page_stable_node.exit

page_stable_node.exit:                            ; preds = %if.end.i.i146, %if.then.i.i145
  %retval.0.i.i147 = phi i32 [ %sub.i.i144, %if.then.i.i145 ], [ %24, %if.end.i.i146 ]
  %25 = inttoptr i32 %retval.0.i.i147 to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mapping.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i.i.i = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 3
  %and.i3.i.i = and i32 %28, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool31.not163 = icmp eq i32 %and.i3.i.i, 0
  %tobool31.not = or i1 %cmp.i.i.i, %tobool31.not163
  br i1 %tobool31.not, label %page_stable_node.exit.cleanup93_crit_edge, label %again.preheader

page_stable_node.exit.cleanup93_crit_edge:        ; preds = %page_stable_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup93

again.preheader:                                  ; preds = %page_stable_node.exit
  %29 = inttoptr i32 %and.i3.i.i to ptr
  %hlist = getelementptr inbounds %struct.stable_node, ptr %29, i32 0, i32 1
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %done = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  br label %again

again:                                            ; preds = %for.end89.again_crit_edge, %again.preheader
  %tobool90.not = phi i1 [ false, %for.end89.again_crit_edge ], [ true, %again.preheader ]
  %search_new_forks.0 = phi i32 [ 1, %for.end89.again_crit_edge ], [ 0, %again.preheader ]
  %30 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hlist, align 4
  %tobool34.not = icmp eq ptr %31, null
  %add.ptr = getelementptr i8, ptr %31, i32 -24
  %tobool36.not161166 = icmp eq ptr %add.ptr, null
  %tobool36.not161 = or i1 %tobool34.not, %tobool36.not161166
  br i1 %tobool36.not161, label %again.for.end89_crit_edge, label %again.for.body_crit_edge

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

again.for.end89_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

for.body:                                         ; preds = %for.inc77.for.body_crit_edge, %again.for.body_crit_edge
  %rmap_item.0162 = phi ptr [ %add.ptr85, %for.inc77.for.body_crit_edge ], [ %add.ptr, %again.for.body_crit_edge ]
  %32 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item.0162, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2626, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %36, i32 0, i32 1
  tail call void @down_read(ptr noundef %rwsem.i) #9
  %rb_root = getelementptr inbounds %struct.anon_vma, ptr %34, i32 0, i32 5
  %call39 = tail call ptr @anon_vma_interval_tree_iter_first(ptr noundef %rb_root, i32 noundef 0, i32 noundef -1) #9
  %tobool41.not159 = icmp eq ptr %call39, null
  br i1 %tobool41.not159, label %for.body.for.inc77_crit_edge, label %for.body42.lr.ph

for.body.for.inc77_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

for.body42.lr.ph:                                 ; preds = %for.body
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item.0162, i32 0, i32 3
  %mm = getelementptr inbounds %struct.rmap_item, ptr %rmap_item.0162, i32 0, i32 2
  br label %for.body42

for.body42:                                       ; preds = %for.inc.for.body42_crit_edge, %for.body42.lr.ph
  %vmac.0160 = phi ptr [ %call39, %for.body42.lr.ph ], [ %call71, %for.inc.for.body42_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2632, i32 noundef 0) #9
  %call.i149 = tail call i32 @__cond_resched() #9
  %37 = ptrtoint ptr %vmac.0160 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vmac.0160, align 4
  %39 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %address, align 4
  %and = and i32 %40, -4096
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %42)
  %cmp = icmp ult i32 %and, %42
  br i1 %cmp, label %for.body42.for.inc_crit_edge, label %lor.lhs.false

for.body42.for.inc_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body42
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %44)
  %cmp46.not = icmp ult i32 %and, %44
  br i1 %cmp46.not, label %if.end48, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end48:                                         ; preds = %lor.lhs.false
  %45 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mm, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %38, i32 0, i32 6
  %47 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vm_mm, align 4
  %cmp49 = icmp eq ptr %46, %48
  %conv = zext i1 %cmp49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %search_new_forks.0, i32 %conv)
  %cmp50 = icmp eq i32 %search_new_forks.0, %conv
  br i1 %cmp50, label %if.end48.for.inc_crit_edge, label %if.end53

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end53:                                         ; preds = %if.end48
  %49 = ptrtoint ptr %invalid_vma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %invalid_vma, align 4
  %tobool54.not = icmp eq ptr %50, null
  br i1 %tobool54.not, label %if.end53.if.end59_crit_edge, label %land.lhs.true

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end53
  %51 = ptrtoint ptr %rwc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rwc, align 4
  %call56 = tail call zeroext i1 %50(ptr noundef %38, ptr noundef %52) #9
  br i1 %call56, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end59:                                         ; preds = %land.lhs.true.if.end59_crit_edge, %if.end53.if.end59_crit_edge
  %53 = ptrtoint ptr %rmap_one to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmap_one, align 4
  %55 = ptrtoint ptr %rwc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rwc, align 4
  %call61 = tail call zeroext i1 %54(ptr noundef %page, ptr noundef %38, i32 noundef %and, ptr noundef %56) #9
  br i1 %call61, label %if.end63, label %if.end59.cleanup93.sink.split_crit_edge

if.end59.cleanup93.sink.split_crit_edge:          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup93.sink.split

if.end63:                                         ; preds = %if.end59
  %57 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %done, align 4
  %tobool64.not = icmp eq ptr %58, null
  br i1 %tobool64.not, label %if.end63.for.inc_crit_edge, label %land.lhs.true65

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true65:                                  ; preds = %if.end63
  %call67 = tail call i32 %58(ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true65.for.inc_crit_edge, label %land.lhs.true65.cleanup93.sink.split_crit_edge

land.lhs.true65.cleanup93.sink.split_crit_edge:   ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup93.sink.split

land.lhs.true65.for.inc_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true65.for.inc_crit_edge, %if.end63.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end48.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body42.for.inc_crit_edge
  %call71 = tail call ptr @anon_vma_interval_tree_iter_next(ptr noundef nonnull %vmac.0160, i32 noundef 0, i32 noundef -1) #9
  %tobool41.not = icmp eq ptr %call71, null
  br i1 %tobool41.not, label %for.inc.for.inc77_crit_edge, label %for.inc.for.body42_crit_edge

for.inc.for.body42_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body42

for.inc.for.inc77_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

for.inc77:                                        ; preds = %for.inc.for.inc77_crit_edge, %for.body.for.inc77_crit_edge
  %59 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %34, align 4
  %rwsem.i152 = getelementptr inbounds %struct.anon_vma, ptr %60, i32 0, i32 1
  tail call void @up_read(ptr noundef %rwsem.i152) #9
  %hlist79 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item.0162, i32 0, i32 5, i32 0, i32 1
  %61 = ptrtoint ptr %hlist79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hlist79, align 4
  %tobool81.not = icmp eq ptr %62, null
  %add.ptr85 = getelementptr i8, ptr %62, i32 -24
  %tobool36.not169 = icmp eq ptr %add.ptr85, null
  %tobool36.not = or i1 %tobool81.not, %tobool36.not169
  br i1 %tobool36.not, label %for.inc77.for.end89_crit_edge, label %for.inc77.for.body_crit_edge

for.inc77.for.body_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc77.for.end89_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

for.end89:                                        ; preds = %for.inc77.for.end89_crit_edge, %again.for.end89_crit_edge
  br i1 %tobool90.not, label %for.end89.again_crit_edge, label %for.end89.cleanup93_crit_edge

for.end89.cleanup93_crit_edge:                    ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup93

for.end89.again_crit_edge:                        ; preds = %for.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %again

cleanup93.sink.split:                             ; preds = %land.lhs.true65.cleanup93.sink.split_crit_edge, %if.end59.cleanup93.sink.split_crit_edge
  %63 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %34, align 4
  %rwsem.i150 = getelementptr inbounds %struct.anon_vma, ptr %64, i32 0, i32 1
  tail call void @up_read(ptr noundef %rwsem.i150) #9
  br label %cleanup93

cleanup93:                                        ; preds = %cleanup93.sink.split, %for.end89.cleanup93_crit_edge, %page_stable_node.exit.cleanup93_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_migrate_ksm(ptr noundef %newfolio, ptr noundef %folio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_locked.exit, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_test_locked.exit:                           ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %do.body9, !prof !187

if.then:                                          ; preds = %folio_test_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2672, 0\0A.popsection", ""() #9, !srcloc !199
  unreachable

do.body9:                                         ; preds = %folio_test_locked.exit
  %5 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i89 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %and.i.i.i89, 0
  br i1 %tobool.not.i.i90, label %folio_test_locked.exit94, label %if.then.i.i91, !prof !182

if.then.i.i91:                                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_test_locked.exit94:                         ; preds = %do.body9
  %8 = ptrtoint ptr %newfolio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %newfolio, align 4
  %and1.i.i92 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i92)
  %tobool.i93.not = icmp eq i32 %and1.i.i92, 0
  br i1 %tobool.i93.not, label %if.then19, label %do.body29, !prof !187

if.then19:                                        ; preds = %folio_test_locked.exit94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2673, 0\0A.popsection", ""() #9, !srcloc !200
  unreachable

do.body29:                                        ; preds = %folio_test_locked.exit94
  %mapping = getelementptr inbounds %struct.anon.63, ptr %newfolio, i32 0, i32 2
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapping, align 4
  %mapping30 = getelementptr inbounds %struct.anon.63, ptr %folio, i32 0, i32 2
  %12 = ptrtoint ptr %mapping30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping30, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %do.end46, label %if.then37, !prof !182

if.then37:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.5) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2674, 0\0A.popsection", ""() #9, !srcloc !201
  unreachable

do.end46:                                         ; preds = %do.body29
  %14 = ptrtoint ptr %11 to i32
  %and.i.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, 3
  %and.i3.i = and i32 %14, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool48.not100 = icmp eq i32 %and.i3.i, 0
  %tobool48.not = or i1 %cmp.i.i, %tobool48.not100
  br i1 %tobool48.not, label %do.end46.if.end76_crit_edge, label %do.body50

do.end46.if.end76_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

do.body50:                                        ; preds = %do.end46
  %15 = inttoptr i32 %and.i3.i to ptr
  %16 = getelementptr inbounds %struct.stable_node, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %folio to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.i)
  %cmp52.not = icmp eq i32 %18, %add.i
  br i1 %cmp52.not, label %do.end68, label %if.then59, !prof !182

if.then59:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2678, 0\0A.popsection", ""() #9, !srcloc !202
  unreachable

do.end68:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.lhs.cast.i95 = ptrtoint ptr %newfolio to i32
  %sub.ptr.sub.i97 = sub i32 %sub.ptr.lhs.cast.i95, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i98 = sdiv exact i32 %sub.ptr.sub.i97, 36
  %add.i99 = add i32 %sub.ptr.div.i98, %20
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i99, ptr %16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !203
  %22 = ptrtoint ptr %mapping30 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 3 to ptr), ptr %mapping30, align 4
  br label %if.end76

if.end76:                                         ; preds = %do.end68, %do.end46.if.end76_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ksm_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %0 = load ptr, ptr @empty_zero_page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %1 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %1, 512
  %2 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !204
  %6 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i1.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 213
  %10 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %11, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %or.i.i) #9
  %call.i.i = tail call i32 @xxh32(ptr noundef %call.i.i.i, i32 noundef 4096, i32 noundef 0) #9
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %12 = tail call i32 @llvm.read_register.i32(metadata !172) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  %18 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  store i32 %call.i.i, ptr @zero_checksum, align 4
  store i8 0, ptr @ksm_use_zero_pages, align 1
  %call1 = tail call fastcc i32 @ksm_slab_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ksm_scan_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.15) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  %22 = ptrtoint ptr %call2 to i32
  br label %out_free

if.end12:                                         ; preds = %if.end
  %call5 = tail call i32 @wake_up_process(ptr noundef %call2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mm_kobj to i32))
  %23 = load ptr, ptr @mm_kobj, align 4
  %call13 = tail call i32 @sysfs_create_group(ptr noundef %23, ptr noundef nonnull @ksm_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %do.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  %call21 = tail call i32 @kthread_stop(ptr noundef %call2) #9
  br label %out_free

out_free:                                         ; preds = %do.end18, %do.end
  %err.0 = phi i32 [ %22, %do.end ], [ %call13, %do.end18 ]
  tail call fastcc void @ksm_slab_free() #12
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %err.0, %out_free ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @break_ksm(ptr noundef %vma, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 475, i32 noundef 0) #9
  %call.i20 = tail call i32 @__cond_resched() #9
  %call121 = tail call ptr @follow_page(ptr noundef %vma, i32 noundef %addr, i32 noundef 9220) #9
  %tobool.not.i22 = icmp eq ptr %call121, null
  %cmp.i23 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  %spec.select.i24 = or i1 %tobool.not.i22, %cmp.i23
  br i1 %spec.select.i24, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.body:                                          ; preds = %put_page.exit
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 475, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %call1 = tail call ptr @follow_page(ptr noundef %vma, i32 noundef %addr, i32 noundef 9220) #9
  %tobool.not.i = icmp eq ptr %call1, null
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.body.do.end_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  %call125 = phi ptr [ %call1, %do.body.if.end_crit_edge ], [ %call121, %entry.if.end_crit_edge ]
  %0 = getelementptr inbounds %struct.page, ptr %call125, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %PageKsm.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call125 to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %if.then4, label %PageKsm.exit.if.end6_crit_edge

PageKsm.exit.if.end6_crit_edge:                   ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @handle_mm_fault(ptr noundef %vma, i32 noundef %addr, i32 noundef 129, ptr noundef null) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %PageKsm.exit.if.end6_crit_edge
  %ret.1 = phi i32 [ %call5, %if.then4 ], [ 8, %PageKsm.exit.if.end6_crit_edge ]
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i.i14 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i14)
  %tobool.not.i.i15 = icmp eq i32 %and.i.i14, 0
  br i1 %tobool.not.i.i15, label %if.end.i.i18, label %if.then.i.i17, !prof !182

if.then.i.i17:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i16 = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i18:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call125 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i18, %if.then.i.i17
  %retval.0.i.i19 = phi i32 [ %sub.i.i16, %if.then.i.i17 ], [ %10, %if.end.i.i18 ]
  %11 = inttoptr i32 %retval.0.i.i19 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = inttoptr i32 %retval.0.i.i19 to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@break_ksm, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %11, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %11) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %and = and i32 %ret.1, 75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %put_page.exit.do.end_crit_edge

put_page.exit.do.end_crit_edge:                   ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %put_page.exit.do.end_crit_edge, %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.2 = phi i32 [ 0, %entry.do.end_crit_edge ], [ %ret.1, %do.body.do.end_crit_edge ], [ %ret.1, %put_page.exit.do.end_crit_edge ]
  %and7 = and i32 %ret.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool8.not, i32 0, i32 -12
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @follow_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @handle_mm_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mem_cgroup_charge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ksm_slab_init() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.21, i32 noundef 32, i32 noundef 4, i32 noundef 0, ptr noundef null) #9
  store ptr %call, ptr @rmap_item_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.22, i32 noundef 32, i32 noundef 4, i32 noundef 0, ptr noundef null) #9
  store ptr %call1, ptr @stable_node_cache, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_free1_crit_edge, label %if.end4

if.end.out_free1_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free1

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.23, i32 noundef 24, i32 noundef 4, i32 noundef 0, ptr noundef null) #9
  store ptr %call5, ptr @mm_slot_cache, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %out_free2, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

out_free2:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  br label %out_free1

out_free1:                                        ; preds = %out_free2, %if.end.out_free1_crit_edge
  %1 = load ptr, ptr @rmap_item_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  br label %return

return:                                           ; preds = %out_free1, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %out_free1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksm_scan_thread(ptr nocapture noundef readnone %nothing) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry72 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @set_freezable() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @set_user_nice(ptr noundef %3, i32 noundef 5) #9
  %call2170 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call2170, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end94.while.body_crit_edge, %entry.while.body_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @ksm_thread_mutex, i32 noundef 0) #9
  %4 = load i32, ptr @ksm_run, align 4
  %and.i119 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %tobool.not.i = icmp eq i32 %and.i119, 0
  br i1 %tobool.not.i, label %while.body.if.end_crit_edge, label %ksmd_should_run.exit

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

ksmd_should_run.exit:                             ; preds = %while.body
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %5, getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1)
  br i1 %cmp.i.i.not, label %ksmd_should_run.exit.if.end_crit_edge, label %if.then

ksmd_should_run.exit.if.end_crit_edge:            ; preds = %ksmd_should_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %ksmd_should_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load i32, ptr @ksm_thread_pages_to_scan, align 4
  call fastcc void @ksm_do_scan(i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %ksmd_should_run.exit.if.end_crit_edge, %while.body.if.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ksm_thread_mutex) #9
  %7 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i120 = and i32 %12, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %tobool.not.i121 = icmp eq i32 %and.i120, 0
  br i1 %tobool.not.i121, label %if.then.i122, label %if.end.if.end.i123_crit_edge

if.end.if.end.i123_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i123

if.then.i122:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i123

if.end.i123:                                      ; preds = %if.then.i122, %if.end.if.end.i123_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 57) #9
  %13 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %17 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %if.end.i123.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !182

if.end.i123.try_to_freeze.exit_crit_edge:         ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i123
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %16) #9
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !187

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i123.try_to_freeze.exit_crit_edge
  %18 = load i32, ptr @ksm_run, align 4
  %and.i124 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.not.i125 = icmp eq i32 %and.i124, 0
  br i1 %tobool.not.i125, label %try_to_freeze.exit.if.else_crit_edge, label %ksmd_should_run.exit129

try_to_freeze.exit.if.else_crit_edge:             ; preds = %try_to_freeze.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

ksmd_should_run.exit129:                          ; preds = %try_to_freeze.exit
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %cmp.i.i126.not = icmp eq ptr %19, getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1)
  br i1 %cmp.i.i126.not, label %ksmd_should_run.exit129.if.else_crit_edge, label %do.end

ksmd_should_run.exit129.if.else_crit_edge:        ; preds = %ksmd_should_run.exit129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

do.end:                                           ; preds = %ksmd_should_run.exit129
  %20 = load volatile i32, ptr @ksm_thread_sleep_millisecs, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %20) #9
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2426) #9
  %21 = load volatile i32, ptr @ksm_thread_sleep_millisecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %21)
  %cmp.not = icmp eq i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not160 = icmp eq i32 %call2.i, 0
  %tobool25.not = select i1 %cmp.not, i1 %tobool25.not160, i1 false
  %not.cmp.not = xor i1 %cmp.not, true
  %22 = select i1 %not.cmp.not, i1 true, i1 %tobool25.not
  br i1 %22, label %do.end.if.end94_crit_edge, label %if.then28

do.end.if.end94_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then28:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %23 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i115 = call i32 @__msecs_to_jiffies(i32 noundef %20) #9
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call31161 = call i32 @prepare_to_wait_event(ptr noundef nonnull @ksm_iter_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %24 = load volatile i32, ptr @ksm_thread_sleep_millisecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp37.not162 = icmp eq i32 %20, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i115)
  %tobool41.not163 = icmp eq i32 %call2.i115, 0
  %spec.select = select i1 %tobool41.not163, i32 1, i32 %call2.i115
  %__ret29.1165 = select i1 %cmp37.not162, i32 %call2.i115, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1165)
  %tobool47.not166 = icmp eq i32 %__ret29.1165, 0
  %not.cmp37.not167 = xor i1 %cmp37.not162, true
  %25 = select i1 %not.cmp37.not167, i1 true, i1 %tobool47.not166
  br i1 %25, label %if.then28.for.end_crit_edge, label %if.then28.if.end53_crit_edge

if.then28.if.end53_crit_edge:                     ; preds = %if.then28
  br label %if.end53

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end53:                                         ; preds = %cleanup.if.end53_crit_edge, %if.then28.if.end53_crit_edge
  %__ret29.1169 = phi i32 [ %__ret29.1, %cleanup.if.end53_crit_edge ], [ %__ret29.1165, %if.then28.if.end53_crit_edge ]
  %call31168 = phi i32 [ %call31, %cleanup.if.end53_crit_edge ], [ %call31161, %if.then28.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31168)
  %tobool54.not = icmp eq i32 %call31168, 0
  br i1 %tobool54.not, label %cleanup, label %if.end53.__out_crit_edge

if.end53.__out_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end53
  %call57 = call i32 @schedule_timeout(i32 noundef %__ret29.1169) #9
  %call31 = call i32 @prepare_to_wait_event(ptr noundef nonnull @ksm_iter_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %26 = load volatile i32, ptr @ksm_thread_sleep_millisecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %26)
  %cmp37.not = icmp eq i32 %20, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool41.not = icmp eq i32 %call57, 0
  %spec.store.select96 = select i1 %tobool41.not, i32 1, i32 %call57
  %__ret29.1 = select i1 %cmp37.not, i32 %call57, i32 %spec.store.select96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret29.1)
  %tobool47.not = icmp eq i32 %__ret29.1, 0
  %not.cmp37.not = xor i1 %cmp37.not, true
  %27 = select i1 %not.cmp37.not, i1 true, i1 %tobool47.not
  br i1 %27, label %cleanup.for.end_crit_edge, label %cleanup.if.end53_crit_edge

cleanup.if.end53_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then28.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @ksm_iter_wait, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end53.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end94

if.else:                                          ; preds = %ksmd_should_run.exit129.if.else_crit_edge, %try_to_freeze.exit.if.else_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 2429) #9
  %28 = load i32, ptr @ksm_run, align 4
  %and.i130 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %if.else.lor.lhs.false_crit_edge, label %ksmd_should_run.exit135

if.else.lor.lhs.false_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

ksmd_should_run.exit135:                          ; preds = %if.else
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %cmp.i.i132.not = icmp eq ptr %29, getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1)
  br i1 %cmp.i.i132.not, label %ksmd_should_run.exit135.lor.lhs.false_crit_edge, label %ksmd_should_run.exit135.if.end94_crit_edge

ksmd_should_run.exit135.if.end94_crit_edge:       ; preds = %ksmd_should_run.exit135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

ksmd_should_run.exit135.lor.lhs.false_crit_edge:  ; preds = %ksmd_should_run.exit135
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %ksmd_should_run.exit135.lor.lhs.false_crit_edge, %if.else.lor.lhs.false_crit_edge
  %call70 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call70, label %lor.lhs.false.if.end94_crit_edge, label %if.then71

lor.lhs.false.if.end94_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then71:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry72) #9
  %30 = call ptr @memset(ptr %__wq_entry72, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry72, i32 noundef 0) #9
  br label %for.cond74

for.cond74:                                       ; preds = %for.cond74.backedge, %if.then71
  %call76 = call i32 @prepare_to_wait_event(ptr noundef nonnull @ksm_thread_wait, ptr noundef nonnull %__wq_entry72, i32 noundef 1) #9
  %31 = load i32, ptr @ksm_run, align 4
  %and.i136 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136)
  %tobool.not.i137 = icmp eq i32 %and.i136, 0
  br i1 %tobool.not.i137, label %for.cond74.lor.lhs.false79_crit_edge, label %ksmd_should_run.exit141

for.cond74.lor.lhs.false79_crit_edge:             ; preds = %for.cond74
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false79

ksmd_should_run.exit141:                          ; preds = %for.cond74
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %cmp.i.i138.not = icmp eq ptr %32, getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1)
  br i1 %cmp.i.i138.not, label %ksmd_should_run.exit141.lor.lhs.false79_crit_edge, label %ksmd_should_run.exit141.for.end89_crit_edge

ksmd_should_run.exit141.for.end89_crit_edge:      ; preds = %ksmd_should_run.exit141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

ksmd_should_run.exit141.lor.lhs.false79_crit_edge: ; preds = %ksmd_should_run.exit141
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %ksmd_should_run.exit141.lor.lhs.false79_crit_edge, %for.cond74.lor.lhs.false79_crit_edge
  %call80 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call80, label %lor.lhs.false79.for.end89_crit_edge, label %if.end82

lor.lhs.false79.for.end89_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end89

if.end82:                                         ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool83.not = icmp eq i32 %call76, 0
  br i1 %tobool83.not, label %if.end85, label %if.end82.__out90_crit_edge

if.end82.__out90_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out90

if.end85:                                         ; preds = %if.end82
  %33 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i142 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i142 to ptr
  %task.i.i143 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i.i143 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i.i143, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %38, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @schedule() #9
  %39 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i1.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i3.i, align 4
  %and.i.i144 = and i32 %44, -1073741825
  store i32 %and.i.i144, ptr %flags.i3.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !208
  %45 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i145 = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i145, label %if.then.i.i.i, label %if.end85.if.end.i.i.i_crit_edge

if.end85.if.end.i.i.i_crit_edge:                  ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end85.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 57) #9
  %51 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %55 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.for.cond74.backedge_crit_edge, label %freezing.exit.i.i.i.i, !prof !182

if.end.i.i.i.for.cond74.backedge_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond74.backedge

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %54) #9
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.for.cond74.backedge_crit_edge, !prof !187

freezing.exit.i.i.i.i.for.cond74.backedge_crit_edge: ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond74.backedge

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %for.cond74.backedge

for.cond74.backedge:                              ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.for.cond74.backedge_crit_edge, %if.end.i.i.i.for.cond74.backedge_crit_edge
  br label %for.cond74

for.end89:                                        ; preds = %lor.lhs.false79.for.end89_crit_edge, %ksmd_should_run.exit141.for.end89_crit_edge
  call void @finish_wait(ptr noundef nonnull @ksm_thread_wait, ptr noundef nonnull %__wq_entry72) #9
  br label %__out90

__out90:                                          ; preds = %for.end89, %if.end82.__out90_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry72) #9
  br label %if.end94

if.end94:                                         ; preds = %__out90, %lor.lhs.false.if.end94_crit_edge, %ksmd_should_run.exit135.if.end94_crit_edge, %__out, %do.end.if.end94_crit_edge
  %call2 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call2, label %if.end94.while.end_crit_edge, label %if.end94.while.body_crit_edge

if.end94.while.body_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end94.while.end_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end94.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksm_slab_free() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mm_slot_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  %1 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #9
  %2 = load ptr, ptr @rmap_item_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #9
  store ptr null, ptr @mm_slot_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xxh32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ksm_do_scan(i32 noundef %scan_npages) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scan_npages)
  %tobool.not12 = icmp eq i32 %scan_npages, 0
  br i1 %tobool.not12, label %entry.cleanup_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %put_page.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %dec13.in = phi i32 [ %dec13, %put_page.exit.land.rhs_crit_edge ], [ %scan_npages, %entry.land.rhs_crit_edge ]
  %dec13 = add i32 %dec13.in, -1
  %1 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %5 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %land.rhs.while.body_crit_edge, label %freezing.exit, !prof !182

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

freezing.exit:                                    ; preds = %land.rhs
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %4) #9
  br i1 %call4.i, label %freezing.exit.cleanup_crit_edge, label %freezing.exit.while.body_crit_edge

freezing.exit.while.body_crit_edge:               ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

freezing.exit.cleanup_crit_edge:                  ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %freezing.exit.while.body_crit_edge, %land.rhs.while.body_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 2392, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %call6 = call fastcc ptr @scan_get_next_rmap_item(ptr noundef nonnull %page)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  tail call fastcc void @cmp_and_merge_page(ptr noundef %7, ptr noundef nonnull %call6)
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ksm_do_scan, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %12) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool.not = icmp eq i32 %dec13, 0
  br i1 %tobool.not, label %put_page.exit.cleanup_crit_edge, label %put_page.exit.land.rhs_crit_edge

put_page.exit.land.rhs_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

put_page.exit.cleanup_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %freezing.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @scan_get_next_rmap_item(ptr nocapture noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %0, getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1)
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @ksm_scan.0, align 4
  %cmp = icmp eq ptr %1, @ksm_mm_head
  br i1 %cmp, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then1:                                         ; preds = %if.end
  tail call void @lru_add_drain_all() #9
  store ptr null, ptr @one_unstable_tree, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %2 = load ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -8
  store ptr %add.ptr, ptr @ksm_scan.0, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %cmp3 = icmp eq ptr %add.ptr, @ksm_mm_head
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.then1.next_mm_crit_edge

if.then1.next_mm_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_mm

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

next_mm:                                          ; preds = %if.end64.next_mm_crit_edge, %if.then1.next_mm_crit_edge
  %slot.0 = phi ptr [ %add.ptr, %if.then1.next_mm_crit_edge ], [ %126, %if.end64.next_mm_crit_edge ]
  store i32 0, ptr @ksm_scan.1, align 4
  %rmap_list = getelementptr inbounds %struct.mm_slot, ptr %slot.0, i32 0, i32 2
  store ptr %rmap_list, ptr @ksm_scan.2, align 4
  br label %if.end6

if.end6:                                          ; preds = %next_mm, %if.end.if.end6_crit_edge
  %slot.1 = phi ptr [ %slot.0, %next_mm ], [ %1, %if.end.if.end6_crit_edge ]
  %mm7 = getelementptr inbounds %struct.mm_slot, ptr %slot.1, i32 0, i32 3
  %3 = ptrtoint ptr %mm7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm7, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@scan_get_next_rmap_item, %if.then.i.i115)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i115], !srcloc !188

if.then.i.i115:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %4, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i115, %if.end6
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@scan_get_next_rmap_item, %if.then.i3.i)) #9
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !188

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %mm_users.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %mm_users.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mm_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i116 = icmp eq i32 %6, 0
  br i1 %cmp.i116, label %mmap_read_lock.exit.for.end50_crit_edge, label %if.end11

mmap_read_lock.exit.for.end50_crit_edge:          ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end50

if.end11:                                         ; preds = %mmap_read_lock.exit
  %7 = load i32, ptr @ksm_scan.1, align 4
  %call10 = tail call ptr @find_vma(ptr noundef %4, i32 noundef %7) #9
  %tobool13.not185 = icmp eq ptr %call10, null
  br i1 %tobool13.not185, label %if.end11.for.end50_crit_edge, label %if.end11.for.body14_crit_edge

if.end11.for.body14_crit_edge:                    ; preds = %if.end11
  br label %for.body14

if.end11.for.end50_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end50

for.body14:                                       ; preds = %for.inc49.for.body14_crit_edge, %if.end11.for.body14_crit_edge
  %vma.1186 = phi ptr [ %90, %for.inc49.for.body14_crit_edge ], [ %call10, %if.end11.for.body14_crit_edge ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1186, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool15.not = icmp sgt i32 %9, -1
  br i1 %tobool15.not, label %for.body14.for.inc49_crit_edge, label %if.end17

for.body14.for.inc49_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49

if.end17:                                         ; preds = %for.body14
  %10 = load i32, ptr @ksm_scan.1, align 4
  %11 = ptrtoint ptr %vma.1186 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vma.1186, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp18 = icmp ult i32 %10, %12
  br i1 %cmp18, label %if.then19, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %12, ptr @ksm_scan.1, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1186, i32 0, i32 11
  %13 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %anon_vma, align 4
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %if.then23, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1186, i32 0, i32 1
  %15 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_end, align 4
  store i32 %16, ptr @ksm_scan.1, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  %vm_end25 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1186, i32 0, i32 1
  %17 = load i32, ptr @ksm_scan.1, align 4
  %18 = ptrtoint ptr %vm_end25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_end25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp26184 = icmp ult i32 %17, %19
  br i1 %cmp26184, label %if.end24.while.body_crit_edge, label %if.end24.for.inc49_crit_edge

if.end24.for.inc49_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %if.end24.while.body_crit_edge
  %call.i.i.i118 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i, i32 noundef 4) #9
  %20 = ptrtoint ptr %mm_users.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %mm_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i119 = icmp eq i32 %21, 0
  br i1 %cmp.i119, label %while.body.for.inc49_crit_edge, label %if.end29

while.body.for.inc49_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49

if.end29:                                         ; preds = %while.body
  %22 = load i32, ptr @ksm_scan.1, align 4
  %call30 = tail call ptr @follow_page(ptr noundef nonnull %vma.1186, i32 noundef %22, i32 noundef 4) #9
  %23 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call30, ptr %page, align 4
  %tobool.not.i = icmp eq ptr %call30, null
  %cmp.i120 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i120
  br i1 %spec.select.i, label %if.end29.while.cond.backedge_crit_edge, label %if.end35

if.end29.while.cond.backedge_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then.i4.i151, %folio_put_testzero.exit.i.i150.while.cond.backedge_crit_edge, %if.end29.while.cond.backedge_crit_edge
  %.sink = phi i32 [ 2326, %folio_put_testzero.exit.i.i150.while.cond.backedge_crit_edge ], [ 2326, %if.then.i4.i151 ], [ 2307, %if.end29.while.cond.backedge_crit_edge ]
  %24 = load i32, ptr @ksm_scan.1, align 4
  %add = add i32 %24, 4096
  store i32 %add, ptr @ksm_scan.1, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %25 = load i32, ptr @ksm_scan.1, align 4
  %26 = ptrtoint ptr %vm_end25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_end25, align 4
  %cmp26 = icmp ult i32 %25, %27
  br i1 %cmp26, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.for.inc49_crit_edge

while.cond.backedge.for.inc49_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end35:                                         ; preds = %if.end29
  %28 = getelementptr inbounds %struct.page, ptr %call30, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i2.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %30, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %call30 to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mapping.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %if.end45, label %if.then37

if.then37:                                        ; preds = %PageAnon.exit
  %36 = load i32, ptr @ksm_scan.1, align 4
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %28, align 4
  %and.i2.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %38, -1
  br label %PageAnon.exit.i

if.end.i.i.i:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call30 to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %39, %if.end.i.i.i ]
  %40 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mapping.i.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %and.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %PageAnon.exit.i.flush_anon_page.exit_crit_edge, label %if.then.i

PageAnon.exit.i.flush_anon_page.exit_crit_edge:   ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flush_anon_page.exit

if.then.i:                                        ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__flush_anon_page(ptr noundef nonnull %vma.1186, ptr noundef nonnull %call30, i32 noundef %36) #9
  br label %flush_anon_page.exit

flush_anon_page.exit:                             ; preds = %if.then.i, %PageAnon.exit.i.flush_anon_page.exit_crit_edge
  %44 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %page, align 4
  tail call void @flush_dcache_page(ptr noundef %45) #9
  %46 = load ptr, ptr @ksm_scan.2, align 4
  %47 = load i32, ptr @ksm_scan.1, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %46, align 4
  %tobool.not30.i = icmp eq ptr %49, null
  br i1 %tobool.not30.i, label %flush_anon_page.exit.while.end.i_crit_edge, label %flush_anon_page.exit.while.body.i_crit_edge

flush_anon_page.exit.while.body.i_crit_edge:      ; preds = %flush_anon_page.exit
  br label %while.body.i

flush_anon_page.exit.while.end.i_crit_edge:       ; preds = %flush_anon_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %if.end4.i.while.body.i_crit_edge, %flush_anon_page.exit.while.body.i_crit_edge
  %50 = phi ptr [ %60, %if.end4.i.while.body.i_crit_edge ], [ %49, %flush_anon_page.exit.while.body.i_crit_edge ]
  %address.i = getelementptr inbounds %struct.rmap_item, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %address.i, align 4
  %and.i = and i32 %52, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %47)
  %cmp.i121 = icmp eq i32 %and.i, %47
  br i1 %cmp.i121, label %while.body.i.if.then40_crit_edge, label %if.end.i

while.body.i.if.then40_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

if.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %47)
  %cmp2.i = icmp ugt i32 %52, %47
  br i1 %cmp2.i, label %if.end.i.while.end.i_crit_edge, label %if.end4.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end4.i:                                        ; preds = %if.end.i
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %46, align 4
  tail call fastcc void @remove_rmap_item_from_tree(ptr noundef nonnull %50) #9
  %56 = load i32, ptr @ksm_rmap_items, align 4
  %dec.i.i = add i32 %56, -1
  store i32 %dec.i.i, ptr @ksm_rmap_items, align 4
  %mm.i.i = getelementptr inbounds %struct.rmap_item, ptr %50, i32 0, i32 2
  %57 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %mm.i.i, align 4
  %58 = load ptr, ptr @rmap_item_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %58, ptr noundef nonnull %50) #9
  %59 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %46, align 4
  %tobool.not.i122 = icmp eq ptr %60, null
  br i1 %tobool.not.i122, label %if.end4.i.while.end.i_crit_edge, label %if.end4.i.while.body.i_crit_edge

if.end4.i.while.body.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end4.i.while.end.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %if.end4.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %flush_anon_page.exit.while.end.i_crit_edge
  %61 = load ptr, ptr @rmap_item_cache, align 4
  %call.i.i.i123 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %61, i32 noundef 77248) #9
  %tobool.not.i.i124 = icmp eq ptr %call.i.i.i123, null
  br i1 %tobool.not.i.i124, label %if.else43, label %if.then7.i

if.then7.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = load i32, ptr @ksm_rmap_items, align 4
  %inc.i.i = add i32 %62, 1
  store i32 %inc.i.i, ptr @ksm_rmap_items, align 4
  %63 = ptrtoint ptr %mm7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mm7, align 4
  %mm8.i = getelementptr inbounds %struct.rmap_item, ptr %call.i.i.i123, i32 0, i32 2
  %65 = ptrtoint ptr %mm8.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %mm8.i, align 8
  %address9.i = getelementptr inbounds %struct.rmap_item, ptr %call.i.i.i123, i32 0, i32 3
  %66 = ptrtoint ptr %address9.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %47, ptr %address9.i, align 4
  %67 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %46, align 4
  %69 = ptrtoint ptr %call.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %call.i.i.i123, align 8
  store ptr %call.i.i.i123, ptr %46, align 4
  br label %if.then40

if.then40:                                        ; preds = %if.then7.i, %while.body.i.if.then40_crit_edge
  %retval.0.i.ph = phi ptr [ %call.i.i.i123, %if.then7.i ], [ %50, %while.body.i.if.then40_crit_edge ]
  store ptr %retval.0.i.ph, ptr @ksm_scan.2, align 4
  %70 = load i32, ptr @ksm_scan.1, align 4
  %add42 = add i32 %70, 4096
  store i32 %add42, ptr @ksm_scan.1, align 4
  br label %if.end44

if.else43:                                        ; preds = %while.end.i
  %71 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %page, align 4
  %73 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and.i.i125 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i125)
  %tobool.not.i.i126 = icmp eq i32 %and.i.i125, 0
  br i1 %tobool.not.i.i126, label %if.end.i.i129, label %if.then.i.i128, !prof !182

if.then.i.i128:                                   ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i127 = add i32 %75, -1
  br label %_compound_head.exit.i

if.end.i.i129:                                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %72 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i129, %if.then.i.i128
  %retval.0.i.i130 = phi i32 [ %sub.i.i127, %if.then.i.i128 ], [ %76, %if.end.i.i129 ]
  %77 = inttoptr i32 %retval.0.i.i130 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %78 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.i.i.i = icmp eq i32 %79, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %80 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %80, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@scan_get_next_rmap_item, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %77, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end44_crit_edge

folio_put_testzero.exit.i.i.if.end44_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %77) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end44_crit_edge, %if.then40
  %retval.0.i175 = phi ptr [ %retval.0.i.ph, %if.then40 ], [ null, %folio_put_testzero.exit.i.i.if.end44_crit_edge ], [ null, %if.then.i4.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@scan_get_next_rmap_item, %if.then.i.i131)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i131], !srcloc !188

if.then.i.i131:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %4, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i131, %if.end44
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  br label %cleanup

if.end45:                                         ; preds = %PageAnon.exit
  %81 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %28, align 4
  %and.i.i133 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i133)
  %tobool.not.i.i134 = icmp eq i32 %and.i.i133, 0
  br i1 %tobool.not.i.i134, label %if.end.i.i137, label %if.then.i.i136, !prof !182

if.then.i.i136:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i135 = add i32 %82, -1
  br label %_compound_head.exit.i142

if.end.i.i137:                                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %call30 to i32
  br label %_compound_head.exit.i142

_compound_head.exit.i142:                         ; preds = %if.end.i.i137, %if.then.i.i136
  %retval.0.i.i138 = phi i32 [ %sub.i.i135, %if.then.i.i136 ], [ %83, %if.end.i.i137 ]
  %84 = inttoptr i32 %retval.0.i.i138 to ptr
  %_refcount.i.i.i.i.i139 = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 3
  %call.i.i.i.i.i.i.i140 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i139, i32 noundef 4) #9
  %85 = ptrtoint ptr %_refcount.i.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %_refcount.i.i.i.i.i139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i.i.i.i141 = icmp eq i32 %86, 0
  br i1 %cmp.i.i.i.i141, label %if.then.i.i.i.i143, label %do.end5.i.i.i.i147, !prof !187

if.then.i.i.i.i143:                               ; preds = %_compound_head.exit.i142
  call void @__sanitizer_cov_trace_pc() #11
  %87 = inttoptr i32 %retval.0.i.i138 to ptr
  tail call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i147:                               ; preds = %_compound_head.exit.i142
  %call.i.i.i10.i.i.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i139, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i139, i32 1, i32 3, i32 1) #9
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i139, ptr %_refcount.i.i.i.i.i139, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i139) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i145 = extractvalue { i32, i32 } %88, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i145)
  %cmp.i.i.i.i.i.i.i146 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i145, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@scan_get_next_rmap_item, %if.then.i.i.i.i.i149)) #9
          to label %folio_put_testzero.exit.i.i150 [label %if.then.i.i.i.i.i149], !srcloc !188

if.then.i.i.i.i.i149:                             ; preds = %do.end5.i.i.i.i147
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i148 = zext i1 %cmp.i.i.i.i.i.i.i146 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %84, i32 noundef -1, i32 noundef %conv.i.i.i.i.i148) #9
  br label %folio_put_testzero.exit.i.i150

folio_put_testzero.exit.i.i150:                   ; preds = %if.then.i.i.i.i.i149, %do.end5.i.i.i.i147
  br i1 %cmp.i.i.i.i.i.i.i146, label %if.then.i4.i151, label %folio_put_testzero.exit.i.i150.while.cond.backedge_crit_edge

folio_put_testzero.exit.i.i150.while.cond.backedge_crit_edge: ; preds = %folio_put_testzero.exit.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then.i4.i151:                                  ; preds = %folio_put_testzero.exit.i.i150
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %84) #9
  br label %while.cond.backedge

for.inc49:                                        ; preds = %while.cond.backedge.for.inc49_crit_edge, %while.body.for.inc49_crit_edge, %if.end24.for.inc49_crit_edge, %for.body14.for.inc49_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.1186, i32 0, i32 2
  %89 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vm_next, align 4
  %tobool13.not = icmp eq ptr %90, null
  br i1 %tobool13.not, label %for.inc49.for.end50_crit_edge, label %for.inc49.for.body14_crit_edge

for.inc49.for.body14_crit_edge:                   ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.inc49.for.end50_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end50

for.end50:                                        ; preds = %for.inc49.for.end50_crit_edge, %if.end11.for.end50_crit_edge, %mmap_read_lock.exit.for.end50_crit_edge
  %call.i.i.i155 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i, i32 noundef 4) #9
  %91 = ptrtoint ptr %mm_users.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %mm_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i156 = icmp eq i32 %92, 0
  br i1 %cmp.i156, label %if.then52, label %for.end50.if.end54_crit_edge

for.end50.if.end54_crit_edge:                     ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then52:                                        ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @ksm_scan.1, align 4
  %rmap_list53 = getelementptr inbounds %struct.mm_slot, ptr %slot.1, i32 0, i32 2
  store ptr %rmap_list53, ptr @ksm_scan.2, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %for.end50.if.end54_crit_edge
  %93 = load ptr, ptr @ksm_scan.2, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %tobool.not6.i = icmp eq ptr %95, null
  br i1 %tobool.not6.i, label %if.end54.remove_trailing_rmap_items.exit_crit_edge, label %if.end54.while.body.i160_crit_edge

if.end54.while.body.i160_crit_edge:               ; preds = %if.end54
  br label %while.body.i160

if.end54.remove_trailing_rmap_items.exit_crit_edge: ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trailing_rmap_items.exit

while.body.i160:                                  ; preds = %while.body.i160.while.body.i160_crit_edge, %if.end54.while.body.i160_crit_edge
  %96 = phi ptr [ %104, %while.body.i160.while.body.i160_crit_edge ], [ %95, %if.end54.while.body.i160_crit_edge ]
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %93, align 4
  tail call fastcc void @remove_rmap_item_from_tree(ptr noundef nonnull %96) #9
  %100 = load i32, ptr @ksm_rmap_items, align 4
  %dec.i.i157 = add i32 %100, -1
  store i32 %dec.i.i157, ptr @ksm_rmap_items, align 4
  %mm.i.i158 = getelementptr inbounds %struct.rmap_item, ptr %96, i32 0, i32 2
  %101 = ptrtoint ptr %mm.i.i158 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %mm.i.i158, align 4
  %102 = load ptr, ptr @rmap_item_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %102, ptr noundef nonnull %96) #9
  %103 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %93, align 4
  %tobool.not.i159 = icmp eq ptr %104, null
  br i1 %tobool.not.i159, label %while.body.i160.remove_trailing_rmap_items.exit_crit_edge, label %while.body.i160.while.body.i160_crit_edge

while.body.i160.while.body.i160_crit_edge:        ; preds = %while.body.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i160

while.body.i160.remove_trailing_rmap_items.exit_crit_edge: ; preds = %while.body.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trailing_rmap_items.exit

remove_trailing_rmap_items.exit:                  ; preds = %while.body.i160.remove_trailing_rmap_items.exit_crit_edge, %if.end54.remove_trailing_rmap_items.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %mm_list56 = getelementptr inbounds %struct.mm_slot, ptr %slot.1, i32 0, i32 1
  %105 = ptrtoint ptr %mm_list56 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mm_list56, align 4
  %add.ptr59 = getelementptr i8, ptr %106, i32 -8
  store ptr %add.ptr59, ptr @ksm_scan.0, align 4
  %107 = load i32, ptr @ksm_scan.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp60 = icmp eq i32 %107, 0
  br i1 %cmp60, label %if.then61, label %if.else63

if.then61:                                        ; preds = %remove_trailing_rmap_items.exit
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %slot.1, i32 0, i32 1
  %108 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %109, null
  br i1 %tobool.not.i.not.i.i, label %if.then61.hash_del.exit_crit_edge, label %if.then.i.i162

if.then61.hash_del.exit_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_del.exit

if.then.i.i162:                                   ; preds = %if.then61
  %110 = ptrtoint ptr %slot.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %slot.1, align 4
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %111, ptr %109, align 4
  %tobool.not.i3.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i162.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i162.__hlist_del.exit.i.i_crit_edge:    ; preds = %if.then.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %111, i32 0, i32 1
  %113 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %109, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i162.__hlist_del.exit.i.i_crit_edge
  %114 = ptrtoint ptr %slot.1 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %slot.1, align 4
  %115 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then61.hash_del.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list56) #9
  br i1 %call.i.i, label %if.end.i.i163, label %hash_del.exit.list_del.exit_crit_edge

hash_del.exit.list_del.exit_crit_edge:            ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i163:                                    ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mm_slot, ptr %slot.1, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i, align 4
  %118 = ptrtoint ptr %mm_list56 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mm_list56, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i163, %hash_del.exit.list_del.exit_crit_edge
  %122 = ptrtoint ptr %mm_list56 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 256 to ptr), ptr %mm_list56, align 4
  %prev.i = getelementptr inbounds %struct.mm_slot, ptr %slot.1, i32 0, i32 1, i32 1
  %123 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %124 = load ptr, ptr @mm_slot_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %124, ptr noundef %slot.1) #9
  %flags = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 43
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@scan_get_next_rmap_item, %if.then.i.i164)) #9
          to label %mmap_read_unlock.exit166 [label %if.then.i.i164], !srcloc !188

if.then.i.i164:                                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %4, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit166

mmap_read_unlock.exit166:                         ; preds = %if.then.i.i164, %list_del.exit
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  %mm_count.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 11
  %call.i.i.i167 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #9
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %125, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i168, label %mmap_read_unlock.exit166.if.end64_crit_edge, !prof !187

mmap_read_unlock.exit166.if.end64_crit_edge:      ; preds = %mmap_read_unlock.exit166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then.i168:                                     ; preds = %mmap_read_unlock.exit166
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmdrop(ptr noundef %4) #9
  br label %if.end64

if.else63:                                        ; preds = %remove_trailing_rmap_items.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@scan_get_next_rmap_item, %if.then.i.i170)) #9
          to label %mmap_read_unlock.exit172 [label %if.then.i.i170], !srcloc !188

if.then.i.i170:                                   ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %4, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit172

mmap_read_unlock.exit172:                         ; preds = %if.then.i.i170, %if.else63
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  br label %if.end64

if.end64:                                         ; preds = %mmap_read_unlock.exit172, %if.then.i168, %mmap_read_unlock.exit166.if.end64_crit_edge
  %126 = load ptr, ptr @ksm_scan.0, align 4
  %cmp65.not = icmp eq ptr %126, @ksm_mm_head
  br i1 %cmp65.not, label %if.end67, label %if.end64.next_mm_crit_edge

if.end64.next_mm_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_mm

if.end67:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %127 = load i32, ptr @ksm_scan.3, align 4
  %inc68 = add i32 %127, 1
  store i32 %inc68, ptr @ksm_scan.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %mmap_read_unlock.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i175, %mmap_read_unlock.exit ], [ null, %if.end67 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then1.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmp_and_merge_page(ptr noundef %page, ptr noundef %rmap_item) unnamed_addr #0 align 64 {
entry:
  %tree_page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 2
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tree_page) #9
  %2 = ptrtoint ptr %tree_page to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tree_page, align 4
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %5, -1
  br label %page_stable_node.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %page to i32
  br label %page_stable_node.exit

page_stable_node.exit:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %and.i.i.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  %and.i3.i.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i3.i.i to ptr
  %cond.i.i = select i1 %cmp.i.i.i, ptr %11, ptr null
  %tobool.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool.not, label %page_stable_node.exit.if.end17_crit_edge, label %if.then

page_stable_node.exit.if.end17_crit_edge:         ; preds = %page_stable_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %page_stable_node.exit
  %12 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cond.i.i, align 4
  %cmp.not = icmp eq ptr %13, @migrate_nodes
  br i1 %cmp.not, label %if.then.if.end13_crit_edge, label %land.lhs.true9

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.then
  %14 = getelementptr inbounds %struct.stable_node, ptr %cond.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %17 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp11 = icmp eq ptr %19, %cond.i.i
  br i1 %cmp11, label %land.lhs.true9.cleanup88_crit_edge, label %land.lhs.true9.if.end13_crit_edge

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true9.cleanup88_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %rmap_hlist_len.i.i = getelementptr inbounds %struct.stable_node, ptr %cond.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %rmap_hlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmap_hlist_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp slt i32 %21, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %do.end5.i.i, !prof !187

do.body2.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end5.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool7.not.i.i, label %do.end5.i.i.if.end17_crit_edge, label %is_page_sharing_candidate.exit

do.end5.i.i.if.end17_crit_edge:                   ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

is_page_sharing_candidate.exit:                   ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp9.i.i = icmp sge i32 %21, %22
  br label %if.end17

if.end17:                                         ; preds = %is_page_sharing_candidate.exit, %do.end5.i.i.if.end17_crit_edge, %page_stable_node.exit.if.end17_crit_edge
  %max_page_sharing_bypass.0.off0 = phi i1 [ false, %page_stable_node.exit.if.end17_crit_edge ], [ true, %do.end5.i.i.if.end17_crit_edge ], [ %cmp9.i.i, %is_page_sharing_candidate.exit ]
  %call18 = tail call fastcc ptr @stable_tree_search(ptr noundef %page)
  %cmp19 = icmp eq ptr %call18, %page
  br i1 %cmp19, label %land.lhs.true20, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true20:                                  ; preds = %if.end17
  %23 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %cmp22 = icmp eq ptr %25, %cond.i.i
  br i1 %cmp22, label %if.then23, label %land.lhs.true20.if.end24_crit_edge

land.lhs.true20.if.end24_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true20
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %3, align 4
  %and.i.i159 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i159)
  %tobool.not.i.i160 = icmp eq i32 %and.i.i159, 0
  br i1 %tobool.not.i.i160, label %if.end.i.i163, label %if.then.i.i162, !prof !182

if.then.i.i162:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i161 = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i163:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i163, %if.then.i.i162
  %retval.0.i.i164 = phi i32 [ %sub.i.i161, %if.then.i.i162 ], [ %28, %if.end.i.i163 ]
  %29 = inttoptr i32 %retval.0.i.i164 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cmp_and_merge_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup88_crit_edge

folio_put_testzero.exit.i.i.cleanup88_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %29) #9
  br label %cleanup88

if.end24:                                         ; preds = %land.lhs.true20.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  tail call fastcc void @remove_rmap_item_from_tree(ptr noundef %rmap_item)
  %tobool25.not = icmp eq ptr %call18, null
  br i1 %tobool25.not, label %if.end37, label %if.then26

if.then26:                                        ; preds = %if.end24
  %33 = ptrtoint ptr %call18 to i32
  %cmp28 = icmp eq ptr %call18, inttoptr (i32 -16 to ptr)
  br i1 %cmp28, label %if.then26.cleanup88_crit_edge, label %if.end30

if.then26.cleanup88_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.end30:                                         ; preds = %if.then26
  %call31 = tail call fastcc i32 @try_to_merge_with_ksm_page(ptr noundef %rmap_item, ptr noundef %page, ptr noundef nonnull %call18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 788) #9
  %34 = getelementptr inbounds %struct.page, ptr %call18, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i165 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i165)
  %tobool.not.i.i166 = icmp eq i32 %and.i.i165, 0
  br i1 %tobool.not.i.i166, label %if.then33._compound_head.exit.i171_crit_edge, label %if.then.i.i168, !prof !182

if.then33._compound_head.exit.i171_crit_edge:     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i171

if.then.i.i168:                                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i167 = add i32 %36, -1
  br label %_compound_head.exit.i171

_compound_head.exit.i171:                         ; preds = %if.then.i.i168, %if.then33._compound_head.exit.i171_crit_edge
  %retval.0.i.i170 = phi i32 [ %sub.i.i167, %if.then.i.i168 ], [ %33, %if.then33._compound_head.exit.i171_crit_edge ]
  %37 = inttoptr i32 %retval.0.i.i170 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i171
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i171
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef 4) #9
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %37, align 4
  %and.i.i4.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %37, i32 1, i32 3, i32 1) #9
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #9, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %37) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %34, align 4
  %and.i.i172 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i172)
  %tobool.not.i.i173 = icmp eq i32 %and.i.i172, 0
  br i1 %tobool.not.i.i173, label %lock_page.exit.page_stable_node.exit184_crit_edge, label %if.then.i.i175, !prof !182

lock_page.exit.page_stable_node.exit184_crit_edge: ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %page_stable_node.exit184

if.then.i.i175:                                   ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i174 = add i32 %45, -1
  br label %page_stable_node.exit184

page_stable_node.exit184:                         ; preds = %if.then.i.i175, %lock_page.exit.page_stable_node.exit184_crit_edge
  %retval.0.i.i177 = phi i32 [ %sub.i.i174, %if.then.i.i175 ], [ %33, %lock_page.exit.page_stable_node.exit184_crit_edge ]
  %46 = inttoptr i32 %retval.0.i.i177 to ptr
  %mapping.i.i.i178 = getelementptr inbounds %struct.anon.63, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %mapping.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mapping.i.i.i178, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i.i179 = and i32 %49, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i179)
  %cmp.i.i.i180 = icmp eq i32 %and.i.i.i179, 3
  %and.i3.i.i181 = and i32 %49, -4
  %50 = inttoptr i32 %and.i3.i.i181 to ptr
  %cond.i.i182 = select i1 %cmp.i.i.i180, ptr %50, ptr null
  %rmap_hlist_len.i = getelementptr inbounds %struct.stable_node, ptr %cond.i.i182, i32 0, i32 3
  %51 = ptrtoint ptr %rmap_hlist_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rmap_hlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i = icmp slt i32 %52, 0
  br i1 %cmp.i, label %do.body2.i, label %do.end5.i, !prof !187

do.body2.i:                                       ; preds = %page_stable_node.exit184
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2007, 0\0A.popsection", ""() #9, !srcloc !213
  unreachable

do.end5.i:                                        ; preds = %page_stable_node.exit184
  %inc.i = add nuw i32 %52, 1
  %53 = ptrtoint ptr %rmap_hlist_len.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc.i, ptr %rmap_hlist_len.i, align 4
  br i1 %max_page_sharing_bypass.0.off0, label %do.end5.i.if.end58.i_crit_edge, label %if.then8.i

do.end5.i.if.end58.i_crit_edge:                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then8.i:                                       ; preds = %do.end5.i
  %54 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %54)
  %cmp10.i = icmp sgt i32 %inc.i, %54
  br i1 %cmp10.i, label %land.rhs.i, label %if.then8.i.if.end58.i_crit_edge

if.then8.i.if.end58.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

land.rhs.i:                                       ; preds = %if.then8.i
  %.b75.i = load i1, ptr @stable_tree_append.__already_done, align 1
  br i1 %.b75.i, label %land.rhs.i.if.end58.i_crit_edge, label %if.then26.i, !prof !182

land.rhs.i.if.end58.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i

if.then26.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @stable_tree_append.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2013, i32 noundef 9, ptr noundef null) #9
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then26.i, %land.rhs.i.if.end58.i_crit_edge, %if.then8.i.if.end58.i_crit_edge, %do.end5.i.if.end58.i_crit_edge
  %55 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cond.i.i182, ptr %55, align 4
  %address.i = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %57 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %address.i, align 4
  %or.i = or i32 %58, 512
  store i32 %or.i, ptr %address.i, align 4
  %hlist.i = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 1
  %hlist59.i = getelementptr inbounds %struct.stable_node, ptr %cond.i.i182, i32 0, i32 1
  %59 = ptrtoint ptr %hlist59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hlist59.i, align 4
  %61 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %60, ptr %hlist.i, align 4
  %tobool.not.i.i185 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i185, label %if.end58.i.stable_tree_append.exit_crit_edge, label %do.body12.i.i

if.end58.i.stable_tree_append.exit_crit_edge:     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_tree_append.exit

do.body12.i.i:                                    ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %hlist.i, ptr %pprev.i.i, align 4
  br label %stable_tree_append.exit

stable_tree_append.exit:                          ; preds = %do.body12.i.i, %if.end58.i.stable_tree_append.exit_crit_edge
  %63 = ptrtoint ptr %hlist59.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %hlist.i, ptr %hlist59.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 2
  %64 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %hlist59.i, ptr %pprev34.i.i, align 4
  %65 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hlist.i, align 4
  %tobool61.not.i = icmp eq ptr %66, null
  %ksm_pages_shared.ksm_pages_sharing.i = select i1 %tobool61.not.i, ptr @ksm_pages_shared, ptr @ksm_pages_sharing
  %67 = ptrtoint ptr %ksm_pages_shared.ksm_pages_sharing.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ksm_pages_shared.ksm_pages_sharing.i, align 4
  %inc64.i = add i32 %68, 1
  store i32 %inc64.i, ptr %ksm_pages_shared.ksm_pages_sharing.i, align 4
  tail call void @unlock_page(ptr noundef nonnull %call18) #9
  br label %if.end36

if.end36:                                         ; preds = %stable_tree_append.exit, %if.end30.if.end36_crit_edge
  %69 = getelementptr inbounds %struct.page, ptr %call18, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %and.i.i186 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i186)
  %tobool.not.i.i187 = icmp eq i32 %and.i.i186, 0
  br i1 %tobool.not.i.i187, label %if.end36._compound_head.exit.i195_crit_edge, label %if.then.i.i189, !prof !182

if.end36._compound_head.exit.i195_crit_edge:      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i195

if.then.i.i189:                                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i188 = add i32 %71, -1
  br label %_compound_head.exit.i195

_compound_head.exit.i195:                         ; preds = %if.then.i.i189, %if.end36._compound_head.exit.i195_crit_edge
  %retval.0.i.i191 = phi i32 [ %sub.i.i188, %if.then.i.i189 ], [ %33, %if.end36._compound_head.exit.i195_crit_edge ]
  %72 = inttoptr i32 %retval.0.i.i191 to ptr
  %_refcount.i.i.i.i.i192 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 3
  %call.i.i.i.i.i.i.i193 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i192, i32 noundef 4) #9
  %73 = ptrtoint ptr %_refcount.i.i.i.i.i192 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %_refcount.i.i.i.i.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.i.i.i.i194 = icmp eq i32 %74, 0
  br i1 %cmp.i.i.i.i194, label %if.then.i.i.i.i196, label %do.end5.i.i.i.i200, !prof !187

if.then.i.i.i.i196:                               ; preds = %_compound_head.exit.i195
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i200:                               ; preds = %_compound_head.exit.i195
  %call.i.i.i10.i.i.i.i197 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i192, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i192, i32 1, i32 3, i32 1) #9
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i192, ptr %_refcount.i.i.i.i.i192, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i192) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i198 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i198)
  %cmp.i.i.i.i.i.i.i199 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i198, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cmp_and_merge_page, %if.then.i.i.i.i.i202)) #9
          to label %folio_put_testzero.exit.i.i203 [label %if.then.i.i.i.i.i202], !srcloc !188

if.then.i.i.i.i.i202:                             ; preds = %do.end5.i.i.i.i200
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i201 = zext i1 %cmp.i.i.i.i.i.i.i199 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %72, i32 noundef -1, i32 noundef %conv.i.i.i.i.i201) #9
  br label %folio_put_testzero.exit.i.i203

folio_put_testzero.exit.i.i203:                   ; preds = %if.then.i.i.i.i.i202, %do.end5.i.i.i.i200
  br i1 %cmp.i.i.i.i.i.i.i199, label %if.then.i4.i204, label %folio_put_testzero.exit.i.i203.cleanup88_crit_edge

folio_put_testzero.exit.i.i203.cleanup88_crit_edge: ; preds = %folio_put_testzero.exit.i.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.then.i4.i204:                                  ; preds = %folio_put_testzero.exit.i.i203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %72) #9
  br label %cleanup88

if.end37:                                         ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %76 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %76, 512
  %77 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %80, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !204
  %81 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i1.i.i.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %84, i32 0, i32 213
  %85 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %86, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i) #9
  %call.i.i = tail call i32 @xxh32(ptr noundef %call.i.i.i, i32 noundef 4096, i32 noundef 0) #9
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %87 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i1.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 213
  %91 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %92, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  %93 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %96, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %oldchecksum = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 4
  %97 = ptrtoint ptr %oldchecksum to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %oldchecksum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %call.i.i)
  %cmp39.not = icmp eq i32 %98, %call.i.i
  br i1 %cmp39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %oldchecksum to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %call.i.i, ptr %oldchecksum, align 4
  br label %cleanup88

if.end42:                                         ; preds = %if.end37
  %100 = load i8, ptr @ksm_use_zero_pages, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool43.not = icmp eq i8 %100, 0
  br i1 %tobool43.not, label %if.end42.if.end55_crit_edge, label %land.lhs.true44

if.end42.if.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true44:                                  ; preds = %if.end42
  %101 = load i32, ptr @zero_checksum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %101)
  %cmp45 = icmp eq i32 %call.i.i, %101
  br i1 %cmp45, label %if.then46, label %land.lhs.true44.if.end55_crit_edge

land.lhs.true44.if.end55_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then46:                                        ; preds = %land.lhs.true44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@cmp_and_merge_page, %if.then.i.i206)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i206], !srcloc !188

if.then.i.i206:                                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i206, %if.then46
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@cmp_and_merge_page, %if.then.i3.i)) #9
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !188

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %102 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %address, align 4
  %mm_users.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 10
  %call.i.i.i.i207 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i.i, i32 noundef 4) #9
  %104 = ptrtoint ptr %mm_users.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %mm_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp.i.i208 = icmp eq i32 %105, 0
  br i1 %cmp.i.i208, label %mmap_read_lock.exit.cleanup88.critedge_crit_edge, label %if.end.i

mmap_read_lock.exit.cleanup88.critedge_crit_edge: ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88.critedge

if.end.i:                                         ; preds = %mmap_read_lock.exit
  %call.i.i209 = tail call ptr @find_vma(ptr noundef %1, i32 noundef %103) #9
  %tobool.not.i.i210 = icmp eq ptr %call.i.i209, null
  br i1 %tobool.not.i.i210, label %if.end.i.cleanup88.critedge_crit_edge, label %land.lhs.true.i.i

if.end.i.cleanup88.critedge_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88.critedge

land.lhs.true.i.i:                                ; preds = %if.end.i
  %106 = ptrtoint ptr %call.i.i209 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %call.i.i209, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %103)
  %cmp.i11.i = icmp ugt i32 %107, %103
  br i1 %cmp.i11.i, label %land.lhs.true.i.i.cleanup88.critedge_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.i.cleanup88.critedge_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88.critedge

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i209, i32 0, i32 8
  %108 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vm_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %tobool2.not.i = icmp sgt i32 %109, -1
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup88.critedge_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.cleanup88.critedge_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88.critedge

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i209, i32 0, i32 11
  %110 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %anon_vma.i, align 4
  %tobool4.not.i = icmp eq ptr %111, null
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.cleanup88.critedge_crit_edge, label %if.then49

lor.lhs.false3.i.cleanup88.critedge_crit_edge:    ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88.critedge

if.then49:                                        ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %112 = load ptr, ptr @empty_zero_page, align 4
  %call50 = tail call fastcc i32 @try_to_merge_one_page(ptr noundef nonnull %call.i.i209, ptr noundef %page, ptr noundef %112)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %phi.cmp = icmp eq i32 %call50, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@cmp_and_merge_page, %if.then.i.i211)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i211], !srcloc !188

if.then.i.i211:                                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i211, %if.then49
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  br i1 %phi.cmp, label %mmap_read_unlock.exit.cleanup88_crit_edge, label %mmap_read_unlock.exit.if.end55_crit_edge

mmap_read_unlock.exit.if.end55_crit_edge:         ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

mmap_read_unlock.exit.cleanup88_crit_edge:        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.end55:                                         ; preds = %mmap_read_unlock.exit.if.end55_crit_edge, %land.lhs.true44.if.end55_crit_edge, %if.end42.if.end55_crit_edge
  %call56 = call fastcc ptr @unstable_tree_search_insert(ptr noundef %rmap_item, ptr noundef %page, ptr noundef nonnull %tree_page)
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end55.cleanup88_crit_edge, label %if.then58

if.end55.cleanup88_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.then58:                                        ; preds = %if.end55
  %113 = ptrtoint ptr %tree_page to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %tree_page, align 4
  %call.i = tail call fastcc i32 @try_to_merge_with_ksm_page(ptr noundef %rmap_item, ptr noundef %page, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i214, label %if.then58.try_to_merge_two_pages.exit_crit_edge

if.then58.try_to_merge_two_pages.exit_crit_edge:  ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_merge_two_pages.exit

if.then.i214:                                     ; preds = %if.then58
  %call1.i = tail call fastcc i32 @try_to_merge_with_ksm_page(ptr noundef nonnull %call56, ptr noundef %114, ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i213 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i213, label %if.then.i214.try_to_merge_two_pages.exit_crit_edge, label %if.then3.i

if.then.i214.try_to_merge_two_pages.exit_crit_edge: ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_merge_two_pages.exit

if.then3.i:                                       ; preds = %if.then.i214
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @break_cow(ptr noundef %rmap_item) #9
  br label %try_to_merge_two_pages.exit

try_to_merge_two_pages.exit:                      ; preds = %if.then3.i, %if.then.i214.try_to_merge_two_pages.exit_crit_edge, %if.then58.try_to_merge_two_pages.exit_crit_edge
  %115 = phi ptr [ %page, %if.then.i214.try_to_merge_two_pages.exit_crit_edge ], [ null, %if.then58.try_to_merge_two_pages.exit_crit_edge ], [ null, %if.then3.i ]
  %116 = getelementptr inbounds %struct.page, ptr %114, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %116, align 4
  %and.i.i215 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215)
  %tobool.not.i.i216 = icmp eq i32 %and.i.i215, 0
  br i1 %tobool.not.i.i216, label %if.end.i.i219, label %if.then.i.i218, !prof !182

if.then.i.i218:                                   ; preds = %try_to_merge_two_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i217 = add i32 %118, -1
  br label %_compound_head.exit.i224

if.end.i.i219:                                    ; preds = %try_to_merge_two_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %114 to i32
  br label %_compound_head.exit.i224

_compound_head.exit.i224:                         ; preds = %if.end.i.i219, %if.then.i.i218
  %retval.0.i.i220 = phi i32 [ %sub.i.i217, %if.then.i.i218 ], [ %119, %if.end.i.i219 ]
  %120 = inttoptr i32 %retval.0.i.i220 to ptr
  %_refcount.i.i.i.i.i221 = getelementptr inbounds %struct.page, ptr %120, i32 0, i32 3
  %call.i.i.i.i.i.i.i222 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i221, i32 noundef 4) #9
  %121 = ptrtoint ptr %_refcount.i.i.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %_refcount.i.i.i.i.i221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.i.i.i.i223 = icmp eq i32 %122, 0
  br i1 %cmp.i.i.i.i223, label %if.then.i.i.i.i225, label %do.end5.i.i.i.i229, !prof !187

if.then.i.i.i.i225:                               ; preds = %_compound_head.exit.i224
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %120, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i229:                               ; preds = %_compound_head.exit.i224
  %call.i.i.i10.i.i.i.i226 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i221, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i221, i32 1, i32 3, i32 1) #9
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i221, ptr %_refcount.i.i.i.i.i221, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i221) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i227 = extractvalue { i32, i32 } %123, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i227)
  %cmp.i.i.i.i.i.i.i228 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i227, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@cmp_and_merge_page, %if.then.i.i.i.i.i231)) #9
          to label %folio_put_testzero.exit.i.i232 [label %if.then.i.i.i.i.i231], !srcloc !188

if.then.i.i.i.i.i231:                             ; preds = %do.end5.i.i.i.i229
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i230 = zext i1 %cmp.i.i.i.i.i.i.i228 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %120, i32 noundef -1, i32 noundef %conv.i.i.i.i.i230) #9
  br label %folio_put_testzero.exit.i.i232

folio_put_testzero.exit.i.i232:                   ; preds = %if.then.i.i.i.i.i231, %do.end5.i.i.i.i229
  br i1 %cmp.i.i.i.i.i.i.i228, label %if.then.i4.i233, label %folio_put_testzero.exit.i.i232.put_page.exit234_crit_edge

folio_put_testzero.exit.i.i232.put_page.exit234_crit_edge: ; preds = %folio_put_testzero.exit.i.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit234

if.then.i4.i233:                                  ; preds = %folio_put_testzero.exit.i.i232
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %120) #9
  br label %put_page.exit234

put_page.exit234:                                 ; preds = %if.then.i4.i233, %folio_put_testzero.exit.i.i232.put_page.exit234_crit_edge
  %tobool65.not = icmp eq ptr %115, null
  br i1 %tobool65.not, label %put_page.exit234.cleanup88_crit_edge, label %if.then66

put_page.exit234.cleanup88_crit_edge:             ; preds = %put_page.exit234
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

if.then66:                                        ; preds = %put_page.exit234
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 788) #9
  %124 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 1
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %124, align 4
  %and.i.i235 = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i235)
  %tobool.not.i.i236 = icmp eq i32 %and.i.i235, 0
  br i1 %tobool.not.i.i236, label %if.end.i.i239, label %if.then.i.i238, !prof !182

if.then.i.i238:                                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i237 = add i32 %126, -1
  br label %_compound_head.exit.i243

if.end.i.i239:                                    ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %115 to i32
  br label %_compound_head.exit.i243

_compound_head.exit.i243:                         ; preds = %if.end.i.i239, %if.then.i.i238
  %retval.0.i.i240 = phi i32 [ %sub.i.i237, %if.then.i.i238 ], [ %127, %if.end.i.i239 ]
  %128 = inttoptr i32 %retval.0.i.i240 to ptr
  %129 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %129, align 4
  %and.i.i.i.i241 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i241)
  %tobool.not.i.i.i242 = icmp eq i32 %and.i.i.i.i241, 0
  br i1 %tobool.not.i.i.i242, label %folio_flags.exit.i.i248, label %if.then.i.i.i244, !prof !182

if.then.i.i.i244:                                 ; preds = %_compound_head.exit.i243
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %128, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i248:                          ; preds = %_compound_head.exit.i243
  %call.i.i.i.i245 = tail call zeroext i1 @__kasan_check_write(ptr noundef %128, i32 noundef 4) #9
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %128, align 4
  %and.i.i4.i.i246 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i246)
  %tobool.not.i.i.i.i247 = icmp eq i32 %and.i.i4.i.i246, 0
  br i1 %tobool.not.i.i.i.i247, label %folio_trylock.exit.i252, label %folio_flags.exit.i.i248.if.then.i253_crit_edge

folio_flags.exit.i.i248.if.then.i253_crit_edge:   ; preds = %folio_flags.exit.i.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i253

folio_trylock.exit.i252:                          ; preds = %folio_flags.exit.i.i248
  tail call void @llvm.prefetch.p0(ptr %128, i32 1, i32 3, i32 1) #9
  %134 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %128, ptr %128, i32 1, ptr elementtype(i32) %128) #9, !srcloc !211
  %asmresult.i.i.i.i.i.i.i249 = extractvalue { i32, i32, i32 } %134, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and1.i.i.i.i250 = and i32 %asmresult.i.i.i.i.i.i.i249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i250)
  %phi.cmp.i.i.i251 = icmp eq i32 %and1.i.i.i.i250, 0
  br i1 %phi.cmp.i.i.i251, label %folio_trylock.exit.i252.lock_page.exit255_crit_edge, label %folio_trylock.exit.i252.if.then.i253_crit_edge

folio_trylock.exit.i252.if.then.i253_crit_edge:   ; preds = %folio_trylock.exit.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i253

folio_trylock.exit.i252.lock_page.exit255_crit_edge: ; preds = %folio_trylock.exit.i252
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit255

if.then.i253:                                     ; preds = %folio_trylock.exit.i252.if.then.i253_crit_edge, %folio_flags.exit.i.i248.if.then.i253_crit_edge
  tail call void @__folio_lock(ptr noundef %128) #9
  br label %lock_page.exit255

lock_page.exit255:                                ; preds = %if.then.i253, %folio_trylock.exit.i252.lock_page.exit255_crit_edge
  %call67 = tail call fastcc ptr @stable_tree_insert(ptr noundef nonnull %115)
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.then72.critedge, label %if.then69

if.then69:                                        ; preds = %lock_page.exit255
  %rmap_hlist_len.i256 = getelementptr inbounds %struct.stable_node, ptr %call67, i32 0, i32 3
  %135 = ptrtoint ptr %rmap_hlist_len.i256 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rmap_hlist_len.i256, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp.i257 = icmp slt i32 %136, 0
  br i1 %cmp.i257, label %do.body2.i258, label %do.end5.i260, !prof !187

do.body2.i258:                                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2007, 0\0A.popsection", ""() #9, !srcloc !213
  unreachable

do.end5.i260:                                     ; preds = %if.then69
  %inc.i259 = add nuw i32 %136, 1
  %137 = ptrtoint ptr %rmap_hlist_len.i256 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %inc.i259, ptr %rmap_hlist_len.i256, align 4
  %138 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i259, i32 %138)
  %cmp10.i261 = icmp sgt i32 %inc.i259, %138
  br i1 %cmp10.i261, label %land.rhs.i264, label %do.end5.i260.if.end58.i271_crit_edge

do.end5.i260.if.end58.i271_crit_edge:             ; preds = %do.end5.i260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i271

land.rhs.i264:                                    ; preds = %do.end5.i260
  %.b75.i263 = load i1, ptr @stable_tree_append.__already_done, align 1
  br i1 %.b75.i263, label %land.rhs.i264.if.end58.i271_crit_edge, label %if.then26.i265, !prof !182

land.rhs.i264.if.end58.i271_crit_edge:            ; preds = %land.rhs.i264
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i271

if.then26.i265:                                   ; preds = %land.rhs.i264
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @stable_tree_append.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2013, i32 noundef 9, ptr noundef null) #9
  br label %if.end58.i271

if.end58.i271:                                    ; preds = %if.then26.i265, %land.rhs.i264.if.end58.i271_crit_edge, %do.end5.i260.if.end58.i271_crit_edge
  %139 = getelementptr inbounds %struct.rmap_item, ptr %call56, i32 0, i32 5
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call67, ptr %139, align 4
  %address.i266 = getelementptr inbounds %struct.rmap_item, ptr %call56, i32 0, i32 3
  %141 = ptrtoint ptr %address.i266 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %address.i266, align 4
  %or.i267 = or i32 %142, 512
  store i32 %or.i267, ptr %address.i266, align 4
  %hlist.i268 = getelementptr inbounds %struct.rmap_item, ptr %call56, i32 0, i32 5, i32 0, i32 1
  %hlist59.i269 = getelementptr inbounds %struct.stable_node, ptr %call67, i32 0, i32 1
  %143 = ptrtoint ptr %hlist59.i269 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hlist59.i269, align 4
  %145 = ptrtoint ptr %hlist.i268 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %144, ptr %hlist.i268, align 4
  %tobool.not.i.i270 = icmp eq ptr %144, null
  br i1 %tobool.not.i.i270, label %if.end58.i271.stable_tree_append.exit278_crit_edge, label %do.body12.i.i273

if.end58.i271.stable_tree_append.exit278_crit_edge: ; preds = %if.end58.i271
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_tree_append.exit278

do.body12.i.i273:                                 ; preds = %if.end58.i271
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i272 = getelementptr inbounds %struct.hlist_node, ptr %144, i32 0, i32 1
  %146 = ptrtoint ptr %pprev.i.i272 to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %hlist.i268, ptr %pprev.i.i272, align 4
  br label %stable_tree_append.exit278

stable_tree_append.exit278:                       ; preds = %do.body12.i.i273, %if.end58.i271.stable_tree_append.exit278_crit_edge
  %147 = ptrtoint ptr %hlist59.i269 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %hlist.i268, ptr %hlist59.i269, align 4
  %pprev34.i.i274 = getelementptr inbounds %struct.rmap_item, ptr %call56, i32 0, i32 5, i32 0, i32 2
  %148 = ptrtoint ptr %pprev34.i.i274 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %hlist59.i269, ptr %pprev34.i.i274, align 4
  %149 = ptrtoint ptr %hlist.i268 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hlist.i268, align 4
  %tobool61.not.i275 = icmp eq ptr %150, null
  %ksm_pages_shared.ksm_pages_sharing.i276 = select i1 %tobool61.not.i275, ptr @ksm_pages_shared, ptr @ksm_pages_sharing
  %151 = ptrtoint ptr %ksm_pages_shared.ksm_pages_sharing.i276 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ksm_pages_shared.ksm_pages_sharing.i276, align 4
  %inc64.i277 = add i32 %152, 1
  store i32 %inc64.i277, ptr %ksm_pages_shared.ksm_pages_sharing.i276, align 4
  %153 = ptrtoint ptr %rmap_hlist_len.i256 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rmap_hlist_len.i256, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i280 = icmp slt i32 %154, 0
  br i1 %cmp.i280, label %do.body2.i281, label %do.end5.i283, !prof !187

do.body2.i281:                                    ; preds = %stable_tree_append.exit278
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2007, 0\0A.popsection", ""() #9, !srcloc !213
  unreachable

do.end5.i283:                                     ; preds = %stable_tree_append.exit278
  %inc.i282 = add nuw i32 %154, 1
  %155 = ptrtoint ptr %rmap_hlist_len.i256 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %inc.i282, ptr %rmap_hlist_len.i256, align 4
  %156 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i282, i32 %156)
  %cmp10.i284 = icmp sgt i32 %inc.i282, %156
  br i1 %cmp10.i284, label %land.rhs.i287, label %do.end5.i283.if.end58.i294_crit_edge

do.end5.i283.if.end58.i294_crit_edge:             ; preds = %do.end5.i283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i294

land.rhs.i287:                                    ; preds = %do.end5.i283
  %.b75.i286 = load i1, ptr @stable_tree_append.__already_done, align 1
  br i1 %.b75.i286, label %land.rhs.i287.if.end58.i294_crit_edge, label %if.then26.i288, !prof !182

land.rhs.i287.if.end58.i294_crit_edge:            ; preds = %land.rhs.i287
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58.i294

if.then26.i288:                                   ; preds = %land.rhs.i287
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @stable_tree_append.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2013, i32 noundef 9, ptr noundef null) #9
  br label %if.end58.i294

if.end58.i294:                                    ; preds = %if.then26.i288, %land.rhs.i287.if.end58.i294_crit_edge, %do.end5.i283.if.end58.i294_crit_edge
  %157 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call67, ptr %157, align 4
  %address.i289 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %159 = ptrtoint ptr %address.i289 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %address.i289, align 4
  %or.i290 = or i32 %160, 512
  store i32 %or.i290, ptr %address.i289, align 4
  %hlist.i291 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 1
  %161 = ptrtoint ptr %hlist59.i269 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hlist59.i269, align 4
  %163 = ptrtoint ptr %hlist.i291 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %162, ptr %hlist.i291, align 4
  %tobool.not.i.i293 = icmp eq ptr %162, null
  br i1 %tobool.not.i.i293, label %if.end58.i294.stable_tree_append.exit301_crit_edge, label %do.body12.i.i296

if.end58.i294.stable_tree_append.exit301_crit_edge: ; preds = %if.end58.i294
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_tree_append.exit301

do.body12.i.i296:                                 ; preds = %if.end58.i294
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i295 = getelementptr inbounds %struct.hlist_node, ptr %162, i32 0, i32 1
  %164 = ptrtoint ptr %pprev.i.i295 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %hlist.i291, ptr %pprev.i.i295, align 4
  br label %stable_tree_append.exit301

stable_tree_append.exit301:                       ; preds = %do.body12.i.i296, %if.end58.i294.stable_tree_append.exit301_crit_edge
  %165 = ptrtoint ptr %hlist59.i269 to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %hlist.i291, ptr %hlist59.i269, align 4
  %pprev34.i.i297 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 2
  %166 = ptrtoint ptr %pprev34.i.i297 to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile ptr %hlist59.i269, ptr %pprev34.i.i297, align 4
  %167 = ptrtoint ptr %hlist.i291 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hlist.i291, align 4
  %tobool61.not.i298 = icmp eq ptr %168, null
  %ksm_pages_shared.ksm_pages_sharing.i299 = select i1 %tobool61.not.i298, ptr @ksm_pages_shared, ptr @ksm_pages_sharing
  %169 = ptrtoint ptr %ksm_pages_shared.ksm_pages_sharing.i299 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ksm_pages_shared.ksm_pages_sharing.i299, align 4
  %inc64.i300 = add i32 %170, 1
  store i32 %inc64.i300, ptr %ksm_pages_shared.ksm_pages_sharing.i299, align 4
  tail call void @unlock_page(ptr noundef nonnull %115) #9
  br label %cleanup88

if.then72.critedge:                               ; preds = %lock_page.exit255
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %115) #9
  tail call fastcc void @break_cow(ptr noundef nonnull %call56)
  tail call fastcc void @break_cow(ptr noundef %rmap_item)
  br label %cleanup88

cleanup88.critedge:                               ; preds = %lor.lhs.false3.i.cleanup88.critedge_crit_edge, %lor.lhs.false.i.cleanup88.critedge_crit_edge, %land.lhs.true.i.i.cleanup88.critedge_crit_edge, %if.end.i.cleanup88.critedge_crit_edge, %mmap_read_lock.exit.cleanup88.critedge_crit_edge
  tail call fastcc void @mmap_read_unlock(ptr noundef %1)
  br label %cleanup88

cleanup88:                                        ; preds = %cleanup88.critedge, %if.then72.critedge, %stable_tree_append.exit301, %put_page.exit234.cleanup88_crit_edge, %if.end55.cleanup88_crit_edge, %mmap_read_unlock.exit.cleanup88_crit_edge, %if.then40, %if.then.i4.i204, %folio_put_testzero.exit.i.i203.cleanup88_crit_edge, %if.then26.cleanup88_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup88_crit_edge, %land.lhs.true9.cleanup88_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tree_page) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_all() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_read_unlock(ptr noundef %mm) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_read_unlock, %if.then.i)) #9
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !188

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__flush_anon_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_rmap_item_from_tree(ptr noundef %rmap_item) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %0 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %address, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = tail call fastcc ptr @get_ksm_page(ptr noundef %4, i32 noundef 1)
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %if.then
  %hlist = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hlist, align 4
  %pprev2.i.i = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev2.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end.hlist_del.exit_crit_edge
  %11 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %hlist, align 4
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @unlock_page(ptr noundef nonnull %call) #9
  %13 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i75 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@remove_rmap_item_from_tree, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %17) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %hlist3 = getelementptr inbounds %struct.stable_node, ptr %4, i32 0, i32 1
  %21 = ptrtoint ptr %hlist3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hlist3, align 4
  %tobool.not.i.not = icmp eq ptr %22, null
  %ksm_pages_shared.ksm_pages_sharing = select i1 %tobool.not.i.not, ptr @ksm_pages_shared, ptr @ksm_pages_sharing
  %23 = ptrtoint ptr %ksm_pages_shared.ksm_pages_sharing to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ksm_pages_shared.ksm_pages_sharing, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %ksm_pages_shared.ksm_pages_sharing, align 4
  %rmap_hlist_len = getelementptr inbounds %struct.stable_node, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmap_hlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp slt i32 %26, 1
  br i1 %cmp, label %do.body12, label %do.end18, !prof !187

do.body12:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 788, 0\0A.popsection", ""() #9, !srcloc !215
  unreachable

do.end18:                                         ; preds = %put_page.exit
  %dec20 = add nsw i32 %26, -1
  %27 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec20, ptr %rmap_hlist_len, align 4
  %28 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %30, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end18.put_anon_vma.exit_crit_edge

do.end18.put_anon_vma.exit_crit_edge:             ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_anon_vma.exit

if.then.i:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef %30) #9
  br label %put_anon_vma.exit

put_anon_vma.exit:                                ; preds = %if.then.i, %do.end18.put_anon_vma.exit_crit_edge
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %2, align 4
  br label %out.sink.split

if.else25:                                        ; preds = %entry
  %and27 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else25.out_crit_edge, label %if.then29

if.else25.out_crit_edge:                          ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then29:                                        ; preds = %if.else25
  %33 = load i32, ptr @ksm_scan.3, align 4
  %sub = sub i32 %33, %1
  %conv32 = and i32 %sub, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32)
  %cmp33.not = icmp eq i32 %conv32, 0
  br i1 %cmp33.not, label %do.end50, label %do.body42, !prof !182

do.body42:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 805, 0\0A.popsection", ""() #9, !srcloc !216
  unreachable

do.end50:                                         ; preds = %if.then29
  %conv = trunc i32 %sub to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool51.not = icmp eq i8 %conv, 0
  br i1 %tobool51.not, label %if.then52, label %do.end50.if.end53_crit_edge

do.end50.if.end53_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then52:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #11
  %34 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5
  tail call void @rb_erase(ptr noundef %34, ptr noundef nonnull @one_unstable_tree) #9
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %do.end50.if.end53_crit_edge
  %35 = load i32, ptr @ksm_pages_unshared, align 4
  %dec54 = add i32 %35, -1
  store i32 %dec54, ptr @ksm_pages_unshared, align 4
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end53, %put_anon_vma.exit
  %36 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address, align 4
  %and23 = and i32 %37, -4096
  store i32 %and23, ptr %address, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %if.else25.out_crit_edge, %if.then.out_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 813, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_ksm_page(ptr noundef %stable_node, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stable_node to i32
  %or = or i32 %0, 3
  %1 = inttoptr i32 %or to ptr
  %2 = getelementptr inbounds %struct.stable_node, ptr %stable_node, i32 0, i32 2
  br label %again

again:                                            ; preds = %do.end49.again_crit_edge, %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %4, %6
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %sub
  %mapping = getelementptr %struct.page, ptr %5, i32 %sub, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %mapping, align 4
  %cmp.not = icmp eq ptr %8, %1
  br i1 %cmp.not, label %while.cond.preheader, label %again.do.end49_crit_edge

again.do.end49_crit_edge:                         ; preds = %again
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

while.cond.preheader:                             ; preds = %again
  %_refcount.i.i = getelementptr %struct.page, ptr %5, i32 %sub, i32 3
  %9 = getelementptr %struct.page, ptr %5, i32 %sub, i32 1
  %10 = ptrtoint ptr %add.ptr to i32
  br label %while.cond

while.cond:                                       ; preds = %do.end12, %while.cond.preheader
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %_refcount.i.i) #9, !srcloc !218
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %while.cond.atomic_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i

while.cond.atomic_add_unless.exit.i.i_crit_edge:  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit.i.i

do.end11.i.i.i.i.i:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !219
  br label %atomic_add_unless.exit.i.i

atomic_add_unless.exit.i.i:                       ; preds = %do.end11.i.i.i.i.i, %while.cond.atomic_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_unless, i32 0, i32 1), ptr blockaddress(@get_ksm_page, %if.then.i.i80)) #9
          to label %get_page_unless_zero.exit [label %if.then.i.i80], !srcloc !188

if.then.i.i80:                                    ; preds = %atomic_add_unless.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i1 %cmp.i.i.i.i to i32
  tail call void @__page_ref_mod_unless(ptr noundef %add.ptr, i32 noundef 1, i32 noundef %conv.i.i) #9
  br label %get_page_unless_zero.exit

get_page_unless_zero.exit:                        ; preds = %if.then.i.i80, %atomic_add_unless.exit.i.i
  br i1 %cmp.i.i.i.i, label %do.end19, label %while.body

while.body:                                       ; preds = %get_page_unless_zero.exit
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !182

while.body._compound_head.exit.i_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %while.body._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %while.body._compound_head.exit.i_crit_edge ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !182

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %14, align 4
  %21 = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.do.end49_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.do.end49_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %14, align 4
  %27 = and i32 %26, 1024
  %tobool.i.i.not = icmp eq i32 %27, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.do.end49_crit_edge, label %do.end12

PageSwapCache.exit.do.end49_crit_edge:            ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

do.end12:                                         ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !220
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !221
  br label %while.cond

do.end19:                                         ; preds = %get_page_unless_zero.exit
  %28 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %mapping, align 4
  %cmp22.not = icmp eq ptr %29, %1
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %do.end19
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %9, align 4
  %and.i.i81 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.not.i.i82, label %if.then23._compound_head.exit.i88_crit_edge, label %if.then.i.i84, !prof !182

if.then23._compound_head.exit.i88_crit_edge:      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i88

if.then.i.i84:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i83 = add i32 %31, -1
  br label %_compound_head.exit.i88

_compound_head.exit.i88:                          ; preds = %if.then.i.i84, %if.then23._compound_head.exit.i88_crit_edge
  %retval.0.i.i86 = phi i32 [ %sub.i.i83, %if.then.i.i84 ], [ %10, %if.then23._compound_head.exit.i88_crit_edge ]
  %32 = inttoptr i32 %retval.0.i.i86 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i87 = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i87, label %if.then.i.i.i.i89, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i89:                                ; preds = %_compound_head.exit.i88
  call void @__sanitizer_cov_trace_pc() #11
  %35 = inttoptr i32 %retval.0.i.i86 to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i88
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_ksm_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.do.end49.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.do.end49_crit_edge

folio_put_testzero.exit.i.i.do.end49_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

folio_put_testzero.exit.i.i.do.end49.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49.sink.split

if.end24:                                         ; preds = %do.end19
  %37 = zext i32 %flags to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %flags, label %if.end24.do.end39_crit_edge [
    i32 2, label %if.then26
    i32 1, label %if.then32
    i32 0, label %if.end24.cleanup_crit_edge
  ]

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24.do.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

if.then26:                                        ; preds = %if.end24
  %38 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %9, align 4
  %and.i.i90 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %and.i.i90, 0
  br i1 %tobool.not.i.i91, label %if.then26._compound_head.exit.i98_crit_edge, label %if.then.i.i93, !prof !182

if.then26._compound_head.exit.i98_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i98

if.then.i.i93:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i92 = add i32 %39, -1
  br label %_compound_head.exit.i98

_compound_head.exit.i98:                          ; preds = %if.then.i.i93, %if.then26._compound_head.exit.i98_crit_edge
  %retval.0.i.i95 = phi i32 [ %sub.i.i92, %if.then.i.i93 ], [ %10, %if.then26._compound_head.exit.i98_crit_edge ]
  %40 = inttoptr i32 %retval.0.i.i95 to ptr
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i.i.i96 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i96)
  %tobool.not.i.i.i97 = icmp eq i32 %and.i.i.i.i96, 0
  br i1 %tobool.not.i.i.i97, label %folio_flags.exit.i.i102, label %if.then.i.i.i99, !prof !182

if.then.i.i.i99:                                  ; preds = %_compound_head.exit.i98
  call void @__sanitizer_cov_trace_pc() #11
  %44 = inttoptr i32 %retval.0.i.i95 to ptr
  tail call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i102:                          ; preds = %_compound_head.exit.i98
  %call.i.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %40, i32 noundef 4) #9
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %40, align 4
  %and.i.i4.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i101 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i101, label %trylock_page.exit, label %folio_flags.exit.i.i102.if.then28_crit_edge

folio_flags.exit.i.i102.if.then28_crit_edge:      ; preds = %folio_flags.exit.i.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i102
  tail call void @llvm.prefetch.p0(ptr %40, i32 1, i32 3, i32 1) #9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #9, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.not, label %trylock_page.exit.do.end39_crit_edge, label %trylock_page.exit.if.then28_crit_edge

trylock_page.exit.if.then28_crit_edge:            ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

trylock_page.exit.do.end39_crit_edge:             ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

if.then28:                                        ; preds = %trylock_page.exit.if.then28_crit_edge, %folio_flags.exit.i.i102.if.then28_crit_edge
  %48 = ptrtoint ptr %add.ptr to i32
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %9, align 4
  %and.i.i103 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i103)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i103, 0
  br i1 %tobool.not.i.i104, label %if.then28._compound_head.exit.i112_crit_edge, label %if.then.i.i106, !prof !182

if.then28._compound_head.exit.i112_crit_edge:     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i112

if.then.i.i106:                                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i105 = add i32 %50, -1
  br label %_compound_head.exit.i112

_compound_head.exit.i112:                         ; preds = %if.then.i.i106, %if.then28._compound_head.exit.i112_crit_edge
  %retval.0.i.i108 = phi i32 [ %sub.i.i105, %if.then.i.i106 ], [ %48, %if.then28._compound_head.exit.i112_crit_edge ]
  %51 = inttoptr i32 %retval.0.i.i108 to ptr
  %_refcount.i.i.i.i.i109 = getelementptr inbounds %struct.page, ptr %51, i32 0, i32 3
  %call.i.i.i.i.i.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i109, i32 noundef 4) #9
  %52 = ptrtoint ptr %_refcount.i.i.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %_refcount.i.i.i.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i.i.i.i111 = icmp eq i32 %53, 0
  br i1 %cmp.i.i.i.i111, label %if.then.i.i.i.i113, label %do.end5.i.i.i.i117, !prof !187

if.then.i.i.i.i113:                               ; preds = %_compound_head.exit.i112
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %51, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i117:                               ; preds = %_compound_head.exit.i112
  %call.i.i.i10.i.i.i.i114 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i109, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i109, i32 1, i32 3, i32 1) #9
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i109, ptr %_refcount.i.i.i.i.i109, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i109) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i115 = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i115)
  %cmp.i.i.i.i.i.i.i116 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i115, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_ksm_page, %if.then.i.i.i.i.i119)) #9
          to label %folio_put_testzero.exit.i.i120 [label %if.then.i.i.i.i.i119], !srcloc !188

if.then.i.i.i.i.i119:                             ; preds = %do.end5.i.i.i.i117
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i118 = zext i1 %cmp.i.i.i.i.i.i.i116 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %51, i32 noundef -1, i32 noundef %conv.i.i.i.i.i118) #9
  br label %folio_put_testzero.exit.i.i120

folio_put_testzero.exit.i.i120:                   ; preds = %if.then.i.i.i.i.i119, %do.end5.i.i.i.i117
  br i1 %cmp.i.i.i.i.i.i.i116, label %if.then.i4.i121, label %folio_put_testzero.exit.i.i120.cleanup_crit_edge

folio_put_testzero.exit.i.i120.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i121:                                  ; preds = %folio_put_testzero.exit.i.i120
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %51) #9
  br label %cleanup

if.then32:                                        ; preds = %if.end24
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 788) #9
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %9, align 4
  %and.i.i123 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %and.i.i123, 0
  br i1 %tobool.not.i.i124, label %if.then32._compound_head.exit.i131_crit_edge, label %if.then.i.i126, !prof !182

if.then32._compound_head.exit.i131_crit_edge:     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i131

if.then.i.i126:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i125 = add i32 %56, -1
  br label %_compound_head.exit.i131

_compound_head.exit.i131:                         ; preds = %if.then.i.i126, %if.then32._compound_head.exit.i131_crit_edge
  %retval.0.i.i128 = phi i32 [ %sub.i.i125, %if.then.i.i126 ], [ %10, %if.then32._compound_head.exit.i131_crit_edge ]
  %57 = inttoptr i32 %retval.0.i.i128 to ptr
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  %and.i.i.i.i129 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i129)
  %tobool.not.i.i.i130 = icmp eq i32 %and.i.i.i.i129, 0
  br i1 %tobool.not.i.i.i130, label %folio_flags.exit.i.i136, label %if.then.i.i.i132, !prof !182

if.then.i.i.i132:                                 ; preds = %_compound_head.exit.i131
  call void @__sanitizer_cov_trace_pc() #11
  %61 = inttoptr i32 %retval.0.i.i128 to ptr
  tail call void @dump_page(ptr noundef %61, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i136:                          ; preds = %_compound_head.exit.i131
  %call.i.i.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %57, i32 noundef 4) #9
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %57, align 4
  %and.i.i4.i.i134 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i134)
  %tobool.not.i.i.i.i135 = icmp eq i32 %and.i.i4.i.i134, 0
  br i1 %tobool.not.i.i.i.i135, label %folio_trylock.exit.i, label %folio_flags.exit.i.i136.if.then.i_crit_edge

folio_flags.exit.i.i136.if.then.i_crit_edge:      ; preds = %folio_flags.exit.i.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i136
  tail call void @llvm.prefetch.p0(ptr %57, i32 1, i32 3, i32 1) #9
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #9, !srcloc !211
  %asmresult.i.i.i.i.i.i.i137 = extractvalue { i32, i32, i32 } %64, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and1.i.i.i.i138 = and i32 %asmresult.i.i.i.i.i.i.i137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i138)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i138, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.do.end39_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.do.end39_crit_edge:          ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i136.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %57) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then.i, %folio_trylock.exit.i.do.end39_crit_edge, %trylock_page.exit.do.end39_crit_edge, %if.end24.do.end39_crit_edge
  %65 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %mapping, align 4
  %cmp42.not = icmp eq ptr %66, %1
  br i1 %cmp42.not, label %do.end39.cleanup_crit_edge, label %if.then43

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %do.end39
  tail call void @unlock_page(ptr noundef %add.ptr) #9
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %9, align 4
  %and.i.i139 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i139)
  %tobool.not.i.i140 = icmp eq i32 %and.i.i139, 0
  br i1 %tobool.not.i.i140, label %if.then43._compound_head.exit.i148_crit_edge, label %if.then.i.i142, !prof !182

if.then43._compound_head.exit.i148_crit_edge:     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i148

if.then.i.i142:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i141 = add i32 %68, -1
  br label %_compound_head.exit.i148

_compound_head.exit.i148:                         ; preds = %if.then.i.i142, %if.then43._compound_head.exit.i148_crit_edge
  %retval.0.i.i144 = phi i32 [ %sub.i.i141, %if.then.i.i142 ], [ %10, %if.then43._compound_head.exit.i148_crit_edge ]
  %69 = inttoptr i32 %retval.0.i.i144 to ptr
  %_refcount.i.i.i.i.i145 = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  %call.i.i.i.i.i.i.i146 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i145, i32 noundef 4) #9
  %70 = ptrtoint ptr %_refcount.i.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %_refcount.i.i.i.i.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i.i147 = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i.i147, label %if.then.i.i.i.i149, label %do.end5.i.i.i.i153, !prof !187

if.then.i.i.i.i149:                               ; preds = %_compound_head.exit.i148
  call void @__sanitizer_cov_trace_pc() #11
  %72 = inttoptr i32 %retval.0.i.i144 to ptr
  tail call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i153:                               ; preds = %_compound_head.exit.i148
  %call.i.i.i10.i.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i145, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i145, i32 1, i32 3, i32 1) #9
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i145, ptr %_refcount.i.i.i.i.i145, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i145) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i151 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i151)
  %cmp.i.i.i.i.i.i.i152 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i151, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_ksm_page, %if.then.i.i.i.i.i155)) #9
          to label %folio_put_testzero.exit.i.i156 [label %if.then.i.i.i.i.i155], !srcloc !188

if.then.i.i.i.i.i155:                             ; preds = %do.end5.i.i.i.i153
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i154 = zext i1 %cmp.i.i.i.i.i.i.i152 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %69, i32 noundef -1, i32 noundef %conv.i.i.i.i.i154) #9
  br label %folio_put_testzero.exit.i.i156

folio_put_testzero.exit.i.i156:                   ; preds = %if.then.i.i.i.i.i155, %do.end5.i.i.i.i153
  br i1 %cmp.i.i.i.i.i.i.i152, label %folio_put_testzero.exit.i.i156.do.end49.sink.split_crit_edge, label %folio_put_testzero.exit.i.i156.do.end49_crit_edge

folio_put_testzero.exit.i.i156.do.end49_crit_edge: ; preds = %folio_put_testzero.exit.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

folio_put_testzero.exit.i.i156.do.end49.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i156
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49.sink.split

do.end49.sink.split:                              ; preds = %folio_put_testzero.exit.i.i156.do.end49.sink.split_crit_edge, %folio_put_testzero.exit.i.i.do.end49.sink.split_crit_edge
  %.sink = phi ptr [ %32, %folio_put_testzero.exit.i.i.do.end49.sink.split_crit_edge ], [ %69, %folio_put_testzero.exit.i.i156.do.end49.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #9
  br label %do.end49

do.end49:                                         ; preds = %do.end49.sink.split, %folio_put_testzero.exit.i.i156.do.end49_crit_edge, %folio_put_testzero.exit.i.i.do.end49_crit_edge, %PageSwapCache.exit.do.end49_crit_edge, %folio_test_swapbacked.exit.i.i.do.end49_crit_edge, %again.do.end49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !222
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %2, align 4
  %cmp56.not = icmp eq i32 %75, %4
  br i1 %cmp56.not, label %if.end58, label %do.end49.again_crit_edge

do.end49.again_crit_edge:                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %again

if.end58:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @remove_node_from_stable_tree(ptr noundef %stable_node)
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end39.cleanup_crit_edge, %if.then.i4.i121, %folio_put_testzero.exit.i.i120.cleanup_crit_edge, %if.end24.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end58 ], [ inttoptr (i32 -16 to ptr), %folio_put_testzero.exit.i.i120.cleanup_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then.i4.i121 ], [ %add.ptr, %if.end24.cleanup_crit_edge ], [ %add.ptr, %do.end39.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_node_from_stable_tree(ptr noundef %stable_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmap_hlist_len = getelementptr inbounds %struct.stable_node, ptr %stable_node, i32 0, i32 3
  %0 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmap_hlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %do.body2, label %do.end7, !prof !187

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 634, 0\0A.popsection", ""() #9, !srcloc !223
  unreachable

do.end7:                                          ; preds = %entry
  %hlist = getelementptr inbounds %struct.stable_node, ptr %stable_node, i32 0, i32 1
  %2 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlist, align 4
  %tobool8.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -24
  %tobool10.not7880 = icmp eq ptr %add.ptr, null
  %tobool10.not78 = or i1 %tobool8.not, %tobool10.not7880
  br i1 %tobool10.not78, label %do.end7.do.end55_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.do.end55_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

for.body:                                         ; preds = %put_anon_vma.exit.for.body_crit_edge, %do.end7.for.body_crit_edge
  %rmap_item.079 = phi ptr [ %add.ptr46, %put_anon_vma.exit.for.body_crit_edge ], [ %add.ptr, %do.end7.for.body_crit_edge ]
  %hlist11 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item.079, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %hlist11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlist11, align 4
  %tobool12.not = icmp eq ptr %5, null
  %ksm_pages_shared.ksm_pages_sharing = select i1 %tobool12.not, ptr @ksm_pages_shared, ptr @ksm_pages_sharing
  %6 = ptrtoint ptr %ksm_pages_shared.ksm_pages_sharing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ksm_pages_shared.ksm_pages_sharing, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %ksm_pages_shared.ksm_pages_sharing, align 4
  %8 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmap_hlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp18 = icmp slt i32 %9, 1
  br i1 %cmp18, label %do.body26, label %do.end34, !prof !187

do.body26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 641, 0\0A.popsection", ""() #9, !srcloc !224
  unreachable

do.end34:                                         ; preds = %for.body
  %dec36 = add nsw i32 %9, -1
  %10 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec36, ptr %rmap_hlist_len, align 4
  %11 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item.079, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %13, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end34.put_anon_vma.exit_crit_edge

do.end34.put_anon_vma.exit_crit_edge:             ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_anon_vma.exit

if.then.i:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef %13) #9
  br label %put_anon_vma.exit

put_anon_vma.exit:                                ; preds = %if.then.i, %do.end34.put_anon_vma.exit_crit_edge
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item.079, i32 0, i32 3
  %15 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address, align 4
  %and = and i32 %16, -4096
  store i32 %and, ptr %address, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 645, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %17 = ptrtoint ptr %hlist11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hlist11, align 4
  %tobool42.not = icmp eq ptr %18, null
  %add.ptr46 = getelementptr i8, ptr %18, i32 -24
  %tobool10.not82 = icmp eq ptr %add.ptr46, null
  %tobool10.not = or i1 %tobool42.not, %tobool10.not82
  br i1 %tobool10.not, label %put_anon_vma.exit.do.end55_crit_edge, label %put_anon_vma.exit.for.body_crit_edge

put_anon_vma.exit.for.body_crit_edge:             ; preds = %put_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

put_anon_vma.exit.do.end55_crit_edge:             ; preds = %put_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end55

do.end55:                                         ; preds = %put_anon_vma.exit.do.end55_crit_edge, %do.end7.do.end55_crit_edge
  %19 = ptrtoint ptr %stable_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stable_node, align 4
  %cmp56 = icmp eq ptr %20, @migrate_nodes
  br i1 %cmp56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %do.end55
  %list = getelementptr inbounds %struct.anon.88, ptr %stable_node, i32 0, i32 1, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then57.list_del.exit_crit_edge

if.then57.list_del.exit_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.anon.88, ptr %stable_node, i32 0, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then57.list_del.exit_crit_edge
  %27 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.88, ptr %stable_node, i32 0, i32 1, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end59

if.else58:                                        ; preds = %do.end55
  %29 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rmap_hlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %30)
  %cmp.i.i = icmp eq i32 %30, -1024
  br i1 %cmp.i.i, label %do.body2.i, label %do.end5.i, !prof !187

do.body2.i:                                       ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #9, !srcloc !225
  unreachable

do.end5.i:                                        ; preds = %if.else58
  %cmp.i13.i = icmp eq ptr %20, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i13.i, label %do.end6.i.i, label %if.else.i

do.end6.i.i:                                      ; preds = %do.end5.i
  %31 = getelementptr inbounds %struct.anon.88, ptr %stable_node, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.anon.88, ptr %stable_node, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %33, ptr %35, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i, label %do.end6.i.i.__stable_node_dup_del.exit.i_crit_edge, label %do.body13.i.i.i.i

do.end6.i.i.__stable_node_dup_del.exit.i_crit_edge: ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__stable_node_dup_del.exit.i

do.body13.i.i.i.i:                                ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %pprev14.i.i.i.i, align 4
  br label %__stable_node_dup_del.exit.i

__stable_node_dup_del.exit.i:                     ; preds = %do.body13.i.i.i.i, %do.end6.i.i.__stable_node_dup_del.exit.i_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %39 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %40 = load i32, ptr @ksm_stable_node_dups, align 4
  %dec.i.i = add i32 %40, -1
  store i32 %dec.i.i, ptr @ksm_stable_node_dups, align 4
  br label %stable_node_dup_del.exit

if.else.i:                                        ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rb_erase(ptr noundef %stable_node, ptr noundef nonnull @one_stable_tree) #9
  br label %stable_node_dup_del.exit

stable_node_dup_del.exit:                         ; preds = %if.else.i, %__stable_node_dup_del.exit.i
  %41 = ptrtoint ptr %stable_node to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %stable_node, align 4
  br label %if.end59

if.end59:                                         ; preds = %stable_node_dup_del.exit, %list_del.exit
  %42 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rmap_hlist_len, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %43, label %do.body4.i [
    i32 -1024, label %if.end59.free_stable_node.exit_crit_edge
    i32 0, label %if.end59.free_stable_node.exit_crit_edge83
  ]

if.end59.free_stable_node.exit_crit_edge83:       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_stable_node.exit

if.end59.free_stable_node.exit_crit_edge:         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_stable_node.exit

do.body4.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !226
  unreachable

free_stable_node.exit:                            ; preds = %if.end59.free_stable_node.exit_crit_edge, %if.end59.free_stable_node.exit_crit_edge83
  %45 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef %stable_node) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_unless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stable_tree_search(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  %stable_node = alloca ptr, align 4
  %stable_node_dup = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stable_node) #9
  %0 = ptrtoint ptr %stable_node to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %stable_node, align 4, !annotation !209
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stable_node_dup) #9
  %1 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %stable_node_dup, align 4, !annotation !209
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i369, label %if.then.i.i368, !prof !182

if.then.i.i368:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %4, -1
  br label %page_stable_node.exit

if.end.i.i369:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %page to i32
  br label %page_stable_node.exit

page_stable_node.exit:                            ; preds = %if.end.i.i369, %if.then.i.i368
  %retval.0.i.i370 = phi i32 [ %sub.i.i, %if.then.i.i368 ], [ %5, %if.end.i.i369 ]
  %6 = inttoptr i32 %retval.0.i.i370 to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i371 = icmp eq i32 %and.i.i.i, 3
  %and.i3.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i3.i.i to ptr
  %cond.i.i = select i1 %cmp.i.i.i371, ptr %10, ptr null
  %tobool.not = icmp eq ptr %cond.i.i, null
  br i1 %tobool.not, label %page_stable_node.exit.if.end_crit_edge, label %land.lhs.true

page_stable_node.exit.if.end_crit_edge:           ; preds = %page_stable_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %page_stable_node.exit
  %11 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cond.i.i, align 4
  %cmp.not = icmp eq ptr %12, @migrate_nodes
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %2, align 4
  %and.i.i372 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i372)
  %tobool.not.i.i373 = icmp eq i32 %and.i.i372, 0
  br i1 %tobool.not.i.i373, label %if.end.i.i376, label %if.then.i.i375, !prof !182

if.then.i.i375:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i374 = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i376:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i376, %if.then.i.i375
  %retval.0.i.i377 = phi i32 [ %sub.i.i374, %if.then.i.i375 ], [ %15, %if.end.i.i376 ]
  %16 = inttoptr i32 %retval.0.i.i377 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %17 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i378 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i378, label %if.then.i1.i, label %do.end5.i.i379, !prof !187

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.27) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !227
  unreachable

do.end5.i.i379:                                   ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@stable_tree_search, %if.then.i.i.i.i)) #9
          to label %cleanup302 [label %if.then.i.i.i.i], !srcloc !188

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i379
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %16, i32 noundef 1) #9
  br label %cleanup302

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %page_stable_node.exit.if.end_crit_edge
  %20 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %21 = load ptr, ptr @one_stable_tree, align 4
  %tobool2.not562567 = icmp eq ptr %21, null
  br i1 %tobool2.not562567, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

again.loopexit:                                   ; preds = %if.end72.again.loopexit_crit_edge, %do.end34.again.loopexit_crit_edge, %stable_node_dup_any.exit.again.loopexit_crit_edge, %stable_node_dup_any.exit.thread
  %22 = load ptr, ptr @one_stable_tree, align 4
  %tobool2.not562 = icmp eq ptr %22, null
  br i1 %tobool2.not562, label %again.loopexit.while.end_crit_edge, label %again.loopexit.while.body.backedge_crit_edge

again.loopexit.while.body.backedge_crit_edge:     ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.backedge

again.loopexit.while.end_crit_edge:               ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.backedge, %if.end.while.body_crit_edge
  %new.0563 = phi ptr [ %new.0563.be, %while.body.backedge ], [ @one_stable_tree, %if.end.while.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1578, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %23 = ptrtoint ptr %new.0563 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %new.0563, align 4
  %25 = ptrtoint ptr %stable_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %stable_node, align 4
  %rmap_hlist_len.i.i.i = getelementptr inbounds %struct.stable_node, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %rmap_hlist_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmap_hlist_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %27)
  %cmp.i.i.i = icmp eq i32 %27, -1024
  br i1 %cmp.i.i.i, label %if.end4.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i = icmp slt i32 %27, 0
  br i1 %cmp.i.i.i.i, label %do.body2.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

do.body2.i.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end5.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not.i.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool7.not.i.i.i.i, label %do.end5.i.i.i.i.chain_prune.exit.thread_crit_edge, label %is_page_sharing_candidate.exit.i.i

do.end5.i.i.i.i.chain_prune.exit.thread_crit_edge: ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chain_prune.exit.thread

is_page_sharing_candidate.exit.i.i:               ; preds = %do.end5.i.i.i.i
  %28 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %28)
  %cmp9.i.i.i.i = icmp slt i32 %27, %28
  br i1 %cmp9.i.i.i.i, label %if.then2.i.i, label %is_page_sharing_candidate.exit.i.i.chain_prune.exit.thread_crit_edge

is_page_sharing_candidate.exit.i.i.chain_prune.exit.thread_crit_edge: ; preds = %is_page_sharing_candidate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chain_prune.exit.thread

if.then2.i.i:                                     ; preds = %is_page_sharing_candidate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %stable_node_dup, align 4
  %call3.i.i = tail call fastcc ptr @get_ksm_page(ptr noundef %24, i32 noundef 0) #9
  br label %chain_prune.exit

chain_prune.exit.thread:                          ; preds = %is_page_sharing_candidate.exit.i.i.chain_prune.exit.thread_crit_edge, %do.end5.i.i.i.i.chain_prune.exit.thread_crit_edge
  %30 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %stable_node_dup, align 4
  br label %if.then8

if.end4.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i.i = call fastcc ptr @stable_node_dup(ptr noundef nonnull %stable_node_dup, ptr noundef nonnull %stable_node, i1 noundef zeroext true) #9
  %31 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %stable_node_dup, align 4
  br label %chain_prune.exit

chain_prune.exit:                                 ; preds = %if.end4.i.i, %if.then2.i.i
  %32 = phi ptr [ %24, %if.then2.i.i ], [ %.pr, %if.end4.i.i ]
  %retval.0.i.i = phi ptr [ %call3.i.i, %if.then2.i.i ], [ %call5.i.i, %if.end4.i.i ]
  %tobool7.not = icmp eq ptr %32, null
  br i1 %tobool7.not, label %chain_prune.exit.if.then8_crit_edge, label %chain_prune.exit.do.end34_crit_edge

chain_prune.exit.do.end34_crit_edge:              ; preds = %chain_prune.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

chain_prune.exit.if.then8_crit_edge:              ; preds = %chain_prune.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %chain_prune.exit.if.then8_crit_edge, %chain_prune.exit.thread
  %33 = ptrtoint ptr %stable_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stable_node, align 4
  %rmap_hlist_len.i.i380 = getelementptr inbounds %struct.stable_node, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %rmap_hlist_len.i.i380 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rmap_hlist_len.i.i380, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %36)
  %cmp.i.i381 = icmp eq i32 %36, -1024
  br i1 %cmp.i.i381, label %if.end.i, label %if.then8.stable_node_dup_any.exit_crit_edge

if.then8.stable_node_dup_any.exit_crit_edge:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_dup_any.exit

if.end.i:                                         ; preds = %if.then8
  %hlist.i = getelementptr inbounds %struct.stable_node, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  %rmap_hlist_len.i.i380.le = getelementptr inbounds %struct.stable_node, ptr %34, i32 0, i32 3
  tail call void @rb_erase(ptr noundef %34, ptr noundef nonnull @one_stable_tree) #9
  %39 = ptrtoint ptr %rmap_hlist_len.i.i380.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rmap_hlist_len.i.i380.le, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %40, label %do.body4.i.i.i [
    i32 -1024, label %if.then2.i.stable_node_dup_any.exit.thread_crit_edge
    i32 0, label %if.then2.i.stable_node_dup_any.exit.thread_crit_edge608
  ]

if.then2.i.stable_node_dup_any.exit.thread_crit_edge608: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_dup_any.exit.thread

if.then2.i.stable_node_dup_any.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_dup_any.exit.thread

do.body4.i.i.i:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !226
  unreachable

stable_node_dup_any.exit.thread:                  ; preds = %if.then2.i.stable_node_dup_any.exit.thread_crit_edge, %if.then2.i.stable_node_dup_any.exit.thread_crit_edge608
  %42 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %42, ptr noundef %34) #9
  %43 = load i32, ptr @ksm_stable_node_chains, align 4
  %dec.i.i = add i32 %43, -1
  store i32 %dec.i.i, ptr @ksm_stable_node_chains, align 4
  br label %again.loopexit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %38, i32 -4
  br label %stable_node_dup_any.exit

stable_node_dup_any.exit:                         ; preds = %if.end3.i, %if.then8.stable_node_dup_any.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end3.i ], [ %34, %if.then8.stable_node_dup_any.exit_crit_edge ]
  %tobool10.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool10.not, label %stable_node_dup_any.exit.again.loopexit_crit_edge, label %do.body

stable_node_dup_any.exit.again.loopexit_crit_edge: ; preds = %stable_node_dup_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.loopexit

do.body:                                          ; preds = %stable_node_dup_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call fastcc ptr @get_ksm_page(ptr noundef nonnull %retval.0.i, i32 noundef 0)
  br label %do.end34

do.end34:                                         ; preds = %do.body, %chain_prune.exit.do.end34_crit_edge
  %tree_page.0440 = phi ptr [ %call13, %do.body ], [ %retval.0.i.i, %chain_prune.exit.do.end34_crit_edge ]
  %stable_node_any.0439 = phi ptr [ %retval.0.i, %do.body ], [ null, %chain_prune.exit.do.end34_crit_edge ]
  %44 = phi ptr [ null, %do.body ], [ %32, %chain_prune.exit.do.end34_crit_edge ]
  %tobool7.not434438 = phi i1 [ true, %do.body ], [ false, %chain_prune.exit.do.end34_crit_edge ]
  %tobool35.not = icmp eq ptr %tree_page.0440, null
  br i1 %tobool35.not, label %do.end34.again.loopexit_crit_edge, label %if.end37

do.end34.again.loopexit_crit_edge:                ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.loopexit

if.end37:                                         ; preds = %do.end34
  %call38 = tail call i32 @memcmp_pages(ptr noundef %page, ptr noundef nonnull %tree_page.0440) #9
  %45 = getelementptr inbounds %struct.page, ptr %tree_page.0440, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i382 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i382)
  %tobool.not.i.i383 = icmp eq i32 %and.i.i382, 0
  br i1 %tobool.not.i.i383, label %if.end.i.i386, label %if.then.i.i385, !prof !182

if.then.i.i385:                                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i384 = add i32 %47, -1
  br label %_compound_head.exit.i389

if.end.i.i386:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %tree_page.0440 to i32
  br label %_compound_head.exit.i389

_compound_head.exit.i389:                         ; preds = %if.end.i.i386, %if.then.i.i385
  %retval.0.i.i387 = phi i32 [ %sub.i.i384, %if.then.i.i385 ], [ %48, %if.end.i.i386 ]
  %49 = inttoptr i32 %retval.0.i.i387 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %50 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i.i.i.i388 = icmp eq i32 %51, 0
  br i1 %cmp.i.i.i.i388, label %if.then.i.i.i.i390, label %do.end5.i.i.i.i391, !prof !187

if.then.i.i.i.i390:                               ; preds = %_compound_head.exit.i389
  call void @__sanitizer_cov_trace_pc() #11
  %52 = inttoptr i32 %retval.0.i.i387 to ptr
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i391:                               ; preds = %_compound_head.exit.i389
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@stable_tree_search, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i391
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %49, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i391
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %49) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %54 = ptrtoint ptr %new.0563 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %new.0563, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %55, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp41.not = icmp eq i32 %call38, 0
  br i1 %cmp41.not, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %55, i32 0, i32 1
  br label %cleanup

if.else43:                                        ; preds = %if.else
  br i1 %tobool.not, label %if.else43.if.end69_crit_edge, label %do.body46

if.else43.if.end69_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

do.body46:                                        ; preds = %if.else43
  %56 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cond.i.i, align 4
  %cmp48.not = icmp eq ptr %57, @migrate_nodes
  br i1 %cmp48.not, label %do.end64, label %do.body56, !prof !182

do.body56:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1642, 0\0A.popsection", ""() #9, !srcloc !228
  unreachable

do.end64:                                         ; preds = %do.body46
  %58 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %page, align 4
  %60 = and i32 %59, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i392 = icmp eq i32 %60, 0
  br i1 %tobool.not.i.i392, label %PageCompound.exit.i, label %do.end64.if.then.i_crit_edge

do.end64.if.then.i_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %do.end64
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %2, align 4
  %and.i.i.i393 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i393)
  %tobool.not.i = icmp eq i32 %and.i.i.i393, 0
  br i1 %tobool.not.i, label %if.end.i394, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !182

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %do.end64.if.then.i_crit_edge
  %call3.i = tail call i32 @__page_mapcount(ptr noundef %page) #9
  br label %page_mapcount.exit

if.end.i394:                                      ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %20, i32 noundef 4) #9
  %63 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %20, align 4
  %add.i = add i32 %64, 1
  br label %page_mapcount.exit

page_mapcount.exit:                               ; preds = %if.end.i394, %if.then.i
  %retval.0.i395 = phi i32 [ %call3.i, %if.then.i ], [ %add.i, %if.end.i394 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i395)
  %cmp66 = icmp sgt i32 %retval.0.i395, 1
  br i1 %cmp66, label %cleanup.thread447, label %page_mapcount.exit.if.end69_crit_edge

page_mapcount.exit.if.end69_crit_edge:            ; preds = %page_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread447:                                ; preds = %page_mapcount.exit
  br i1 %tobool7.not434438, label %if.then232, label %cleanup.thread447.if.end233_crit_edge

cleanup.thread447.if.end233_crit_edge:            ; preds = %cleanup.thread447
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end233

if.end69:                                         ; preds = %page_mapcount.exit.if.end69_crit_edge, %if.else43.if.end69_crit_edge
  br i1 %tobool7.not434438, label %if.end69.cleanup302_crit_edge, label %if.end72

if.end69.cleanup302_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup302

if.end72:                                         ; preds = %if.end69
  %call73 = tail call fastcc ptr @get_ksm_page(ptr noundef nonnull %44, i32 noundef 2)
  %magicptr = ptrtoint ptr %call73 to i32
  %65 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %magicptr, label %if.end89 [
    i32 -16, label %if.end72.cleanup302_crit_edge
    i32 0, label %if.end72.again.loopexit_crit_edge
  ], !prof !229

if.end72.again.loopexit_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.loopexit

if.end72.cleanup302_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup302

if.end89:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %call73) #9
  br label %cleanup302

cleanup:                                          ; preds = %if.then42, %if.then40
  %new.2 = phi ptr [ %rb_left, %if.then40 ], [ %rb_right, %if.then42 ]
  %66 = ptrtoint ptr %new.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %new.2, align 4
  %tobool2.not = icmp eq ptr %67, null
  br i1 %tobool2.not, label %while.cond.while.end_crit_edge, label %cleanup.while.body.backedge_crit_edge

cleanup.while.body.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.backedge

while.body.backedge:                              ; preds = %cleanup.while.body.backedge_crit_edge, %again.loopexit.while.body.backedge_crit_edge
  %new.0563.be = phi ptr [ %new.2, %cleanup.while.body.backedge_crit_edge ], [ @one_stable_tree, %again.loopexit.while.body.backedge_crit_edge ]
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = ptrtoint ptr %55 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %again.loopexit.while.end_crit_edge, %if.end.while.end_crit_edge
  %new.0.lcssa = phi ptr [ %new.2, %while.cond.while.end_crit_edge ], [ @one_stable_tree, %if.end.while.end_crit_edge ], [ @one_stable_tree, %again.loopexit.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast, %while.cond.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ 0, %again.loopexit.while.end_crit_edge ]
  br i1 %tobool.not, label %while.end.cleanup302_crit_edge, label %if.end99

while.end.cleanup302_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup302

if.end99:                                         ; preds = %while.end
  %list = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i396, label %if.end99.list_del.exit_crit_edge

if.end99.list_del.exit_crit_edge:                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i396:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i396, %if.end99.list_del.exit_crit_edge
  %74 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1, i32 1, i32 1
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %76 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %parent.0.lcssa, ptr %cond.i.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %cond.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %cond.i.i, i32 0, i32 2
  %78 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %rb_left.i, align 4
  %79 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %cond.i.i, ptr %new.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %cond.i.i, ptr noundef nonnull @one_stable_tree) #9
  br label %out

out:                                              ; preds = %stable_node_chain_add_dup.exit, %list_del.exit
  %rmap_hlist_len.i.i = getelementptr inbounds %struct.stable_node, ptr %cond.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %rmap_hlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rmap_hlist_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i = icmp slt i32 %81, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %do.end5.i.i, !prof !187

do.body2.i.i:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end5.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool7.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool7.not.i.i, label %do.end5.i.i.cleanup302_crit_edge, label %is_page_sharing_candidate.exit

do.end5.i.i.cleanup302_crit_edge:                 ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup302

is_page_sharing_candidate.exit:                   ; preds = %do.end5.i.i
  %82 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %82)
  %cmp9.i.i = icmp slt i32 %81, %82
  br i1 %cmp9.i.i, label %if.then104, label %is_page_sharing_candidate.exit.cleanup302_crit_edge

is_page_sharing_candidate.exit.cleanup302_crit_edge: ; preds = %is_page_sharing_candidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup302

if.then104:                                       ; preds = %is_page_sharing_candidate.exit
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %2, align 4
  %and.i.i397 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i397)
  %tobool.not.i.i398 = icmp eq i32 %and.i.i397, 0
  br i1 %tobool.not.i.i398, label %if.end.i.i401, label %if.then.i.i400, !prof !182

if.then.i.i400:                                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i399 = add i32 %84, -1
  br label %_compound_head.exit.i407

if.end.i.i401:                                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i407

_compound_head.exit.i407:                         ; preds = %if.end.i.i401, %if.then.i.i400
  %retval.0.i.i402 = phi i32 [ %sub.i.i399, %if.then.i.i400 ], [ %85, %if.end.i.i401 ]
  %86 = inttoptr i32 %retval.0.i.i402 to ptr
  %_refcount.i.i.i.i403 = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  %call.i.i.i.i.i.i404 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i403, i32 noundef 4) #9
  %87 = ptrtoint ptr %_refcount.i.i.i.i403 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %_refcount.i.i.i.i403, align 4
  %add.i.i405 = add i32 %88, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i405)
  %cmp.i.i406 = icmp ult i32 %add.i.i405, 128
  br i1 %cmp.i.i406, label %if.then.i1.i408, label %do.end5.i.i410, !prof !187

if.then.i1.i408:                                  ; preds = %_compound_head.exit.i407
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %86, ptr noundef nonnull @.str.27) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !227
  unreachable

do.end5.i.i410:                                   ; preds = %_compound_head.exit.i407
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i9.i.i409 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i403, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i403, i32 1, i32 3, i32 1) #9
  %89 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i403, ptr %_refcount.i.i.i.i403, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i403) #9, !srcloc !183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@stable_tree_search, %if.then.i.i.i.i411)) #9
          to label %cleanup302 [label %if.then.i.i.i.i411], !srcloc !188

if.then.i.i.i.i411:                               ; preds = %do.end5.i.i410
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %86, i32 noundef 1) #9
  br label %cleanup302

if.then232:                                       ; preds = %cleanup.thread447
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %stable_node_any.0439, ptr %stable_node_dup, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.then232, %cleanup.thread447.if.end233_crit_edge
  %91 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %stable_node_dup, align 4
  %93 = ptrtoint ptr %stable_node to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stable_node, align 4
  %cmp234 = icmp eq ptr %92, %94
  br i1 %cmp234, label %do.body236, label %if.end233.do.body259_crit_edge

if.end233.do.body259_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body259

do.body236:                                       ; preds = %if.end233
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %92, align 4
  %cmp.i = icmp eq ptr %96, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i, label %do.body245, label %do.end253, !prof !187

do.body245:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1774, 0\0A.popsection", ""() #9, !srcloc !230
  unreachable

do.end253:                                        ; preds = %do.body236
  %97 = load ptr, ptr @stable_node_cache, align 4
  %call.i.i413 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %97, i32 noundef 3296) #9
  %rmap_hlist_len.i.i414 = getelementptr inbounds %struct.stable_node, ptr %92, i32 0, i32 3
  %98 = ptrtoint ptr %rmap_hlist_len.i.i414 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rmap_hlist_len.i.i414, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %99)
  %cmp.i.i415 = icmp eq i32 %99, -1024
  br i1 %cmp.i.i415, label %do.body3.i, label %do.end8.i, !prof !187

do.body3.i:                                       ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #9, !srcloc !231
  unreachable

do.end8.i:                                        ; preds = %do.end253
  %tobool9.not.i = icmp eq ptr %call.i.i413, null
  br i1 %tobool9.not.i, label %alloc_stable_node_chain.exit.thread, label %if.then16.i, !prof !187

alloc_stable_node_chain.exit.thread:              ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %stable_node to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %stable_node, align 4
  br label %cleanup302

if.then16.i:                                      ; preds = %do.end8.i
  %hlist.i416 = getelementptr inbounds %struct.stable_node, ptr %call.i.i413, i32 0, i32 1
  %101 = ptrtoint ptr %hlist.i416 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %hlist.i416, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %103 = getelementptr inbounds %struct.stable_node, ptr %call.i.i413, i32 0, i32 2
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %102, ptr %103, align 8
  %rmap_hlist_len.i = getelementptr inbounds %struct.stable_node, ptr %call.i.i413, i32 0, i32 3
  %105 = ptrtoint ptr %rmap_hlist_len.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1024, ptr %rmap_hlist_len.i, align 4
  %106 = load i32, ptr @ksm_stable_node_chains, align 4
  %inc.i = add i32 %106, 1
  store i32 %inc.i, ptr @ksm_stable_node_chains, align 4
  tail call void @rb_replace_node(ptr noundef %92, ptr noundef nonnull %call.i.i413, ptr noundef nonnull @one_stable_tree) #9
  %107 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %92, align 4
  %cmp.i.i.i417 = icmp eq ptr %108, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i.i.i417, label %do.body2.i.i418, label %do.end5.i.i419, !prof !187

do.body2.i.i418:                                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 350, 0\0A.popsection", ""() #9, !srcloc !232
  unreachable

do.end5.i.i419:                                   ; preds = %if.then16.i
  %109 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1), ptr %92, align 4
  %110 = ptrtoint ptr %rmap_hlist_len.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rmap_hlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %111)
  %cmp.i26.i.i = icmp eq i32 %111, -1024
  br i1 %cmp.i26.i.i, label %do.end22.i.i, label %do.body17.i.i, !prof !182

do.body17.i.i:                                    ; preds = %do.end5.i.i419
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #9, !srcloc !233
  unreachable

do.end22.i.i:                                     ; preds = %do.end5.i.i419
  %112 = getelementptr inbounds %struct.anon.88, ptr %92, i32 0, i32 1
  %113 = ptrtoint ptr %hlist.i416 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hlist.i416, align 4
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %114, ptr %112, align 4
  %tobool.not.i.i.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i.i, label %do.end22.i.i.alloc_stable_node_chain.exit_crit_edge, label %do.body12.i.i.i

do.end22.i.i.alloc_stable_node_chain.exit_crit_edge: ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_stable_node_chain.exit

do.body12.i.i.i:                                  ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %114, i32 0, i32 1
  %116 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %112, ptr %pprev.i.i.i, align 4
  br label %alloc_stable_node_chain.exit

alloc_stable_node_chain.exit:                     ; preds = %do.body12.i.i.i, %do.end22.i.i.alloc_stable_node_chain.exit_crit_edge
  %117 = ptrtoint ptr %hlist.i416 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %112, ptr %hlist.i416, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.anon.88, ptr %92, i32 0, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %hlist.i416, ptr %pprev34.i.i.i, align 4
  %119 = load i32, ptr @ksm_stable_node_dups, align 4
  %inc.i.i = add i32 %119, 1
  store i32 %inc.i.i, ptr @ksm_stable_node_dups, align 4
  %120 = ptrtoint ptr %stable_node to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i.i413, ptr %stable_node, align 4
  br label %do.body259

do.body259:                                       ; preds = %alloc_stable_node_chain.exit, %if.end233.do.body259_crit_edge
  %121 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %92, align 4
  %cmp.i367 = icmp eq ptr %122, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i367, label %do.body279, label %do.body270, !prof !182

do.body270:                                       ; preds = %do.body259
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1787, 0\0A.popsection", ""() #9, !srcloc !234
  unreachable

do.body279:                                       ; preds = %do.body259
  %123 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cond.i.i, align 4
  %cmp281.not = icmp eq ptr %124, @migrate_nodes
  br i1 %cmp281.not, label %do.end297, label %do.body289, !prof !182

do.body289:                                       ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1788, 0\0A.popsection", ""() #9, !srcloc !235
  unreachable

do.end297:                                        ; preds = %do.body279
  %list298 = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1, i32 1
  %call.i.i420 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list298) #9
  br i1 %call.i.i420, label %if.end.i.i423, label %do.end297.list_del.exit425_crit_edge

do.end297.list_del.exit425_crit_edge:             ; preds = %do.end297
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit425

if.end.i.i423:                                    ; preds = %do.end297
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i421 = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1, i32 1, i32 1
  %125 = ptrtoint ptr %prev.i.i421 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i.i421, align 4
  %127 = ptrtoint ptr %list298 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %list298, align 4
  %prev1.i.i.i422 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i.i422 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev1.i.i.i422, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %128, ptr %126, align 4
  br label %list_del.exit425

list_del.exit425:                                 ; preds = %if.end.i.i423, %do.end297.list_del.exit425_crit_edge
  %131 = ptrtoint ptr %list298 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr inttoptr (i32 256 to ptr), ptr %list298, align 4
  %prev.i424 = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1, i32 1, i32 1
  %132 = ptrtoint ptr %prev.i424 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i424, align 4
  %133 = ptrtoint ptr %stable_node to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %stable_node, align 4
  %135 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cond.i.i, align 4
  %cmp.i.i426 = icmp eq ptr %136, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i.i426, label %do.body2.i, label %do.end5.i, !prof !187

do.body2.i:                                       ; preds = %list_del.exit425
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 350, 0\0A.popsection", ""() #9, !srcloc !232
  unreachable

do.end5.i:                                        ; preds = %list_del.exit425
  %137 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1), ptr %cond.i.i, align 4
  %rmap_hlist_len.i.i427 = getelementptr inbounds %struct.stable_node, ptr %134, i32 0, i32 3
  %138 = ptrtoint ptr %rmap_hlist_len.i.i427 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rmap_hlist_len.i.i427, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %139)
  %cmp.i26.i = icmp eq i32 %139, -1024
  br i1 %cmp.i26.i, label %do.end22.i, label %do.body17.i, !prof !182

do.body17.i:                                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #9, !srcloc !233
  unreachable

do.end22.i:                                       ; preds = %do.end5.i
  %140 = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1
  %hlist.i428 = getelementptr inbounds %struct.stable_node, ptr %134, i32 0, i32 1
  %141 = ptrtoint ptr %hlist.i428 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %hlist.i428, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %142, ptr %140, align 4
  %tobool.not.i.i429 = icmp eq ptr %142, null
  br i1 %tobool.not.i.i429, label %do.end22.i.stable_node_chain_add_dup.exit_crit_edge, label %do.body12.i.i

do.end22.i.stable_node_chain_add_dup.exit_crit_edge: ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_chain_add_dup.exit

do.body12.i.i:                                    ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %142, i32 0, i32 1
  %144 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %140, ptr %pprev.i.i, align 4
  br label %stable_node_chain_add_dup.exit

stable_node_chain_add_dup.exit:                   ; preds = %do.body12.i.i, %do.end22.i.stable_node_chain_add_dup.exit_crit_edge
  %145 = ptrtoint ptr %hlist.i428 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %140, ptr %hlist.i428, align 4
  %pprev34.i.i = getelementptr inbounds %struct.anon.88, ptr %cond.i.i, i32 0, i32 1, i32 0, i32 1
  %146 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %hlist.i428, ptr %pprev34.i.i, align 4
  %147 = load i32, ptr @ksm_stable_node_dups, align 4
  %inc.i430 = add i32 %147, 1
  store i32 %inc.i430, ptr @ksm_stable_node_dups, align 4
  br label %out

cleanup302:                                       ; preds = %alloc_stable_node_chain.exit.thread, %if.then.i.i.i.i411, %do.end5.i.i410, %is_page_sharing_candidate.exit.cleanup302_crit_edge, %do.end5.i.i.cleanup302_crit_edge, %while.end.cleanup302_crit_edge, %if.end89, %if.end72.cleanup302_crit_edge, %if.end69.cleanup302_crit_edge, %if.then.i.i.i.i, %do.end5.i.i379
  %retval.3 = phi ptr [ null, %while.end.cleanup302_crit_edge ], [ null, %is_page_sharing_candidate.exit.cleanup302_crit_edge ], [ %page, %do.end5.i.i379 ], [ %page, %if.then.i.i.i.i ], [ %page, %do.end5.i.i410 ], [ %page, %if.then.i.i.i.i411 ], [ null, %alloc_stable_node_chain.exit.thread ], [ %call73, %if.end89 ], [ null, %do.end5.i.i.cleanup302_crit_edge ], [ null, %if.end69.cleanup302_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.end72.cleanup302_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stable_node_dup) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stable_node) #9
  ret ptr %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_to_merge_with_ksm_page(ptr noundef %rmap_item, ptr noundef %page, ptr noundef %kpage) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 2
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@try_to_merge_with_ksm_page, %if.then.i.i)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !188

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@try_to_merge_with_ksm_page, %if.then.i3.i)) #9
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !188

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %mm_users.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %mm_users.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mm_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %mmap_read_lock.exit.out_crit_edge, label %if.end.i

mmap_read_lock.exit.out_crit_edge:                ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %mmap_read_lock.exit
  %call.i.i = tail call ptr @find_vma(ptr noundef %1, i32 noundef %3) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.out_crit_edge, label %land.lhs.true.i.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true.i.i:                                ; preds = %if.end.i
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.i11.i = icmp ugt i32 %7, %3
  br i1 %cmp.i11.i, label %land.lhs.true.i.i.out_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.i.out_crit_edge:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool2.not.i = icmp sgt i32 %9, -1
  br i1 %tobool2.not.i, label %lor.lhs.false.i.out_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %anon_vma.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.out_crit_edge, label %if.end

lor.lhs.false3.i.out_crit_edge:                   ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false3.i
  %call2 = tail call fastcc i32 @try_to_merge_one_page(ptr noundef nonnull %call.i.i, ptr noundef %page, ptr noundef %kpage)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @remove_rmap_item_from_tree(ptr noundef %rmap_item)
  %12 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %anon_vma.i, align 4
  %14 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %14, align 4
  %16 = load ptr, ptr %anon_vma.i, align 4
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %16, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !183
  br label %out

out:                                              ; preds = %if.end5, %if.end.out_crit_edge, %lor.lhs.false3.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %land.lhs.true.i.i.out_crit_edge, %if.end.i.out_crit_edge, %mmap_read_lock.exit.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %if.end5 ], [ -14, %mmap_read_lock.exit.out_crit_edge ], [ -14, %lor.lhs.false.i.out_crit_edge ], [ -14, %if.end.i.out_crit_edge ], [ -14, %land.lhs.true.i.i.out_crit_edge ], [ -14, %lor.lhs.false3.i.out_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@try_to_merge_with_ksm_page, %if.then.i.i16)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i16], !srcloc !188

if.then.i.i16:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i16, %out
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @try_to_merge_one_page(ptr noundef %vma, ptr noundef %page, ptr noundef %kpage) unnamed_addr #0 align 64 {
entry:
  %pvmw.i = alloca %struct.page_vma_mapped_walk, align 4
  %range.i = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %page, %kpage
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.cleanup_crit_edge, label %if.end2

PageAnon.exit.cleanup_crit_edge:                  ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %PageAnon.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i.i95 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %tobool.not.i.i96 = icmp eq i32 %and.i.i95, 0
  br i1 %tobool.not.i.i96, label %if.end.i.i99, label %if.then.i.i98, !prof !182

if.then.i.i98:                                    ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i97 = add i32 %9, -1
  br label %_compound_head.exit.i101

if.end.i.i99:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i101

_compound_head.exit.i101:                         ; preds = %if.end.i.i99, %if.then.i.i98
  %retval.0.i.i100 = phi i32 [ %sub.i.i97, %if.then.i.i98 ], [ %10, %if.end.i.i99 ]
  %11 = inttoptr i32 %retval.0.i.i100 to ptr
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i101
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %11, i32 noundef 4) #9
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %11, align 4
  %and.i.i4.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.cleanup_crit_edge

folio_flags.exit.i.i.cleanup_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %11, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #9, !srcloc !211
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.not, label %if.end5, label %trylock_page.exit.cleanup_crit_edge

trylock_page.exit.cleanup_crit_edge:              ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %trylock_page.exit
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %18 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vm_mm.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw.i) #9
  %20 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw.i, i32 0, i32 4
  %23 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw.i, i32 0, i32 5
  %24 = ptrtoint ptr %pvmw.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %page, ptr %pvmw.i, align 4
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %vma, ptr %20, align 4
  %26 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw.i, i32 0, i32 3
  %27 = call ptr @memset(ptr %26, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range.i) #9
  %28 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 1
  %29 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 4
  %30 = getelementptr inbounds i8, ptr %range.i, i32 24
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %30, align 4
  %call.i = tail call i32 @page_address_in_vma(ptr noundef %page, ptr noundef %vma) #9
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -14
  br i1 %cmp.i, label %write_protect_page.exit.thread, label %do.body.i

write_protect_page.exit.thread:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw.i) #9
  br label %if.end29

do.body.i:                                        ; preds = %if.end5
  %33 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 5
  %34 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 3
  %35 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range.i, i32 0, i32 2
  %add.i = add i32 %call.i, 4096
  %36 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vma, ptr %range.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %33, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %19, ptr %28, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i, ptr %35, align 4
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %34, align 4
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %29, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range.i) #9
  %call18.i = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw.i) #9
  br i1 %call18.i, label %if.end20.i, label %do.body.i.out_mn.i_crit_edge

do.body.i.out_mn.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mn.i

if.end20.i:                                       ; preds = %do.body.i
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %22, align 4
  %tobool22.not.i = icmp eq ptr %43, null
  br i1 %tobool22.not.i, label %land.rhs.i, label %if.end74.critedge.i

land.rhs.i:                                       ; preds = %if.end20.i
  %.b169.i = load i1, ptr @write_protect_page.__already_done, align 1
  br i1 %.b169.i, label %land.rhs.i.if.end.i186.i_crit_edge, label %if.then39.i, !prof !182

land.rhs.i.if.end.i186.i_crit_edge:               ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186.i

if.then39.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @write_protect_page.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1058, i32 noundef 9, ptr noundef nonnull @.str.28) #9
  br label %out_unlockthread-pre-split.i

if.end74.critedge.i:                              ; preds = %if.end20.i
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %45, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %46)
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %lor.lhs.false87.i, label %if.end74.critedge.i.if.then96.i_crit_edge

if.end74.critedge.i.if.then96.i_crit_edge:        ; preds = %if.end74.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.i

lor.lhs.false87.i:                                ; preds = %if.end74.critedge.i
  %tlb_flush_pending.i.i = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 50
  %call.i.i.i.i102 = call zeroext i1 @__kasan_check_read(ptr noundef %tlb_flush_pending.i.i, i32 noundef 4) #9
  %48 = ptrtoint ptr %tlb_flush_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %tlb_flush_pending.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false87.i.if.end137.i_crit_edge, label %lor.lhs.false87.i.if.then96.i_crit_edge

lor.lhs.false87.i.if.then96.i_crit_edge:          ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then96.i

lor.lhs.false87.i.if.end137.i_crit_edge:          ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137.i

if.then96.i:                                      ; preds = %lor.lhs.false87.i.if.then96.i_crit_edge, %if.end74.critedge.i.if.then96.i_crit_edge
  %50 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i103 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i103, label %if.end.i.i.i, label %if.then.i.i.i104, !prof !182

if.then.i.i.i104:                                 ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %51, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i104
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i104 ], [ %52, %if.end.i.i.i ]
  %53 = inttoptr i32 %retval.0.i.i.i to ptr
  %54 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !182

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.9) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %53, align 4
  %59 = and i32 %58, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.PageSwapCache.exit.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.PageSwapCache.exit.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageSwapCache.exit.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i105 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i105, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !182

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.9) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %53, align 4
  %64 = lshr i32 %63, 10
  %.lobit.i = and i32 %64, 1
  %phi.bo.i = add nuw nsw i32 %.lobit.i, 1
  br label %PageSwapCache.exit.i

PageSwapCache.exit.i:                             ; preds = %folio_flags.exit.i.i.i, %folio_test_swapbacked.exit.i.i.i.PageSwapCache.exit.i_crit_edge
  %65 = phi i32 [ 1, %folio_test_swapbacked.exit.i.i.i.PageSwapCache.exit.i_crit_edge ], [ %phi.bo.i, %folio_flags.exit.i.i.i ]
  %66 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %68 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %69 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add100.i = add i32 %sub.ptr.div.i, %69
  call void @flush_cache_page(ptr noundef %vma, i32 noundef %67, i32 noundef %add100.i) #9
  %70 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %21, align 4
  %72 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %22, align 4
  %call103.i = call i32 @ptep_clear_flush(ptr noundef %vma, i32 noundef %71, ptr noundef %73) #9
  %74 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %page, align 4
  %76 = and i32 %75, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i172.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i172.i, label %PageCompound.exit.i.i, label %PageSwapCache.exit.i.if.then.i.i108_crit_edge

PageSwapCache.exit.i.if.then.i.i108_crit_edge:    ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i108

PageCompound.exit.i.i:                            ; preds = %PageSwapCache.exit.i
  %77 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i106 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %and.i.i.i.i106, 0
  br i1 %tobool.not.i.i107, label %if.end.i.i109, label %PageCompound.exit.i.i.if.then.i.i108_crit_edge, !prof !182

PageCompound.exit.i.i.if.then.i.i108_crit_edge:   ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i108

if.then.i.i108:                                   ; preds = %PageCompound.exit.i.i.if.then.i.i108_crit_edge, %PageSwapCache.exit.i.if.then.i.i108_crit_edge
  %call3.i.i = call i32 @__page_mapcount(ptr noundef %page) #9
  br label %page_mapcount.exit.i

if.end.i.i109:                                    ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i173.i = call zeroext i1 @__kasan_check_read(ptr noundef %79, i32 noundef 4) #9
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %add.i.i = add i32 %81, 1
  br label %page_mapcount.exit.i

page_mapcount.exit.i:                             ; preds = %if.end.i.i109, %if.then.i.i108
  %retval.0.i.i110 = phi i32 [ %call3.i.i, %if.then.i.i108 ], [ %add.i.i, %if.end.i.i109 ]
  %add106.i = add i32 %retval.0.i.i110, %65
  %82 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %0, align 4
  %and.i.i174.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i174.i)
  %tobool.not.i.i175.i = icmp eq i32 %and.i.i174.i, 0
  br i1 %tobool.not.i.i175.i, label %page_mapcount.exit.i.page_count.exit.i_crit_edge, label %if.then.i.i177.i, !prof !182

page_mapcount.exit.i.page_count.exit.i_crit_edge: ; preds = %page_mapcount.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %page_count.exit.i

if.then.i.i177.i:                                 ; preds = %page_mapcount.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i176.i = add i32 %83, -1
  br label %page_count.exit.i

page_count.exit.i:                                ; preds = %if.then.i.i177.i, %page_mapcount.exit.i.page_count.exit.i_crit_edge
  %retval.0.i.i179.i = phi i32 [ %sub.i.i176.i, %if.then.i.i177.i ], [ %sub.ptr.lhs.cast.i, %page_mapcount.exit.i.page_count.exit.i_crit_edge ]
  %84 = inttoptr i32 %retval.0.i.i179.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %85 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add106.i, i32 %86)
  %cmp108.not.i = icmp eq i32 %add106.i, %86
  br i1 %cmp108.not.i, label %cond.true114.i, label %cleanup.i

cond.true114.i:                                   ; preds = %page_count.exit.i
  %and115.i = and i32 %call103.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp eq i32 %and115.i, 0
  br i1 %tobool116.not.i, label %cond.true114.i.if.end126.i_crit_edge, label %if.then124.i

cond.true114.i.if.end126.i_crit_edge:             ; preds = %cond.true114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

if.then124.i:                                     ; preds = %cond.true114.i
  call void @__sanitizer_cov_trace_pc() #11
  %call125.i = call zeroext i1 @set_page_dirty(ptr noundef %page) #9
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then124.i, %cond.true114.i.if.end126.i_crit_edge
  %or.i.i.i = and i32 %call103.i, -193
  %and.i.i181.i = or i32 %or.i.i.i, 128
  %87 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %21, align 4
  %notifier_subscriptions.i.i.i = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 49
  %89 = ptrtoint ptr %notifier_subscriptions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %notifier_subscriptions.i.i.i, align 8
  %tobool.i.not.i.i = icmp eq ptr %90, null
  br i1 %tobool.i.not.i.i, label %if.end126.i.cleanup.thread.i_crit_edge, label %if.then.i182.i

if.end126.i.cleanup.thread.i_crit_edge:           ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

if.then.i182.i:                                   ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mmu_notifier_change_pte(ptr noundef %19, i32 noundef %88, i32 noundef %and.i.i181.i) #9
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i182.i, %if.end126.i.cleanup.thread.i_crit_edge
  %91 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %22, align 4
  call void @set_pte_at(ptr noundef %19, i32 noundef %88, ptr noundef %92, i32 noundef %and.i.i181.i) #9
  br label %if.end137.i

cleanup.i:                                        ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %21, align 4
  %95 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %22, align 4
  call void @set_pte_at(ptr noundef %19, i32 noundef %94, ptr noundef %96, i32 noundef %call103.i) #9
  br label %out_unlockthread-pre-split.i

if.end137.i:                                      ; preds = %cleanup.thread.i, %lor.lhs.false87.i.if.end137.i_crit_edge
  %97 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %22, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  br label %out_unlock.i

out_unlockthread-pre-split.i:                     ; preds = %cleanup.i, %if.then39.i
  %101 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr.i = load ptr, ptr %22, align 4
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %out_unlockthread-pre-split.i, %if.end137.i
  %orig_pte.0 = phi i32 [ 0, %out_unlockthread-pre-split.i ], [ %100, %if.end137.i ]
  %102 = phi ptr [ %.pr.i, %out_unlockthread-pre-split.i ], [ %98, %if.end137.i ]
  %err.0.i = phi i32 [ -14, %out_unlockthread-pre-split.i ], [ 0, %if.end137.i ]
  %tobool.not.i184.i = icmp eq ptr %102, null
  br i1 %tobool.not.i184.i, label %out_unlock.i.if.end.i186.i_crit_edge, label %land.lhs.true.i.i

out_unlock.i.if.end.i186.i_crit_edge:             ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i186.i

land.lhs.true.i.i:                                ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef nonnull %102) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %103 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i1.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 213
  %107 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %108, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  %109 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i185.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i185.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %112, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  br label %if.end.i186.i

if.end.i186.i:                                    ; preds = %land.lhs.true.i.i, %out_unlock.i.if.end.i186.i_crit_edge, %land.rhs.i.if.end.i186.i_crit_edge
  %orig_pte.1 = phi i32 [ 0, %land.rhs.i.if.end.i186.i_crit_edge ], [ %orig_pte.0, %out_unlock.i.if.end.i186.i_crit_edge ], [ %orig_pte.0, %land.lhs.true.i.i ]
  %err.0195.i = phi i32 [ -14, %land.rhs.i.if.end.i186.i_crit_edge ], [ %err.0.i, %out_unlock.i.if.end.i186.i_crit_edge ], [ %err.0.i, %land.lhs.true.i.i ]
  %113 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %23, align 4
  %tobool5.not.i.i = icmp eq ptr %114, null
  br i1 %tobool5.not.i.i, label %if.end.i186.i.out_mn.i_crit_edge, label %if.then6.i.i

if.end.i186.i.out_mn.i_crit_edge:                 ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_mn.i

if.then6.i.i:                                     ; preds = %if.end.i186.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %114) #9
  br label %out_mn.i

out_mn.i:                                         ; preds = %if.then6.i.i, %if.end.i186.i.out_mn.i_crit_edge, %do.body.i.out_mn.i_crit_edge
  %orig_pte.2 = phi i32 [ %orig_pte.1, %if.end.i186.i.out_mn.i_crit_edge ], [ %orig_pte.1, %if.then6.i.i ], [ 0, %do.body.i.out_mn.i_crit_edge ]
  %err.1.i = phi i32 [ %err.0195.i, %if.end.i186.i.out_mn.i_crit_edge ], [ %err.0195.i, %if.then6.i.i ], [ -14, %do.body.i.out_mn.i_crit_edge ]
  %115 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %29, align 4
  %and.i.i187.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187.i)
  %tobool.i.not.i188.i = icmp eq i32 %and.i.i187.i, 0
  br i1 %tobool.i.not.i188.i, label %out_mn.i.if.end.i190.i_crit_edge, label %do.body.i.i

out_mn.i.if.end.i190.i_crit_edge:                 ; preds = %out_mn.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i190.i

do.body.i.i:                                      ; preds = %out_mn.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 482) #9
  br label %if.end.i190.i

if.end.i190.i:                                    ; preds = %do.body.i.i, %out_mn.i.if.end.i190.i_crit_edge
  %117 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %28, align 4
  %notifier_subscriptions.i.i189.i = getelementptr inbounds %struct.anon, ptr %118, i32 0, i32 49
  %119 = ptrtoint ptr %notifier_subscriptions.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %notifier_subscriptions.i.i189.i, align 8
  %tobool.i8.not.i.i = icmp eq ptr %120, null
  br i1 %tobool.i8.not.i.i, label %if.end.i190.i.write_protect_page.exit_crit_edge, label %if.then4.i.i

if.end.i190.i.write_protect_page.exit_crit_edge:  ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_protect_page.exit

if.then4.i.i:                                     ; preds = %if.end.i190.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range.i, i1 noundef zeroext false) #9
  br label %write_protect_page.exit

write_protect_page.exit:                          ; preds = %if.then4.i.i, %if.end.i190.i.write_protect_page.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp15 = icmp eq i32 %err.1.i, 0
  br i1 %cmp15, label %if.then16, label %write_protect_page.exit.if.end29_crit_edge

write_protect_page.exit.if.end29_crit_edge:       ; preds = %write_protect_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then16:                                        ; preds = %write_protect_page.exit
  %tobool17.not = icmp eq ptr %kpage, null
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %121 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 3 to ptr), ptr %mapping.i, align 4
  call void @mark_page_accessed(ptr noundef %page) #9
  %122 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %0, align 4
  %and.i.i68 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %tobool.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %tobool.not.i.i69, label %if.end.i.i72, label %if.then.i.i71, !prof !182

if.then.i.i71:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i70 = add i32 %123, -1
  br label %_compound_head.exit.i

if.end.i.i72:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i72, %if.then.i.i71
  %retval.0.i.i73 = phi i32 [ %sub.i.i70, %if.then.i.i71 ], [ %124, %if.end.i.i72 ]
  %125 = inttoptr i32 %retval.0.i.i73 to ptr
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %cmp.i.not.i = icmp eq i32 %127, -1
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %0, align 4
  %and.i13.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !187

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !182

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i15.i = add i32 %129, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %130, %if.end.i17.i ]
  %131 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %131, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !236
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !182

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i22.i = add i32 %129, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %page to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %132, %if.end.i24.i ]
  %133 = inttoptr i32 %retval.0.i25.i to ptr
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %133, align 4
  %136 = and i32 %135, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool20.not = icmp eq i32 %136, 0
  br i1 %tobool20.not, label %if.then21, label %PageDirty.exit.if.end29_crit_edge

PageDirty.exit.if.end29_crit_edge:                ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then21:                                        ; preds = %PageDirty.exit
  %137 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %0, align 4
  %and.i.i74 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool.not.i.i75 = icmp eq i32 %and.i.i74, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i78, label %if.then.i.i77, !prof !182

if.then.i.i77:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i76 = add i32 %138, -1
  br label %_compound_head.exit.i81

if.end.i.i78:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i81

_compound_head.exit.i81:                          ; preds = %if.end.i.i78, %if.then.i.i77
  %retval.0.i.i79 = phi i32 [ %sub.i.i76, %if.then.i.i77 ], [ %139, %if.end.i.i78 ]
  %140 = inttoptr i32 %retval.0.i.i79 to ptr
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp.i.not.i80 = icmp eq i32 %142, -1
  %143 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %0, align 4
  %and.i12.i = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i80, label %if.then.i82, label %do.end8.i83, !prof !187

if.then.i82:                                      ; preds = %_compound_head.exit.i81
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !182

if.then.i15.i:                                    ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i14.i = add i32 %144, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i82
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %145, %if.end.i16.i ]
  %146 = inttoptr i32 %retval.0.i17.i to ptr
  call void @dump_page(ptr noundef %146, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !192
  unreachable

do.end8.i83:                                      ; preds = %_compound_head.exit.i81
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !182

if.then.i22.i:                                    ; preds = %do.end8.i83
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i21.i = add i32 %144, -1
  br label %SetPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i83
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %page to i32
  br label %SetPageDirty.exit

SetPageDirty.exit:                                ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %147, %if.end.i23.i ]
  %148 = inttoptr i32 %retval.0.i24.i to ptr
  call void @_set_bit(i32 noundef 3, ptr noundef %148) #9
  br label %if.end29

if.else:                                          ; preds = %if.then16
  %call.i111 = call i32 @memcmp_pages(ptr noundef %page, ptr noundef nonnull %kpage) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i.not = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i.not, label %if.then25, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call fastcc i32 @replace_page(ptr noundef %vma, ptr noundef %page, ptr noundef nonnull %kpage, i32 noundef %orig_pte.2)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.else.if.end29_crit_edge, %SetPageDirty.exit, %PageDirty.exit.if.end29_crit_edge, %write_protect_page.exit.if.end29_crit_edge, %write_protect_page.exit.thread
  %err.0 = phi i32 [ %call26, %if.then25 ], [ -14, %if.else.if.end29_crit_edge ], [ -14, %write_protect_page.exit.if.end29_crit_edge ], [ 0, %SetPageDirty.exit ], [ 0, %PageDirty.exit.if.end29_crit_edge ], [ -14, %write_protect_page.exit.thread ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %149 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %vm_flags, align 4
  %and = and i32 %150, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp ne i32 %and, 0
  %tobool31.not = icmp ne ptr %kpage, null
  %or.cond.not = and i1 %tobool31.not, %tobool30.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool33.not = icmp eq i32 %err.0, 0
  %or.cond67 = select i1 %or.cond.not, i1 %tobool33.not, i1 false
  br i1 %or.cond67, label %if.then34, label %if.end29.out_unlock_crit_edge

if.end29.out_unlock_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then34:                                        ; preds = %if.end29
  %call35 = call i32 @munlock_vma_page(ptr noundef %page) #9
  %151 = getelementptr inbounds %struct.page, ptr %kpage, i32 0, i32 1
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %151, align 4
  %and.i.i84 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %and.i.i84, 0
  br i1 %tobool.not.i.i85, label %if.end.i.i88, label %if.then.i.i87, !prof !182

if.then.i.i87:                                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i86 = add i32 %153, -1
  br label %_compound_head.exit.i91

if.end.i.i88:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %kpage to i32
  br label %_compound_head.exit.i91

_compound_head.exit.i91:                          ; preds = %if.end.i.i88, %if.then.i.i87
  %retval.0.i.i89 = phi i32 [ %sub.i.i86, %if.then.i.i87 ], [ %154, %if.end.i.i88 ]
  %155 = inttoptr i32 %retval.0.i.i89 to ptr
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %cmp.i.not.i90 = icmp eq i32 %157, -1
  %158 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %151, align 4
  %and.i16.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i90, label %if.then.i92, label %do.end10.i, !prof !187

if.then.i92:                                      ; preds = %_compound_head.exit.i91
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !182

if.then.i19.i:                                    ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %159, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %kpage to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %160, %if.end.i20.i ]
  %161 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %161, ptr noundef nonnull @.str.13) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #9, !srcloc !237
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i91
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !182

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %159, -1
  br label %PageMlocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %kpage to i32
  br label %PageMlocked.exit

PageMlocked.exit:                                 ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %162, %if.end.i27.i ]
  %163 = inttoptr i32 %retval.0.i28.i to ptr
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %163, align 4
  %166 = and i32 %165, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool37.not = icmp eq i32 %166, 0
  br i1 %tobool37.not, label %if.then38, label %PageMlocked.exit.out_unlock_crit_edge

PageMlocked.exit.out_unlock_crit_edge:            ; preds = %PageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.then38:                                        ; preds = %PageMlocked.exit
  call void @unlock_page(ptr noundef %page) #9
  call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 788) #9
  %167 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %151, align 4
  %and.i.i112 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.not.i.i113 = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.not.i.i113, label %if.end.i.i116, label %if.then.i.i115, !prof !182

if.then.i.i115:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i114 = add i32 %168, -1
  br label %_compound_head.exit.i120

if.end.i.i116:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %kpage to i32
  br label %_compound_head.exit.i120

_compound_head.exit.i120:                         ; preds = %if.end.i.i116, %if.then.i.i115
  %retval.0.i.i117 = phi i32 [ %sub.i.i114, %if.then.i.i115 ], [ %169, %if.end.i.i116 ]
  %170 = inttoptr i32 %retval.0.i.i117 to ptr
  %171 = getelementptr inbounds %struct.page, ptr %170, i32 0, i32 1
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %171, align 4
  %and.i.i.i.i118 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i118)
  %tobool.not.i.i.i119 = icmp eq i32 %and.i.i.i.i118, 0
  br i1 %tobool.not.i.i.i119, label %folio_flags.exit.i.i125, label %if.then.i.i.i121, !prof !182

if.then.i.i.i121:                                 ; preds = %_compound_head.exit.i120
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %170, ptr noundef nonnull @.str.9) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !189
  unreachable

folio_flags.exit.i.i125:                          ; preds = %_compound_head.exit.i120
  %call.i.i.i.i122 = call zeroext i1 @__kasan_check_write(ptr noundef %170, i32 noundef 4) #9
  %174 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %170, align 4
  %and.i.i4.i.i123 = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i123)
  %tobool.not.i.i.i.i124 = icmp eq i32 %and.i.i4.i.i123, 0
  br i1 %tobool.not.i.i.i.i124, label %folio_trylock.exit.i, label %folio_flags.exit.i.i125.if.then.i128_crit_edge

folio_flags.exit.i.i125.if.then.i128_crit_edge:   ; preds = %folio_flags.exit.i.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i128

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i125
  call void @llvm.prefetch.p0(ptr %170, i32 1, i32 3, i32 1) #9
  %176 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 1, ptr elementtype(i32) %170) #9, !srcloc !211
  %asmresult.i.i.i.i.i.i.i126 = extractvalue { i32, i32, i32 } %176, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !212
  %and1.i.i.i.i127 = and i32 %asmresult.i.i.i.i.i.i.i126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i127)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i127, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i128_crit_edge

folio_trylock.exit.i.if.then.i128_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i128

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i128:                                     ; preds = %folio_trylock.exit.i.if.then.i128_crit_edge, %folio_flags.exit.i.i125.if.then.i128_crit_edge
  call void @__folio_lock(ptr noundef %170) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i128, %folio_trylock.exit.i.lock_page.exit_crit_edge
  call void @mlock_vma_page(ptr noundef nonnull %kpage) #9
  br label %out_unlock

out_unlock:                                       ; preds = %lock_page.exit, %PageMlocked.exit.out_unlock_crit_edge, %if.end29.out_unlock_crit_edge
  %page.addr.0 = phi ptr [ %page, %PageMlocked.exit.out_unlock_crit_edge ], [ %kpage, %lock_page.exit ], [ %page, %if.end29.out_unlock_crit_edge ]
  %err.1 = phi i32 [ 0, %PageMlocked.exit.out_unlock_crit_edge ], [ 0, %lock_page.exit ], [ %err.0, %if.end29.out_unlock_crit_edge ]
  call void @unlock_page(ptr noundef %page.addr.0) #9
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %trylock_page.exit.cleanup_crit_edge, %folio_flags.exit.i.i.cleanup_crit_edge, %PageAnon.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.1, %out_unlock ], [ -14, %trylock_page.exit.cleanup_crit_edge ], [ -14, %PageAnon.exit.cleanup_crit_edge ], [ -14, %folio_flags.exit.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @unstable_tree_search_insert(ptr noundef %rmap_item, ptr noundef %page, ptr nocapture noundef writeonly %tree_pagep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @one_unstable_tree, align 4
  %tobool.not106 = icmp eq ptr %0, null
  br i1 %tobool.not106, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %new.0107 = phi ptr [ %new.2, %cleanup.while.body_crit_edge ], [ @one_unstable_tree, %entry.while.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1940, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %1 = ptrtoint ptr %new.0107 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %new.0107, align 4
  %add.ptr3 = getelementptr i8, ptr %2, i32 -20
  %call4 = tail call fastcc ptr @get_mergeable_page(ptr noundef %add.ptr3)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %while.body.cleanup20_crit_edge, label %if.end

while.body.cleanup20_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

if.end:                                           ; preds = %while.body
  %cmp = icmp eq ptr %call4, %page
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %7, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unstable_tree_search_insert, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %7, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup20_crit_edge

folio_put_testzero.exit.i.i.cleanup20_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup20

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %7) #9
  br label %cleanup20

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @memcmp_pages(ptr noundef %page, ptr noundef nonnull %call4) #9
  %11 = ptrtoint ptr %new.0107 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %new.0107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end7
  %13 = getelementptr inbounds %struct.page, ptr %call4, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i43 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end.i.i47, label %if.then.i.i46, !prof !182

if.then.i.i46:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i45 = add i32 %15, -1
  br label %_compound_head.exit.i52

if.end.i.i47:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call4 to i32
  br label %_compound_head.exit.i52

_compound_head.exit.i52:                          ; preds = %if.end.i.i47, %if.then.i.i46
  %retval.0.i.i48 = phi i32 [ %sub.i.i45, %if.then.i.i46 ], [ %16, %if.end.i.i47 ]
  %17 = inttoptr i32 %retval.0.i.i48 to ptr
  %_refcount.i.i.i.i.i49 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i49, i32 noundef 4) #9
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i51 = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i51, label %if.then.i.i.i.i53, label %do.end5.i.i.i.i57, !prof !187

if.then.i.i.i.i53:                                ; preds = %_compound_head.exit.i52
  call void @__sanitizer_cov_trace_pc() #11
  %20 = inttoptr i32 %retval.0.i.i48 to ptr
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i57:                                ; preds = %_compound_head.exit.i52
  %call.i.i.i10.i.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i49, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i49, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i49, ptr %_refcount.i.i.i.i.i49, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i49) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i55 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i55)
  %cmp.i.i.i.i.i.i.i56 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i55, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unstable_tree_search_insert, %if.then.i.i.i.i.i59)) #9
          to label %folio_put_testzero.exit.i.i60 [label %if.then.i.i.i.i.i59], !srcloc !188

if.then.i.i.i.i.i59:                              ; preds = %do.end5.i.i.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i58 = zext i1 %cmp.i.i.i.i.i.i.i56 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i58) #9
  br label %folio_put_testzero.exit.i.i60

folio_put_testzero.exit.i.i60:                    ; preds = %if.then.i.i.i.i.i59, %do.end5.i.i.i.i57
  br i1 %cmp.i.i.i.i.i.i.i56, label %if.then.i4.i61, label %folio_put_testzero.exit.i.i60.put_page.exit62_crit_edge

folio_put_testzero.exit.i.i60.put_page.exit62_crit_edge: ; preds = %folio_put_testzero.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit62

if.then.i4.i61:                                   ; preds = %folio_put_testzero.exit.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %17) #9
  br label %put_page.exit62

put_page.exit62:                                  ; preds = %if.then.i4.i61, %folio_put_testzero.exit.i.i60.put_page.exit62_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp11.not = icmp eq i32 %call8, 0
  br i1 %cmp11.not, label %if.else13, label %if.then12

if.then12:                                        ; preds = %if.else
  %22 = getelementptr inbounds %struct.page, ptr %call4, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i63 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i67, label %if.then.i.i66, !prof !182

if.then.i.i66:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i65 = add i32 %24, -1
  br label %_compound_head.exit.i72

if.end.i.i67:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call4 to i32
  br label %_compound_head.exit.i72

_compound_head.exit.i72:                          ; preds = %if.end.i.i67, %if.then.i.i66
  %retval.0.i.i68 = phi i32 [ %sub.i.i65, %if.then.i.i66 ], [ %25, %if.end.i.i67 ]
  %26 = inttoptr i32 %retval.0.i.i68 to ptr
  %_refcount.i.i.i.i.i69 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i70 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i69, i32 noundef 4) #9
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i71 = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i71, label %if.then.i.i.i.i73, label %do.end5.i.i.i.i77, !prof !187

if.then.i.i.i.i73:                                ; preds = %_compound_head.exit.i72
  call void @__sanitizer_cov_trace_pc() #11
  %29 = inttoptr i32 %retval.0.i.i68 to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i77:                                ; preds = %_compound_head.exit.i72
  %call.i.i.i10.i.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i69, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i69, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i69, ptr %_refcount.i.i.i.i.i69, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i69) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i75 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i75)
  %cmp.i.i.i.i.i.i.i76 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i75, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unstable_tree_search_insert, %if.then.i.i.i.i.i79)) #9
          to label %folio_put_testzero.exit.i.i80 [label %if.then.i.i.i.i.i79], !srcloc !188

if.then.i.i.i.i.i79:                              ; preds = %do.end5.i.i.i.i77
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i78 = zext i1 %cmp.i.i.i.i.i.i.i76 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i78) #9
  br label %folio_put_testzero.exit.i.i80

folio_put_testzero.exit.i.i80:                    ; preds = %if.then.i.i.i.i.i79, %do.end5.i.i.i.i77
  br i1 %cmp.i.i.i.i.i.i.i76, label %if.then.i4.i81, label %folio_put_testzero.exit.i.i80.put_page.exit82_crit_edge

folio_put_testzero.exit.i.i80.put_page.exit82_crit_edge: ; preds = %folio_put_testzero.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit82

if.then.i4.i81:                                   ; preds = %folio_put_testzero.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %26) #9
  br label %put_page.exit82

put_page.exit82:                                  ; preds = %if.then.i4.i81, %folio_put_testzero.exit.i.i80.put_page.exit82_crit_edge
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  br label %cleanup

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %tree_pagep to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call4, ptr %tree_pagep, align 4
  br label %cleanup20

cleanup:                                          ; preds = %put_page.exit82, %put_page.exit62
  %new.2 = phi ptr [ %rb_left, %put_page.exit62 ], [ %rb_right, %put_page.exit82 ]
  %32 = ptrtoint ptr %new.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %new.2, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %12 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %new.0.lcssa = phi ptr [ %new.2, %while.cond.while.end_crit_edge ], [ @one_unstable_tree, %entry.while.end_crit_edge ]
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %34 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %address, align 4
  %or = or i32 %35, 256
  %36 = load i32, ptr @ksm_scan.3, align 4
  %and = and i32 %36, 255
  %or19 = or i32 %and, %or
  store i32 %or19, ptr %address, align 4
  %37 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %parent.0.lcssa, ptr %37, align 4
  %rb_right.i = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 1
  %39 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 5, i32 0, i32 2
  %40 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %rb_left.i, align 4
  %41 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %37, ptr %new.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %37, ptr noundef nonnull @one_unstable_tree) #9
  %42 = load i32, ptr @ksm_pages_unshared, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr @ksm_pages_unshared, align 4
  br label %cleanup20

cleanup20:                                        ; preds = %while.end, %if.else13, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup20_crit_edge, %while.body.cleanup20_crit_edge
  %retval.2 = phi ptr [ null, %while.end ], [ null, %if.then.i4.i ], [ null, %folio_put_testzero.exit.i.i.cleanup20_crit_edge ], [ %add.ptr3, %if.else13 ], [ null, %while.body.cleanup20_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stable_tree_insert(ptr noundef %kpage) unnamed_addr #0 align 64 {
entry:
  %s_n.addr.i = alloca ptr, align 4
  %stable_node_dup = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stable_node_dup) #9
  %0 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %stable_node_dup, align 4, !annotation !209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %kpage to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %2
  %3 = load ptr, ptr @one_stable_tree, align 4
  %tobool.not146163 = icmp eq ptr %3, null
  br i1 %tobool.not146163, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

again.loopexit:                                   ; preds = %do.end30.again.loopexit_crit_edge, %stable_node_dup_any.exit.again.loopexit_crit_edge, %stable_node_dup_any.exit.thread
  %4 = load ptr, ptr @one_stable_tree, align 4
  %tobool.not146 = icmp eq ptr %4, null
  br i1 %tobool.not146, label %again.loopexit.while.end_crit_edge, label %again.loopexit.while.body.backedge_crit_edge

again.loopexit.while.body.backedge_crit_edge:     ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.backedge

again.loopexit.while.end_crit_edge:               ; preds = %again.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond:                                       ; preds = %if.then37, %if.then35
  %new.2 = phi ptr [ %rb_right, %if.then37 ], [ %rb_left, %if.then35 ]
  %5 = ptrtoint ptr %new.2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %new.2, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.cond.while.end.loopexit_crit_edge, label %while.cond.while.body.backedge_crit_edge

while.cond.while.body.backedge_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.backedge

while.cond.while.end.loopexit_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.loopexit

while.body.backedge:                              ; preds = %while.cond.while.body.backedge_crit_edge, %again.loopexit.while.body.backedge_crit_edge
  %new.0150.be = phi ptr [ %new.2, %while.cond.while.body.backedge_crit_edge ], [ @one_stable_tree, %again.loopexit.while.body.backedge_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry.while.body_crit_edge
  %new.0150 = phi ptr [ %new.0150.be, %while.body.backedge ], [ @one_stable_tree, %entry.while.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1823, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %7 = ptrtoint ptr %new.0150 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %new.0150, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s_n.addr.i)
  %9 = ptrtoint ptr %s_n.addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %s_n.addr.i, align 4
  %rmap_hlist_len.i.i.i = getelementptr inbounds %struct.stable_node, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %rmap_hlist_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rmap_hlist_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, -1024
  br i1 %cmp.i.i.i, label %if.end4.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i.i = icmp slt i32 %11, 0
  br i1 %cmp.i.i.i.i, label %do.body2.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

do.body2.i.i.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end5.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool7.not.i.i.i.i, label %do.end5.i.i.i.i.if.end.i.i_crit_edge, label %is_page_sharing_candidate.exit.i.i

do.end5.i.i.i.i.if.end.i.i_crit_edge:             ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

is_page_sharing_candidate.exit.i.i:               ; preds = %do.end5.i.i.i.i
  %12 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp9.i.i.i.i = icmp slt i32 %11, %12
  br i1 %cmp9.i.i.i.i, label %if.then2.i.i, label %is_page_sharing_candidate.exit.i.i.if.end.i.i_crit_edge

is_page_sharing_candidate.exit.i.i.if.end.i.i_crit_edge: ; preds = %is_page_sharing_candidate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %is_page_sharing_candidate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %8, ptr %stable_node_dup, align 4
  %call3.i.i = tail call fastcc ptr @get_ksm_page(ptr noundef %8, i32 noundef 0) #9
  br label %__stable_node_chain.exit.i

if.end.i.i:                                       ; preds = %is_page_sharing_candidate.exit.i.i.if.end.i.i_crit_edge, %do.end5.i.i.i.i.if.end.i.i_crit_edge
  %14 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %stable_node_dup, align 4
  br label %__stable_node_chain.exit.i

if.end4.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i.i = call fastcc ptr @stable_node_dup(ptr noundef nonnull %stable_node_dup, ptr noundef nonnull %s_n.addr.i, i1 noundef zeroext false) #9
  br label %__stable_node_chain.exit.i

__stable_node_chain.exit.i:                       ; preds = %if.end4.i.i, %if.end.i.i, %if.then2.i.i
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end4.i.i ], [ %call3.i.i, %if.then2.i.i ], [ null, %if.end.i.i ]
  %15 = ptrtoint ptr %s_n.addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_n.addr.i, align 4
  %cmp.not.i = icmp eq ptr %16, %8
  br i1 %cmp.not.i, label %chain.exit, label %do.body2.i, !prof !182

do.body2.i:                                       ; preds = %__stable_node_chain.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1539, 0\0A.popsection", ""() #9, !srcloc !238
  unreachable

chain.exit:                                       ; preds = %__stable_node_chain.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s_n.addr.i)
  %17 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stable_node_dup, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %if.then, label %chain.exit.do.end30_crit_edge

chain.exit.do.end30_crit_edge:                    ; preds = %chain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then:                                          ; preds = %chain.exit
  %19 = ptrtoint ptr %rmap_hlist_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmap_hlist_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %20)
  %cmp.i.i = icmp eq i32 %20, -1024
  br i1 %cmp.i.i, label %if.end.i, label %if.then.stable_node_dup_any.exit_crit_edge

if.then.stable_node_dup_any.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_dup_any.exit

if.end.i:                                         ; preds = %if.then
  %hlist.i = getelementptr inbounds %struct.stable_node, ptr %8, i32 0, i32 1
  %21 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.not.i, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  tail call void @rb_erase(ptr noundef %8, ptr noundef nonnull @one_stable_tree) #9
  %23 = ptrtoint ptr %rmap_hlist_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmap_hlist_len.i.i.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %24, label %do.body4.i.i.i [
    i32 -1024, label %if.then2.i.stable_node_dup_any.exit.thread_crit_edge
    i32 0, label %if.then2.i.stable_node_dup_any.exit.thread_crit_edge223
  ]

if.then2.i.stable_node_dup_any.exit.thread_crit_edge223: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_dup_any.exit.thread

if.then2.i.stable_node_dup_any.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_dup_any.exit.thread

do.body4.i.i.i:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !226
  unreachable

stable_node_dup_any.exit.thread:                  ; preds = %if.then2.i.stable_node_dup_any.exit.thread_crit_edge, %if.then2.i.stable_node_dup_any.exit.thread_crit_edge223
  %26 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %8) #9
  %27 = load i32, ptr @ksm_stable_node_chains, align 4
  %dec.i.i = add i32 %27, -1
  store i32 %dec.i.i, ptr @ksm_stable_node_chains, align 4
  br label %again.loopexit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %22, i32 -4
  br label %stable_node_dup_any.exit

stable_node_dup_any.exit:                         ; preds = %if.end3.i, %if.then.stable_node_dup_any.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end3.i ], [ %8, %if.then.stable_node_dup_any.exit_crit_edge ]
  %tobool7.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool7.not, label %stable_node_dup_any.exit.again.loopexit_crit_edge, label %do.body

stable_node_dup_any.exit.again.loopexit_crit_edge: ; preds = %stable_node_dup_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.loopexit

do.body:                                          ; preds = %stable_node_dup_any.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call fastcc ptr @get_ksm_page(ptr noundef nonnull %retval.0.i, i32 noundef 0)
  br label %do.end30

do.end30:                                         ; preds = %do.body, %chain.exit.do.end30_crit_edge
  %tree_page.0123 = phi ptr [ %call9, %do.body ], [ %retval.0.i.i, %chain.exit.do.end30_crit_edge ]
  %tobool31.not = icmp eq ptr %tree_page.0123, null
  br i1 %tobool31.not, label %do.end30.again.loopexit_crit_edge, label %if.end33

do.end30.again.loopexit_crit_edge:                ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.loopexit

if.end33:                                         ; preds = %do.end30
  %call34 = tail call i32 @memcmp_pages(ptr noundef %kpage, ptr noundef nonnull %tree_page.0123) #9
  %28 = getelementptr inbounds %struct.page, ptr %tree_page.0123, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i104, label %if.then.i.i103, !prof !182

if.then.i.i103:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i104:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %tree_page.0123 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i104, %if.then.i.i103
  %retval.0.i.i105 = phi i32 [ %sub.i.i, %if.then.i.i103 ], [ %31, %if.end.i.i104 ]
  %32 = inttoptr i32 %retval.0.i.i105 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i106 = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i106, label %if.then.i.i.i.i, label %do.end5.i.i.i.i107, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = inttoptr i32 %retval.0.i.i105 to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i107:                               ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@stable_tree_insert, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i107
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %32) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %37 = ptrtoint ptr %new.0150 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %new.0150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.then35, label %if.else

if.then35:                                        ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 2
  br label %while.cond

if.else:                                          ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp36.not = icmp eq i32 %call34, 0
  br i1 %cmp36.not, label %if.else.while.end.loopexit_crit_edge, label %if.then37

if.else.while.end.loopexit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.loopexit

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %38, i32 0, i32 1
  br label %while.cond

while.end.loopexit:                               ; preds = %if.else.while.end.loopexit_crit_edge, %while.cond.while.end.loopexit_crit_edge
  %new.0.lcssa.ph = phi ptr [ %new.2, %while.cond.while.end.loopexit_crit_edge ], [ %new.0150, %if.else.while.end.loopexit_crit_edge ]
  %tobool.not.lcssa.ph = phi i1 [ true, %while.cond.while.end.loopexit_crit_edge ], [ false, %if.else.while.end.loopexit_crit_edge ]
  %phi.cast = ptrtoint ptr %38 to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %again.loopexit.while.end_crit_edge, %entry.while.end_crit_edge
  %new.0.lcssa = phi ptr [ @one_stable_tree, %entry.while.end_crit_edge ], [ %new.0.lcssa.ph, %while.end.loopexit ], [ @one_stable_tree, %again.loopexit.while.end_crit_edge ]
  %tobool.not.lcssa = phi i1 [ true, %entry.while.end_crit_edge ], [ %tobool.not.lcssa.ph, %while.end.loopexit ], [ true, %again.loopexit.while.end_crit_edge ]
  %parent.2 = phi i32 [ 0, %entry.while.end_crit_edge ], [ %phi.cast, %while.end.loopexit ], [ 0, %again.loopexit.while.end_crit_edge ]
  %stable_node.2 = phi ptr [ inttoptr (i32 -1 to ptr), %entry.while.end_crit_edge ], [ %8, %while.end.loopexit ], [ %8, %again.loopexit.while.end_crit_edge ]
  %39 = load ptr, ptr @stable_node_cache, align 4
  %call.i108 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %39, i32 noundef 3296) #9
  %40 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i108, ptr %stable_node_dup, align 4
  %tobool43.not = icmp eq ptr %call.i108, null
  br i1 %tobool43.not, label %while.end.cleanup63_crit_edge, label %if.end45

while.end.cleanup63_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup63

if.end45:                                         ; preds = %while.end
  %hlist = getelementptr inbounds %struct.stable_node, ptr %call.i108, i32 0, i32 1
  %41 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %hlist, align 4
  %42 = getelementptr inbounds %struct.stable_node, ptr %call.i108, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %42, align 8
  %44 = ptrtoint ptr %call.i108 to i32
  %or.i = or i32 %44, 3
  %45 = inttoptr i32 %or.i to ptr
  %mapping.i = getelementptr inbounds %struct.page, ptr %kpage, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %mapping.i, align 4
  %rmap_hlist_len = getelementptr inbounds %struct.stable_node, ptr %call.i108, i32 0, i32 3
  %47 = ptrtoint ptr %rmap_hlist_len to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rmap_hlist_len, align 4
  br i1 %tobool.not.lcssa, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %call.i108 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %parent.2, ptr %call.i108, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call.i108, i32 0, i32 1
  %49 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call.i108, i32 0, i32 2
  %50 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rb_left.i, align 8
  %51 = ptrtoint ptr %new.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i108, ptr %new.0.lcssa, align 4
  %52 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stable_node_dup, align 4
  tail call void @rb_insert_color(ptr noundef %53, ptr noundef nonnull @one_stable_tree) #9
  br label %if.end62

if.else51:                                        ; preds = %if.end45
  %rmap_hlist_len.i = getelementptr inbounds %struct.stable_node, ptr %stable_node.2, i32 0, i32 3
  %54 = ptrtoint ptr %rmap_hlist_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rmap_hlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %55)
  %cmp.i = icmp eq i32 %55, -1024
  br i1 %cmp.i, label %if.else51.if.end61_crit_edge, label %if.then53

if.else51.if.end61_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then53:                                        ; preds = %if.else51
  %56 = load ptr, ptr @stable_node_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %56, i32 noundef 3296) #9
  %57 = ptrtoint ptr %rmap_hlist_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rmap_hlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %58)
  %cmp.i.i110 = icmp eq i32 %58, -1024
  br i1 %cmp.i.i110, label %do.body3.i, label %do.end8.i, !prof !187

do.body3.i:                                       ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 592, 0\0A.popsection", ""() #9, !srcloc !231
  unreachable

do.end8.i:                                        ; preds = %if.then53
  %tobool9.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool9.not.i, label %if.then56, label %if.then16.i, !prof !187

if.then16.i:                                      ; preds = %do.end8.i
  %hlist.i111 = getelementptr inbounds %struct.stable_node, ptr %call.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %hlist.i111 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %hlist.i111, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %61 = getelementptr inbounds %struct.stable_node, ptr %call.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %61, align 8
  %rmap_hlist_len.i112 = getelementptr inbounds %struct.stable_node, ptr %call.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %rmap_hlist_len.i112 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1024, ptr %rmap_hlist_len.i112, align 4
  %64 = load i32, ptr @ksm_stable_node_chains, align 4
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr @ksm_stable_node_chains, align 4
  tail call void @rb_replace_node(ptr noundef %stable_node.2, ptr noundef nonnull %call.i.i, ptr noundef nonnull @one_stable_tree) #9
  %65 = ptrtoint ptr %stable_node.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %stable_node.2, align 4
  %cmp.i.i.i113 = icmp eq ptr %66, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i.i.i113, label %do.body2.i.i, label %do.end5.i.i, !prof !187

do.body2.i.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 350, 0\0A.popsection", ""() #9, !srcloc !232
  unreachable

do.end5.i.i:                                      ; preds = %if.then16.i
  %67 = ptrtoint ptr %stable_node.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1), ptr %stable_node.2, align 4
  %68 = ptrtoint ptr %rmap_hlist_len.i112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rmap_hlist_len.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %69)
  %cmp.i26.i.i = icmp eq i32 %69, -1024
  br i1 %cmp.i26.i.i, label %do.end22.i.i, label %do.body17.i.i, !prof !182

do.body17.i.i:                                    ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #9, !srcloc !233
  unreachable

do.end22.i.i:                                     ; preds = %do.end5.i.i
  %70 = getelementptr inbounds %struct.anon.88, ptr %stable_node.2, i32 0, i32 1
  %71 = ptrtoint ptr %hlist.i111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hlist.i111, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %70, align 4
  %tobool.not.i.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i.i, label %do.end22.i.i.alloc_stable_node_chain.exit_crit_edge, label %do.body12.i.i.i

do.end22.i.i.alloc_stable_node_chain.exit_crit_edge: ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_stable_node_chain.exit

do.body12.i.i.i:                                  ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %72, i32 0, i32 1
  %74 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %70, ptr %pprev.i.i.i, align 4
  br label %alloc_stable_node_chain.exit

alloc_stable_node_chain.exit:                     ; preds = %do.body12.i.i.i, %do.end22.i.i.alloc_stable_node_chain.exit_crit_edge
  %75 = ptrtoint ptr %hlist.i111 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %70, ptr %hlist.i111, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.anon.88, ptr %stable_node.2, i32 0, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %hlist.i111, ptr %pprev34.i.i.i, align 4
  %77 = load i32, ptr @ksm_stable_node_dups, align 4
  %inc.i.i = add i32 %77, 1
  store i32 %inc.i.i, ptr @ksm_stable_node_dups, align 4
  br label %if.end61

if.then56:                                        ; preds = %do.end8.i
  %78 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %stable_node_dup, align 4
  %rmap_hlist_len.i114 = getelementptr inbounds %struct.stable_node, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %rmap_hlist_len.i114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rmap_hlist_len.i114, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %81, label %do.body4.i [
    i32 -1024, label %if.then56.free_stable_node.exit_crit_edge
    i32 0, label %if.then56.free_stable_node.exit_crit_edge224
  ]

if.then56.free_stable_node.exit_crit_edge224:     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_stable_node.exit

if.then56.free_stable_node.exit_crit_edge:        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_stable_node.exit

do.body4.i:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !226
  unreachable

free_stable_node.exit:                            ; preds = %if.then56.free_stable_node.exit_crit_edge, %if.then56.free_stable_node.exit_crit_edge224
  %83 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %83, ptr noundef %79) #9
  br label %cleanup63

if.end61:                                         ; preds = %alloc_stable_node_chain.exit, %if.else51.if.end61_crit_edge
  %stable_node.3 = phi ptr [ %stable_node.2, %if.else51.if.end61_crit_edge ], [ %call.i.i, %alloc_stable_node_chain.exit ]
  %84 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stable_node_dup, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %cmp.i.i115 = icmp eq ptr %87, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i.i115, label %do.body2.i116, label %do.end5.i, !prof !187

do.body2.i116:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 350, 0\0A.popsection", ""() #9, !srcloc !232
  unreachable

do.end5.i:                                        ; preds = %if.end61
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1), ptr %85, align 4
  %rmap_hlist_len.i.i117 = getelementptr inbounds %struct.stable_node, ptr %stable_node.3, i32 0, i32 3
  %89 = ptrtoint ptr %rmap_hlist_len.i.i117 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rmap_hlist_len.i.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %90)
  %cmp.i26.i = icmp eq i32 %90, -1024
  br i1 %cmp.i26.i, label %do.end22.i, label %do.body17.i, !prof !182

do.body17.i:                                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 352, 0\0A.popsection", ""() #9, !srcloc !233
  unreachable

do.end22.i:                                       ; preds = %do.end5.i
  %91 = getelementptr inbounds %struct.anon.88, ptr %85, i32 0, i32 1
  %hlist.i118 = getelementptr inbounds %struct.stable_node, ptr %stable_node.3, i32 0, i32 1
  %92 = ptrtoint ptr %hlist.i118 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hlist.i118, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %93, ptr %91, align 4
  %tobool.not.i.i119 = icmp eq ptr %93, null
  br i1 %tobool.not.i.i119, label %do.end22.i.stable_node_chain_add_dup.exit_crit_edge, label %do.body12.i.i

do.end22.i.stable_node_chain_add_dup.exit_crit_edge: ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %stable_node_chain_add_dup.exit

do.body12.i.i:                                    ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %93, i32 0, i32 1
  %95 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %91, ptr %pprev.i.i, align 4
  br label %stable_node_chain_add_dup.exit

stable_node_chain_add_dup.exit:                   ; preds = %do.body12.i.i, %do.end22.i.stable_node_chain_add_dup.exit_crit_edge
  %96 = ptrtoint ptr %hlist.i118 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %91, ptr %hlist.i118, align 4
  %pprev34.i.i = getelementptr inbounds %struct.anon.88, ptr %85, i32 0, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %hlist.i118, ptr %pprev34.i.i, align 4
  %98 = load i32, ptr @ksm_stable_node_dups, align 4
  %inc.i120 = add i32 %98, 1
  store i32 %inc.i120, ptr @ksm_stable_node_dups, align 4
  br label %if.end62

if.end62:                                         ; preds = %stable_node_chain_add_dup.exit, %if.then50
  %99 = ptrtoint ptr %stable_node_dup to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stable_node_dup, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %if.end62, %free_stable_node.exit, %while.end.cleanup63_crit_edge
  %retval.1 = phi ptr [ %100, %if.end62 ], [ null, %while.end.cleanup63_crit_edge ], [ null, %free_stable_node.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stable_node_dup) #9
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @break_cow(ptr nocapture noundef readonly %rmap_item) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 2
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 4
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %4 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %6, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %entry.put_anon_vma.exit_crit_edge

entry.put_anon_vma.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_anon_vma.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef %6) #9
  br label %put_anon_vma.exit

put_anon_vma.exit:                                ; preds = %if.then.i, %entry.put_anon_vma.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@break_cow, %if.then.i.i)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !188

if.then.i.i:                                      ; preds = %put_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %put_anon_vma.exit
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@break_cow, %if.then.i3.i)) #9
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !188

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %mm_users.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %mm_users.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %mm_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %mmap_read_lock.exit.if.end_crit_edge, label %if.end.i

mmap_read_lock.exit.if.end_crit_edge:             ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %mmap_read_lock.exit
  %call.i.i = tail call ptr @find_vma(ptr noundef %1, i32 noundef %3) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i.i:                                ; preds = %if.end.i
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp.i11.i = icmp ugt i32 %11, %3
  br i1 %cmp.i11.i, label %land.lhs.true.i.i.if.end_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.i.if.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool2.not.i = icmp sgt i32 %13, -1
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %anon_vma.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.if.end_crit_edge, label %if.then

lor.lhs.false3.i.if.end_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @break_ksm(ptr noundef nonnull %call.i.i, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false3.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %land.lhs.true.i.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %mmap_read_lock.exit.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@break_cow, %if.then.i.i9)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i9], !srcloc !188

if.then.i.i9:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i9, %if.end
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memcmp_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stable_node_dup(ptr nocapture noundef writeonly %_stable_node_dup, ptr nocapture noundef %_stable_node, i1 noundef zeroext %prune_stale_stable_nodes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_stable_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_stable_node, align 4
  br i1 %prune_stale_stable_nodes, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = getelementptr inbounds %struct.stable_node, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = load i32, ptr @ksm_stable_node_chains_prune_millisecs, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #9
  %7 = add i32 %5, %call2.i
  %sub = sub i32 %2, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.if.end_crit_edge, label %if.else

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %prune_stale_stable_nodes.addr.0.off0 = phi i1 [ true, %if.else ], [ false, %lor.lhs.false.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %hlist = getelementptr inbounds %struct.stable_node, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hlist, align 4
  %tobool1.not = icmp eq ptr %11, null
  %add.ptr = getelementptr i8, ptr %11, i32 -4
  %tobool3.not6480 = icmp eq ptr %add.ptr, null
  %tobool3.not64 = or i1 %tobool1.not, %tobool3.not6480
  br i1 %tobool3.not64, label %if.end.if.end71_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %dup.069 = phi ptr [ %add.ptr34, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %if.end.land.rhs_crit_edge ]
  %found.068 = phi ptr [ %found.1, %for.inc.land.rhs_crit_edge ], [ null, %if.end.land.rhs_crit_edge ]
  %tree_page.067 = phi ptr [ %tree_page.1, %for.inc.land.rhs_crit_edge ], [ null, %if.end.land.rhs_crit_edge ]
  %nr.066 = phi i32 [ %nr.1, %for.inc.land.rhs_crit_edge ], [ 0, %if.end.land.rhs_crit_edge ]
  %found_rmap_hlist_len.065 = phi i32 [ %found_rmap_hlist_len.1, %for.inc.land.rhs_crit_edge ], [ -1, %if.end.land.rhs_crit_edge ]
  %12 = getelementptr inbounds %struct.anon.88, ptr %dup.069, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 1376, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %call8 = tail call fastcc ptr @get_ksm_page(ptr noundef nonnull %dup.069, i32 noundef 0)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %land.rhs.for.inc_crit_edge, label %if.end11

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %land.rhs
  %add12 = add i32 %nr.066, 1
  %rmap_hlist_len.i.i = getelementptr inbounds %struct.stable_node, ptr %dup.069, i32 0, i32 3
  %15 = ptrtoint ptr %rmap_hlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmap_hlist_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp slt i32 %16, 0
  br i1 %cmp.i.i, label %do.body2.i.i, label %do.end5.i.i, !prof !187

do.body2.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end5.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i.i, label %do.end5.i.i.if.end27_crit_edge, label %is_page_sharing_candidate.exit

do.end5.i.i.if.end27_crit_edge:                   ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

is_page_sharing_candidate.exit:                   ; preds = %do.end5.i.i
  %17 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp9.i.i = icmp slt i32 %16, %17
  br i1 %cmp9.i.i, label %if.then14, label %is_page_sharing_candidate.exit.if.end27_crit_edge

is_page_sharing_candidate.exit.if.end27_crit_edge: ; preds = %is_page_sharing_candidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then14:                                        ; preds = %is_page_sharing_candidate.exit
  %tobool15.not = icmp eq ptr %found.068, null
  br i1 %tobool15.not, label %if.then14.if.end21_crit_edge, label %lor.lhs.false16

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

lor.lhs.false16:                                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %found_rmap_hlist_len.065)
  %cmp17 = icmp sgt i32 %16, %found_rmap_hlist_len.065
  br i1 %cmp17, label %if.then20.critedge, label %lor.lhs.false16.if.end27_crit_edge

lor.lhs.false16.if.end27_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then20.critedge:                               ; preds = %lor.lhs.false16
  %18 = getelementptr inbounds %struct.page, ptr %tree_page.067, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.then20.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i3 = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then20.critedge
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %tree_page.067 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i3, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@stable_node_dup, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %22, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end21_crit_edge

folio_put_testzero.exit.i.i.if.end21_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %22) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end21_crit_edge, %if.then14.if.end21_crit_edge
  %27 = ptrtoint ptr %rmap_hlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rmap_hlist_len.i.i, align 4
  br i1 %prune_stale_stable_nodes.addr.0.off0, label %if.end21.for.inc_crit_edge, label %if.end21.if.else58_crit_edge

if.end21.if.else58_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else58

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end27:                                         ; preds = %lor.lhs.false16.if.end27_crit_edge, %is_page_sharing_candidate.exit.if.end27_crit_edge, %do.end5.i.i.if.end27_crit_edge
  %29 = getelementptr inbounds %struct.page, ptr %call8, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i4 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i8, label %if.then.i.i7, !prof !182

if.then.i.i7:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i6 = add i32 %31, -1
  br label %_compound_head.exit.i13

if.end.i.i8:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %call8 to i32
  br label %_compound_head.exit.i13

_compound_head.exit.i13:                          ; preds = %if.end.i.i8, %if.then.i.i7
  %retval.0.i.i9 = phi i32 [ %sub.i.i6, %if.then.i.i7 ], [ %32, %if.end.i.i8 ]
  %33 = inttoptr i32 %retval.0.i.i9 to ptr
  %_refcount.i.i.i.i.i10 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i10, i32 noundef 4) #9
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i12 = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i12, label %if.then.i.i.i.i14, label %do.end5.i.i.i.i18, !prof !187

if.then.i.i.i.i14:                                ; preds = %_compound_head.exit.i13
  call void @__sanitizer_cov_trace_pc() #11
  %36 = inttoptr i32 %retval.0.i.i9 to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i18:                                ; preds = %_compound_head.exit.i13
  %call.i.i.i10.i.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i10, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i10, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i10, ptr %_refcount.i.i.i.i.i10, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i10) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i16 = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i16)
  %cmp.i.i.i.i.i.i.i17 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i16, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@stable_node_dup, %if.then.i.i.i.i.i20)) #9
          to label %folio_put_testzero.exit.i.i21 [label %if.then.i.i.i.i.i20], !srcloc !188

if.then.i.i.i.i.i20:                              ; preds = %do.end5.i.i.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i19 = zext i1 %cmp.i.i.i.i.i.i.i17 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %33, i32 noundef -1, i32 noundef %conv.i.i.i.i.i19) #9
  br label %folio_put_testzero.exit.i.i21

folio_put_testzero.exit.i.i21:                    ; preds = %if.then.i.i.i.i.i20, %do.end5.i.i.i.i18
  br i1 %cmp.i.i.i.i.i.i.i17, label %if.then.i4.i22, label %folio_put_testzero.exit.i.i21.for.inc_crit_edge

folio_put_testzero.exit.i.i21.for.inc_crit_edge:  ; preds = %folio_put_testzero.exit.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i4.i22:                                   ; preds = %folio_put_testzero.exit.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %33) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i22, %folio_put_testzero.exit.i.i21.for.inc_crit_edge, %if.end21.for.inc_crit_edge, %land.rhs.for.inc_crit_edge
  %found_rmap_hlist_len.1 = phi i32 [ %28, %if.end21.for.inc_crit_edge ], [ %found_rmap_hlist_len.065, %land.rhs.for.inc_crit_edge ], [ %found_rmap_hlist_len.065, %folio_put_testzero.exit.i.i21.for.inc_crit_edge ], [ %found_rmap_hlist_len.065, %if.then.i4.i22 ]
  %nr.1 = phi i32 [ %add12, %if.end21.for.inc_crit_edge ], [ %nr.066, %land.rhs.for.inc_crit_edge ], [ %add12, %folio_put_testzero.exit.i.i21.for.inc_crit_edge ], [ %add12, %if.then.i4.i22 ]
  %tree_page.1 = phi ptr [ %call8, %if.end21.for.inc_crit_edge ], [ %tree_page.067, %land.rhs.for.inc_crit_edge ], [ %tree_page.067, %folio_put_testzero.exit.i.i21.for.inc_crit_edge ], [ %tree_page.067, %if.then.i4.i22 ]
  %found.1 = phi ptr [ %dup.069, %if.end21.for.inc_crit_edge ], [ %found.068, %land.rhs.for.inc_crit_edge ], [ %found.068, %folio_put_testzero.exit.i.i21.for.inc_crit_edge ], [ %found.068, %if.then.i4.i22 ]
  %tobool30.not = icmp eq ptr %14, null
  %add.ptr34 = getelementptr i8, ptr %14, i32 -4
  %tobool3.not94 = icmp eq ptr %add.ptr34, null
  %tobool3.not = or i1 %tobool30.not, %tobool3.not94
  br i1 %tobool3.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  %tobool38.not = icmp eq ptr %found.1, null
  br i1 %tobool38.not, label %for.end.if.end71_crit_edge, label %if.then39

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr.1)
  %cmp41 = icmp eq i32 %nr.1, 1
  %or.cond = select i1 %prune_stale_stable_nodes.addr.0.off0, i1 %cmp41, i1 false
  br i1 %or.cond, label %do.body, label %if.then39.if.else58_crit_edge

if.then39.if.else58_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else58

do.body:                                          ; preds = %if.then39
  %38 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hlist, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool46.not = icmp eq ptr %41, null
  br i1 %tobool46.not, label %do.end56, label %do.body50, !prof !182

do.body50:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1423, 0\0A.popsection", ""() #9, !srcloc !239
  unreachable

do.end56:                                         ; preds = %do.body
  tail call void @rb_replace_node(ptr noundef %1, ptr noundef nonnull %found.1, ptr noundef nonnull @one_stable_tree) #9
  %rmap_hlist_len.i24 = getelementptr inbounds %struct.stable_node, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %rmap_hlist_len.i24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rmap_hlist_len.i24, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %43, label %do.body4.i [
    i32 -1024, label %do.end56.free_stable_node.exit_crit_edge
    i32 0, label %do.end56.free_stable_node.exit_crit_edge119
  ]

do.end56.free_stable_node.exit_crit_edge119:      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_stable_node.exit

do.end56.free_stable_node.exit_crit_edge:         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_stable_node.exit

do.body4.i:                                       ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !226
  unreachable

free_stable_node.exit:                            ; preds = %do.end56.free_stable_node.exit_crit_edge, %do.end56.free_stable_node.exit_crit_edge119
  %45 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef %1) #9
  %46 = load i32, ptr @ksm_stable_node_chains, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr @ksm_stable_node_chains, align 4
  %47 = load i32, ptr @ksm_stable_node_dups, align 4
  %dec57 = add i32 %47, -1
  store i32 %dec57, ptr @ksm_stable_node_dups, align 4
  %48 = ptrtoint ptr %_stable_node to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %found.1, ptr %_stable_node, align 4
  br label %if.end71

if.else58:                                        ; preds = %if.then39.if.else58_crit_edge, %if.end21.if.else58_crit_edge
  %tree_page.23242 = phi ptr [ %tree_page.1, %if.then39.if.else58_crit_edge ], [ %call8, %if.end21.if.else58_crit_edge ]
  %found.23441 = phi ptr [ %found.1, %if.then39.if.else58_crit_edge ], [ %dup.069, %if.end21.if.else58_crit_edge ]
  %49 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hlist, align 4
  %51 = getelementptr inbounds %struct.anon.88, ptr %found.23441, i32 0, i32 1
  %cmp62.not = icmp eq ptr %50, %51
  br i1 %cmp62.not, label %if.else58.if.end71_crit_edge, label %land.lhs.true63

if.else58.if.end71_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.else58
  %rmap_hlist_len.i = getelementptr inbounds %struct.stable_node, ptr %found.23441, i32 0, i32 3
  %52 = ptrtoint ptr %rmap_hlist_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rmap_hlist_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i2 = icmp slt i32 %53, 0
  br i1 %cmp.i2, label %do.body2.i, label %do.end5.i, !prof !187

do.body2.i:                                       ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #9, !srcloc !210
  unreachable

do.end5.i:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool7.not.i = icmp eq i32 %53, 0
  br i1 %tobool7.not.i, label %do.end5.i.if.end71_crit_edge, label %__is_page_sharing_candidate.exit

do.end5.i.if.end71_crit_edge:                     ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

__is_page_sharing_candidate.exit:                 ; preds = %do.end5.i
  %add.i = add nuw i32 %53, 1
  %54 = load i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %54)
  %cmp9.i = icmp slt i32 %add.i, %54
  br i1 %cmp9.i, label %if.then65, label %__is_page_sharing_candidate.exit.if.end71_crit_edge

__is_page_sharing_candidate.exit.if.end71_crit_edge: ; preds = %__is_page_sharing_candidate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then65:                                        ; preds = %__is_page_sharing_candidate.exit
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %51, align 4
  %pprev2.i.i = getelementptr inbounds %struct.anon.88, ptr %found.23441, i32 0, i32 1, i32 0, i32 1
  %57 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pprev2.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %56, ptr %58, align 4
  %tobool.not.i.i25 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i25, label %if.then65.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then65.hlist_del.exit_crit_edge:               ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %56, i32 0, i32 1
  %60 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then65.hlist_del.exit_crit_edge
  %61 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  %62 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %63 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hlist, align 4
  store volatile ptr %64, ptr %51, align 4
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %hlist_del.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

hlist_del.exit.hlist_add_head.exit_crit_edge:     ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %51, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %hlist_del.exit.hlist_add_head.exit_crit_edge
  %66 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %51, ptr %hlist, align 4
  %67 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %hlist, ptr %pprev2.i.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %hlist_add_head.exit, %__is_page_sharing_candidate.exit.if.end71_crit_edge, %do.end5.i.if.end71_crit_edge, %if.else58.if.end71_crit_edge, %free_stable_node.exit, %for.end.if.end71_crit_edge, %if.end.if.end71_crit_edge
  %found.235 = phi ptr [ %found.1, %free_stable_node.exit ], [ %found.23441, %hlist_add_head.exit ], [ %found.23441, %__is_page_sharing_candidate.exit.if.end71_crit_edge ], [ %found.23441, %if.else58.if.end71_crit_edge ], [ null, %for.end.if.end71_crit_edge ], [ %found.23441, %do.end5.i.if.end71_crit_edge ], [ null, %if.end.if.end71_crit_edge ]
  %tree_page.233 = phi ptr [ %tree_page.1, %free_stable_node.exit ], [ %tree_page.23242, %hlist_add_head.exit ], [ %tree_page.23242, %__is_page_sharing_candidate.exit.if.end71_crit_edge ], [ %tree_page.23242, %if.else58.if.end71_crit_edge ], [ %tree_page.1, %for.end.if.end71_crit_edge ], [ %tree_page.23242, %do.end5.i.if.end71_crit_edge ], [ null, %if.end.if.end71_crit_edge ]
  %68 = ptrtoint ptr %_stable_node_dup to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %found.235, ptr %_stable_node_dup, align 4
  ret ptr %tree_page.233
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @replace_page(ptr noundef %vma, ptr noundef %page, ptr noundef %kpage, i32 noundef %orig_pte) unnamed_addr #0 align 64 {
entry:
  %range = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #9
  %2 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %5 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %6 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  %7 = getelementptr inbounds i8, ptr %range, i32 24
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %call = tail call i32 @page_address_in_vma(ptr noundef %page, ptr noundef %vma) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call)
  %cmp = icmp eq i32 %call, -14
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mm_find_pmd(ptr noundef %1, i32 noundef %call) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %add = add i32 %call, 4096
  %9 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vma, ptr %range, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %6, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %4, align 4
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %5, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call1, align 4
  %shr.i = lshr i32 %17, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %18
  %ptl.i.i = getelementptr %struct.page, ptr %15, i32 %sub.i, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %15, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %21, 512
  %22 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !204
  %26 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i1.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 213
  %30 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !205
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #9
  %shr.i92 = lshr i32 %call, 12
  %and.i = and i32 %shr.i92, 511
  %add.ptr7 = getelementptr i32, ptr %call.i.i, i32 %and.i
  call void @_raw_spin_lock(ptr noundef %20) #9
  %32 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %orig_pte)
  %cmp.i.not = icmp eq i32 %33, %orig_pte
  br i1 %cmp.i.not, label %if.end17, label %do.body

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %20) #9
  call void @kunmap_local_indexed(ptr noundef %add.ptr7) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %34 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i1.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 213
  %38 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %39, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  br label %out_mn

if.end17:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %kpage to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %41 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add18 = add i32 %sub.ptr.div, %41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @zero_pfn to i32))
  %42 = load i32, ptr @zero_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %add18)
  %cmp.i93.not = icmp eq i32 %42, %add18
  br i1 %cmp.i93.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end17
  %43 = getelementptr inbounds %struct.page, ptr %kpage, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then21._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !182

if.then21._compound_head.exit.i_crit_edge:        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i95 = add i32 %45, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.then21._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i95, %if.then.i.i ], [ %sub.ptr.lhs.cast, %if.then21._compound_head.exit.i_crit_edge ]
  %46 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %47 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %48, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !187

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.27) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !227
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %49 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@replace_page, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !188

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__page_ref_mod(ptr noundef %46, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  call void @page_add_anon_rmap(ptr noundef %kpage, ptr noundef %vma, i32 noundef %call, i1 noundef zeroext false) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast23 = ptrtoint ptr %50 to i32
  %sub.ptr.sub24 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast23
  %sub.ptr.div25 = sdiv exact i32 %sub.ptr.sub24, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add26 = add i32 %sub.ptr.div25, %51
  %shl = shl i32 %add26, 12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %52 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vm_page_prot, align 4
  %or = or i32 %shl, %53
  br label %if.end36

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %shl32 = shl i32 %add18, 12
  %vm_page_prot33 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %54 = ptrtoint ptr %vm_page_prot33 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vm_page_prot33, align 4
  %or34 = or i32 %55, %shl32
  %arrayidx.i = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #9
  %56 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %56, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i) #9
  br label %if.end36

if.end36:                                         ; preds = %if.else, %get_page.exit
  %newpte.0 = phi i32 [ %or34, %if.else ], [ %or, %get_page.exit ]
  %57 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr7, align 4
  %shr38 = lshr i32 %58, 12
  call void @flush_cache_page(ptr noundef %vma, i32 noundef %call, i32 noundef %shr38) #9
  %call39 = call i32 @ptep_clear_flush(ptr noundef %vma, i32 noundef %call, ptr noundef %add.ptr7) #9
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 49
  %59 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %60, null
  br i1 %tobool.i.not.i, label %if.end36.mmu_notifier_change_pte.exit_crit_edge, label %if.then.i

if.end36.mmu_notifier_change_pte.exit_crit_edge:  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmu_notifier_change_pte.exit

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mmu_notifier_change_pte(ptr noundef %1, i32 noundef %call, i32 noundef %newpte.0) #9
  br label %mmu_notifier_change_pte.exit

mmu_notifier_change_pte.exit:                     ; preds = %if.then.i, %if.end36.mmu_notifier_change_pte.exit_crit_edge
  call void @set_pte_at(ptr noundef %1, i32 noundef %call, ptr noundef %add.ptr7, i32 noundef %newpte.0) #9
  call void @page_remove_rmap(ptr noundef %page, i1 noundef zeroext false) #9
  %call40 = call zeroext i1 @page_mapped(ptr noundef %page) #9
  br i1 %call40, label %mmu_notifier_change_pte.exit.if.end43_crit_edge, label %if.then41

mmu_notifier_change_pte.exit.if.end43_crit_edge:  ; preds = %mmu_notifier_change_pte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %mmu_notifier_change_pte.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 @try_to_free_swap(ptr noundef %page) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %mmu_notifier_change_pte.exit.if.end43_crit_edge
  %61 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i96 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i96)
  %tobool.not.i.i97 = icmp eq i32 %and.i.i96, 0
  br i1 %tobool.not.i.i97, label %if.end.i.i100, label %if.then.i.i99, !prof !182

if.then.i.i99:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i98 = add i32 %63, -1
  br label %_compound_head.exit.i102

if.end.i.i100:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i102

_compound_head.exit.i102:                         ; preds = %if.end.i.i100, %if.then.i.i99
  %retval.0.i.i101 = phi i32 [ %sub.i.i98, %if.then.i.i99 ], [ %64, %if.end.i.i100 ]
  %65 = inttoptr i32 %retval.0.i.i101 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %66 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i103, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i103:                               ; preds = %_compound_head.exit.i102
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.12) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i102
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %68 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@replace_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %65, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %65) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %20) #9
  call void @kunmap_local_indexed(ptr noundef %add.ptr7) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !206
  %69 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i1.i104 = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i1.i104 to ptr
  %task.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %task.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task.i.i.i105, align 8
  %pagefault_disabled.i.i.i106 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 213
  %73 = ptrtoint ptr %pagefault_disabled.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pagefault_disabled.i.i.i106, align 8
  %dec.i.i.i107 = add i32 %74, -1
  store i32 %dec.i.i.i107, ptr %pagefault_disabled.i.i.i106, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !207
  br label %out_mn

out_mn:                                           ; preds = %put_page.exit, %do.body
  %err.0 = phi i32 [ 0, %put_page.exit ], [ -14, %do.body ]
  %75 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i.i.i108 = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i.i108 to ptr
  %preempt_count.i.i.i109 = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i.i109, align 4
  %sub.i.i110 = add i32 %78, -1
  store volatile i32 %sub.i.i110, ptr %preempt_count.i.i.i109, align 4
  %79 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %5, align 4
  %and.i.i111 = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111)
  %tobool.i.not.i112 = icmp eq i32 %and.i.i111, 0
  br i1 %tobool.i.not.i112, label %out_mn.if.end.i_crit_edge, label %do.body.i

out_mn.if.end.i_crit_edge:                        ; preds = %out_mn
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body.i:                                        ; preds = %out_mn
  call void @__sanitizer_cov_trace_pc() #11
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 482) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %out_mn.if.end.i_crit_edge
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %2, align 4
  %notifier_subscriptions.i.i113 = getelementptr inbounds %struct.anon, ptr %82, i32 0, i32 49
  %83 = ptrtoint ptr %notifier_subscriptions.i.i113 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %notifier_subscriptions.i.i113, align 8
  %tobool.i8.not.i = icmp eq ptr %84, null
  br i1 %tobool.i8.not.i, label %if.end.i.out_crit_edge, label %if.then4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range, i1 noundef zeroext false) #9
  br label %out

out:                                              ; preds = %if.then4.i, %if.end.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ -14, %entry.out_crit_edge ], [ -14, %if.end.out_crit_edge ], [ %err.0, %if.end.i.out_crit_edge ], [ %err.0, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #9
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @munlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_address_in_vma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_start(ptr noundef %range) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 454) #9
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here) to i32)) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here4

if.then:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  %call3 = tail call i32 @__mmu_notifier_invalidate_range_start(ptr noundef %range) #9
  br label %__here4

__here4:                                          ; preds = %if.then, %__here.__here4_crit_edge
  tail call void @lock_release(ptr noundef nonnull @__mmu_notifier_invalidate_range_start_map, i32 noundef ptrtoint (ptr blockaddress(@mmu_notifier_invalidate_range_start, %__here4) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_change_pte(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_find_pmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_remove_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_mergeable_page(ptr nocapture noundef readonly %rmap_item) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mm1 = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 2
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 4
  %address = getelementptr inbounds %struct.rmap_item, ptr %rmap_item, i32 0, i32 3
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@get_mergeable_page, %if.then.i.i21)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i21], !srcloc !188

if.then.i.i21:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %1, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i21, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@get_mergeable_page, %if.then.i3.i)) #9
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !188

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %mm_users.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %mm_users.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mm_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i22 = icmp eq i32 %5, 0
  br i1 %cmp.i.i22, label %mmap_read_lock.exit.if.end8_crit_edge, label %if.end.i

mmap_read_lock.exit.if.end8_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.i:                                         ; preds = %mmap_read_lock.exit
  %call.i.i = tail call ptr @find_vma(ptr noundef %1, i32 noundef %3) #9
  %tobool.not.i.i23 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i23, label %if.end.i.if.end8_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true.i.i:                                ; preds = %if.end.i
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.i11.i = icmp ugt i32 %7, %3
  br i1 %cmp.i11.i, label %land.lhs.true.i.i.if.end8_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.i.if.end8_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.i
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool2.not.i = icmp sgt i32 %9, -1
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end8_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.end8_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %call.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %anon_vma.i, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.if.end8_crit_edge, label %if.end

lor.lhs.false3.i.if.end8_crit_edge:               ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end:                                           ; preds = %lor.lhs.false3.i
  %call2 = tail call ptr @follow_page(ptr noundef nonnull %call.i.i, i32 noundef %3, i32 noundef 4) #9
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i24 = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i24, label %if.end.if.end8_crit_edge, label %if.end5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end5:                                          ; preds = %if.end
  %12 = getelementptr inbounds %struct.page, ptr %call2, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i2.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %14, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call2 to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mapping.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %12, align 4
  %and.i.i26 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i26)
  %tobool.not.i.i27 = icmp eq i32 %and.i.i26, 0
  br i1 %cmp.i.i.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %PageAnon.exit
  br i1 %tobool.not.i.i27, label %if.end.i.i.i, label %if.then.i.i.i, !prof !182

if.then.i.i.i:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %21, -1
  br label %PageAnon.exit.i

if.end.i.i.i:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call2 to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %22, %if.end.i.i.i ]
  %23 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mapping.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %and.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %PageAnon.exit.i.flush_anon_page.exit_crit_edge, label %if.then.i

PageAnon.exit.i.flush_anon_page.exit_crit_edge:   ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %flush_anon_page.exit

if.then.i:                                        ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__flush_anon_page(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call2, i32 noundef %3) #9
  br label %flush_anon_page.exit

flush_anon_page.exit:                             ; preds = %if.then.i, %PageAnon.exit.i.flush_anon_page.exit_crit_edge
  tail call void @flush_dcache_page(ptr noundef nonnull %call2) #9
  br label %if.end8

if.else:                                          ; preds = %PageAnon.exit
  br i1 %tobool.not.i.i27, label %if.end.i.i30, label %if.then.i.i29, !prof !182

if.then.i.i29:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i28 = add i32 %21, -1
  br label %_compound_head.exit.i

if.end.i.i30:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i30, %if.then.i.i29
  %retval.0.i.i31 = phi i32 [ %sub.i.i28, %if.then.i.i29 ], [ %27, %if.end.i.i30 ]
  %28 = inttoptr i32 %retval.0.i.i31 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %29 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_mergeable_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %28, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end8_crit_edge

folio_put_testzero.exit.i.i.if.end8_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %28) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end8_crit_edge, %flush_anon_page.exit, %if.end.if.end8_crit_edge, %lor.lhs.false3.i.if.end8_crit_edge, %lor.lhs.false.i.if.end8_crit_edge, %land.lhs.true.i.i.if.end8_crit_edge, %if.end.i.if.end8_crit_edge, %mmap_read_lock.exit.if.end8_crit_edge
  %page.0 = phi ptr [ %call2, %flush_anon_page.exit ], [ null, %if.end.if.end8_crit_edge ], [ null, %folio_put_testzero.exit.i.i.if.end8_crit_edge ], [ null, %if.then.i4.i ], [ null, %mmap_read_lock.exit.if.end8_crit_edge ], [ null, %lor.lhs.false.i.if.end8_crit_edge ], [ null, %if.end.i.if.end8_crit_edge ], [ null, %land.lhs.true.i.i.if.end8_crit_edge ], [ null, %lor.lhs.false3.i.if.end8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@get_mergeable_page, %if.then.i.i32)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i32], !srcloc !188

if.then.i.i32:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i32, %if.end8
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  ret ptr %page.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sleep_millisecs_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_thread_sleep_millisecs, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sleep_millisecs_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %msecs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msecs) #9
  %0 = ptrtoint ptr %msecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msecs, align 4, !annotation !209
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %msecs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %msecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msecs, align 4
  store i32 %2, ptr @ksm_thread_sleep_millisecs, align 4
  call void @__wake_up(ptr noundef nonnull @ksm_iter_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msecs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pages_to_scan_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_thread_pages_to_scan, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pages_to_scan_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %nr_pages = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_pages) #9
  %0 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_pages, align 4, !annotation !209
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %nr_pages) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_pages, align 4
  store i32 %2, ptr @ksm_thread_pages_to_scan, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_pages) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @run_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_run, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @run_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !209
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef nonnull @ksm_thread_mutex, i32 noundef 0) #9
  %3 = load i32, ptr @ksm_run, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3.not = icmp eq i32 %3, %5
  br i1 %cmp3.not, label %if.end2.if.end12_crit_edge, label %if.then4

if.end2.if.end12_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then4:                                         ; preds = %if.end2
  store i32 %5, ptr @ksm_run, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then4.if.end12_crit_edge, label %if.then6

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then6:                                         ; preds = %if.then4
  %6 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 111
  %10 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %signal.i, align 16
  %oom_flag_origin.i = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 56
  %12 = ptrtoint ptr %oom_flag_origin.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %oom_flag_origin.i, align 4
  %call7 = call fastcc i32 @unmerge_and_remove_all_rmap_items()
  %13 = call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i20 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i20 to ptr
  %task.i21 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i21, align 8
  %signal.i22 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 111
  %17 = ptrtoint ptr %signal.i22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %signal.i22, align 16
  %oom_flag_origin.i23 = getelementptr inbounds %struct.signal_struct, ptr %18, i32 0, i32 56
  %19 = ptrtoint ptr %oom_flag_origin.i23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %oom_flag_origin.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end12_crit_edge, label %if.then9

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @ksm_run, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then6.if.end12_crit_edge, %if.then4.if.end12_crit_edge, %if.end2.if.end12_crit_edge
  %count.addr.0 = phi i32 [ %call7, %if.then9 ], [ %count, %if.then6.if.end12_crit_edge ], [ %count, %if.then4.if.end12_crit_edge ], [ %count, %if.end2.if.end12_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ksm_thread_mutex) #9
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and13 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.then15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef nonnull @ksm_thread_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count.addr.0, %if.then15 ], [ %count.addr.0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unmerge_and_remove_all_rmap_items() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.mm_slot, ptr @ksm_mm_head, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 -8
  store ptr %add.ptr, ptr @ksm_scan.0, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %mm_slot.073 = load ptr, ptr @ksm_scan.0, align 4
  %cmp.not74 = icmp eq ptr %mm_slot.073, @ksm_mm_head
  br i1 %cmp.not74, label %entry.for.end20_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry.for.body_crit_edge
  %mm_slot.075 = phi ptr [ %mm_slot.0, %for.inc19.for.body_crit_edge ], [ %mm_slot.073, %entry.for.body_crit_edge ]
  %mm1 = getelementptr inbounds %struct.mm_slot, ptr %mm_slot.075, i32 0, i32 3
  %1 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mm1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@unmerge_and_remove_all_rmap_items, %if.then.i.i)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !188

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %2, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %for.body
  %mmap_lock.i = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@unmerge_and_remove_all_rmap_items, %if.then.i3.i)) #9
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !188

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %vma.069 = load ptr, ptr %2, align 4
  %tobool.not70 = icmp eq ptr %vma.069, null
  br i1 %tobool.not70, label %mmap_read_lock.exit.for.end_crit_edge, label %for.body3.lr.ph

mmap_read_lock.exit.for.end_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body3.lr.ph:                                  ; preds = %mmap_read_lock.exit
  %mm_users.i = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 10
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %vma.071 = phi ptr [ %vma.069, %for.body3.lr.ph ], [ %vma.0, %for.inc.for.body3_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %mm_users.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %mm_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %for.body3.for.end_crit_edge, label %if.end

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %for.body3
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma.071, i32 0, i32 8
  %6 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool4.not = icmp sgt i32 %7, -1
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %lor.lhs.false

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma.071, i32 0, i32 11
  %8 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %anon_vma, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end7

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7:                                          ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %vma.071 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma.071, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma.071, i32 0, i32 1
  %12 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_end, align 4
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.071, i32 0, i32 6
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp13.i = icmp ult i32 %11, %13
  br i1 %cmp13.i, label %if.end7.for.body.i_crit_edge, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %addr.014.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %if.end7.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_mm.i, align 4
  %mm_users.i.i = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %mm_users.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %mm_users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %for.body.i.for.inc_crit_edge, label %if.end.i

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %for.body.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !172) #9
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stack.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end.i.error_crit_edge, !prof !182

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

signal_pending.exit.i:                            ; preds = %if.end.i
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %signal_pending.exit.i.error_crit_edge

signal_pending.exit.i.error_crit_edge:            ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

for.inc.i:                                        ; preds = %signal_pending.exit.i
  %call5.i = tail call fastcc i32 @break_ksm(ptr noundef nonnull %vma.071, i32 noundef %addr.014.i) #9
  %add.i = add i32 %addr.014.i, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp.i45 = icmp ult i32 %add.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  %or.cond.i = select i1 %cmp.i45, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %unmerge_ksm_pages.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

unmerge_ksm_pages.exit:                           ; preds = %for.inc.i
  br i1 %tobool.not.i, label %unmerge_ksm_pages.exit.for.inc_crit_edge, label %unmerge_ksm_pages.exit.error_crit_edge

unmerge_ksm_pages.exit.error_crit_edge:           ; preds = %unmerge_ksm_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

unmerge_ksm_pages.exit.for.inc_crit_edge:         ; preds = %unmerge_ksm_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %unmerge_ksm_pages.exit.for.inc_crit_edge, %for.body.i.for.inc_crit_edge, %if.end7.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.071, i32 0, i32 2
  %29 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %29)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool.not = icmp eq ptr %vma.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body3.for.end_crit_edge, %mmap_read_lock.exit.for.end_crit_edge
  %rmap_list = getelementptr inbounds %struct.mm_slot, ptr %mm_slot.075, i32 0, i32 2
  %30 = ptrtoint ptr %rmap_list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmap_list, align 4
  %tobool.not6.i = icmp eq ptr %31, null
  br i1 %tobool.not6.i, label %for.end.remove_trailing_rmap_items.exit_crit_edge, label %for.end.while.body.i_crit_edge

for.end.while.body.i_crit_edge:                   ; preds = %for.end
  br label %while.body.i

for.end.remove_trailing_rmap_items.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trailing_rmap_items.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.end.while.body.i_crit_edge
  %32 = phi ptr [ %40, %while.body.i.while.body.i_crit_edge ], [ %31, %for.end.while.body.i_crit_edge ]
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %rmap_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %rmap_list, align 4
  tail call fastcc void @remove_rmap_item_from_tree(ptr noundef nonnull %32) #9
  %36 = load i32, ptr @ksm_rmap_items, align 4
  %dec.i.i = add i32 %36, -1
  store i32 %dec.i.i, ptr @ksm_rmap_items, align 4
  %mm.i.i = getelementptr inbounds %struct.rmap_item, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %mm.i.i, align 4
  %38 = load ptr, ptr @rmap_item_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef nonnull %32) #9
  %39 = ptrtoint ptr %rmap_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmap_list, align 4
  %tobool.not.i46 = icmp eq ptr %40, null
  br i1 %tobool.not.i46, label %while.body.i.remove_trailing_rmap_items.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.remove_trailing_rmap_items.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_trailing_rmap_items.exit

remove_trailing_rmap_items.exit:                  ; preds = %while.body.i.remove_trailing_rmap_items.exit_crit_edge, %for.end.remove_trailing_rmap_items.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@unmerge_and_remove_all_rmap_items, %if.then.i.i47)) #9
          to label %mmap_read_unlock.exit [label %if.then.i.i47], !srcloc !188

if.then.i.i47:                                    ; preds = %remove_trailing_rmap_items.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %2, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i47, %remove_trailing_rmap_items.exit
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %mm_list = getelementptr inbounds %struct.mm_slot, ptr %mm_slot.075, i32 0, i32 1
  %41 = ptrtoint ptr %mm_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mm_list, align 4
  %add.ptr14 = getelementptr i8, ptr %42, i32 -8
  store ptr %add.ptr14, ptr @ksm_scan.0, align 4
  %mm_users.i49 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 10
  %call.i.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users.i49, i32 noundef 4) #9
  %43 = ptrtoint ptr %mm_users.i49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %mm_users.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i51 = icmp eq i32 %44, 0
  br i1 %cmp.i51, label %if.then16, label %if.else

if.then16:                                        ; preds = %mmap_read_unlock.exit
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %mm_slot.075, i32 0, i32 1
  %45 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.not.i.i, label %if.then16.hash_del.exit_crit_edge, label %if.then.i.i52

if.then16.hash_del.exit_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %hash_del.exit

if.then.i.i52:                                    ; preds = %if.then16
  %47 = ptrtoint ptr %mm_slot.075 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mm_slot.075, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %48, ptr %46, align 4
  %tobool.not.i3.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i52.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i52.__hlist_del.exit.i.i_crit_edge:     ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %46, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i52.__hlist_del.exit.i.i_crit_edge
  %51 = ptrtoint ptr %mm_slot.075 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %mm_slot.075, align 4
  %52 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.then16.hash_del.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mm_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %hash_del.exit.list_del.exit_crit_edge

hash_del.exit.list_del.exit_crit_edge:            ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mm_slot, ptr %mm_slot.075, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %mm_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mm_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %hash_del.exit.list_del.exit_crit_edge
  %59 = ptrtoint ptr %mm_list to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %mm_list, align 4
  %prev.i = getelementptr inbounds %struct.mm_slot, ptr %mm_slot.075, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  %61 = load ptr, ptr @mm_slot_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %61, ptr noundef %mm_slot.075) #9
  %flags = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 43
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags) #9
  %mm_count.i = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 11
  %call.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #9
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %list_del.exit.for.inc19_crit_edge, !prof !187

list_del.exit.for.inc19_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmdrop(ptr noundef %2) #9
  br label %for.inc19

if.else:                                          ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  br label %for.inc19

for.inc19:                                        ; preds = %if.else, %if.then.i, %list_del.exit.for.inc19_crit_edge
  %mm_slot.0 = load ptr, ptr @ksm_scan.0, align 4
  %cmp.not = icmp eq ptr %mm_slot.0, @ksm_mm_head
  br i1 %cmp.not, label %for.inc19.for.end20_crit_edge, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc19.for.end20_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end20

for.end20:                                        ; preds = %for.inc19.for.end20_crit_edge, %entry.for.end20_crit_edge
  %call21 = tail call fastcc i32 @remove_all_stable_nodes()
  store i32 0, ptr @ksm_scan.3, align 4
  br label %cleanup

error:                                            ; preds = %unmerge_ksm_pages.exit.error_crit_edge, %signal_pending.exit.i.error_crit_edge, %if.end.i.error_crit_edge
  %err.0.lcssa.i64 = phi i32 [ -512, %if.end.i.error_crit_edge ], [ -512, %signal_pending.exit.i.error_crit_edge ], [ %call5.i, %unmerge_ksm_pages.exit.error_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@unmerge_and_remove_all_rmap_items, %if.then.i.i55)) #9
          to label %mmap_read_unlock.exit57 [label %if.then.i.i55], !srcloc !188

if.then.i.i55:                                    ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %2, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit57

mmap_read_unlock.exit57:                          ; preds = %if.then.i.i55, %error
  tail call void @up_read(ptr noundef %mmap_lock.i) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @ksm_mmlist_lock) #9
  store ptr @ksm_mm_head, ptr @ksm_scan.0, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ksm_mmlist_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit57, %for.end20
  %retval.0 = phi i32 [ %err.0.lcssa.i64, %mmap_read_unlock.exit57 ], [ 0, %for.end20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_all_stable_nodes() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @one_stable_tree, align 4
  %tobool.not51 = icmp eq ptr %0, null
  br i1 %tobool.not51, label %entry.for.inc_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %20, %if.end.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %rmap_hlist_len.i.i = getelementptr inbounds %struct.stable_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rmap_hlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmap_hlist_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %3)
  %cmp.i.i = icmp eq i32 %3, -1024
  br i1 %cmp.i.i, label %if.end13.i, label %do.body.i

do.body.i:                                        ; preds = %while.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.i88.i = icmp eq ptr %5, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i88.i, label %do.body4.i, label %remove_stable_node_chain.exit, !prof !187

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #9, !srcloc !240
  unreachable

if.end13.i:                                       ; preds = %while.body
  %hlist.i = getelementptr inbounds %struct.stable_node, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hlist.i, align 4
  %tobool14.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -4
  %tobool16.not9294.i = icmp eq ptr %add.ptr.i, null
  %tobool16.not92.i = or i1 %tobool14.not.i, %tobool16.not9294.i
  br i1 %tobool16.not92.i, label %if.end13.i.do.body53.i_crit_edge, label %if.end13.i.land.rhs.i_crit_edge

if.end13.i.land.rhs.i_crit_edge:                  ; preds = %if.end13.i
  br label %land.rhs.i

if.end13.i.do.body53.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end13.i.land.rhs.i_crit_edge
  %dup.093.i = phi ptr [ %add.ptr49.i, %for.inc.i.land.rhs.i_crit_edge ], [ %add.ptr.i, %if.end13.i.land.rhs.i_crit_edge ]
  %8 = getelementptr inbounds %struct.anon.88, ptr %dup.093.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %dup.093.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dup.093.i, align 4
  %cmp.i89.i = icmp eq ptr %12, getelementptr inbounds (%struct.list_head, ptr @migrate_nodes, i32 0, i32 1)
  br i1 %cmp.i89.i, label %do.end38.i, label %do.body30.i, !prof !182

do.body30.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 930, 0\0A.popsection", ""() #9, !srcloc !241
  unreachable

do.end38.i:                                       ; preds = %land.rhs.i
  %call39.i = tail call fastcc i32 @remove_stable_node(ptr noundef nonnull %dup.093.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %for.inc.i, label %do.end38.i.for.inc_crit_edge

do.end38.i.for.inc_crit_edge:                     ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc.i:                                        ; preds = %do.end38.i
  %tobool45.not.i = icmp eq ptr %10, null
  %add.ptr49.i = getelementptr i8, ptr %10, i32 -4
  %tobool16.not95.i = icmp eq ptr %add.ptr49.i, null
  %tobool16.not.i = or i1 %tobool45.not.i, %tobool16.not95.i
  br i1 %tobool16.not.i, label %for.inc.i.do.body53.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.do.body53.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body53.i

do.body53.i:                                      ; preds = %for.inc.i.do.body53.i_crit_edge, %if.end13.i.do.body53.i_crit_edge
  %13 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %hlist.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.not.i, label %do.end74.i, label %do.body66.i, !prof !182

do.body66.i:                                      ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 934, 0\0A.popsection", ""() #9, !srcloc !242
  unreachable

do.end74.i:                                       ; preds = %do.body53.i
  tail call void @rb_erase(ptr noundef nonnull %1, ptr noundef nonnull @one_stable_tree) #9
  %15 = ptrtoint ptr %rmap_hlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmap_hlist_len.i.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %16, label %do.body4.i.i.i [
    i32 -1024, label %do.end74.i.remove_stable_node_chain.exit.thread_crit_edge
    i32 0, label %do.end74.i.remove_stable_node_chain.exit.thread_crit_edge62
  ]

do.end74.i.remove_stable_node_chain.exit.thread_crit_edge62: ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_stable_node_chain.exit.thread

do.end74.i.remove_stable_node_chain.exit.thread_crit_edge: ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_stable_node_chain.exit.thread

do.body4.i.i.i:                                   ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/ksm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 407, 0\0A.popsection", ""() #9, !srcloc !226
  unreachable

remove_stable_node_chain.exit.thread:             ; preds = %do.end74.i.remove_stable_node_chain.exit.thread_crit_edge, %do.end74.i.remove_stable_node_chain.exit.thread_crit_edge62
  %18 = load ptr, ptr @stable_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef nonnull %1) #9
  %19 = load i32, ptr @ksm_stable_node_chains, align 4
  %dec.i.i = add i32 %19, -1
  store i32 %dec.i.i, ptr @ksm_stable_node_chains, align 4
  br label %if.end

remove_stable_node_chain.exit:                    ; preds = %do.body.i
  %call10.i = tail call fastcc i32 @remove_stable_node(ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i.not = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i.not, label %remove_stable_node_chain.exit.if.end_crit_edge, label %remove_stable_node_chain.exit.for.inc_crit_edge

remove_stable_node_chain.exit.for.inc_crit_edge:  ; preds = %remove_stable_node_chain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

remove_stable_node_chain.exit.if.end_crit_edge:   ; preds = %remove_stable_node_chain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %remove_stable_node_chain.exit.if.end_crit_edge, %remove_stable_node_chain.exit.thread
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 954, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %20 = load ptr, ptr @one_stable_tree, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %remove_stable_node_chain.exit.for.inc_crit_edge, %do.end38.i.for.inc_crit_edge, %entry.for.inc_crit_edge
  %err.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ -16, %do.end38.i.for.inc_crit_edge ], [ 0, %if.end.for.inc_crit_edge ], [ -16, %remove_stable_node_chain.exit.for.inc_crit_edge ]
  %21 = load ptr, ptr @migrate_nodes, align 4
  %cmp16.not55 = icmp eq ptr %21, @migrate_nodes
  br i1 %cmp16.not55, label %for.inc.for.end30_crit_edge, label %for.inc.for.body17_crit_edge

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  br label %for.body17

for.inc.for.end30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.inc.for.body17_crit_edge
  %.pn.in57 = phi ptr [ %.pn, %for.body17.for.body17_crit_edge ], [ %21, %for.inc.for.body17_crit_edge ]
  %err.256 = phi i32 [ %spec.select, %for.body17.for.body17_crit_edge ], [ %err.1, %for.inc.for.body17_crit_edge ]
  %22 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn.in57, align 4
  %stable_node.0 = getelementptr i8, ptr %.pn.in57, i32 -12
  %call18 = tail call fastcc i32 @remove_stable_node(ptr noundef %stable_node.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %spec.select = select i1 %tobool19.not, i32 %err.256, i32 -16
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 960, i32 noundef 0) #9
  %call.i40 = tail call i32 @__cond_resched() #9
  %cmp16.not = icmp eq ptr %.pn, @migrate_nodes
  br i1 %cmp16.not, label %for.body17.for.end30_crit_edge, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

for.body17.for.end30_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.end30:                                        ; preds = %for.body17.for.end30_crit_edge, %for.inc.for.end30_crit_edge
  %err.2.lcssa = phi i32 [ %err.1, %for.inc.for.end30_crit_edge ], [ %spec.select, %for.body17.for.end30_crit_edge ]
  ret i32 %err.2.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @remove_stable_node(ptr noundef %stable_node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @get_ksm_page(ptr noundef %stable_node, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @page_mapped(ptr noundef nonnull %call) #9
  br i1 %call1, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mapping.i = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 3 to ptr), ptr %mapping.i, align 4
  tail call fastcc void @remove_node_from_stable_tree(ptr noundef %stable_node)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %err.0 = phi i32 [ -16, %if.end.if.end3_crit_edge ], [ 0, %if.then2 ]
  tail call void @unlock_page(ptr noundef nonnull %call) #9
  %1 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !182

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !187

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %5, ptr noundef nonnull @.str.12) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !191
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !185
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@remove_stable_node, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !188

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %5, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %err.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pages_shared_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_pages_shared, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pages_sharing_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_pages_sharing, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pages_unshared_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_pages_unshared, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pages_volatile_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_rmap_items, align 4
  %1 = load i32, ptr @ksm_pages_shared, align 4
  %2 = load i32, ptr @ksm_pages_sharing, align 4
  %3 = load i32, ptr @ksm_pages_unshared, align 4
  %4 = add i32 %1, %2
  %5 = add i32 %4, %3
  %sub2 = sub i32 %0, %5
  %6 = tail call i32 @llvm.smax.i32(i32 %sub2, i32 0)
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %6) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @full_scans_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_scan.3, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_page_sharing_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_max_page_sharing, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_page_sharing_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %knob = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %knob) #9
  %0 = ptrtoint ptr %knob to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %knob, align 4, !annotation !209
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %knob) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %knob to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %knob, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  %3 = load volatile i32, ptr @ksm_max_page_sharing, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %2)
  %cmp3 = icmp eq i32 %3, %2
  br i1 %cmp3, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @mutex_lock_nested(ptr noundef nonnull @ksm_thread_mutex, i32 noundef 0) #9
  %4 = load i32, ptr @ksm_max_page_sharing, align 4
  %5 = ptrtoint ptr %knob to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %knob, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp6.not = icmp eq i32 %4, %6
  br i1 %cmp6.not, label %if.end5.cleanup.sink.split_crit_edge, label %if.then7

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then7:                                         ; preds = %if.end5
  %7 = load i32, ptr @ksm_pages_shared, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.then7.cleanup.sink.split_crit_edge

if.then7.cleanup.sink.split_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.then7
  %call9 = call fastcc i32 @remove_all_stable_nodes()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %knob to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %knob, align 4
  store i32 %9, ptr @ksm_max_page_sharing, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.then7.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -16, %if.then7.cleanup.sink.split_crit_edge ], [ -16, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %count, %if.else ], [ %count, %if.end5.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ksm_thread_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %do.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %knob) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stable_node_chains_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_stable_node_chains, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stable_node_dups_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_stable_node_dups, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stable_node_chains_prune_millisecs_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ksm_stable_node_chains_prune_millisecs, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %0) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stable_node_chains_prune_millisecs_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %msecs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msecs) #9
  %0 = ptrtoint ptr %msecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msecs, align 4, !annotation !209
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %msecs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %msecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msecs, align 4
  store i32 %2, ptr @ksm_stable_node_chains_prune_millisecs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msecs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @use_zero_pages_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @ksm_use_zero_pages, align 1, !range !214
  %1 = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %1) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @use_zero_pages_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !209
  %call = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1, !range !214
  store i8 %2, ptr @ksm_use_zero_pages, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !130, !132, !134, !135, !137, !138, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171}
!llvm.named.register.sp = !{!172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__ksymtab_ksm_madvise, !1, !"__ksymtab_ksm_madvise", i1 false, i1 false}
!1 = !{!"../mm/ksm.c", i32 2488, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/ksm.c", i32 2609, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/ksm.c", i32 2615, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/ksm.c", i32 2626, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/ksm.c", i32 2672, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/ksm.c", i32 2673, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/ksm.c", i32 2674, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../mm/ksm.c", i32 2678, i32 3}
!16 = !{ptr @__initcall__kmod_ksm__313_3203_ksm_init4, !17, !"__initcall__kmod_ksm__313_3203_ksm_init4", i1 false, i1 false}
!17 = !{!"../mm/ksm.c", i32 3203, i32 1}
!18 = !{ptr @mm_slot_cache, !19, !"mm_slot_cache", i1 false, i1 false}
!19 = !{!"../mm/ksm.c", i32 242, i32 27}
!20 = !{ptr @ksm_mm_head, !21, !"ksm_mm_head", i1 false, i1 false}
!21 = !{!"../mm/ksm.c", i32 233, i32 23}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../mm/ksm.c", i32 299, i32 8}
!24 = !{ptr @ksm_mmlist_lock, !23, !"ksm_mmlist_lock", i1 false, i1 false}
!25 = !{ptr @mm_slots_hash, !26, !"mm_slots_hash", i1 false, i1 false}
!26 = !{!"../mm/ksm.c", i32 231, i32 8}
!27 = !{ptr @ksm_run, !28, !"ksm_run", i1 false, i1 false}
!28 = !{!"../mm/ksm.c", i32 293, i32 22}
!29 = distinct !{null, !30, !"ksm_scan", i1 false, i1 false}
!30 = !{!"../mm/ksm.c", i32 236, i32 24}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../mm/ksm.c", i32 296, i32 8}
!33 = !{ptr @ksm_thread_wait, !32, !"ksm_thread_wait", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/mm.h", i32 717, i32 2}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../mm/ksm.c", i32 3173, i32 15}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../mm/ksm.c", i32 3175, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ksm_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ksm_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../mm/ksm.c", i32 3183, i32 3}
!55 = !{ptr @ksm_init._entry.18, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ksm_init._entry_ptr.20, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @zero_checksum, !58, !"zero_checksum", i1 false, i1 false}
!58 = !{!"../mm/ksm.c", i32 275, i32 21}
!59 = !{ptr @ksm_use_zero_pages, !60, !"ksm_use_zero_pages", i1 false, i1 false}
!60 = !{!"../mm/ksm.c", i32 278, i32 13}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/ksm.c", i32 307, i32 20}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../mm/ksm.c", i32 311, i32 22}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../mm/ksm.c", i32 315, i32 18}
!67 = !{ptr @rmap_item_cache, !68, !"rmap_item_cache", i1 false, i1 false}
!68 = !{!"../mm/ksm.c", i32 240, i32 27}
!69 = !{ptr @stable_node_cache, !70, !"stable_node_cache", i1 false, i1 false}
!70 = !{!"../mm/ksm.c", i32 241, i32 27}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../mm/ksm.c", i32 298, i32 8}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ksm_thread_mutex, !72, !"ksm_thread_mutex", i1 false, i1 false}
!75 = distinct !{null, !76, !"root_unstable_tree", i1 false, i1 false}
!76 = !{!"../mm/ksm.c", i32 224, i32 24}
!77 = !{ptr @one_unstable_tree, !78, !"one_unstable_tree", i1 false, i1 false}
!78 = !{!"../mm/ksm.c", i32 222, i32 23}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!81 = !{ptr @migrate_nodes, !82, !"migrate_nodes", i1 false, i1 false}
!82 = !{!"../mm/ksm.c", i32 227, i32 8}
!83 = !{ptr @ksm_stable_node_dups, !84, !"ksm_stable_node_dups", i1 false, i1 false}
!84 = !{!"../mm/ksm.c", i32 260, i32 22}
!85 = distinct !{null, !86, !"root_stable_tree", i1 false, i1 false}
!86 = !{!"../mm/ksm.c", i32 223, i32 24}
!87 = !{ptr @one_stable_tree, !88, !"one_stable_tree", i1 false, i1 false}
!88 = !{!"../mm/ksm.c", i32 221, i32 23}
!89 = !{ptr @ksm_pages_sharing, !90, !"ksm_pages_sharing", i1 false, i1 false}
!90 = !{!"../mm/ksm.c", i32 248, i32 22}
!91 = !{ptr @ksm_pages_shared, !92, !"ksm_pages_shared", i1 false, i1 false}
!92 = !{!"../mm/ksm.c", i32 245, i32 22}
!93 = !{ptr @ksm_pages_unshared, !94, !"ksm_pages_unshared", i1 false, i1 false}
!94 = !{!"../mm/ksm.c", i32 251, i32 22}
!95 = !{ptr @ksm_rmap_items, !96, !"ksm_rmap_items", i1 false, i1 false}
!96 = !{!"../mm/ksm.c", i32 254, i32 22}
!97 = !{ptr @ksm_max_page_sharing, !98, !"ksm_max_page_sharing", i1 false, i1 false}
!98 = !{!"../mm/ksm.c", i32 266, i32 12}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!101 = !{ptr @ksm_stable_node_chains_prune_millisecs, !102, !"ksm_stable_node_chains_prune_millisecs", i1 false, i1 false}
!102 = !{!"../mm/ksm.c", i32 263, i32 21}
!103 = !{ptr @ksm_stable_node_chains, !104, !"ksm_stable_node_chains", i1 false, i1 false}
!104 = !{!"../mm/ksm.c", i32 257, i32 22}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../mm/ksm.c", i32 2012, i32 3}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../mm/ksm.c", i32 1058, i32 6}
!109 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.29, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/mmu_notifier.h", i32 454, i32 2}
!112 = !{ptr @ksm_thread_pages_to_scan, !113, !"ksm_thread_pages_to_scan", i1 false, i1 false}
!113 = !{!"../mm/ksm.c", i32 269, i32 21}
!114 = !{ptr @.str.30, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!116 = !{ptr @ksm_thread_sleep_millisecs, !117, !"ksm_thread_sleep_millisecs", i1 false, i1 false}
!117 = !{!"../mm/ksm.c", i32 272, i32 21}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../mm/ksm.c", i32 297, i32 8}
!120 = !{ptr @ksm_iter_wait, !119, !"ksm_iter_wait", i1 false, i1 false}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../mm/ksm.c", i32 3155, i32 10}
!123 = !{ptr @ksm_attr_group, !124, !"ksm_attr_group", i1 false, i1 false}
!124 = !{!"../mm/ksm.c", i32 3153, i32 37}
!125 = !{ptr @ksm_attrs, !126, !"ksm_attrs", i1 false, i1 false}
!126 = !{!"../mm/ksm.c", i32 3133, i32 26}
!127 = !{ptr @.str.33, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../mm/ksm.c", i32 2854, i32 1}
!129 = !{ptr @sleep_millisecs_attr, !128, !"sleep_millisecs_attr", i1 false, i1 false}
!130 = !{ptr @.str.34, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../mm/ksm.c", i32 2835, i32 25}
!132 = !{ptr @.str.35, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../mm/ksm.c", i32 2877, i32 1}
!134 = !{ptr @pages_to_scan_attr, !133, !"pages_to_scan_attr", i1 false, i1 false}
!135 = !{ptr @.str.36, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../mm/ksm.c", i32 2925, i32 1}
!137 = !{ptr @run_attr, !136, !"run_attr", i1 false, i1 false}
!138 = !{ptr @.str.37, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../mm/ksm.c", i32 2882, i32 25}
!140 = !{ptr @.str.38, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../mm/ksm.c", i32 3053, i32 1}
!142 = !{ptr @pages_shared_attr, !141, !"pages_shared_attr", i1 false, i1 false}
!143 = !{ptr @.str.39, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../mm/ksm.c", i32 3060, i32 1}
!145 = !{ptr @pages_sharing_attr, !144, !"pages_sharing_attr", i1 false, i1 false}
!146 = !{ptr @.str.40, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../mm/ksm.c", i32 3067, i32 1}
!148 = !{ptr @pages_unshared_attr, !147, !"pages_unshared_attr", i1 false, i1 false}
!149 = !{ptr @.str.41, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../mm/ksm.c", i32 3084, i32 1}
!151 = !{ptr @pages_volatile_attr, !150, !"pages_volatile_attr", i1 false, i1 false}
!152 = !{ptr @.str.42, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../mm/ksm.c", i32 3082, i32 25}
!154 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../mm/ksm.c", i32 3131, i32 1}
!156 = !{ptr @full_scans_attr, !155, !"full_scans_attr", i1 false, i1 false}
!157 = !{ptr @.str.44, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../mm/ksm.c", i32 3046, i32 1}
!159 = !{ptr @max_page_sharing_attr, !158, !"max_page_sharing_attr", i1 false, i1 false}
!160 = !{ptr @.str.45, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../mm/ksm.c", i32 3098, i32 1}
!162 = !{ptr @stable_node_chains_attr, !161, !"stable_node_chains_attr", i1 false, i1 false}
!163 = !{ptr @.str.46, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../mm/ksm.c", i32 3091, i32 1}
!165 = !{ptr @stable_node_dups_attr, !164, !"stable_node_dups_attr", i1 false, i1 false}
!166 = !{ptr @.str.47, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../mm/ksm.c", i32 3124, i32 1}
!168 = !{ptr @stable_node_chains_prune_millisecs_attr, !167, !"stable_node_chains_prune_millisecs_attr", i1 false, i1 false}
!169 = !{ptr @.str.48, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../mm/ksm.c", i32 3005, i32 1}
!171 = !{ptr @use_zero_pages_attr, !170, !"use_zero_pages_attr", i1 false, i1 false}
!172 = !{!"sp"}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 2148753993, i64 2148754019, i64 2148754048, i64 2148754082, i64 2148754113, i64 2148754136}
!184 = !{i64 2148842469}
!185 = !{i64 2148757178, i64 2148757210, i64 2148757239, i64 2148757273, i64 2148757304, i64 2148757327}
!186 = !{i64 2148842698}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{i64 2148354670, i64 2148354675, i64 2148354688, i64 2148354732, i64 2148354766, i64 2148354787}
!189 = !{i64 2150308991, i64 2150309482, i64 2150309028, i64 2150309084, i64 2150309118, i64 2150309142, i64 2150309183, i64 2150309204, i64 2150309232, i64 2150309266}
!190 = !{i64 2151058883}
!191 = !{i64 2153199989, i64 2153200472, i64 2153200026, i64 2153200082, i64 2153200116, i64 2153200140, i64 2153200181, i64 2153200202, i64 2153200230, i64 2153200264}
!192 = !{i64 2150428889, i64 2150429062, i64 2150429077, i64 2150429129, i64 2150429188, i64 2150429212, i64 2150429253, i64 2150429274, i64 2150429302, i64 2150429334}
!193 = !{i64 2151059572}
!194 = !{i64 2150323319, i64 2150323810, i64 2150323356, i64 2150323412, i64 2150323446, i64 2150323470, i64 2150323511, i64 2150323532, i64 2150323560, i64 2150323594}
!195 = !{i64 2150325699, i64 2150326190, i64 2150325736, i64 2150325792, i64 2150325826, i64 2150325850, i64 2150325891, i64 2150325912, i64 2150325940, i64 2150325974}
!196 = !{i64 2155344347, i64 2155344821, i64 2155344384, i64 2155344440, i64 2155344474, i64 2155344498, i64 2155344539, i64 2155344560, i64 2155344588, i64 2155344622}
!197 = !{i64 2150320485, i64 2150320976, i64 2150320522, i64 2150320578, i64 2150320612, i64 2150320636, i64 2150320677, i64 2150320698, i64 2150320726, i64 2150320760}
!198 = !{i64 2155346086, i64 2155346560, i64 2155346123, i64 2155346179, i64 2155346213, i64 2155346237, i64 2155346278, i64 2155346299, i64 2155346327, i64 2155346361}
!199 = !{i64 2155355618, i64 2155356092, i64 2155355655, i64 2155355711, i64 2155355745, i64 2155355769, i64 2155355810, i64 2155355831, i64 2155355859, i64 2155355893}
!200 = !{i64 2155357425, i64 2155357899, i64 2155357462, i64 2155357518, i64 2155357552, i64 2155357576, i64 2155357617, i64 2155357638, i64 2155357666, i64 2155357700}
!201 = !{i64 2155359267, i64 2155359741, i64 2155359304, i64 2155359360, i64 2155359394, i64 2155359418, i64 2155359459, i64 2155359480, i64 2155359508, i64 2155359542}
!202 = !{i64 2155361116, i64 2155361590, i64 2155361153, i64 2155361209, i64 2155361243, i64 2155361267, i64 2155361308, i64 2155361329, i64 2155361357, i64 2155361391}
!203 = !{i64 2155362506}
!204 = !{i64 2154222184}
!205 = !{i64 2152817040}
!206 = !{i64 2152817247}
!207 = !{i64 2154224955}
!208 = !{i64 2155123729}
!209 = !{!"auto-init"}
!210 = !{i64 2155272150, i64 2155272624, i64 2155272187, i64 2155272243, i64 2155272277, i64 2155272301, i64 2155272342, i64 2155272363, i64 2155272391, i64 2155272425}
!211 = !{i64 2148762851, i64 2148762883, i64 2148762912, i64 2148762946, i64 2148762977, i64 2148763000}
!212 = !{i64 2148851956}
!213 = !{i64 2155310024, i64 2155310498, i64 2155310061, i64 2155310117, i64 2155310151, i64 2155310175, i64 2155310216, i64 2155310237, i64 2155310265, i64 2155310299}
!214 = !{i8 0, i8 2}
!215 = !{i64 2155238018, i64 2155238491, i64 2155238055, i64 2155238111, i64 2155238145, i64 2155238169, i64 2155238210, i64 2155238231, i64 2155238259, i64 2155238293}
!216 = !{i64 2155239603, i64 2155240076, i64 2155239640, i64 2155239696, i64 2155239730, i64 2155239754, i64 2155239795, i64 2155239816, i64 2155239844, i64 2155239878}
!217 = !{i64 2148753412}
!218 = !{i64 1240012, i64 1240037, i64 1240059, i64 1240075, i64 1240087, i64 1240107, i64 1240131, i64 1240147, i64 1240159}
!219 = !{i64 2148753600}
!220 = !{i64 2155228777}
!221 = !{i64 2155228619}
!222 = !{i64 2155234643}
!223 = !{i64 2155209192, i64 2155209665, i64 2155209229, i64 2155209285, i64 2155209319, i64 2155209343, i64 2155209384, i64 2155209405, i64 2155209433, i64 2155209467}
!224 = !{i64 2155214095, i64 2155214568, i64 2155214132, i64 2155214188, i64 2155214222, i64 2155214246, i64 2155214287, i64 2155214308, i64 2155214336, i64 2155214370}
!225 = !{i64 2155178162, i64 2155178635, i64 2155178199, i64 2155178255, i64 2155178289, i64 2155178313, i64 2155178354, i64 2155178375, i64 2155178403, i64 2155178437}
!226 = !{i64 2155181087, i64 2155181560, i64 2155181124, i64 2155181180, i64 2155181214, i64 2155181238, i64 2155181279, i64 2155181300, i64 2155181328, i64 2155181362}
!227 = !{i64 2153223962, i64 2153224446, i64 2153223999, i64 2153224055, i64 2153224089, i64 2153224113, i64 2153224154, i64 2153224175, i64 2153224203, i64 2153224237}
!228 = !{i64 2155286297, i64 2155286771, i64 2155286334, i64 2155286390, i64 2155286424, i64 2155286448, i64 2155286489, i64 2155286510, i64 2155286538, i64 2155286572}
!229 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!230 = !{i64 2155300402, i64 2155300876, i64 2155300439, i64 2155300495, i64 2155300529, i64 2155300553, i64 2155300594, i64 2155300615, i64 2155300643, i64 2155300677}
!231 = !{i64 2155207351, i64 2155207824, i64 2155207388, i64 2155207444, i64 2155207478, i64 2155207502, i64 2155207543, i64 2155207564, i64 2155207592, i64 2155207626}
!232 = !{i64 2155172940, i64 2155173413, i64 2155172977, i64 2155173033, i64 2155173067, i64 2155173091, i64 2155173132, i64 2155173153, i64 2155173181, i64 2155173215}
!233 = !{i64 2155174603, i64 2155175076, i64 2155174640, i64 2155174696, i64 2155174730, i64 2155174754, i64 2155174795, i64 2155174816, i64 2155174844, i64 2155174878}
!234 = !{i64 2155302062, i64 2155302536, i64 2155302099, i64 2155302155, i64 2155302189, i64 2155302213, i64 2155302254, i64 2155302275, i64 2155302303, i64 2155302337}
!235 = !{i64 2155303701, i64 2155304175, i64 2155303738, i64 2155303794, i64 2155303828, i64 2155303852, i64 2155303893, i64 2155303914, i64 2155303942, i64 2155303976}
!236 = !{i64 2150422961, i64 2150423452, i64 2150422998, i64 2150423054, i64 2150423088, i64 2150423112, i64 2150423153, i64 2150423174, i64 2150423202, i64 2150423236}
!237 = !{i64 2150990584, i64 2150991075, i64 2150990621, i64 2150990677, i64 2150990711, i64 2150990735, i64 2150990776, i64 2150990797, i64 2150990825, i64 2150990859}
!238 = !{i64 2155281549, i64 2155282023, i64 2155281586, i64 2155281642, i64 2155281676, i64 2155281700, i64 2155281741, i64 2155281762, i64 2155281790, i64 2155281824}
!239 = !{i64 2155277943, i64 2155278417, i64 2155277980, i64 2155278036, i64 2155278070, i64 2155278094, i64 2155278135, i64 2155278156, i64 2155278184, i64 2155278218}
!240 = !{i64 2155242203, i64 2155242676, i64 2155242240, i64 2155242296, i64 2155242330, i64 2155242354, i64 2155242395, i64 2155242416, i64 2155242444, i64 2155242478}
!241 = !{i64 2155246959, i64 2155247432, i64 2155246996, i64 2155247052, i64 2155247086, i64 2155247110, i64 2155247151, i64 2155247172, i64 2155247200, i64 2155247234}
!242 = !{i64 2155248548, i64 2155249021, i64 2155248585, i64 2155248641, i64 2155248675, i64 2155248699, i64 2155248740, i64 2155248761, i64 2155248789, i64 2155248823}
