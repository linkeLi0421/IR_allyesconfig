; ModuleID = '/llk/IR_all_yes/mm/rmap.c_pt.bc'
source_filename = "../mm/rmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+folio_mkclean\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_mkclean\09\09\09\09"
module asm "\09.long\09__crc_folio_mkclean\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mkclean:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mkclean\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mkclean:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rmap_walk_control = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%union.anon.68 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.82, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon_vma_chain = type { ptr, ptr, %struct.list_head, %struct.rb_node, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.18, %union.anon.30, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.30 = type { %struct.atomic_t }
%struct.anon.63 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.page_referenced_arg = type { i32, i32, i32, ptr }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
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
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [14 x ptr], ptr, %struct.list_head, [14 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.psi_group = type { %struct.mutex, ptr, [6 x i64], i64, i64, %struct.delayed_work, [2 x [6 x i64]], [6 x [3 x i32]], ptr, %struct.timer_list, %struct.wait_queue_head, %struct.atomic_t, %struct.mutex, %struct.list_head, [6 x i32], i32, i64, [6 x i64], i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.cgroup_bpf = type { [23 x ptr], [23 x %struct.list_head], [23 x i32], %struct.list_head, ptr, %struct.percpu_ref, %struct.work_struct }
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.60, ptr, i64, i16, i16, ptr }
%union.anon.60 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.mmu_notifier_range = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mm/rmap.c\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"anon_vma\00", [23 x i8] zeroinitializer }, align 32
@anon_vma_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"anon_vma_chain\00", [17 x i8] zeroinitializer }, align 32
@anon_vma_chain_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_folio_mkclean = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mkclean = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mkclean = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mkclean to i32), ptr @__kstrtab_folio_mkclean, ptr @__kstrtabns_folio_mkclean }, section "___ksymtab_gpl+folio_mkclean", align 4
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(!PageTransHuge(page))\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"VM_BUG_ON_PAGE(compound && !PageTransHuge(page))\00", [47 x i8] zeroinitializer }, align 32
@try_to_migrate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.page_mlock.rwc = private unnamed_addr constant %struct.rmap_walk_control { ptr null, ptr @page_mlock_one, ptr @page_not_mapped, ptr @page_lock_anon_vma_read, ptr null }, align 4
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page) || PageLRU(page))\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VM_BUG_ON_PAGE(PageKsm(page))\00", [34 x i8] zeroinitializer }, align 32
@lock_anon_vma_root.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@anon_vma_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&anon_vma->rwsem\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@page_referenced_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@mm_match_cgroup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/memcontrol.h\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@page_mkclean_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/mmu_notifier.h\00", [35 x i8] zeroinitializer }, align 32
@__mmu_notifier_invalidate_range_start_map = external dso_local global %struct.lockdep_map, align 4
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"VM_BUG_ON_PAGE(page_anon_vma(page)->root != vma->anon_vma->root)\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"VM_BUG_ON_PAGE(page_to_pgoff(page) != linear_page_index(vma, address))\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"VM_BUG_ON_PAGE(compound && !PageHead(page))\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VM_BUG_ON_PAGE(!pvmw.pte)\00", [38 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@try_to_unmap_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mmlist_lock = external dso_local global %struct.spinlock, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VM_BUG_ON_PAGE(!anon_vma)\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 189, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 455, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"anon_vma_cachep\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 83, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 458, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"anon_vma_chain_cachep\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 84, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1054, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1164, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1244, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2059, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2410, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 448, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 695, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 723, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 698, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 260, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 864, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [32 x i8] c"../include/linux/mmu_notifier.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 454, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 414, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1122, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1123, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 445, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1283, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 1492, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 717, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [13 x i8] c"../mm/rmap.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 2310, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab_folio_mkclean, ptr @.str, ptr @.str.1, ptr @anon_vma_cachep, ptr @.str.2, ptr @anon_vma_chain_cachep, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @anon_vma_ctor.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anon_vma_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anon_vma_chain_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anon_vma_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__anon_vma_prepare(ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 189) #9
  %2 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @find_mergeable_anon_vma(ptr noundef %vma) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then6:                                         ; preds = %if.end
  %3 = load ptr, ptr @anon_vma_cachep, align 4
  %call.i67 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i67, null
  br i1 %tobool.not.i, label %if.then6.cleanup.sink.split_crit_edge, label %anon_vma_alloc.exit

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

anon_vma_alloc.exit:                              ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %call.i67, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %refcount.i, align 4
  %degree.i = getelementptr inbounds %struct.anon_vma, ptr %call.i67, i32 0, i32 3
  %5 = ptrtoint ptr %degree.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %degree.i, align 8
  %parent.i = getelementptr inbounds %struct.anon_vma, ptr %call.i67, i32 0, i32 4
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i67, ptr %parent.i, align 4
  %7 = ptrtoint ptr %call.i67 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i67, ptr %call.i67, align 8
  br label %if.end14

if.end14:                                         ; preds = %anon_vma_alloc.exit, %if.end.if.end14_crit_edge
  %anon_vma.0 = phi ptr [ %call4, %if.end.if.end14_crit_edge ], [ %call.i67, %anon_vma_alloc.exit ]
  %allocated.0 = phi ptr [ null, %if.end.if.end14_crit_edge ], [ %call.i67, %anon_vma_alloc.exit ]
  %8 = ptrtoint ptr %anon_vma.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %anon_vma.0, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %9, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i) #9
  %page_table_lock = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock) #9
  %anon_vma15 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %10 = ptrtoint ptr %anon_vma15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %anon_vma15, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %if.then25, label %if.end14.if.end27_crit_edge, !prof !86

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then25:                                        ; preds = %if.end14
  %12 = ptrtoint ptr %anon_vma15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %anon_vma.0, ptr %anon_vma15, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vma, ptr %call.i, align 8
  %anon_vma2.i = getelementptr inbounds %struct.anon_vma_chain, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %anon_vma2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %anon_vma.0, ptr %anon_vma2.i, align 4
  %same_vma.i = getelementptr inbounds %struct.anon_vma_chain, ptr %call.i, i32 0, i32 2
  %anon_vma_chain.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 10
  %15 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %anon_vma_chain.i, align 4
  %call.i.i.i68 = tail call zeroext i1 @__list_add_valid(ptr noundef %same_vma.i, ptr noundef %anon_vma_chain.i, ptr noundef %16) #9
  br i1 %call.i.i.i68, label %if.end.i.i.i, label %if.then25.anon_vma_chain_link.exit_crit_edge

if.then25.anon_vma_chain_link.exit_crit_edge:     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %anon_vma_chain_link.exit

if.end.i.i.i:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %same_vma.i, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %same_vma.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %same_vma.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.anon_vma_chain, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %anon_vma_chain.i, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %same_vma.i, ptr %anon_vma_chain.i, align 4
  br label %anon_vma_chain_link.exit

anon_vma_chain_link.exit:                         ; preds = %if.end.i.i.i, %if.then25.anon_vma_chain_link.exit_crit_edge
  %rb_root.i = getelementptr inbounds %struct.anon_vma, ptr %anon_vma.0, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef nonnull %call.i, ptr noundef %rb_root.i) #9
  %degree = getelementptr inbounds %struct.anon_vma, ptr %anon_vma.0, i32 0, i32 3
  %21 = ptrtoint ptr %degree to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %degree, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %degree, align 4
  br label %if.end27

if.end27:                                         ; preds = %anon_vma_chain_link.exit, %if.end14.if.end27_crit_edge
  %allocated.1 = phi ptr [ null, %anon_vma_chain_link.exit ], [ %allocated.0, %if.end14.if.end27_crit_edge ]
  %avc.0 = phi ptr [ null, %anon_vma_chain_link.exit ], [ %call.i, %if.end14.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock) #9
  %23 = ptrtoint ptr %anon_vma.0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %anon_vma.0, align 4
  %rwsem.i69 = getelementptr inbounds %struct.anon_vma, ptr %24, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i69) #9
  %tobool29.not = icmp eq ptr %allocated.1, null
  br i1 %tobool29.not, label %if.end27.if.end37_crit_edge, label %if.then36, !prof !86

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_anon_vma(ptr noundef nonnull %allocated.1)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end27.if.end37_crit_edge
  %tobool38.not = icmp eq ptr %avc.0, null
  br i1 %tobool38.not, label %if.end37.cleanup_crit_edge, label %if.end37.cleanup.sink.split_crit_edge, !prof !86

if.end37.cleanup.sink.split_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end37.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge
  %call.i.sink = phi ptr [ %avc.0, %if.end37.cleanup.sink.split_crit_edge ], [ %call.i, %if.then6.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end37.cleanup.sink.split_crit_edge ], [ -12, %if.then6.cleanup.sink.split_crit_edge ]
  %25 = load ptr, ptr @anon_vma_chain_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %25, ptr noundef nonnull %call.i.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_mergeable_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_anon_vma(ptr noundef %anon_vma) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %refcount = getelementptr inbounds %struct.anon_vma, ptr %anon_vma, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !88
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef %anon_vma)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @anon_vma_clone(ptr noundef %dst, ptr noundef readonly %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, ptr %src, i32 0, i32 10
  %prev = getelementptr inbounds %struct.vm_area_struct, ptr %src, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn83 = load ptr, ptr %prev, align 4
  %cmp.not84 = icmp eq ptr %.pn83, %anon_vma_chain
  br i1 %cmp.not84, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %anon_vma_chain.i = getelementptr inbounds %struct.vm_area_struct, ptr %dst, i32 0, i32 10
  %anon_vma12 = getelementptr inbounds %struct.vm_area_struct, ptr %dst, i32 0, i32 11
  %anon_vma14 = getelementptr inbounds %struct.vm_area_struct, ptr %src, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn86 = phi ptr [ %.pn83, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %root.085 = phi ptr [ null, %for.body.lr.ph ], [ %root.addr.0.i, %for.inc.for.body_crit_edge ]
  %1 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 10240) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end9, !prof !90

if.then:                                          ; preds = %for.body
  %tobool.not.i = icmp eq ptr %root.085, null
  br i1 %tobool.not.i, label %if.then.unlock_anon_vma_root.exit_crit_edge, label %if.then.i

if.then.unlock_anon_vma_root.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_anon_vma_root.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %root.085, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i) #9
  br label %unlock_anon_vma_root.exit

unlock_anon_vma_root.exit:                        ; preds = %if.then.i, %if.then.unlock_anon_vma_root.exit_crit_edge
  %2 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %call.i60 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #9
  %tobool7.not = icmp eq ptr %call.i60, null
  br i1 %tobool7.not, label %enomem_failure, label %if.end9.thread

if.end9:                                          ; preds = %for.body
  %anon_vma10 = getelementptr i8, ptr %.pn86, i32 -4
  %3 = ptrtoint ptr %anon_vma10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %anon_vma10, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp.not.i = icmp eq ptr %6, %root.085
  br i1 %cmp.not.i, label %if.end9.lock_anon_vma_root.exit_crit_edge, label %if.then.i62

if.end9.lock_anon_vma_root.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_anon_vma_root.exit

if.end9.thread:                                   ; preds = %unlock_anon_vma_root.exit
  %anon_vma1070 = getelementptr i8, ptr %.pn86, i32 -4
  %7 = ptrtoint ptr %anon_vma1070 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %anon_vma1070, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp.not.i71 = icmp eq ptr %10, null
  br i1 %cmp.not.i71, label %if.end9.thread.lock_anon_vma_root.exit_crit_edge, label %if.end9.thread.if.end40.i_crit_edge

if.end9.thread.if.end40.i_crit_edge:              ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.end9.thread.lock_anon_vma_root.exit_crit_edge: ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_anon_vma_root.exit

if.then.i62:                                      ; preds = %if.end9
  %tobool.not.i61 = icmp eq ptr %root.085, null
  br i1 %tobool.not.i61, label %if.then.i62.if.end40.i_crit_edge, label %land.rhs.i

if.then.i62.if.end40.i_crit_edge:                 ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.then.i62
  %.b50.i = load i1, ptr @lock_anon_vma_root.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.then39.i_crit_edge, label %if.then9.i, !prof !86

land.rhs.i.if.then39.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @lock_anon_vma_root.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef null) #9
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then9.i, %land.rhs.i.if.then39.i_crit_edge
  %rwsem.i63 = getelementptr inbounds %struct.anon_vma, ptr %root.085, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i63) #9
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.then.i62.if.end40.i_crit_edge, %if.end9.thread.if.end40.i_crit_edge
  %avc.07378 = phi ptr [ %call.i, %if.then39.i ], [ %call.i, %if.then.i62.if.end40.i_crit_edge ], [ %call.i60, %if.end9.thread.if.end40.i_crit_edge ]
  %11 = phi ptr [ %4, %if.then39.i ], [ %4, %if.then.i62.if.end40.i_crit_edge ], [ %8, %if.end9.thread.if.end40.i_crit_edge ]
  %12 = phi ptr [ %6, %if.then39.i ], [ %6, %if.then.i62.if.end40.i_crit_edge ], [ %10, %if.end9.thread.if.end40.i_crit_edge ]
  %rwsem41.i = getelementptr inbounds %struct.anon_vma, ptr %12, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem41.i) #9
  br label %lock_anon_vma_root.exit

lock_anon_vma_root.exit:                          ; preds = %if.end40.i, %if.end9.thread.lock_anon_vma_root.exit_crit_edge, %if.end9.lock_anon_vma_root.exit_crit_edge
  %13 = phi ptr [ %11, %if.end40.i ], [ %4, %if.end9.lock_anon_vma_root.exit_crit_edge ], [ %8, %if.end9.thread.lock_anon_vma_root.exit_crit_edge ]
  %avc.074 = phi ptr [ %avc.07378, %if.end40.i ], [ %call.i, %if.end9.lock_anon_vma_root.exit_crit_edge ], [ %call.i60, %if.end9.thread.lock_anon_vma_root.exit_crit_edge ]
  %root.addr.0.i = phi ptr [ %12, %if.end40.i ], [ %root.085, %if.end9.lock_anon_vma_root.exit_crit_edge ], [ null, %if.end9.thread.lock_anon_vma_root.exit_crit_edge ]
  %14 = ptrtoint ptr %avc.074 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dst, ptr %avc.074, align 4
  %anon_vma2.i = getelementptr inbounds %struct.anon_vma_chain, ptr %avc.074, i32 0, i32 1
  %15 = ptrtoint ptr %anon_vma2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %anon_vma2.i, align 4
  %same_vma.i = getelementptr inbounds %struct.anon_vma_chain, ptr %avc.074, i32 0, i32 2
  %16 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %anon_vma_chain.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %same_vma.i, ptr noundef %anon_vma_chain.i, ptr noundef %17) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %lock_anon_vma_root.exit.anon_vma_chain_link.exit_crit_edge

lock_anon_vma_root.exit.anon_vma_chain_link.exit_crit_edge: ; preds = %lock_anon_vma_root.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %anon_vma_chain_link.exit

if.end.i.i.i:                                     ; preds = %lock_anon_vma_root.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %same_vma.i, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %same_vma.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %same_vma.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.anon_vma_chain, ptr %avc.074, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %anon_vma_chain.i, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %same_vma.i, ptr %anon_vma_chain.i, align 4
  br label %anon_vma_chain_link.exit

anon_vma_chain_link.exit:                         ; preds = %if.end.i.i.i, %lock_anon_vma_root.exit.anon_vma_chain_link.exit_crit_edge
  %rb_root.i = getelementptr inbounds %struct.anon_vma, ptr %13, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef nonnull %avc.074, ptr noundef %rb_root.i) #9
  %22 = ptrtoint ptr %anon_vma12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %anon_vma12, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %land.lhs.true, label %anon_vma_chain_link.exit.for.inc_crit_edge

anon_vma_chain_link.exit.for.inc_crit_edge:       ; preds = %anon_vma_chain_link.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %anon_vma_chain_link.exit
  %24 = ptrtoint ptr %anon_vma14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %anon_vma14, align 4
  %tobool15.not = icmp eq ptr %25, null
  %cmp18.not = icmp eq ptr %13, %25
  %or.cond = or i1 %tobool15.not, %cmp18.not
  br i1 %or.cond, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true19

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true
  %degree = getelementptr inbounds %struct.anon_vma, ptr %13, i32 0, i32 3
  %26 = ptrtoint ptr %degree to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %degree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp20 = icmp ult i32 %27, 2
  br i1 %cmp20, label %if.then21, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %anon_vma12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %13, ptr %anon_vma12, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %land.lhs.true19.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %anon_vma_chain_link.exit.for.inc_crit_edge
  %prev26 = getelementptr inbounds %struct.list_head, ptr %.pn86, i32 0, i32 1
  %29 = ptrtoint ptr %prev26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %prev26, align 4
  %cmp.not = icmp eq ptr %.pn, %anon_vma_chain
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %root.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %root.addr.0.i, %for.inc.for.end_crit_edge ]
  %anon_vma29 = getelementptr inbounds %struct.vm_area_struct, ptr %dst, i32 0, i32 11
  %30 = ptrtoint ptr %anon_vma29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %anon_vma29, align 4
  %tobool30.not = icmp eq ptr %31, null
  br i1 %tobool30.not, label %for.end.if.end34_crit_edge, label %if.then31

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %degree33 = getelementptr inbounds %struct.anon_vma, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %degree33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %degree33, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %degree33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %for.end.if.end34_crit_edge
  %tobool.not.i64 = icmp eq ptr %root.0.lcssa, null
  br i1 %tobool.not.i64, label %if.end34.cleanup36_crit_edge, label %if.then.i66

if.end34.cleanup36_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup36

if.then.i66:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %rwsem.i65 = getelementptr inbounds %struct.anon_vma, ptr %root.0.lcssa, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i65) #9
  br label %cleanup36

enomem_failure:                                   ; preds = %unlock_anon_vma_root.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %anon_vma12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %anon_vma12, align 4
  tail call void @unlink_anon_vmas(ptr noundef %dst)
  br label %cleanup36

cleanup36:                                        ; preds = %enomem_failure, %if.then.i66, %if.end34.cleanup36_crit_edge
  %retval.0 = phi i32 [ -12, %enomem_failure ], [ 0, %if.end34.cleanup36_crit_edge ], [ 0, %if.then.i66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unlink_anon_vmas(ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 10
  %0 = ptrtoint ptr %anon_vma_chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %anon_vma_chain, align 4
  %cmp.not120 = icmp eq ptr %1, %anon_vma_chain
  br i1 %cmp.not120, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in122 = phi ptr [ %.pn125, %cleanup.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %root.0121 = phi ptr [ %root.addr.0.i, %cleanup.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %avc.0124 = getelementptr i8, ptr %.pn.in122, i32 -8
  %2 = ptrtoint ptr %.pn.in122 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn125 = load ptr, ptr %.pn.in122, align 4
  %anon_vma8 = getelementptr i8, ptr %.pn.in122, i32 -4
  %3 = ptrtoint ptr %anon_vma8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %anon_vma8, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp.not.i = icmp eq ptr %6, %root.0121
  br i1 %cmp.not.i, label %for.body.lock_anon_vma_root.exit_crit_edge, label %if.then.i

for.body.lock_anon_vma_root.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_anon_vma_root.exit

if.then.i:                                        ; preds = %for.body
  %tobool.not.i = icmp eq ptr %root.0121, null
  br i1 %tobool.not.i, label %if.then.i.if.end40.i_crit_edge, label %land.rhs.i

if.then.i.if.end40.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b50.i = load i1, ptr @lock_anon_vma_root.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.then39.i_crit_edge, label %if.then9.i, !prof !86

land.rhs.i.if.then39.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @lock_anon_vma_root.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 9, ptr noundef null) #9
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then9.i, %land.rhs.i.if.then39.i_crit_edge
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %root.0121, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i) #9
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.then.i.if.end40.i_crit_edge
  %rwsem41.i = getelementptr inbounds %struct.anon_vma, ptr %6, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem41.i) #9
  br label %lock_anon_vma_root.exit

lock_anon_vma_root.exit:                          ; preds = %if.end40.i, %for.body.lock_anon_vma_root.exit_crit_edge
  %root.addr.0.i = phi ptr [ %6, %if.end40.i ], [ %root.0121, %for.body.lock_anon_vma_root.exit_crit_edge ]
  %rb_root = getelementptr inbounds %struct.anon_vma, ptr %4, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %avc.0124, ptr noundef %rb_root) #9
  %7 = ptrtoint ptr %rb_root to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rb_root, align 4
  %cmp12 = icmp eq ptr %8, null
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %lock_anon_vma_root.exit
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.anon_vma, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %degree = getelementptr inbounds %struct.anon_vma, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %degree to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %degree, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %degree, align 4
  br label %cleanup

if.end:                                           ; preds = %lock_anon_vma_root.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in122) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in122, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in122 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in122, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in122 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in122, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in122, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %21 = load ptr, ptr @anon_vma_chain_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %avc.0124) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then
  %cmp.not = icmp eq ptr %.pn125, %anon_vma_chain
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %root.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %root.addr.0.i, %cleanup.for.end_crit_edge ]
  %anon_vma19 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %22 = ptrtoint ptr %anon_vma19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %anon_vma19, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %for.end.if.end25_crit_edge, label %if.then20

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %degree22 = getelementptr inbounds %struct.anon_vma, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %degree22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %degree22, align 4
  %dec23 = add i32 %25, -1
  store i32 %dec23, ptr %degree22, align 4
  %26 = ptrtoint ptr %anon_vma19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %anon_vma19, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %for.end.if.end25_crit_edge
  %tobool.not.i108 = icmp eq ptr %root.0.lcssa, null
  br i1 %tobool.not.i108, label %if.end25.unlock_anon_vma_root.exit_crit_edge, label %if.then.i110

if.end25.unlock_anon_vma_root.exit_crit_edge:     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_anon_vma_root.exit

if.then.i110:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %rwsem.i109 = getelementptr inbounds %struct.anon_vma, ptr %root.0.lcssa, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i109) #9
  br label %unlock_anon_vma_root.exit

unlock_anon_vma_root.exit:                        ; preds = %if.then.i110, %if.end25.unlock_anon_vma_root.exit_crit_edge
  %27 = ptrtoint ptr %anon_vma_chain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %anon_vma_chain, align 4
  %cmp39.not128 = icmp eq ptr %28, %anon_vma_chain
  br i1 %cmp39.not128, label %unlock_anon_vma_root.exit.for.end79_crit_edge, label %unlock_anon_vma_root.exit.for.body41_crit_edge

unlock_anon_vma_root.exit.for.body41_crit_edge:   ; preds = %unlock_anon_vma_root.exit
  br label %for.body41

unlock_anon_vma_root.exit.for.end79_crit_edge:    ; preds = %unlock_anon_vma_root.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79

for.body41:                                       ; preds = %list_del.exit117.for.body41_crit_edge, %unlock_anon_vma_root.exit.for.body41_crit_edge
  %.pn105.in129 = phi ptr [ %.pn105132, %list_del.exit117.for.body41_crit_edge ], [ %28, %unlock_anon_vma_root.exit.for.body41_crit_edge ]
  %avc.1131 = getelementptr i8, ptr %.pn105.in129, i32 -8
  %29 = ptrtoint ptr %.pn105.in129 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn105132 = load ptr, ptr %.pn105.in129, align 4
  %anon_vma43 = getelementptr i8, ptr %.pn105.in129, i32 -4
  %30 = ptrtoint ptr %anon_vma43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %anon_vma43, align 4
  %degree44 = getelementptr inbounds %struct.anon_vma, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %degree44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %degree44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool45.not = icmp eq i32 %33, 0
  br i1 %tobool45.not, label %for.body41.if.end64_crit_edge, label %do.end58, !prof !86

for.body41.if.end64_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end58:                                         ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %for.body41.if.end64_crit_edge
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %31, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i111, label %if.end64.put_anon_vma.exit_crit_edge

if.end64.put_anon_vma.exit_crit_edge:             ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_anon_vma.exit

if.then.i111:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef %31) #9
  br label %put_anon_vma.exit

put_anon_vma.exit:                                ; preds = %if.then.i111, %if.end64.put_anon_vma.exit_crit_edge
  %call.i.i112 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn105.in129) #9
  br i1 %call.i.i112, label %if.end.i.i115, label %put_anon_vma.exit.list_del.exit117_crit_edge

put_anon_vma.exit.list_del.exit117_crit_edge:     ; preds = %put_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit117

if.end.i.i115:                                    ; preds = %put_anon_vma.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i113 = getelementptr inbounds %struct.list_head, ptr %.pn105.in129, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i113, align 4
  %37 = ptrtoint ptr %.pn105.in129 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.pn105.in129, align 4
  %prev1.i.i.i114 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i114, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del.exit117

list_del.exit117:                                 ; preds = %if.end.i.i115, %put_anon_vma.exit.list_del.exit117_crit_edge
  %41 = ptrtoint ptr %.pn105.in129 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn105.in129, align 4
  %prev.i116 = getelementptr inbounds %struct.list_head, ptr %.pn105.in129, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i116, align 4
  %43 = load ptr, ptr @anon_vma_chain_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %43, ptr noundef %avc.1131) #9
  %cmp39.not = icmp eq ptr %.pn105132, %anon_vma_chain
  br i1 %cmp39.not, label %list_del.exit117.for.end79_crit_edge, label %list_del.exit117.for.body41_crit_edge

list_del.exit117.for.body41_crit_edge:            ; preds = %list_del.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

list_del.exit117.for.end79_crit_edge:             ; preds = %list_del.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end79

for.end79:                                        ; preds = %list_del.exit117.for.end79_crit_edge, %unlock_anon_vma_root.exit.for.end79_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @anon_vma_fork(ptr noundef %vma, ptr noundef %pvma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, ptr %pvma, i32 0, i32 11
  %0 = ptrtoint ptr %anon_vma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %anon_vma1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %anon_vma2 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %2 = ptrtoint ptr %anon_vma2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %anon_vma2, align 4
  %call = tail call i32 @anon_vma_clone(ptr noundef %vma, ptr noundef %pvma)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %anon_vma2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %anon_vma2, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %5 = load ptr, ptr @anon_vma_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end9.out_error_crit_edge, label %if.end13

if.end9.out_error_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.end13:                                         ; preds = %if.end9
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %call.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcount.i, align 4
  %degree.i = getelementptr inbounds %struct.anon_vma, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %degree.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %degree.i, align 8
  %parent.i = getelementptr inbounds %struct.anon_vma, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %parent.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %call.i, align 8
  %10 = load ptr, ptr @anon_vma_chain_cachep, align 4
  %call.i45 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %10, i32 noundef 3264) #9
  %tobool15.not = icmp eq ptr %call.i45, null
  br i1 %tobool15.not, label %out_error_free_anon_vma, label %if.end17

if.end17:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %anon_vma1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %anon_vma1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call.i, align 8
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %parent.i, align 4
  %refcount.i46 = getelementptr inbounds %struct.anon_vma, ptr %14, i32 0, i32 2
  %call.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i46, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i46, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i46, ptr %refcount.i46, i32 1, ptr elementtype(i32) %refcount.i46) #9, !srcloc !91
  %18 = ptrtoint ptr %anon_vma2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %anon_vma2, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %20, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i) #9
  %21 = ptrtoint ptr %call.i45 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vma, ptr %call.i45, align 8
  %anon_vma2.i = getelementptr inbounds %struct.anon_vma_chain, ptr %call.i45, i32 0, i32 1
  %22 = ptrtoint ptr %anon_vma2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %anon_vma2.i, align 4
  %same_vma.i = getelementptr inbounds %struct.anon_vma_chain, ptr %call.i45, i32 0, i32 2
  %anon_vma_chain.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 10
  %23 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %anon_vma_chain.i, align 4
  %call.i.i.i48 = tail call zeroext i1 @__list_add_valid(ptr noundef %same_vma.i, ptr noundef %anon_vma_chain.i, ptr noundef %24) #9
  br i1 %call.i.i.i48, label %if.end.i.i.i, label %if.end17.anon_vma_chain_link.exit_crit_edge

if.end17.anon_vma_chain_link.exit_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %anon_vma_chain_link.exit

if.end.i.i.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %same_vma.i, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %same_vma.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %same_vma.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.anon_vma_chain, ptr %call.i45, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %anon_vma_chain.i, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %same_vma.i, ptr %anon_vma_chain.i, align 4
  br label %anon_vma_chain_link.exit

anon_vma_chain_link.exit:                         ; preds = %if.end.i.i.i, %if.end17.anon_vma_chain_link.exit_crit_edge
  %rb_root.i = getelementptr inbounds %struct.anon_vma, ptr %call.i, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef nonnull %call.i45, ptr noundef %rb_root.i) #9
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 4
  %degree = getelementptr inbounds %struct.anon_vma, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %degree to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %degree, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %degree, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %rwsem.i49 = getelementptr inbounds %struct.anon_vma, ptr %34, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i49) #9
  br label %cleanup

out_error_free_anon_vma:                          ; preds = %if.end13
  %call.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i52, label %out_error_free_anon_vma.out_error_crit_edge

out_error_free_anon_vma.out_error_crit_edge:      ; preds = %out_error_free_anon_vma
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_error

if.then.i52:                                      ; preds = %out_error_free_anon_vma
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef nonnull %call.i) #9
  br label %out_error

out_error:                                        ; preds = %if.then.i52, %out_error_free_anon_vma.out_error_crit_edge, %if.end9.out_error_crit_edge
  tail call void @unlink_anon_vmas(ptr noundef %vma)
  br label %cleanup

cleanup:                                          ; preds = %out_error, %anon_vma_chain_link.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %anon_vma_chain_link.exit ], [ -12, %out_error ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @anon_vma_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 120, i32 noundef 0, i32 noundef 67895296, ptr noundef nonnull @anon_vma_ctor) #9
  store ptr %call, ptr @anon_vma_cachep, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #9
  store ptr %call1, ptr @anon_vma_chain_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anon_vma_ctor(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rwsem = getelementptr inbounds %struct.anon_vma, ptr %data, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %rwsem, ptr noundef nonnull @.str.10, ptr noundef nonnull @anon_vma_ctor.__key) #9
  %refcount = getelementptr inbounds %struct.anon_vma, ptr %data, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %refcount, align 4
  %rb_root = getelementptr inbounds %struct.anon_vma, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %rb_root to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rb_root, align 4
  %.compoundliteral.sroa.2.0.rb_root.sroa_idx = getelementptr inbounds %struct.anon_vma, ptr %data, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0.rb_root.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %.compoundliteral.sroa.2.0.rb_root.sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @page_get_anon_vma(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %if.end, label %rcu_read_lock.exit.out_crit_edge

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %call = tail call zeroext i1 @page_mapped(ptr noundef %page) #9
  br i1 %call, label %if.end2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end2:                                          ; preds = %if.end
  %sub = add i32 %6, -1
  %7 = inttoptr i32 %sub to ptr
  %refcount = getelementptr inbounds %struct.anon_vma, ptr %7, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 0, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end2.out_crit_edge, label %if.end5

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %call6 = tail call zeroext i1 @page_mapped(ptr noundef %page) #9
  br i1 %call6, label %if.end5.out_crit_edge, label %if.then7

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then7:                                         ; preds = %if.end5
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i15, label %if.then7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

if.then7.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %if.then7
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %if.then7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i22 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i24 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i24, label %if.then.i25, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i25:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef %7) #9
  br label %cleanup

out:                                              ; preds = %if.end5.out_crit_edge, %if.end2.out_crit_edge, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %anon_vma.0 = phi ptr [ null, %rcu_read_lock.exit.out_crit_edge ], [ %7, %if.end5.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %if.end2.out_crit_edge ]
  %call.i26 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i26, label %out.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true.i29

out.rcu_read_unlock.exit36_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36

land.lhs.true.i29:                                ; preds = %out
  %call1.i27 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27)
  %tobool.not.i28 = icmp eq i32 %call1.i27, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, label %land.lhs.true2.i31

land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36

land.lhs.true2.i31:                               ; preds = %land.lhs.true.i29
  %.b4.i30 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i30, label %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, label %if.then.i32

land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge: ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit36

if.then.i32:                                      ; preds = %land.lhs.true2.i31
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit36

rcu_read_unlock.exit36:                           ; preds = %if.then.i32, %land.lhs.true2.i31.rcu_read_unlock.exit36_crit_edge, %land.lhs.true.i29.rcu_read_unlock.exit36_crit_edge, %out.rcu_read_unlock.exit36_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %14 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i33 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i33 to ptr
  %preempt_count.i.i.i.i34 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i34, align 4
  %sub.i.i.i35 = add i32 %17, -1
  store volatile i32 %sub.i.i.i35, ptr %preempt_count.i.i.i.i34, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit36, %if.then.i25, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %anon_vma.0, %rcu_read_unlock.exit36 ], [ null, %rcu_read_unlock.exit.cleanup_crit_edge ], [ null, %if.then.i25 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @page_lock_anon_vma_read(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mapping, align 4
  %6 = ptrtoint ptr %5 to i32
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %if.end, label %rcu_read_lock.exit.out_crit_edge

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %call = tail call zeroext i1 @page_mapped(ptr noundef %page) #9
  br i1 %call, label %if.end2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end2:                                          ; preds = %if.end
  %sub = add i32 %6, -1
  %7 = inttoptr i32 %sub to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %rwsem = getelementptr inbounds %struct.anon_vma, ptr %9, i32 0, i32 1
  %call7 = tail call i32 @down_read_trylock(ptr noundef %rwsem) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end13, label %if.then8

if.then8:                                         ; preds = %if.end2
  %call9 = tail call zeroext i1 @page_mapped(ptr noundef %page) #9
  br i1 %call9, label %if.then8.out_crit_edge, label %if.then10

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @up_read(ptr noundef %rwsem) #9
  br label %out

if.end13:                                         ; preds = %if.end2
  %refcount = getelementptr inbounds %struct.anon_vma, ptr %7, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 0, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !94
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end13.out_crit_edge, label %if.end16

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %if.end13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  %call17 = tail call zeroext i1 @page_mapped(ptr noundef %page) #9
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  br i1 %call.i51, label %if.then18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i43

if.then18.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i43:                                ; preds = %if.then18
  %call1.i41 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i42 = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i45

land.lhs.true.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i45:                               ; preds = %land.lhs.true.i43
  %.b4.i44 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i44, label %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, label %if.then.i46

land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i46:                                      ; preds = %land.lhs.true2.i45
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i46, %land.lhs.true2.i45.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i43.rcu_read_unlock.exit_crit_edge, %if.then18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %11 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i47 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i48, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i48, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i49, label %if.then.i50, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i50:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_anon_vma(ptr noundef %7) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  br i1 %call.i51, label %if.end19.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true.i54

if.end19.rcu_read_unlock.exit61_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit61

land.lhs.true.i54:                                ; preds = %if.end19
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit61

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit61

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit61

rcu_read_unlock.exit61:                           ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit61_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit61_crit_edge, %if.end19.rcu_read_unlock.exit61_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %16 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i58 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i60 = add i32 %19, -1
  store volatile i32 %sub.i.i.i60, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %7, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %21, i32 0, i32 1
  tail call void @down_read(ptr noundef %rwsem.i) #9
  %call.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !88
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then22, label %rcu_read_unlock.exit61.cleanup_crit_edge

rcu_read_unlock.exit61.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %rcu_read_unlock.exit61
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %7, align 4
  %rwsem.i62 = getelementptr inbounds %struct.anon_vma, ptr %24, i32 0, i32 1
  tail call void @up_read(ptr noundef %rwsem.i62) #9
  tail call void @__put_anon_vma(ptr noundef %7)
  br label %cleanup

out:                                              ; preds = %if.end13.out_crit_edge, %if.then10, %if.then8.out_crit_edge, %if.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %anon_vma.1 = phi ptr [ null, %rcu_read_lock.exit.out_crit_edge ], [ %7, %if.then8.out_crit_edge ], [ null, %if.then10 ], [ null, %if.end.out_crit_edge ], [ null, %if.end13.out_crit_edge ]
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i63, label %out.rcu_read_unlock.exit73_crit_edge, label %land.lhs.true.i66

out.rcu_read_unlock.exit73_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit73

land.lhs.true.i66:                                ; preds = %out
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit73

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit73

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %rcu_read_unlock.exit73

rcu_read_unlock.exit73:                           ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge, %out.rcu_read_unlock.exit73_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %25 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i70 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i72 = add i32 %28, -1
  store volatile i32 %sub.i.i.i72, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit73, %if.then22, %rcu_read_unlock.exit61.cleanup_crit_edge, %if.then.i50, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %anon_vma.1, %rcu_read_unlock.exit73 ], [ null, %if.then22 ], [ %7, %rcu_read_unlock.exit61.cleanup_crit_edge ], [ null, %rcu_read_unlock.exit.cleanup_crit_edge ], [ null, %if.then.i50 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__put_anon_vma(ptr noundef %anon_vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %anon_vma, align 4
  %refcount.i = getelementptr inbounds %struct.anon_vma, ptr %anon_vma, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body7.i, label %do.body3.i, !prof !86

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

do.body7.i:                                       ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 126) #9
  %4 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %anon_vma, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %5, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rwsem.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %rwsem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %rwsem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, 0
  br i1 %cmp.i.not.i, label %do.body7.i.anon_vma_free.exit_crit_edge, label %if.then13.i

do.body7.i.anon_vma_free.exit_crit_edge:          ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %anon_vma_free.exit

if.then13.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %anon_vma, align 4
  %rwsem.i.i = getelementptr inbounds %struct.anon_vma, ptr %9, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i.i) #9
  %10 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %anon_vma, align 4
  %rwsem.i19.i = getelementptr inbounds %struct.anon_vma, ptr %11, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i19.i) #9
  br label %anon_vma_free.exit

anon_vma_free.exit:                               ; preds = %if.then13.i, %do.body7.i.anon_vma_free.exit_crit_edge
  %12 = load ptr, ptr @anon_vma_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef %anon_vma) #9
  %cmp.not = icmp eq ptr %1, %anon_vma
  br i1 %cmp.not, label %anon_vma_free.exit.if.end_crit_edge, label %land.lhs.true

anon_vma_free.exit.if.end_crit_edge:              ; preds = %anon_vma_free.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %anon_vma_free.exit
  %refcount = getelementptr inbounds %struct.anon_vma, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !88
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call.i.i.i7 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %14 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i8 = icmp eq i32 %15, 0
  br i1 %tobool.not.i8, label %do.body7.i13, label %do.body3.i9, !prof !86

do.body3.i9:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !97
  unreachable

do.body7.i13:                                     ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 126) #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %rwsem.i10 = getelementptr inbounds %struct.anon_vma, ptr %17, i32 0, i32 1
  %call.i.i.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rwsem.i10, i32 noundef 4) #9
  %18 = ptrtoint ptr %rwsem.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %rwsem.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.not.i12 = icmp eq i32 %19, 0
  br i1 %cmp.i.not.i12, label %do.body7.i13.anon_vma_free.exit17_crit_edge, label %if.then13.i16

do.body7.i13.anon_vma_free.exit17_crit_edge:      ; preds = %do.body7.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %anon_vma_free.exit17

if.then13.i16:                                    ; preds = %do.body7.i13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %rwsem.i.i14 = getelementptr inbounds %struct.anon_vma, ptr %21, i32 0, i32 1
  tail call void @down_write(ptr noundef %rwsem.i.i14) #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %rwsem.i19.i15 = getelementptr inbounds %struct.anon_vma, ptr %23, i32 0, i32 1
  tail call void @up_write(ptr noundef %rwsem.i19.i15) #9
  br label %anon_vma_free.exit17

anon_vma_free.exit17:                             ; preds = %if.then13.i16, %do.body7.i13.anon_vma_free.exit17_crit_edge
  %24 = load ptr, ptr @anon_vma_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %anon_vma_free.exit17, %land.lhs.true.if.end_crit_edge, %anon_vma_free.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_unlock_anon_vma_read(ptr nocapture noundef readonly %anon_vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %anon_vma, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %1, i32 0, i32 1
  tail call void @up_read(ptr noundef %rwsem.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @page_address_in_vma(ptr noundef %page, ptr nocapture noundef readonly %vma) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %entry
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
  br i1 %cmp.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %PageAnon.exit
  %call1 = tail call ptr @page_anon_vma(ptr noundef %page) #9
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %8 = ptrtoint ptr %anon_vma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %anon_vma, align 4
  %tobool.not = icmp eq ptr %9, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %if.then.return_crit_edge, label %lor.lhs.false3

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false3:                                   ; preds = %if.then
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call1, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %lor.lhs.false3.if.end16_crit_edge, label %lor.lhs.false3.return_crit_edge

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false3.if.end16_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.else:                                          ; preds = %PageAnon.exit
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %14 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vm_file, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.else.return_crit_edge, label %if.else9

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else9:                                         ; preds = %if.else
  %f_mapping = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_mapping, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !86

if.then.i:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %19, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %20, %if.end.i ]
  %21 = inttoptr i32 %retval.0.i to ptr
  %mapping = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapping, align 4
  %cmp12.not = icmp eq ptr %17, %23
  br i1 %cmp12.not, label %_compound_head.exit.if.end16_crit_edge, label %_compound_head.exit.return_crit_edge

_compound_head.exit.return_crit_edge:             ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

_compound_head.exit.if.end16_crit_edge:           ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %_compound_head.exit.if.end16_crit_edge, %lor.lhs.false3.if.end16_crit_edge
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %0, align 4
  %and.i2.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %25, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %26, %if.end.i.i.i ]
  %27 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mapping.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %and.i.i.i = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i27, label %do.end7.i, !prof !90

if.then.i27:                                      ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 441, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

do.end7.i:                                        ; preds = %PageKsm.exit.i
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index.i.i.i, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %33 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not.i = icmp ult i32 %32, %34
  br i1 %cmp.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end7.i
  %35 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vma, align 4
  %sub.i28 = sub i32 %32, %34
  %shl.i = shl i32 %sub.i28, 12
  %add.i = add i32 %36, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %36)
  %cmp12.i = icmp ult i32 %add.i, %36
  br i1 %cmp12.i, label %if.then9.i.if.then14.i_crit_edge, label %lor.lhs.false.i

if.then9.i.if.then14.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %if.then9.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %37 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %38)
  %cmp13.not.i = icmp ult i32 %add.i, %38
  br i1 %cmp13.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.if.then14.i_crit_edge

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then14.i:                                      ; preds = %lor.lhs.false.i.if.then14.i_crit_edge, %if.then9.i.if.then14.i_crit_edge
  br label %return

if.else.i:                                        ; preds = %do.end7.i
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i.i = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i29, label %PageHead.exit.i, !prof !90

if.then.i.i29:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i:                                  ; preds = %if.else.i
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %page, align 4
  %43 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool17.not.i = icmp eq i32 %43, 0
  br i1 %tobool17.not.i, label %PageHead.exit.i.return_crit_edge, label %land.lhs.true.i

PageHead.exit.i.return_crit_edge:                 ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.i:                                  ; preds = %PageHead.exit.i
  %44 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i.i.i = icmp eq i32 %45, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i42.i, label %PageHead.exit.i.i, !prof !90

if.then.i.i42.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i.i:                                ; preds = %land.lhs.true.i
  %46 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %page, align 4
  %48 = and i32 %47, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i30 = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i30, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i31

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compound_nr.exit.i

if.end.i.i31:                                     ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %49 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i31, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i32 = phi i32 [ %50, %if.end.i.i31 ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %add19.i = add i32 %32, -1
  %sub20.i = add i32 %add19.i, %retval.0.i.i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20.i, i32 %34)
  %cmp22.not.i = icmp ult i32 %sub20.i, %34
  br i1 %cmp22.not.i, label %compound_nr.exit.i.return_crit_edge, label %if.then23.i

compound_nr.exit.i.return_crit_edge:              ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then23.i:                                      ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vma, align 4
  br label %return

return:                                           ; preds = %if.then23.i, %compound_nr.exit.i.return_crit_edge, %PageHead.exit.i.return_crit_edge, %if.then14.i, %lor.lhs.false.i.return_crit_edge, %_compound_head.exit.return_crit_edge, %if.else.return_crit_edge, %lor.lhs.false3.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ -14, %if.else.return_crit_edge ], [ -14, %_compound_head.exit.return_crit_edge ], [ -14, %if.then14.i ], [ %add.i, %lor.lhs.false.i.return_crit_edge ], [ %52, %if.then23.i ], [ -14, %compound_nr.exit.i.return_crit_edge ], [ -14, %PageHead.exit.i.return_crit_edge ], [ -14, %if.then.return_crit_edge ], [ -14, %lor.lhs.false3.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mm_find_pmd(ptr nocapture noundef readonly %mm, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pgd1 = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 8
  %0 = ptrtoint ptr %pgd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd1, align 4
  %shr.i = lshr i32 %address, 21
  %add.ptr.i = getelementptr [2 x i32], ptr %1, i32 %shr.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool16.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool16.not, ptr null, ptr %add.ptr.i
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @page_referenced(ptr noundef %page, i32 noundef %is_locked, ptr noundef %memcg, ptr nocapture noundef writeonly %vm_flags) local_unnamed_addr #0 align 64 {
entry:
  %pra = alloca %struct.page_referenced_arg, align 4
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pra) #9
  %0 = getelementptr inbounds %struct.page_referenced_arg, ptr %pra, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_referenced_arg, ptr %pra, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_referenced_arg, ptr %pra, i32 0, i32 3
  %3 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %page, align 4
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %PageCompound.exit.i.i, label %entry.if.then.i.i47_crit_edge

entry.if.then.i.i47_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i47

PageCompound.exit.i.i:                            ; preds = %entry
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i46, label %if.end.i.i48, label %PageCompound.exit.i.i.if.then.i.i47_crit_edge, !prof !86

PageCompound.exit.i.i.if.then.i.i47_crit_edge:    ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i47

if.then.i.i47:                                    ; preds = %PageCompound.exit.i.i.if.then.i.i47_crit_edge, %entry.if.then.i.i47_crit_edge
  %call3.i.i = tail call i32 @__page_mapcount(ptr noundef %page) #9
  br label %total_mapcount.exit

if.end.i.i48:                                     ; preds = %PageCompound.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %9, i32 noundef 4) #9
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %add.i.i = add i32 %11, 1
  br label %total_mapcount.exit

total_mapcount.exit:                              ; preds = %if.end.i.i48, %if.then.i.i47
  %retval.0.i.i49 = phi i32 [ %call3.i.i, %if.then.i.i47 ], [ %add.i.i, %if.end.i.i48 ]
  %12 = ptrtoint ptr %pra to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i49, ptr %pra, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %0, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %1, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %memcg, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #9
  %16 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %17 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  %18 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 3
  %19 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %20 = ptrtoint ptr %rwc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pra, ptr %rwc, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @page_referenced_one, ptr %16, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %17, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @page_lock_anon_vma_read, ptr %18, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %19, align 4
  %25 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i49)
  %tobool.not = icmp eq i32 %retval.0.i.i49, 0
  br i1 %tobool.not, label %total_mapcount.exit.cleanup_crit_edge, label %if.end

total_mapcount.exit.cleanup_crit_edge:            ; preds = %total_mapcount.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %total_mapcount.exit
  %call4 = call ptr @page_rmapping(ptr noundef %page) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_locked)
  %tobool8.not = icmp eq i32 %is_locked, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end7
  %26 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i2.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %28, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mapping.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i.not, label %PageAnon.exit.if.then11_crit_edge, label %lor.lhs.false

PageAnon.exit.if.then11_crit_edge:                ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false:                                    ; preds = %PageAnon.exit
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %26, align 4
  %and.i2.i37 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i37)
  %tobool.not.i.i38 = icmp eq i32 %and.i2.i37, 0
  br i1 %tobool.not.i.i38, label %if.end.i.i41, label %if.then.i.i40, !prof !86

if.then.i.i40:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i39 = add i32 %35, -1
  br label %PageKsm.exit

if.end.i.i41:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i41, %if.then.i.i40
  %retval.0.i.i42 = phi i32 [ %sub.i.i39, %if.then.i.i40 ], [ %36, %if.end.i.i41 ]
  %37 = inttoptr i32 %retval.0.i.i42 to ptr
  %mapping.i.i43 = getelementptr inbounds %struct.anon.63, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %mapping.i.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mapping.i.i43, align 4
  %40 = ptrtoint ptr %39 to i32
  %and.i.i44 = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i44)
  %cmp.i.i45 = icmp eq i32 %and.i.i44, 3
  br i1 %cmp.i.i45, label %PageKsm.exit.if.then11_crit_edge, label %PageKsm.exit.if.end16_crit_edge

PageKsm.exit.if.end16_crit_edge:                  ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

PageKsm.exit.if.then11_crit_edge:                 ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %PageKsm.exit.if.then11_crit_edge, %PageAnon.exit.if.then11_crit_edge
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %26, align 4
  %and.i.i50 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i50)
  %tobool.not.i.i51 = icmp eq i32 %and.i.i50, 0
  br i1 %tobool.not.i.i51, label %if.end.i.i54, label %if.then.i.i53, !prof !86

if.then.i.i53:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i52 = add i32 %42, -1
  br label %_compound_head.exit.i

if.end.i.i54:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i54, %if.then.i.i53
  %retval.0.i.i55 = phi i32 [ %sub.i.i52, %if.then.i.i53 ], [ %43, %if.end.i.i54 ]
  %44 = inttoptr i32 %retval.0.i.i55 to ptr
  %45 = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i.i.i56 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i56)
  %tobool.not.i.i.i57 = icmp eq i32 %and.i.i.i.i56, 0
  br i1 %tobool.not.i.i.i57, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %44, ptr noundef nonnull @.str.15) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i58 = call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #9
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %44, align 4
  %and.i.i4.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.cleanup_crit_edge

folio_flags.exit.i.i.cleanup_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #9
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #9, !srcloc !102
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !103
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  %51 = xor i32 %and1.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool13.not = icmp eq i32 %51, 0
  br i1 %tobool13.not, label %trylock_page.exit.cleanup_crit_edge, label %trylock_page.exit.if.end16_crit_edge

trylock_page.exit.if.end16_crit_edge:             ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

trylock_page.exit.cleanup_crit_edge:              ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %trylock_page.exit.if.end16_crit_edge, %PageKsm.exit.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  %we_locked.0 = phi i32 [ 0, %if.end7.if.end16_crit_edge ], [ %51, %trylock_page.exit.if.end16_crit_edge ], [ 0, %PageKsm.exit.if.end16_crit_edge ]
  %tobool17.not = icmp eq ptr %memcg, null
  br i1 %tobool17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @invalid_page_referenced_vma, ptr %19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %53 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i2.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i59 = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i59, label %if.end.i.i.i, label %if.then.i.i.i60, !prof !86

if.then.i.i.i60:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %55, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i60
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i60 ], [ %56, %if.end.i.i.i ]
  %57 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mapping.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  %and.i.i.i = and i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i, label %if.else.i, !prof !90

if.then.i:                                        ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rmap_walk_ksm(ptr noundef %page, ptr noundef nonnull %rwc) #9
  br label %rmap_walk.exit

if.else.i:                                        ; preds = %PageKsm.exit.i
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %53, align 4
  %and.i2.i12.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i12.i)
  %tobool.not.i.i13.i = icmp eq i32 %and.i2.i12.i, 0
  br i1 %tobool.not.i.i13.i, label %if.end.i.i16.i, label %if.then.i.i15.i, !prof !86

if.then.i.i15.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i14.i = add i32 %62, -1
  br label %PageAnon.exit.i

if.end.i.i16.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i16.i, %if.then.i.i15.i
  %retval.0.i.i17.i = phi i32 [ %sub.i.i14.i, %if.then.i.i15.i ], [ %63, %if.end.i.i16.i ]
  %64 = inttoptr i32 %retval.0.i.i17.i to ptr
  %mapping.i.i18.i = getelementptr inbounds %struct.anon.63, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %mapping.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mapping.i.i18.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %and.i.i19.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %cmp.i.i20.not.i = icmp eq i32 %and.i.i19.i, 0
  br i1 %cmp.i.i20.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %rmap_walk.exit

if.else4.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %rmap_walk.exit

rmap_walk.exit:                                   ; preds = %if.else4.i, %if.then3.i, %if.then.i
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %1, align 4
  %70 = ptrtoint ptr %vm_flags to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %vm_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %we_locked.0)
  %tobool22.not = icmp eq i32 %we_locked.0, 0
  br i1 %tobool22.not, label %rmap_walk.exit.if.end24_crit_edge, label %if.then23

rmap_walk.exit.if.end24_crit_edge:                ; preds = %rmap_walk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %rmap_walk.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @unlock_page(ptr noundef %page) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %rmap_walk.exit.if.end24_crit_edge
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %trylock_page.exit.cleanup_crit_edge, %folio_flags.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %total_mapcount.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %72, %if.end24 ], [ 0, %total_mapcount.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %trylock_page.exit.cleanup_crit_edge ], [ 1, %folio_flags.exit.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pra) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @page_referenced_one(ptr noundef %page, ptr noundef %vma, i32 noundef %address, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #9
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %5 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %page, ptr %pvmw, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vma, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %address, ptr %1, align 4
  %8 = call ptr @memset(ptr %2, i32 0, i32 16)
  %call121 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call121, label %while.body.lr.ph, label %entry.if.end68_crit_edge

entry.if.end68_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

while.body.lr.ph:                                 ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end65.while.body_crit_edge, %while.body.lr.ph
  %referenced.0122 = phi i32 [ 0, %while.body.lr.ph ], [ %referenced.1, %if.end65.while.body_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %11 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags, align 4
  %and = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br i1 %tobool7.not, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef nonnull %14) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %15 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %20, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %21 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then.if.end.i_crit_edge
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %if.end.i.page_vma_mapped_walk_done.exit_crit_edge, label %if.then6.i

if.end.i.page_vma_mapped_walk_done.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %page_vma_mapped_walk_done.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %26) #9
  br label %page_vma_mapped_walk_done.exit

page_vma_mapped_walk_done.exit:                   ; preds = %if.then6.i, %if.end.i.page_vma_mapped_walk_done.exit_crit_edge
  %vm_flags5 = getelementptr inbounds %struct.page_referenced_arg, ptr %arg, i32 0, i32 2
  %27 = ptrtoint ptr %vm_flags5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_flags5, align 4
  %or = or i32 %28, 8192
  store i32 %or, ptr %vm_flags5, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  br i1 %tobool7.not, label %land.end, label %if.then8

if.then8:                                         ; preds = %if.end
  %call10 = call i32 @ptep_clear_flush_young(ptr noundef %vma, i32 noundef %10, ptr noundef nonnull %14) #9
  %29 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vm_mm, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon, ptr %30, i32 0, i32 49
  %31 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %32, null
  br i1 %tobool.i.not.i, label %if.then8.mmu_notifier_clear_flush_young.exit_crit_edge, label %if.then.i

if.then8.mmu_notifier_clear_flush_young.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmu_notifier_clear_flush_young.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %10, 4096
  %call1.i = call i32 @__mmu_notifier_clear_flush_young(ptr noundef %30, i32 noundef %10, i32 noundef %add) #9
  br label %mmu_notifier_clear_flush_young.exit

mmu_notifier_clear_flush_young.exit:              ; preds = %if.then.i, %if.then8.mmu_notifier_clear_flush_young.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then.i ], [ 0, %if.then8.mmu_notifier_clear_flush_young.exit_crit_edge ]
  %or12 = or i32 %retval.0.i, %call10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12)
  %tobool13.not = icmp eq i32 %or12, 0
  br i1 %tobool13.not, label %mmu_notifier_clear_flush_young.exit.if.end65_crit_edge, label %if.then14

mmu_notifier_clear_flush_young.exit.if.end65_crit_edge: ; preds = %mmu_notifier_clear_flush_young.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then14:                                        ; preds = %mmu_notifier_clear_flush_young.exit
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vm_flags, align 4
  %and16 = lshr i32 %34, 15
  %and16.lobit = and i32 %and16, 1
  %35 = xor i32 %and16.lobit, 1
  %spec.select = add i32 %35, %referenced.0122
  br label %if.end65

land.end:                                         ; preds = %if.end
  %.b107 = load i1, ptr @page_referenced_one.__already_done, align 1
  br i1 %.b107, label %land.end.if.end65_crit_edge, label %if.then34, !prof !86

land.end.if.end65_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then34:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @page_referenced_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 841, i32 noundef 9, ptr noundef null) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then34, %land.end.if.end65_crit_edge, %if.then14, %mmu_notifier_clear_flush_young.exit.if.end65_crit_edge
  %referenced.1 = phi i32 [ %referenced.0122, %mmu_notifier_clear_flush_young.exit.if.end65_crit_edge ], [ %spec.select, %if.then14 ], [ %referenced.0122, %if.then34 ], [ %referenced.0122, %land.end.if.end65_crit_edge ]
  %36 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arg, align 4
  %dec = add i32 %37, -1
  store i32 %dec, ptr %arg, align 4
  %call = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call, label %if.end65.while.body_crit_edge, label %while.end

if.end65.while.body_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %referenced.1)
  %tobool66.not = icmp eq i32 %referenced.1, 0
  br i1 %tobool66.not, label %while.end.if.end68_crit_edge, label %if.then67

while.end.if.end68_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then67:                                        ; preds = %while.end
  %38 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %40, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %41, %if.end.i.i ]
  %42 = inttoptr i32 %retval.0.i.i to ptr
  %call.i.i = call ptr @lookup_page_ext(ptr noundef %42) #9
  %tobool.not.i1.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i1.i, label %_compound_head.exit.i.if.end68_crit_edge, label %if.end.i2.i, !prof !90

_compound_head.exit.i.if.end68_crit_edge:         ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end.i2.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 3, ptr noundef nonnull %call.i.i) #9
  br label %if.end68

if.end68:                                         ; preds = %if.end.i2.i, %_compound_head.exit.i.if.end68_crit_edge, %while.end.if.end68_crit_edge, %entry.if.end68_crit_edge
  %referenced.0.lcssa125 = phi i32 [ %referenced.1, %if.end.i2.i ], [ %referenced.1, %_compound_head.exit.i.if.end68_crit_edge ], [ 0, %while.end.if.end68_crit_edge ], [ 0, %entry.if.end68_crit_edge ]
  %43 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i109 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %and.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.end.i.i113, label %if.then.i.i112, !prof !86

if.then.i.i112:                                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i111 = add i32 %45, -1
  br label %_compound_head.exit.i116

if.end.i.i113:                                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i116

_compound_head.exit.i116:                         ; preds = %if.end.i.i113, %if.then.i.i112
  %retval.0.i.i114 = phi i32 [ %sub.i.i111, %if.then.i.i112 ], [ %46, %if.end.i.i113 ]
  %47 = inttoptr i32 %retval.0.i.i114 to ptr
  %call.i.i115 = call ptr @lookup_page_ext(ptr noundef %47) #9
  %tobool.not.i2.i = icmp eq ptr %call.i.i115, null
  br i1 %tobool.not.i2.i, label %_compound_head.exit.i116.test_and_clear_page_young.exit.thread_crit_edge, label %test_and_clear_page_young.exit, !prof !90

_compound_head.exit.i116.test_and_clear_page_young.exit.thread_crit_edge: ; preds = %_compound_head.exit.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_and_clear_page_young.exit.thread

test_and_clear_page_young.exit:                   ; preds = %_compound_head.exit.i116
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i = call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef nonnull %call.i.i115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.i.i.not = icmp ne i32 %call4.i.i, 0
  %inc71 = zext i1 %tobool5.i.i.not to i32
  %spec.select119 = add i32 %referenced.0.lcssa125, %inc71
  br label %test_and_clear_page_young.exit.thread

test_and_clear_page_young.exit.thread:            ; preds = %test_and_clear_page_young.exit, %_compound_head.exit.i116.test_and_clear_page_young.exit.thread_crit_edge
  %48 = phi i32 [ %referenced.0.lcssa125, %_compound_head.exit.i116.test_and_clear_page_young.exit.thread_crit_edge ], [ %spec.select119, %test_and_clear_page_young.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool73.not = icmp eq i32 %48, 0
  br i1 %tobool73.not, label %test_and_clear_page_young.exit.thread.if.end80_crit_edge, label %if.then74

test_and_clear_page_young.exit.thread.if.end80_crit_edge: ; preds = %test_and_clear_page_young.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then74:                                        ; preds = %test_and_clear_page_young.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  %referenced75 = getelementptr inbounds %struct.page_referenced_arg, ptr %arg, i32 0, i32 1
  %49 = ptrtoint ptr %referenced75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %referenced75, align 4
  %inc76 = add i32 %50, 1
  store i32 %inc76, ptr %referenced75, align 4
  %vm_flags77 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %51 = ptrtoint ptr %vm_flags77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_flags77, align 4
  %vm_flags78 = getelementptr inbounds %struct.page_referenced_arg, ptr %arg, i32 0, i32 2
  %53 = ptrtoint ptr %vm_flags78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vm_flags78, align 4
  %or79 = or i32 %54, %52
  store i32 %or79, ptr %vm_flags78, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %test_and_clear_page_young.exit.thread.if.end80_crit_edge
  %55 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool82.not = icmp ne i32 %56, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %page_vma_mapped_walk_done.exit
  %retval.0 = phi i1 [ false, %page_vma_mapped_walk_done.exit ], [ %tobool82.not, %if.end80 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_rmapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @invalid_page_referenced_vma(ptr nocapture noundef readonly %vma, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %memcg1 = getelementptr inbounds %struct.page_referenced_arg, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %memcg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memcg1, align 4
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %2 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_mm, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %owner.i = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 46
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %owner.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @mm_match_cgroup.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mm_match_cgroup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 864, ptr noundef nonnull @.str.18) #9
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %call9.i = tail call ptr @mem_cgroup_from_task(ptr noundef %9) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %do.end7.i.if.end13.i_crit_edge, label %if.then11.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end7.i
  %cmp.i.i = icmp eq ptr %call9.i, %1
  br i1 %cmp.i.i, label %if.then11.i.if.end13.i_crit_edge, label %if.end.i.i

if.then11.i.if.end13.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end.i.i:                                       ; preds = %if.then11.i
  %10 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call9.i, align 128
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %root.i.i.i = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root.i.i.i, align 4
  %root1.i.i.i = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 19
  %16 = ptrtoint ptr %root1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root1.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %15, %17
  br i1 %cmp.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.end.i.i.if.end13.i_crit_edge

if.end.i.i.if.end13.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  %level.i.i.i = getelementptr inbounds %struct.cgroup, ptr %11, i32 0, i32 2
  %18 = ptrtoint ptr %level.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level.i.i.i, align 4
  %level2.i.i.i = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %level2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp3.i.i.i = icmp slt i32 %19, %21
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.if.end13.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.if.end13.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr %struct.cgroup, ptr %11, i32 0, i32 37, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i.i.i, align 8
  %kn.i.i.i.i = getelementptr inbounds %struct.cgroup, ptr %13, i32 0, i32 11
  %24 = ptrtoint ptr %kn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %kn.i.i.i.i, align 8
  %id.i.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %id.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %27)
  %cmp5.i.i.i = icmp ne i64 %23, %27
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end.i.i.i, %lor.lhs.false.i.i.i.if.end13.i_crit_edge, %if.end.i.i.if.end13.i_crit_edge, %if.then11.i.if.end13.i_crit_edge, %do.end7.i.if.end13.i_crit_edge
  %match.0.off0.i = phi i1 [ true, %do.end7.i.if.end13.i_crit_edge ], [ false, %if.then11.i.if.end13.i_crit_edge ], [ %cmp5.i.i.i, %if.end.i.i.i ], [ true, %lor.lhs.false.i.i.i.if.end13.i_crit_edge ], [ true, %if.end.i.i.if.end13.i_crit_edge ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17.i, label %if.end13.i.mm_match_cgroup.exit_crit_edge, label %land.lhs.true.i20.i

if.end13.i.mm_match_cgroup.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mm_match_cgroup.exit

land.lhs.true.i20.i:                              ; preds = %if.end13.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.mm_match_cgroup.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.mm_match_cgroup.exit_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mm_match_cgroup.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.mm_match_cgroup.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.mm_match_cgroup.exit_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mm_match_cgroup.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #9
  br label %mm_match_cgroup.exit

mm_match_cgroup.exit:                             ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.mm_match_cgroup.exit_crit_edge, %land.lhs.true.i20.i.mm_match_cgroup.exit_crit_edge, %if.end13.i.mm_match_cgroup.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %28 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i24.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i1 %match.0.off0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmap_walk(ptr noundef %page, ptr noundef %rwc) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

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
  br i1 %cmp.i.i, label %if.then, label %if.else, !prof !90

if.then:                                          ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rmap_walk_ksm(ptr noundef %page, ptr noundef %rwc) #9
  br label %if.end5

if.else:                                          ; preds = %PageKsm.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i2.i12 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i12)
  %tobool.not.i.i13 = icmp eq i32 %and.i2.i12, 0
  br i1 %tobool.not.i.i13, label %if.end.i.i16, label %if.then.i.i15, !prof !86

if.then.i.i15:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i14 = add i32 %9, -1
  br label %PageAnon.exit

if.end.i.i16:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i16, %if.then.i.i15
  %retval.0.i.i17 = phi i32 [ %sub.i.i14, %if.then.i.i15 ], [ %10, %if.end.i.i16 ]
  %11 = inttoptr i32 %retval.0.i.i17 to ptr
  %mapping.i.i18 = getelementptr inbounds %struct.anon.63, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mapping.i.i18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping.i.i18, align 4
  %14 = ptrtoint ptr %13 to i32
  %and.i.i19 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %cmp.i.i20.not = icmp eq i32 %and.i.i19, 0
  br i1 %cmp.i.i20.not, label %if.else4, label %if.then3

if.then3:                                         ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef %rwc, i1 noundef zeroext false)
  br label %if.end5

if.else4:                                         ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef %rwc, i1 noundef zeroext false)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then3, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @folio_mkclean(ptr noundef %folio) #0 align 64 {
entry:
  %cleaned = alloca i32, align 4
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cleaned) #9
  %0 = ptrtoint ptr %cleaned to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cleaned, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #9
  %1 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %2 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %5 = ptrtoint ptr %rwc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cleaned, ptr %rwc, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @page_mkclean_one, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @invalid_mkclean_vma, ptr %4, align 4
  %10 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_locked.exit, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.15) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

folio_test_locked.exit:                           ; preds = %entry
  %13 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %folio, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body3, label %do.end8, !prof !90

do.body3:                                         ; preds = %folio_test_locked.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1023, 0\0A.popsection", ""() #9, !srcloc !106
  unreachable

do.end8:                                          ; preds = %folio_test_locked.exit
  %call9 = call zeroext i1 @folio_mapped(ptr noundef %folio) #9
  br i1 %call9, label %if.end11, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %call12 = call ptr @folio_mapping(ptr noundef %folio) #9
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %10, align 4
  %and.i2.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %16, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %folio to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %17, %if.end.i.i.i ]
  %18 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping.i.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %and.i.i.i21 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i21)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i21, 3
  br i1 %cmp.i.i.i, label %if.then.i, label %if.else.i, !prof !90

if.then.i:                                        ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rmap_walk_ksm(ptr noundef %folio, ptr noundef nonnull %rwc) #9
  br label %rmap_walk.exit

if.else.i:                                        ; preds = %PageKsm.exit.i
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %10, align 4
  %and.i2.i12.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i12.i)
  %tobool.not.i.i13.i = icmp eq i32 %and.i2.i12.i, 0
  br i1 %tobool.not.i.i13.i, label %if.end.i.i16.i, label %if.then.i.i15.i, !prof !86

if.then.i.i15.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i14.i = add i32 %23, -1
  br label %PageAnon.exit.i

if.end.i.i16.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %folio to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i16.i, %if.then.i.i15.i
  %retval.0.i.i17.i = phi i32 [ %sub.i.i14.i, %if.then.i.i15.i ], [ %24, %if.end.i.i16.i ]
  %25 = inttoptr i32 %retval.0.i.i17.i to ptr
  %mapping.i.i18.i = getelementptr inbounds %struct.anon.63, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %mapping.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mapping.i.i18.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %and.i.i19.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %cmp.i.i20.not.i = icmp eq i32 %and.i.i19.i, 0
  br i1 %cmp.i.i20.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_anon(ptr noundef %folio, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %rmap_walk.exit

if.else4.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_file(ptr noundef %folio, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %rmap_walk.exit

rmap_walk.exit:                                   ; preds = %if.else4.i, %if.then3.i, %if.then.i
  %29 = ptrtoint ptr %cleaned to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cleaned, align 4
  br label %cleanup

cleanup:                                          ; preds = %rmap_walk.exit, %if.end11.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %rmap_walk.exit ], [ 0, %do.end8.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cleaned) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @page_mkclean_one(ptr noundef %page, ptr noundef %vma, i32 noundef %address, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  %range = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #9
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %5 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %6 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %page, ptr %pvmw, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vma, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %address, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #9
  %13 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %14 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %15 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %16 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %17 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %18 = getelementptr inbounds i8, ptr %range, i32 24
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4
  %20 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vm_mm, align 4
  %22 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i2.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %24, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %25, %if.end.i.i.i ]
  %26 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mapping.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i.i.i = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end7.i, !prof !90

if.then.i:                                        ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 470, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

do.end7.i:                                        ; preds = %PageKsm.exit.i
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i.i, align 4
  %32 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i.i.i = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i25.i, label %PageHead.exit.i.i, !prof !90

if.then.i.i25.i:                                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i.i:                                ; preds = %do.end7.i
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  %36 = and i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compound_nr.exit.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %37 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %38, %if.end.i.i ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %31
  %39 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vma, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %41 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vm_pgoff.i, align 4
  %sub.i = sub i32 %add.i, %42
  %shl.i = shl i32 %sub.i, 12
  %add10.i = add i32 %shl.i, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %40)
  %cmp.i = icmp ult i32 %add10.i, %40
  br i1 %cmp.i, label %compound_nr.exit.i.if.then13.i_crit_edge, label %lor.lhs.false.i

compound_nr.exit.i.if.then13.i_crit_edge:         ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %compound_nr.exit.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %43 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %44)
  %cmp12.i = icmp ugt i32 %add10.i, %44
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.vma_address_end.exit_crit_edge

lor.lhs.false.i.vma_address_end.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vma_address_end.exit

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %compound_nr.exit.i.if.then13.i_crit_edge
  %vm_end14.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %45 = ptrtoint ptr %vm_end14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vm_end14.i, align 4
  br label %vma_address_end.exit

vma_address_end.exit:                             ; preds = %if.then13.i, %lor.lhs.false.i.vma_address_end.exit_crit_edge
  %address.0.i = phi i32 [ %46, %if.then13.i ], [ %add10.i, %lor.lhs.false.i.vma_address_end.exit_crit_edge ]
  %47 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %vma, ptr %range, align 4
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %17, align 4
  %49 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %21, ptr %13, align 4
  %50 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %address, ptr %14, align 4
  %51 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %address.0.i, ptr %15, align 4
  %52 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %16, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range)
  %call494 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call494, label %vma_address_end.exit.while.body_crit_edge, label %vma_address_end.exit.while.end_crit_edge

vma_address_end.exit.while.end_crit_edge:         ; preds = %vma_address_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

vma_address_end.exit.while.body_crit_edge:        ; preds = %vma_address_end.exit
  br label %while.body

while.body:                                       ; preds = %cleanup63.while.body_crit_edge, %vma_address_end.exit.while.body_crit_edge
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %1, align 4
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %56, null
  br i1 %tobool.not, label %land.end, label %if.then

if.then:                                          ; preds = %while.body
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %59 = and i32 %58, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %59)
  %.not = icmp eq i32 %59, 128
  br i1 %.not, label %if.then.cleanup63_crit_edge, label %if.then61

if.then.cleanup63_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup63

land.end:                                         ; preds = %while.body
  %.b88 = load i1, ptr @page_mkclean_one.__already_done, align 1
  br i1 %.b88, label %land.end.cleanup63_crit_edge, label %if.then29, !prof !86

land.end.cleanup63_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup63

if.then29:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @page_mkclean_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 9, ptr noundef null) #9
  br label %cleanup63

if.then61:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %58, 12
  call void @flush_cache_page(ptr noundef %vma, i32 noundef %54, i32 noundef %shr) #9
  %call18 = call i32 @ptep_clear_flush(ptr noundef %vma, i32 noundef %54, ptr noundef nonnull %56) #9
  %or.i.i = and i32 %call18, -193
  %and.i.i = or i32 %or.i.i, 128
  %60 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vm_mm, align 4
  call void @set_pte_at(ptr noundef %61, i32 noundef %54, ptr noundef nonnull %56, i32 noundef %and.i.i) #9
  %62 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arg, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %arg, align 4
  br label %cleanup63

cleanup63:                                        ; preds = %if.then61, %if.then29, %land.end.cleanup63_crit_edge, %if.then.cleanup63_crit_edge
  %call4 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call4, label %cleanup63.while.body_crit_edge, label %cleanup63.while.end_crit_edge

cleanup63.while.end_crit_edge:                    ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup63.while.body_crit_edge:                   ; preds = %cleanup63
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup63.while.end_crit_edge, %vma_address_end.exit.while.end_crit_edge
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %16, align 4
  %and.i.i89 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %tobool.i.not.i = icmp eq i32 %and.i.i89, 0
  br i1 %tobool.i.not.i, label %while.end.if.end.i_crit_edge, label %do.body.i

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 482) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %while.end.if.end.i_crit_edge
  %66 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %13, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon, ptr %67, i32 0, i32 49
  %68 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i8.not.i = icmp eq ptr %69, null
  br i1 %tobool.i8.not.i, label %if.end.i.mmu_notifier_invalidate_range_end.exit_crit_edge, label %if.then4.i

if.end.i.mmu_notifier_invalidate_range_end.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmu_notifier_invalidate_range_end.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range, i1 noundef zeroext false) #9
  br label %mmu_notifier_invalidate_range_end.exit

mmu_notifier_invalidate_range_end.exit:           ; preds = %if.then4.i, %if.end.i.mmu_notifier_invalidate_range_end.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #9
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @invalid_mkclean_vma(ptr nocapture noundef readonly %vma, ptr nocapture noundef readnone %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_move_anon_rmap(ptr noundef %page, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %anon_vma1 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %0 = ptrtoint ptr %anon_vma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %anon_vma1, align 4
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i47, !prof !86

if.then.i47:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %4, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i47
  %retval.0.i = phi i32 [ %sub.i, %if.then.i47 ], [ %5, %if.end.i ]
  %6 = inttoptr i32 %retval.0.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %_compound_head.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !86

_compound_head.exit._compound_head.exit.i_crit_edge: ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %9, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %_compound_head.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %6, %_compound_head.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %10 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %.pre-phi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, -1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and.i16.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !90

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.then.i._compound_head.exit22.i_crit_edge, label %if.then.i19.i, !prof !86

if.then.i._compound_head.exit22.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit22.i

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %13, -1
  %.pre48 = inttoptr i32 %sub.i18.i to ptr
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.then.i19.i, %if.then.i._compound_head.exit22.i_crit_edge
  %.pre-phi49 = phi ptr [ %6, %if.then.i._compound_head.exit22.i_crit_edge ], [ %.pre48, %if.then.i19.i ]
  tail call void @dump_page(ptr noundef %.pre-phi49, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %do.end10.i.PageLocked.exit_crit_edge, label %if.then.i26.i, !prof !86

do.end10.i.PageLocked.exit_crit_edge:             ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageLocked.exit

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %13, -1
  %.pre50 = inttoptr i32 %sub.i25.i to ptr
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.then.i26.i, %do.end10.i.PageLocked.exit_crit_edge
  %.pre-phi51 = phi ptr [ %6, %do.end10.i.PageLocked.exit_crit_edge ], [ %.pre50, %if.then.i26.i ]
  %14 = ptrtoint ptr %.pre-phi51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %.pre-phi51, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body12, !prof !90

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1054, 0\0A.popsection", ""() #9, !srcloc !109
  unreachable

do.body12:                                        ; preds = %PageLocked.exit
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %if.then22, label %do.end31, !prof !90

if.then22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_vma(ptr noundef %vma) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1055, 0\0A.popsection", ""() #9, !srcloc !110
  unreachable

do.end31:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %1, i32 1
  %mapping = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %add.ptr, ptr %mapping, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_add_anon_rmap(ptr noundef %page, ptr nocapture noundef readonly %vma, i32 noundef %address, i1 noundef zeroext %compound) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %compound, i32 2, i32 0
  tail call void @do_page_add_anon_rmap(ptr noundef %page, ptr noundef %vma, i32 noundef %address, i32 noundef %cond)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_page_add_anon_rmap(ptr noundef %page, ptr nocapture noundef readonly %vma, i32 noundef %address, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

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
  br i1 %cmp.i.i, label %if.then, label %do.body, !prof !90

if.then:                                          ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_page_memcg(ptr noundef %page) #9
  br label %if.end20

do.body:                                          ; preds = %PageKsm.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i.i118 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.not.i.i119 = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.not.i.i119, label %if.end.i.i122, label %if.then.i.i121, !prof !86

if.then.i.i121:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i120 = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i122:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i122, %if.then.i.i121
  %retval.0.i.i123 = phi i32 [ %sub.i.i120, %if.then.i.i121 ], [ %10, %if.end.i.i122 ]
  %11 = inttoptr i32 %retval.0.i.i123 to ptr
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !90

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !86

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
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !86

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
  %tobool4.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not, label %if.then13, label %PageLocked.exit.if.end20_crit_edge, !prof !90

PageLocked.exit.if.end20_crit_edge:               ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then13:                                        ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1159, 0\0A.popsection", ""() #9, !srcloc !111
  unreachable

if.end20:                                         ; preds = %PageLocked.exit.if.end20_crit_edge, %if.then
  br i1 %tobool.not, label %if.else68, label %if.then22

if.then22:                                        ; preds = %if.end20
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %0, align 4
  %and.i.i124 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i124)
  %tobool.not.i.i125 = icmp eq i32 %and.i.i124, 0
  br i1 %tobool.not.i.i125, label %if.end.i.i128, label %if.then.i.i127, !prof !86

if.then.i.i127:                                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i126 = add i32 %23, -1
  br label %_compound_head.exit.i133

if.end.i.i128:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i133

_compound_head.exit.i133:                         ; preds = %if.end.i.i128, %if.then.i.i127
  %retval.0.i.i129 = phi i32 [ %sub.i.i126, %if.then.i.i127 ], [ %24, %if.end.i.i128 ]
  %25 = inttoptr i32 %retval.0.i.i129 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i130 = icmp eq i32 %27, -1
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %0, align 4
  %and.i16.i131 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i131)
  %tobool.not.i17.i132 = icmp eq i32 %and.i16.i131, 0
  br i1 %cmp.i.not.i130, label %if.then.i134, label %do.end10.i140, !prof !90

if.then.i134:                                     ; preds = %_compound_head.exit.i133
  br i1 %tobool.not.i17.i132, label %if.end.i20.i137, label %if.then.i19.i136, !prof !86

if.then.i19.i136:                                 ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i135 = add i32 %29, -1
  br label %_compound_head.exit22.i139

if.end.i20.i137:                                  ; preds = %if.then.i134
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i139

_compound_head.exit22.i139:                       ; preds = %if.end.i20.i137, %if.then.i19.i136
  %retval.0.i21.i138 = phi i32 [ %sub.i18.i135, %if.then.i19.i136 ], [ %30, %if.end.i20.i137 ]
  %31 = inttoptr i32 %retval.0.i21.i138 to ptr
  tail call void @dump_page(ptr noundef %31, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.end10.i140:                                    ; preds = %_compound_head.exit.i133
  br i1 %tobool.not.i17.i132, label %if.end.i27.i143, label %if.then.i26.i142, !prof !86

if.then.i26.i142:                                 ; preds = %do.end10.i140
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i141 = add i32 %29, -1
  br label %PageLocked.exit146

if.end.i27.i143:                                  ; preds = %do.end10.i140
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %page to i32
  br label %PageLocked.exit146

PageLocked.exit146:                               ; preds = %if.end.i27.i143, %if.then.i26.i142
  %retval.0.i28.i144 = phi i32 [ %sub.i25.i141, %if.then.i26.i142 ], [ %32, %if.end.i27.i143 ]
  %33 = inttoptr i32 %retval.0.i28.i144 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and1.i.i145 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i145)
  %tobool25.not = icmp eq i32 %and1.i.i145, 0
  br i1 %tobool25.not, label %if.then34, label %do.body44, !prof !90

if.then34:                                        ; preds = %PageLocked.exit146
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1163, 0\0A.popsection", ""() #9, !srcloc !112
  unreachable

do.body44:                                        ; preds = %PageLocked.exit146
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1164, 0\0A.popsection", ""() #9, !srcloc !113
  unreachable

if.else68:                                        ; preds = %if.end20
  %36 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %36, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %36, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #9, !srcloc !115
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i147 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i147, label %if.end78, label %if.else68.if.end79_crit_edge

if.else68.if.end79_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end78:                                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 17, i32 noundef 1) #9
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.else68.if.end79_crit_edge
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %0, align 4
  %and.i2.i148 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i148)
  %tobool.not.i.i149 = icmp eq i32 %and.i2.i148, 0
  br i1 %tobool.not.i.i149, label %if.end.i.i152, label %if.then.i.i151, !prof !86

if.then.i.i151:                                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i150 = add i32 %39, -1
  br label %PageKsm.exit158

if.end.i.i152:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %page to i32
  br label %PageKsm.exit158

PageKsm.exit158:                                  ; preds = %if.end.i.i152, %if.then.i.i151
  %retval.0.i.i153 = phi i32 [ %sub.i.i150, %if.then.i.i151 ], [ %40, %if.end.i.i152 ]
  %41 = inttoptr i32 %retval.0.i.i153 to ptr
  %mapping.i.i154 = getelementptr inbounds %struct.anon.63, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %mapping.i.i154 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mapping.i.i154, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i.i155 = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i155)
  %cmp.i.i156 = icmp eq i32 %and.i.i155, 3
  br i1 %cmp.i.i156, label %if.then87, label %if.end88, !prof !90

if.then87:                                        ; preds = %PageKsm.exit158
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page_memcg(ptr noundef %page) #9
  br label %cleanup

if.end88:                                         ; preds = %PageKsm.exit158
  br i1 %cmp.i.i147, label %if.then90, label %if.else92

if.then90:                                        ; preds = %if.end88
  %and91 = and i32 %flags, 1
  %anon_vma1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %45 = ptrtoint ptr %anon_vma1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %anon_vma1.i, align 4
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i159, !prof !90

do.body5.i:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

do.end10.i159:                                    ; preds = %if.then90
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %0, align 4
  %and.i2.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %do.end10.i159
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %48, -1
  br label %PageAnon.exit.i

if.end.i.i.i:                                     ; preds = %do.end10.i159
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %49, %if.end.i.i.i ]
  %50 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mapping.i.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  %and.i.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %if.end12.i, label %PageAnon.exit.i.cleanup_crit_edge

PageAnon.exit.i.cleanup_crit_edge:                ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool13.not.i = icmp eq i32 %and91, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.end12.i.if.end15.i_crit_edge

if.end12.i.if.end15.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %46, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end15.i_crit_edge
  %anon_vma.0.i = phi ptr [ %46, %if.end12.i.if.end15.i_crit_edge ], [ %55, %if.then14.i ]
  %add.ptr.i = getelementptr i8, ptr %anon_vma.0.i, i32 1
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %add.ptr.i, ptr %mapping.i, align 4
  %57 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vma, align 4
  %sub.i.i160 = sub i32 %address, %58
  %shr.i.i = lshr i32 %sub.i.i160, 12
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %59 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vm_pgoff.i.i, align 4
  %add.i.i = add i32 %shr.i.i, %60
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %61 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.i.i, ptr %index.i, align 4
  br label %cleanup

if.else92:                                        ; preds = %if.end88
  %call.i = tail call ptr @page_anon_vma(ptr noundef %page) #9
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  %anon_vma.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %64 = ptrtoint ptr %anon_vma.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %anon_vma.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %cmp.not.i = icmp eq ptr %63, %67
  br i1 %cmp.not.i, label %do.body7.i, label %if.then.i161, !prof !86

if.then.i161:                                     ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1122, 0\0A.popsection", ""() #9, !srcloc !118
  unreachable

do.body7.i:                                       ; preds = %if.else92
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %68 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index.i.i.i, align 4
  %70 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %vma, align 4
  %sub.i.i162 = sub i32 %address, %71
  %shr.i.i163 = lshr i32 %sub.i.i162, 12
  %vm_pgoff.i.i164 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %72 = ptrtoint ptr %vm_pgoff.i.i164 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vm_pgoff.i.i164, align 4
  %add.i.i165 = add i32 %shr.i.i163, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %add.i.i165)
  %cmp10.not.i = icmp eq i32 %69, %add.i.i165
  br i1 %cmp10.not.i, label %do.body7.i.cleanup_crit_edge, label %if.then17.i, !prof !86

do.body7.i.cleanup_crit_edge:                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1124, 0\0A.popsection", ""() #9, !srcloc !119
  unreachable

cleanup:                                          ; preds = %do.body7.i.cleanup_crit_edge, %if.end15.i, %PageAnon.exit.i.cleanup_crit_edge, %if.then87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_page_memcg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page_memcg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_add_new_anon_rmap(ptr noundef %page, ptr noundef %vma, i32 noundef %address, i1 noundef zeroext %compound) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %compound, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i77 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool.not.i78 = icmp eq i32 %and.i.i77, 0
  br i1 %tobool.not.i78, label %cond.true.cond.end_crit_edge, label %if.then.i79, !prof !86

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.then.i79:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #9, !srcloc !120
  unreachable

cond.end:                                         ; preds = %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %3 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %address)
  %cmp = icmp ugt i32 %4, %address
  br i1 %cmp, label %cond.end.if.then_crit_edge, label %lor.rhs, !prof !90

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.rhs:                                          ; preds = %cond.end
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %5 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %address)
  %cmp1.not = icmp ugt i32 %6, %address
  br i1 %cmp1.not, label %do.end9, label %lor.rhs.if.then_crit_edge, !prof !86

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %cond.end.if.then_crit_edge
  tail call void @dump_vma(ptr noundef %vma) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1213, 0\0A.popsection", ""() #9, !srcloc !121
  unreachable

do.end9:                                          ; preds = %lor.rhs
  %7 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !86

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.23) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #9, !srcloc !122
  unreachable

do.body7.i:                                       ; preds = %do.end9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %7, align 4
  %and.i31.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %7, align 4
  %and.i32.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !90

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !86

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %17, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %18, %if.end.i36.i ]
  %19 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #9, !srcloc !123
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !86

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %17, -1
  br label %__SetPageSwapBacked.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %page to i32
  br label %__SetPageSwapBacked.exit

__SetPageSwapBacked.exit:                         ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %20, %if.end.i43.i ]
  %21 = inttoptr i32 %retval.0.i44.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %or.i.i = or i32 %23, 524288
  store i32 %or.i.i, ptr %21, align 4
  br i1 %compound, label %do.body12, label %do.body38

do.body12:                                        ; preds = %__SetPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1216, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

do.body38:                                        ; preds = %__SetPageSwapBacked.exit
  %24 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef 4) #9
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %24, align 4
  tail call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 17, i32 noundef 1) #9
  %anon_vma1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 11
  %26 = ptrtoint ptr %anon_vma1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %anon_vma1.i, align 4
  %tobool.not.i80 = icmp eq ptr %27, null
  br i1 %tobool.not.i80, label %do.body5.i, label %do.end10.i, !prof !90

do.body5.i:                                       ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1078, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

do.end10.i:                                       ; preds = %do.body38
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %7, align 4
  %and.i2.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %29, -1
  br label %PageAnon.exit.i

if.end.i.i.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %30, %if.end.i.i.i ]
  %31 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapping.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %if.end12.i, label %PageAnon.exit.i.__page_set_anon_rmap.exit_crit_edge

PageAnon.exit.i.__page_set_anon_rmap.exit_crit_edge: ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__page_set_anon_rmap.exit

if.end12.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %27, i32 1
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %add.ptr.i, ptr %mapping.i, align 4
  %36 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vma, align 4
  %sub.i.i81 = sub i32 %address, %37
  %shr.i.i = lshr i32 %sub.i.i81, 12
  %vm_pgoff.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %38 = ptrtoint ptr %vm_pgoff.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vm_pgoff.i.i, align 4
  %add.i.i = add i32 %shr.i.i, %39
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i.i, ptr %index.i, align 4
  br label %__page_set_anon_rmap.exit

__page_set_anon_rmap.exit:                        ; preds = %if.end12.i, %PageAnon.exit.i.__page_set_anon_rmap.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_add_file_rmap(ptr noundef %page, i1 noundef zeroext %compound) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %compound, label %land.rhs, label %do.end10

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1244, 0\0A.popsection", ""() #9, !srcloc !125
  unreachable

do.end10:                                         ; preds = %entry
  tail call void @lock_page_memcg(ptr noundef %page) #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %0, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %0, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #9, !srcloc !115
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end98, label %do.end10.out_crit_edge

do.end10.out_crit_edge:                           ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end98:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 18, i32 noundef 1) #9
  br label %out

out:                                              ; preds = %if.end98, %do.end10.out_crit_edge
  tail call void @unlock_page_memcg(ptr noundef %page) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_page_mlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_remove_rmap(ptr noundef %page, i1 noundef zeroext %compound) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lock_page_memcg(ptr noundef %page) #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %PageAnon.exit

if.end.i.i:                                       ; preds = %entry
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
  br i1 %cmp.i.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %PageAnon.exit
  br i1 %compound, label %land.rhs.i, label %if.then.if.else40.i_crit_edge

if.then.if.else40.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else40.i

land.rhs.i:                                       ; preds = %if.then
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i36, label %PageHead.exit.i, !prof !90

if.then.i.i36:                                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i:                                  ; preds = %land.rhs.i
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %page, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool1.not.i = icmp eq i32 %12, 0
  br i1 %tobool1.not.i, label %if.then.i37, label %PageHead.exit.i.if.else40.i_crit_edge, !prof !90

PageHead.exit.i.if.else40.i_crit_edge:            ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else40.i

if.then.i37:                                      ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.24) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1283, 0\0A.popsection", ""() #9, !srcloc !126
  unreachable

if.else40.i:                                      ; preds = %PageHead.exit.i.if.else40.i_crit_edge, %if.then.if.else40.i_crit_edge
  %13 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 -1, ptr elementtype(i32) %13) #9, !srcloc !115
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end44.i, label %if.else40.i.out_crit_edge

if.else40.i.out_crit_edge:                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end44.i:                                       ; preds = %if.else40.i
  tail call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 18, i32 noundef -1) #9
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %16, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %17, %if.end.i.i.i ]
  %18 = inttoptr i32 %retval.0.i.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i80.i = icmp eq i32 %20, -1
  %21 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %0, align 4
  %and.i16.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i80.i, label %if.then.i81.i, label %do.end10.i.i, !prof !90

if.then.i81.i:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !86

if.then.i19.i.i:                                  ; preds = %if.then.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i.i = add i32 %22, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %23, %if.end.i20.i.i ]
  %24 = inttoptr i32 %retval.0.i21.i.i to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #9, !srcloc !127
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !86

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i.i = add i32 %22, -1
  br label %PageMlocked.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %page to i32
  br label %PageMlocked.exit.i

PageMlocked.exit.i:                               ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %25, %if.end.i27.i.i ]
  %26 = inttoptr i32 %retval.0.i28.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %29 = and i32 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool47.not.i = icmp eq i32 %29, 0
  br i1 %tobool47.not.i, label %PageMlocked.exit.i.out_crit_edge, label %if.then54.i, !prof !86

PageMlocked.exit.i.out_crit_edge:                 ; preds = %PageMlocked.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then54.i:                                      ; preds = %PageMlocked.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clear_page_mlock(ptr noundef %page) #9
  br label %out

if.end:                                           ; preds = %PageAnon.exit
  br i1 %compound, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %compound_mapcount.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 1
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %compound_mapcount.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %compound_mapcount.i.i, i32 1, i32 3, i32 1) #9
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %compound_mapcount.i.i, ptr %compound_mapcount.i.i, i32 -1, ptr elementtype(i32) %compound_mapcount.i.i) #9, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  br label %out

if.end3:                                          ; preds = %if.end
  %31 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %31, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %31, i32 1, i32 3, i32 1) #9
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 -1, ptr elementtype(i32) %31) #9, !srcloc !115
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i29 = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i.i29, label %if.end6, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end3
  tail call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 17, i32 noundef -1) #9
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %0, align 4
  %and.i.i30 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i31, label %if.end.i.i34, label %if.then.i.i33, !prof !86

if.then.i.i33:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i32 = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i34:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i34, %if.then.i.i33
  %retval.0.i.i35 = phi i32 [ %sub.i.i32, %if.then.i.i33 ], [ %35, %if.end.i.i34 ]
  %36 = inttoptr i32 %retval.0.i.i35 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i = icmp eq i32 %38, -1
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !90

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !86

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %40, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %41, %if.end.i20.i ]
  %42 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %42, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 504, 0\0A.popsection", ""() #9, !srcloc !127
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !86

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %40, -1
  br label %PageMlocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %page to i32
  br label %PageMlocked.exit

PageMlocked.exit:                                 ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %43, %if.end.i27.i ]
  %44 = inttoptr i32 %retval.0.i28.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %47 = and i32 %46, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool8.not = icmp eq i32 %47, 0
  br i1 %tobool8.not, label %PageMlocked.exit.out_crit_edge, label %if.then11, !prof !86

PageMlocked.exit.out_crit_edge:                   ; preds = %PageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then11:                                        ; preds = %PageMlocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clear_page_mlock(ptr noundef %page) #9
  br label %out

out:                                              ; preds = %if.then11, %PageMlocked.exit.out_crit_edge, %if.end3.out_crit_edge, %if.then2, %if.then54.i, %PageMlocked.exit.i.out_crit_edge, %if.else40.i.out_crit_edge
  tail call void @unlock_page_memcg(ptr noundef %page) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @try_to_unmap(ptr noundef %page, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #9
  %0 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %4 = inttoptr i32 %flags to ptr
  %5 = ptrtoint ptr %rwc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %rwc, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @try_to_unmap_one, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @page_not_mapped, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @page_lock_anon_vma_read, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %and = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i2.i.i3 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i3)
  %tobool.not.i.i.i4 = icmp eq i32 %and.i2.i.i3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i.i4, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %12, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %13, %if.end.i.i.i ]
  %14 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end5.i, !prof !90

if.then.i:                                        ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2410, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

do.end5.i:                                        ; preds = %PageKsm.exit.i
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %10, align 4
  %and.i2.i14.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i14.i)
  %tobool.not.i.i15.i = icmp eq i32 %and.i2.i14.i, 0
  br i1 %tobool.not.i.i15.i, label %if.end.i.i18.i, label %if.then.i.i17.i, !prof !86

if.then.i.i17.i:                                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i16.i = add i32 %19, -1
  br label %PageAnon.exit.i

if.end.i.i18.i:                                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i18.i, %if.then.i.i17.i
  %retval.0.i.i19.i = phi i32 [ %sub.i.i16.i, %if.then.i.i17.i ], [ %20, %if.end.i.i18.i ]
  %21 = inttoptr i32 %retval.0.i.i19.i to ptr
  %mapping.i.i20.i = getelementptr inbounds %struct.anon.63, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %mapping.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapping.i.i20.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i21.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21.i)
  %cmp.i.i22.not.i = icmp eq i32 %and.i.i21.i, 0
  br i1 %cmp.i.i22.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext true) #9
  br label %if.end

if.else.i:                                        ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext true) #9
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i.i4, label %if.end.i.i.i7, label %if.then.i.i.i6, !prof !86

if.then.i.i.i6:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i5 = add i32 %12, -1
  br label %PageKsm.exit.i12

if.end.i.i.i7:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i12

PageKsm.exit.i12:                                 ; preds = %if.end.i.i.i7, %if.then.i.i.i6
  %retval.0.i.i.i8 = phi i32 [ %sub.i.i.i5, %if.then.i.i.i6 ], [ %25, %if.end.i.i.i7 ]
  %26 = inttoptr i32 %retval.0.i.i.i8 to ptr
  %mapping.i.i.i9 = getelementptr inbounds %struct.anon.63, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %mapping.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mapping.i.i.i9, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i.i.i10 = and i32 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i10)
  %cmp.i.i.i11 = icmp eq i32 %and.i.i.i10, 3
  br i1 %cmp.i.i.i11, label %if.then.i13, label %if.else.i14, !prof !90

if.then.i13:                                      ; preds = %PageKsm.exit.i12
  call void @__sanitizer_cov_trace_pc() #11
  call void @rmap_walk_ksm(ptr noundef %page, ptr noundef nonnull %rwc) #9
  br label %if.end

if.else.i14:                                      ; preds = %PageKsm.exit.i12
  %30 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %10, align 4
  %and.i2.i12.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i12.i)
  %tobool.not.i.i13.i = icmp eq i32 %and.i2.i12.i, 0
  br i1 %tobool.not.i.i13.i, label %if.end.i.i16.i, label %if.then.i.i15.i, !prof !86

if.then.i.i15.i:                                  ; preds = %if.else.i14
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i14.i = add i32 %31, -1
  br label %PageAnon.exit.i15

if.end.i.i16.i:                                   ; preds = %if.else.i14
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i15

PageAnon.exit.i15:                                ; preds = %if.end.i.i16.i, %if.then.i.i15.i
  %retval.0.i.i17.i = phi i32 [ %sub.i.i14.i, %if.then.i.i15.i ], [ %32, %if.end.i.i16.i ]
  %33 = inttoptr i32 %retval.0.i.i17.i to ptr
  %mapping.i.i18.i = getelementptr inbounds %struct.anon.63, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %mapping.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mapping.i.i18.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i19.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %cmp.i.i20.not.i = icmp eq i32 %and.i.i19.i, 0
  br i1 %cmp.i.i20.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %PageAnon.exit.i15
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %if.end

if.else4.i:                                       ; preds = %PageAnon.exit.i15
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.else4.i, %if.then3.i, %if.then.i13, %if.else.i, %if.then7.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @try_to_unmap_one(ptr noundef %page, ptr noundef %vma, i32 noundef %address, ptr noundef %arg) #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  %range = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #9
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %5 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %6 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %7 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %page, ptr %pvmw, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vma, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %address, ptr %3, align 4
  %10 = call ptr @memset(ptr %4, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #9
  %11 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %12 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %13 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %15 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  %16 = ptrtoint ptr %arg to i32
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %17 = call ptr @memset(ptr %range, i32 255, i32 28)
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %18, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %20 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i2.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %22, -1
  br label %PageKsm.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mapping.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %and.i.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %cond.true, label %cond.false

cond.true:                                        ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %address, 4096
  br label %cond.end

cond.false:                                       ; preds = %PageKsm.exit
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %20, align 4
  %and.i2.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i436 = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i436, label %if.end.i.i.i, label %if.then.i.i.i437, !prof !86

if.then.i.i.i437:                                 ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %29, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i437
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i437 ], [ %30, %if.end.i.i.i ]
  %31 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapping.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i438, label %do.end7.i, !prof !90

if.then.i438:                                     ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 470, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

do.end7.i:                                        ; preds = %PageKsm.exit.i
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i, align 4
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i.i.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i25.i, label %PageHead.exit.i.i, !prof !90

if.then.i.i25.i:                                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i.i:                                ; preds = %do.end7.i
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i439 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i439, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i440

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compound_nr.exit.i

if.end.i.i440:                                    ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i440, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i441 = phi i32 [ %43, %if.end.i.i440 ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i441, %36
  %44 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vma, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %46 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vm_pgoff.i, align 4
  %sub.i = sub i32 %add.i, %47
  %shl.i = shl i32 %sub.i, 12
  %add10.i = add i32 %shl.i, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %45)
  %cmp.i = icmp ult i32 %add10.i, %45
  br i1 %cmp.i, label %compound_nr.exit.i.if.then13.i_crit_edge, label %lor.lhs.false.i

compound_nr.exit.i.if.then13.i_crit_edge:         ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %compound_nr.exit.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %48 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %49)
  %cmp12.i = icmp ugt i32 %add10.i, %49
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.cond.end_crit_edge

lor.lhs.false.i.cond.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %compound_nr.exit.i.if.then13.i_crit_edge
  %vm_end14.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %50 = ptrtoint ptr %vm_end14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vm_end14.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then13.i, %lor.lhs.false.i.cond.end_crit_edge, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %51, %if.then13.i ], [ %add10.i, %lor.lhs.false.i.cond.end_crit_edge ]
  %52 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %vma, ptr %range, align 4
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %15, align 4
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %1, ptr %11, align 4
  %55 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %address, ptr %12, align 4
  %56 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond, ptr %13, align 4
  %57 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %14, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range)
  %call18607 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call18607, label %while.body.lr.ph, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %cond.end
  %and19 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %rss_stat.i.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 40
  %arrayidx.i.i.i = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 1
  %arrayidx.i9.i.i = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 3
  %hiwater_rss.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 17
  %mmlist = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 16
  %prev3.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 16, i32 1
  %arrayidx.i493 = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 2
  %notifier_subscriptions.i.i497 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 49
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.body.lr.ph
  br i1 %tobool20.not, label %land.lhs.true, label %while.body.do.body_crit_edge

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %while.body
  %58 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vm_flags, align 4
  %and21 = and i32 %59, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.body_crit_edge, label %if.then23

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then23:                                        ; preds = %land.lhs.true
  call void @mlock_vma_page(ptr noundef %page) #9
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 4
  %tobool.not.i442 = icmp eq ptr %61, null
  br i1 %tobool.not.i442, label %if.then23.if.end.i_crit_edge, label %land.lhs.true.i

if.then23.if.end.i_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef nonnull %61) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %62 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i1.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 213
  %66 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %67, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %68 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i443 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i443 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i444 = add i32 %71, -1
  store volatile i32 %sub.i.i.i444, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then23.if.end.i_crit_edge
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %6, align 4
  %tobool5.not.i = icmp eq ptr %73, null
  br i1 %tobool5.not.i, label %if.end.i.while.end_crit_edge, label %if.then6.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %73) #9
  br label %while.end

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %while.body.do.body_crit_edge
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %5, align 4
  %tobool37.not = icmp eq ptr %75, null
  br i1 %tobool37.not, label %if.then41, label %do.end48, !prof !90

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1492, 0\0A.popsection", ""() #9, !srcloc !129
  unreachable

do.end48:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %76 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %76 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div.neg = sdiv exact i32 %sub.ptr.sub, -36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %77 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add49.neg = sub i32 %sub.ptr.div.neg, %77
  %add.ptr = getelementptr %struct.page, ptr %page, i32 %add49.neg
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %75, align 4
  %shr = lshr i32 %79, 12
  %add.ptr52 = getelementptr %struct.page, ptr %add.ptr, i32 %shr
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %3, align 4
  call void @flush_cache_page(ptr noundef %vma, i32 noundef %81, i32 noundef %shr) #9
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %5, align 4
  %call102 = call i32 @ptep_clear_flush(ptr noundef %vma, i32 noundef %81, ptr noundef %83) #9
  %and105 = and i32 %call102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %do.end48.if.end116_crit_edge, label %if.then114

do.end48.if.end116_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.then114:                                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call115 = call zeroext i1 @set_page_dirty(ptr noundef %page) #9
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %do.end48.if.end116_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i, i32 noundef 4) #9
  %84 = ptrtoint ptr %rss_stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %rss_stat.i.i.i, align 4
  %86 = call i32 @llvm.smax.i32(i32 %85, i32 0) #9
  %call.i.i.i7.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #9
  %87 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %89 = call i32 @llvm.smax.i32(i32 %88, i32 0) #9
  %add.i.i = add nuw i32 %89, %86
  %call.i.i.i10.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i, i32 noundef 4) #9
  %90 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %arrayidx.i9.i.i, align 4
  %92 = call i32 @llvm.smax.i32(i32 %91, i32 0) #9
  %add3.i.i = add i32 %add.i.i, %92
  %93 = ptrtoint ptr %hiwater_rss.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hiwater_rss.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %add3.i.i)
  %cmp.i445 = icmp ult i32 %94, %add3.i.i
  br i1 %cmp.i445, label %if.then.i446, label %if.end116.update_hiwater_rss.exit_crit_edge

if.end116.update_hiwater_rss.exit_crit_edge:      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_hiwater_rss.exit

if.then.i446:                                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %hiwater_rss.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add3.i.i, ptr %hiwater_rss.i, align 8
  br label %update_hiwater_rss.exit

update_hiwater_rss.exit:                          ; preds = %if.then.i446, %if.end116.update_hiwater_rss.exit_crit_edge
  %96 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %20, align 4
  %and.i2.i370 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i370)
  %tobool.not.i.i371 = icmp eq i32 %and.i2.i370, 0
  br i1 %tobool.not.i.i371, label %update_hiwater_rss.exit.PageAnon.exit_crit_edge, label %if.then.i.i373, !prof !86

update_hiwater_rss.exit.PageAnon.exit_crit_edge:  ; preds = %update_hiwater_rss.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageAnon.exit

if.then.i.i373:                                   ; preds = %update_hiwater_rss.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i372 = add i32 %97, -1
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.then.i.i373, %update_hiwater_rss.exit.PageAnon.exit_crit_edge
  %retval.0.i.i375 = phi i32 [ %sub.i.i372, %if.then.i.i373 ], [ %sub.ptr.lhs.cast, %update_hiwater_rss.exit.PageAnon.exit_crit_edge ]
  %98 = inttoptr i32 %retval.0.i.i375 to ptr
  %mapping.i.i376 = getelementptr inbounds %struct.anon.63, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %mapping.i.i376 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mapping.i.i376, align 4
  %101 = ptrtoint ptr %100 to i32
  %and.i.i377 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i377)
  %cmp.i.i378.not = icmp eq i32 %and.i.i377, 0
  br i1 %cmp.i.i378.not, label %if.else252, label %if.then146

if.then146:                                       ; preds = %PageAnon.exit
  %102 = getelementptr inbounds %struct.page, ptr %add.ptr52, i32 0, i32 1
  %private = getelementptr inbounds %struct.anon.19, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %private, align 4
  %105 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %20, align 4
  %and.i.i379 = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i379)
  %tobool.not.i.i380 = icmp eq i32 %and.i.i379, 0
  br i1 %tobool.not.i.i380, label %if.then146._compound_head.exit.i_crit_edge, label %if.then.i.i382, !prof !86

if.then146._compound_head.exit.i_crit_edge:       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i382:                                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i381 = add i32 %106, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i382, %if.then146._compound_head.exit.i_crit_edge
  %retval.0.i.i384 = phi i32 [ %sub.i.i381, %if.then.i.i382 ], [ %sub.ptr.lhs.cast, %if.then146._compound_head.exit.i_crit_edge ]
  %107 = inttoptr i32 %retval.0.i.i384 to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp.i.not.i = icmp eq i32 %109, -1
  %110 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %20, align 4
  %and.i16.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !90

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.then.i._compound_head.exit22.i_crit_edge, label %if.then.i19.i, !prof !86

if.then.i._compound_head.exit22.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit22.i

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %111, -1
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.then.i19.i, %if.then.i._compound_head.exit22.i_crit_edge
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %sub.ptr.lhs.cast, %if.then.i._compound_head.exit22.i_crit_edge ]
  %112 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %112, ptr noundef nonnull @.str.20) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %do.end10.i.PageSwapBacked.exit_crit_edge, label %if.then.i26.i, !prof !86

do.end10.i.PageSwapBacked.exit_crit_edge:         ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageSwapBacked.exit

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %111, -1
  br label %PageSwapBacked.exit

PageSwapBacked.exit:                              ; preds = %if.then.i26.i, %do.end10.i.PageSwapBacked.exit_crit_edge
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %sub.ptr.lhs.cast, %do.end10.i.PageSwapBacked.exit_crit_edge ]
  %113 = inttoptr i32 %retval.0.i28.i to ptr
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  %116 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %20, align 4
  %and.i.i385 = and i32 %117, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i385)
  %tobool.not.i.i386 = icmp eq i32 %and.i.i385, 0
  br i1 %tobool.not.i.i386, label %PageSwapBacked.exit._compound_head.exit.i391_crit_edge, label %if.then.i.i388, !prof !86

PageSwapBacked.exit._compound_head.exit.i391_crit_edge: ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i391

if.then.i.i388:                                   ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i387 = add i32 %117, -1
  br label %_compound_head.exit.i391

_compound_head.exit.i391:                         ; preds = %if.then.i.i388, %PageSwapBacked.exit._compound_head.exit.i391_crit_edge
  %retval.0.i.i390 = phi i32 [ %sub.i.i387, %if.then.i.i388 ], [ %sub.ptr.lhs.cast, %PageSwapBacked.exit._compound_head.exit.i391_crit_edge ]
  %118 = inttoptr i32 %retval.0.i.i390 to ptr
  %119 = getelementptr inbounds %struct.page, ptr %118, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 4
  %and.i.i.i.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !86

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i391
  call void @__sanitizer_cov_trace_pc() #11
  %122 = inttoptr i32 %retval.0.i.i390 to ptr
  call void @dump_page(ptr noundef %122, ptr noundef nonnull @.str.15) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i391
  %123 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %118, align 4
  %125 = and i32 %124, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.i.not.i.i = icmp eq i32 %125, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  %126 = and i32 %115, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge.if.end203_crit_edge, label %folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge.land.end_crit_edge, !prof !86

folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge.land.end_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge.if.end203_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %128 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %119, align 4
  %and.i.i.i.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %130 = inttoptr i32 %retval.0.i.i390 to ptr
  call void @dump_page(ptr noundef %130, ptr noundef nonnull @.str.15) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %131 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %118, align 4
  %133 = and i32 %132, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.i.i = icmp ne i32 %133, 0
  %134 = and i32 %115, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %135 = icmp eq i32 %134, 0
  %cmp.not = xor i1 %135, %tobool.i.i
  br i1 %cmp.not, label %PageSwapCache.exit.if.end203_crit_edge, label %PageSwapCache.exit.land.end_crit_edge, !prof !86

PageSwapCache.exit.land.end_crit_edge:            ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

PageSwapCache.exit.if.end203_crit_edge:           ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

land.end:                                         ; preds = %PageSwapCache.exit.land.end_crit_edge, %folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge.land.end_crit_edge
  %.b369 = load i1, ptr @try_to_unmap_one.__already_done, align 1
  br i1 %.b369, label %land.end.if.end194_crit_edge, label %if.then169, !prof !86

land.end.if.end194_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

if.then169:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @try_to_unmap_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1591, i32 noundef 9, ptr noundef null) #9
  br label %if.end194

if.end194:                                        ; preds = %if.then169, %land.end.if.end194_crit_edge
  %136 = ptrtoint ptr %notifier_subscriptions.i.i497 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %notifier_subscriptions.i.i497, align 8
  %tobool.i.not.i = icmp eq ptr %137, null
  br i1 %tobool.i.not.i, label %if.end194.mmu_notifier_invalidate_range.exit_crit_edge, label %if.then.i448

if.end194.mmu_notifier_invalidate_range.exit_crit_edge: ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmu_notifier_invalidate_range.exit

if.then.i448:                                     ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  %add202 = add i32 %81, 4096
  call void @__mmu_notifier_invalidate_range(ptr noundef %1, i32 noundef %81, i32 noundef %add202) #9
  br label %mmu_notifier_invalidate_range.exit

mmu_notifier_invalidate_range.exit:               ; preds = %if.then.i448, %if.end194.mmu_notifier_invalidate_range.exit_crit_edge
  call fastcc void @page_vma_mapped_walk_done(ptr noundef nonnull %pvmw)
  br label %while.end

if.end203:                                        ; preds = %PageSwapCache.exit.if.end203_crit_edge, %folio_test_swapbacked.exit.i.i.PageSwapCache.exit_crit_edge.if.end203_crit_edge
  %138 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %20, align 4
  %and.i.i392 = and i32 %139, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i392)
  %tobool.not.i.i393 = icmp eq i32 %and.i.i392, 0
  br i1 %tobool.not.i.i393, label %if.end203._compound_head.exit.i401_crit_edge, label %if.then.i.i395, !prof !86

if.end203._compound_head.exit.i401_crit_edge:     ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i401

if.then.i.i395:                                   ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i394 = add i32 %139, -1
  br label %_compound_head.exit.i401

_compound_head.exit.i401:                         ; preds = %if.then.i.i395, %if.end203._compound_head.exit.i401_crit_edge
  %retval.0.i.i397 = phi i32 [ %sub.i.i394, %if.then.i.i395 ], [ %sub.ptr.lhs.cast, %if.end203._compound_head.exit.i401_crit_edge ]
  %140 = inttoptr i32 %retval.0.i.i397 to ptr
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %142)
  %cmp.i.not.i398 = icmp eq i32 %142, -1
  %143 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %20, align 4
  %and.i16.i399 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i399)
  %tobool.not.i17.i400 = icmp eq i32 %and.i16.i399, 0
  br i1 %cmp.i.not.i398, label %if.then.i402, label %do.end10.i408, !prof !90

if.then.i402:                                     ; preds = %_compound_head.exit.i401
  br i1 %tobool.not.i17.i400, label %if.then.i402._compound_head.exit22.i407_crit_edge, label %if.then.i19.i404, !prof !86

if.then.i402._compound_head.exit22.i407_crit_edge: ; preds = %if.then.i402
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit22.i407

if.then.i19.i404:                                 ; preds = %if.then.i402
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i403 = add i32 %144, -1
  br label %_compound_head.exit22.i407

_compound_head.exit22.i407:                       ; preds = %if.then.i19.i404, %if.then.i402._compound_head.exit22.i407_crit_edge
  %retval.0.i21.i406 = phi i32 [ %sub.i18.i403, %if.then.i19.i404 ], [ %sub.ptr.lhs.cast, %if.then.i402._compound_head.exit22.i407_crit_edge ]
  %145 = inttoptr i32 %retval.0.i21.i406 to ptr
  call void @dump_page(ptr noundef %145, ptr noundef nonnull @.str.20) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

do.end10.i408:                                    ; preds = %_compound_head.exit.i401
  br i1 %tobool.not.i17.i400, label %do.end10.i408.PageSwapBacked.exit415_crit_edge, label %if.then.i26.i410, !prof !86

do.end10.i408.PageSwapBacked.exit415_crit_edge:   ; preds = %do.end10.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageSwapBacked.exit415

if.then.i26.i410:                                 ; preds = %do.end10.i408
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i409 = add i32 %144, -1
  br label %PageSwapBacked.exit415

PageSwapBacked.exit415:                           ; preds = %if.then.i26.i410, %do.end10.i408.PageSwapBacked.exit415_crit_edge
  %retval.0.i28.i412 = phi i32 [ %sub.i25.i409, %if.then.i26.i410 ], [ %sub.ptr.lhs.cast, %do.end10.i408.PageSwapBacked.exit415_crit_edge ]
  %146 = inttoptr i32 %retval.0.i28.i412 to ptr
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %146, align 4
  %149 = and i32 %148, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool205.not = icmp eq i32 %149, 0
  br i1 %tobool205.not, label %if.then206, label %if.end213

if.then206:                                       ; preds = %PageSwapBacked.exit415
  %150 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %20, align 4
  %and.i.i416 = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i416)
  %tobool.not.i.i417 = icmp eq i32 %and.i.i416, 0
  br i1 %tobool.not.i.i417, label %if.then206._compound_head.exit.i423_crit_edge, label %if.then.i.i419, !prof !86

if.then206._compound_head.exit.i423_crit_edge:    ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i423

if.then.i.i419:                                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i418 = add i32 %151, -1
  br label %_compound_head.exit.i423

_compound_head.exit.i423:                         ; preds = %if.then.i.i419, %if.then206._compound_head.exit.i423_crit_edge
  %retval.0.i.i421 = phi i32 [ %sub.i.i418, %if.then.i.i419 ], [ %sub.ptr.lhs.cast, %if.then206._compound_head.exit.i423_crit_edge ]
  %152 = inttoptr i32 %retval.0.i.i421 to ptr
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %154)
  %cmp.i.not.i422 = icmp eq i32 %154, -1
  %155 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %20, align 4
  %and.i13.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i422, label %if.then.i424, label %do.end8.i, !prof !90

if.then.i424:                                     ; preds = %_compound_head.exit.i423
  br i1 %tobool.not.i14.i, label %if.then.i424._compound_head.exit19.i_crit_edge, label %if.then.i16.i, !prof !86

if.then.i424._compound_head.exit19.i_crit_edge:   ; preds = %if.then.i424
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit19.i

if.then.i16.i:                                    ; preds = %if.then.i424
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i15.i = add i32 %156, -1
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.then.i16.i, %if.then.i424._compound_head.exit19.i_crit_edge
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %sub.ptr.lhs.cast, %if.then.i424._compound_head.exit19.i_crit_edge ]
  %157 = inttoptr i32 %retval.0.i18.i to ptr
  call void @dump_page(ptr noundef %157, ptr noundef nonnull @.str.20) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i423
  br i1 %tobool.not.i14.i, label %do.end8.i.PageDirty.exit_crit_edge, label %if.then.i23.i, !prof !86

do.end8.i.PageDirty.exit_crit_edge:               ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageDirty.exit

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i22.i = add i32 %156, -1
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.then.i23.i, %do.end8.i.PageDirty.exit_crit_edge
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %sub.ptr.lhs.cast, %do.end8.i.PageDirty.exit_crit_edge ]
  %158 = inttoptr i32 %retval.0.i25.i to ptr
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %158, align 4
  %161 = and i32 %160, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool208.not = icmp eq i32 %161, 0
  br i1 %tobool208.not, label %if.then209, label %if.end211

if.then209:                                       ; preds = %PageDirty.exit
  %162 = ptrtoint ptr %notifier_subscriptions.i.i497 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %notifier_subscriptions.i.i497, align 8
  %tobool.i.not.i451 = icmp eq ptr %163, null
  br i1 %tobool.i.not.i451, label %if.then209.mmu_notifier_invalidate_range.exit454_crit_edge, label %if.then.i452

if.then209.mmu_notifier_invalidate_range.exit454_crit_edge: ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmu_notifier_invalidate_range.exit454

if.then.i452:                                     ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #11
  %add210 = add i32 %81, 4096
  call void @__mmu_notifier_invalidate_range(ptr noundef %1, i32 noundef %81, i32 noundef %add210) #9
  br label %mmu_notifier_invalidate_range.exit454

mmu_notifier_invalidate_range.exit454:            ; preds = %if.then.i452, %if.then209.mmu_notifier_invalidate_range.exit454_crit_edge
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i.i, i32 1, i32 3, i32 1) #9
  %164 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i.i, ptr %arrayidx.i.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %164, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i) #9
  br label %discard

if.end211:                                        ; preds = %PageDirty.exit
  %165 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %5, align 4
  call void @set_pte_at(ptr noundef %1, i32 noundef %81, ptr noundef %166, i32 noundef %call102) #9
  %167 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %20, align 4
  %and.i.i427 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i427)
  %tobool.not.i = icmp eq i32 %and.i.i427, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i428, !prof !86

if.then.i428:                                     ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.23) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #9, !srcloc !132
  unreachable

do.body7.i:                                       ; preds = %if.end211
  %169 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %20, align 4
  %and.i31.i = and i32 %170, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i429 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i429, label %do.body7.i._compound_head.exit.i435_crit_edge, label %if.then.i.i431, !prof !86

do.body7.i._compound_head.exit.i435_crit_edge:    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i435

if.then.i.i431:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i430 = add i32 %170, -1
  br label %_compound_head.exit.i435

_compound_head.exit.i435:                         ; preds = %if.then.i.i431, %do.body7.i._compound_head.exit.i435_crit_edge
  %retval.0.i.i433 = phi i32 [ %sub.i.i430, %if.then.i.i431 ], [ %sub.ptr.lhs.cast, %do.body7.i._compound_head.exit.i435_crit_edge ]
  %171 = inttoptr i32 %retval.0.i.i433 to ptr
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %173)
  %cmp.i.not.i434 = icmp eq i32 %173, -1
  %174 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %20, align 4
  %and.i32.i = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i434, label %if.then17.i, label %do.end24.i, !prof !90

if.then17.i:                                      ; preds = %_compound_head.exit.i435
  br i1 %tobool.not.i33.i, label %if.then17.i._compound_head.exit38.i_crit_edge, label %if.then.i35.i, !prof !86

if.then17.i._compound_head.exit38.i_crit_edge:    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit38.i

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %175, -1
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.then.i35.i, %if.then17.i._compound_head.exit38.i_crit_edge
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %sub.ptr.lhs.cast, %if.then17.i._compound_head.exit38.i_crit_edge ]
  %176 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %176, ptr noundef nonnull @.str.20) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #9, !srcloc !133
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i435
  br i1 %tobool.not.i33.i, label %do.end24.i.SetPageSwapBacked.exit_crit_edge, label %if.then.i42.i, !prof !86

do.end24.i.SetPageSwapBacked.exit_crit_edge:      ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %SetPageSwapBacked.exit

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %175, -1
  br label %SetPageSwapBacked.exit

SetPageSwapBacked.exit:                           ; preds = %if.then.i42.i, %do.end24.i.SetPageSwapBacked.exit_crit_edge
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %sub.ptr.lhs.cast, %do.end24.i.SetPageSwapBacked.exit_crit_edge ]
  %177 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 19, ptr noundef %177) #9
  %178 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %5, align 4
  %tobool.not.i456 = icmp eq ptr %179, null
  br i1 %tobool.not.i456, label %SetPageSwapBacked.exit.if.end.i467_crit_edge, label %land.lhs.true.i464

SetPageSwapBacked.exit.if.end.i467_crit_edge:     ; preds = %SetPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i467

land.lhs.true.i464:                               ; preds = %SetPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef nonnull %179) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %180 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i1.i.i457 = and i32 %180, -16384
  %181 = inttoptr i32 %and.i.i.i1.i.i457 to ptr
  %task.i.i.i.i458 = getelementptr inbounds %struct.thread_info, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %task.i.i.i.i458 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %task.i.i.i.i458, align 8
  %pagefault_disabled.i.i.i.i459 = getelementptr inbounds %struct.task_struct, ptr %183, i32 0, i32 213
  %184 = ptrtoint ptr %pagefault_disabled.i.i.i.i459 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pagefault_disabled.i.i.i.i459, align 8
  %dec.i.i.i.i460 = add i32 %185, -1
  store i32 %dec.i.i.i.i460, ptr %pagefault_disabled.i.i.i.i459, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %186 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i461 = and i32 %186, -16384
  %187 = inttoptr i32 %and.i.i.i.i.i461 to ptr
  %preempt_count.i.i.i.i462 = getelementptr inbounds %struct.thread_info, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %preempt_count.i.i.i.i462 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %preempt_count.i.i.i.i462, align 4
  %sub.i.i.i463 = add i32 %189, -1
  store volatile i32 %sub.i.i.i463, ptr %preempt_count.i.i.i.i462, align 4
  br label %if.end.i467

if.end.i467:                                      ; preds = %land.lhs.true.i464, %SetPageSwapBacked.exit.if.end.i467_crit_edge
  %190 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %6, align 4
  %tobool5.not.i466 = icmp eq ptr %191, null
  br i1 %tobool5.not.i466, label %if.end.i467.while.end_crit_edge, label %if.then6.i468

if.end.i467.while.end_crit_edge:                  ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then6.i468:                                    ; preds = %if.end.i467
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %191) #9
  br label %while.end

if.end213:                                        ; preds = %PageSwapBacked.exit415
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %104, 0
  %call215 = call i32 @swap_duplicate([1 x i32] %.fca.0.insert) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %cmp216 = icmp slt i32 %call215, 0
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %if.end213
  %192 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %5, align 4
  call void @set_pte_at(ptr noundef %1, i32 noundef %81, ptr noundef %193, i32 noundef %call102) #9
  %194 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %5, align 4
  %tobool.not.i471 = icmp eq ptr %195, null
  br i1 %tobool.not.i471, label %if.then218.if.end.i482_crit_edge, label %land.lhs.true.i479

if.then218.if.end.i482_crit_edge:                 ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i482

land.lhs.true.i479:                               ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef nonnull %195) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %196 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i1.i.i472 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i1.i.i472 to ptr
  %task.i.i.i.i473 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %task.i.i.i.i473 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %task.i.i.i.i473, align 8
  %pagefault_disabled.i.i.i.i474 = getelementptr inbounds %struct.task_struct, ptr %199, i32 0, i32 213
  %200 = ptrtoint ptr %pagefault_disabled.i.i.i.i474 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pagefault_disabled.i.i.i.i474, align 8
  %dec.i.i.i.i475 = add i32 %201, -1
  store i32 %dec.i.i.i.i475, ptr %pagefault_disabled.i.i.i.i474, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %202 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i476 = and i32 %202, -16384
  %203 = inttoptr i32 %and.i.i.i.i.i476 to ptr
  %preempt_count.i.i.i.i477 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %preempt_count.i.i.i.i477 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load volatile i32, ptr %preempt_count.i.i.i.i477, align 4
  %sub.i.i.i478 = add i32 %205, -1
  store volatile i32 %sub.i.i.i478, ptr %preempt_count.i.i.i.i477, align 4
  br label %if.end.i482

if.end.i482:                                      ; preds = %land.lhs.true.i479, %if.then218.if.end.i482_crit_edge
  %206 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %6, align 4
  %tobool5.not.i481 = icmp eq ptr %207, null
  br i1 %tobool5.not.i481, label %if.end.i482.while.end_crit_edge, label %if.then6.i483

if.end.i482.while.end_crit_edge:                  ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then6.i483:                                    ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %207) #9
  br label %while.end

if.end220:                                        ; preds = %if.end213
  %208 = ptrtoint ptr %mmlist to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile ptr, ptr %mmlist, align 4
  %cmp.i485.not = icmp eq ptr %209, %mmlist
  br i1 %cmp.i485.not, label %if.then229, label %if.end220.if.end236_crit_edge

if.end220.if.end236_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.then229:                                       ; preds = %if.end220
  call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #9
  %210 = ptrtoint ptr %mmlist to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load volatile ptr, ptr %mmlist, align 4
  %cmp.i486.not = icmp eq ptr %211, %mmlist
  br i1 %cmp.i486.not, label %if.then233, label %if.then229.if.end235_crit_edge

if.then229.if.end235_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235

if.then233:                                       ; preds = %if.then229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16) to i32))
  %212 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), align 8
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mmlist, ptr noundef getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), ptr noundef %212) #9
  br i1 %call.i.i, label %if.end.i.i488, label %if.then233.if.end235_crit_edge

if.then233.if.end235_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end235

if.end.i.i488:                                    ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %mmlist, ptr %prev1.i.i, align 4
  %214 = ptrtoint ptr %mmlist to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %212, ptr %mmlist, align 4
  %215 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), ptr %prev3.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16) to i32))
  store volatile ptr %mmlist, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 16), align 8
  br label %if.end235

if.end235:                                        ; preds = %if.end.i.i488, %if.then233.if.end235_crit_edge, %if.then229.if.end235_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @mmlist_lock) #9
  br label %if.end236

if.end236:                                        ; preds = %if.end235, %if.end220.if.end236_crit_edge
  %call.i.i.i491 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %arrayidx.i.i.i, i32 1, i32 3, i32 1) #9
  %216 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i.i.i, ptr %arrayidx.i.i.i, i32 1, ptr elementtype(i32) %arrayidx.i.i.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i492 = extractvalue { i32, i32 } %216, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef 1, i32 noundef %asmresult.i.i.i.i.i.i492) #9
  %call.i.i.i494 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i493, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !114
  call void @llvm.prefetch.p0(ptr %arrayidx.i493, i32 1, i32 3, i32 1) #9
  %217 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i493, ptr %arrayidx.i493, i32 1, ptr elementtype(i32) %arrayidx.i493) #9, !srcloc !115
  %asmresult.i.i.i.i.i.i495 = extractvalue { i32, i32 } %217, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !116
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef 2, i32 noundef %asmresult.i.i.i.i.i.i495) #9
  %218 = lshr i32 %104, 24
  %shl.i496 = and i32 %218, 252
  %shl6.i = shl i32 %104, 7
  %or.i = or i32 %shl.i496, %shl6.i
  %219 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %5, align 4
  call void @set_pte_at(ptr noundef %1, i32 noundef %81, ptr noundef %220, i32 noundef %or.i) #9
  %221 = ptrtoint ptr %notifier_subscriptions.i.i497 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %notifier_subscriptions.i.i497, align 8
  %tobool.i.not.i498 = icmp eq ptr %222, null
  br i1 %tobool.i.not.i498, label %if.end236.discard_crit_edge, label %if.then.i499

if.end236.discard_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %discard

if.then.i499:                                     ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  %add250 = add i32 %81, 4096
  call void @__mmu_notifier_invalidate_range(ptr noundef %1, i32 noundef %81, i32 noundef %add250) #9
  br label %discard

if.else252:                                       ; preds = %PageAnon.exit
  %223 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %20, align 4
  %and.i.i.i502 = and i32 %224, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i502)
  %tobool.not.i.i.i503 = icmp eq i32 %and.i.i.i502, 0
  br i1 %tobool.not.i.i.i503, label %if.else252._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i505, !prof !86

if.else252._compound_head.exit.i.i_crit_edge:     ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i505:                                 ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i504 = add i32 %224, -1
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i505, %if.else252._compound_head.exit.i.i_crit_edge
  %retval.0.i.i.i507 = phi i32 [ %sub.i.i.i504, %if.then.i.i.i505 ], [ %sub.ptr.lhs.cast, %if.else252._compound_head.exit.i.i_crit_edge ]
  %225 = inttoptr i32 %retval.0.i.i.i507 to ptr
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %227)
  %cmp.i.not.i.i = icmp eq i32 %227, -1
  %228 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load volatile i32, ptr %20, align 4
  %and.i16.i.i = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i508, label %do.end10.i.i, !prof !90

if.then.i.i508:                                   ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.then.i.i508._compound_head.exit22.i.i_crit_edge, label %if.then.i19.i.i, !prof !86

if.then.i.i508._compound_head.exit22.i.i_crit_edge: ; preds = %if.then.i.i508
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit22.i.i

if.then.i19.i.i:                                  ; preds = %if.then.i.i508
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i.i = add i32 %229, -1
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.then.i19.i.i, %if.then.i.i508._compound_head.exit22.i.i_crit_edge
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %sub.ptr.lhs.cast, %if.then.i.i508._compound_head.exit22.i.i_crit_edge ]
  %230 = inttoptr i32 %retval.0.i21.i.i to ptr
  call void @dump_page(ptr noundef %230, ptr noundef nonnull @.str.20) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #9, !srcloc !130
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %do.end10.i.i.mm_counter_file.exit_crit_edge, label %if.then.i26.i.i, !prof !86

do.end10.i.i.mm_counter_file.exit_crit_edge:      ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mm_counter_file.exit

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i.i = add i32 %229, -1
  br label %mm_counter_file.exit

mm_counter_file.exit:                             ; preds = %if.then.i26.i.i, %do.end10.i.i.mm_counter_file.exit_crit_edge
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %sub.ptr.lhs.cast, %do.end10.i.i.mm_counter_file.exit_crit_edge ]
  %231 = inttoptr i32 %retval.0.i28.i.i to ptr
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile i32, ptr %231, align 4
  %234 = and i32 %233, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.i509 = icmp eq i32 %234, 0
  %..i = select i1 %tobool.not.i509, i32 0, i32 3
  %arrayidx.i511 = getelementptr [4 x %struct.atomic_t], ptr %rss_stat.i.i.i, i32 0, i32 %..i
  %call.i.i.i512 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i511, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %arrayidx.i511, i32 1, i32 3, i32 1) #9
  %235 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i511, ptr %arrayidx.i511, i32 1, ptr elementtype(i32) %arrayidx.i511) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i513 = extractvalue { i32, i32 } %235, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @mm_trace_rss_stat(ptr noundef %1, i32 noundef %..i, i32 noundef %asmresult.i.i.i.i.i.i513) #9
  br label %discard

discard:                                          ; preds = %mm_counter_file.exit, %if.then.i499, %if.end236.discard_crit_edge, %mmu_notifier_invalidate_range.exit454
  call void @page_remove_rmap(ptr noundef %add.ptr52, i1 noundef zeroext false)
  %236 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile i32, ptr %20, align 4
  %and.i.i514 = and i32 %237, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i514)
  %tobool.not.i.i515 = icmp eq i32 %and.i.i514, 0
  br i1 %tobool.not.i.i515, label %discard._compound_head.exit.i520_crit_edge, label %if.then.i.i517, !prof !86

discard._compound_head.exit.i520_crit_edge:       ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i520

if.then.i.i517:                                   ; preds = %discard
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i516 = add i32 %237, -1
  br label %_compound_head.exit.i520

_compound_head.exit.i520:                         ; preds = %if.then.i.i517, %discard._compound_head.exit.i520_crit_edge
  %retval.0.i.i519 = phi i32 [ %sub.i.i516, %if.then.i.i517 ], [ %sub.ptr.lhs.cast, %discard._compound_head.exit.i520_crit_edge ]
  %238 = inttoptr i32 %retval.0.i.i519 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %238, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %239 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp.i.i.i.i = icmp eq i32 %240, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i521, label %do.end5.i.i.i.i, !prof !90

if.then.i.i.i.i521:                               ; preds = %_compound_head.exit.i520
  call void @__sanitizer_cov_trace_pc() #11
  %241 = inttoptr i32 %retval.0.i.i519 to ptr
  call void @dump_page(ptr noundef %241, ptr noundef nonnull @.str.26) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !134
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i520
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %242 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %242, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@try_to_unmap_one, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !135

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %238, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %238) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %call18 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call18, label %put_page.exit.while.body_crit_edge, label %put_page.exit.while.end_crit_edge

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %if.then6.i483, %if.end.i482.while.end_crit_edge, %if.then6.i468, %if.end.i467.while.end_crit_edge, %mmu_notifier_invalidate_range.exit, %if.then6.i, %if.end.i.while.end_crit_edge, %cond.end.while.end_crit_edge
  %call18572 = phi i1 [ false, %if.then6.i483 ], [ false, %if.end.i482.while.end_crit_edge ], [ false, %if.then6.i468 ], [ false, %if.end.i467.while.end_crit_edge ], [ false, %mmu_notifier_invalidate_range.exit ], [ false, %if.then6.i ], [ false, %if.end.i.while.end_crit_edge ], [ true, %cond.end.while.end_crit_edge ], [ true, %put_page.exit.while.end_crit_edge ]
  %243 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %14, align 4
  %and.i.i522 = and i32 %244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i522)
  %tobool.i.not.i523 = icmp eq i32 %and.i.i522, 0
  br i1 %tobool.i.not.i523, label %while.end.if.end.i525_crit_edge, label %do.body.i

while.end.if.end.i525_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i525

do.body.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 482) #9
  br label %if.end.i525

if.end.i525:                                      ; preds = %do.body.i, %while.end.if.end.i525_crit_edge
  %245 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %11, align 4
  %notifier_subscriptions.i.i524 = getelementptr inbounds %struct.anon, ptr %246, i32 0, i32 49
  %247 = ptrtoint ptr %notifier_subscriptions.i.i524 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %notifier_subscriptions.i.i524, align 8
  %tobool.i8.not.i = icmp eq ptr %248, null
  br i1 %tobool.i8.not.i, label %if.end.i525.cleanup260_crit_edge, label %if.then4.i

if.end.i525.cleanup260_crit_edge:                 ; preds = %if.end.i525
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup260

if.then4.i:                                       ; preds = %if.end.i525
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range, i1 noundef zeroext false) #9
  br label %cleanup260

cleanup260:                                       ; preds = %if.then4.i, %if.end.i525.cleanup260_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #9
  ret i1 %call18572
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @page_not_mapped(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @page_mapped(ptr noundef %page) #9
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmap_walk_locked(ptr noundef %page, ptr nocapture noundef readonly %rwc) local_unnamed_addr #0 align 64 {
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

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
  br i1 %cmp.i.i, label %if.then, label %do.end5, !prof !90

if.then:                                          ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2410, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

do.end5:                                          ; preds = %PageKsm.exit
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %0, align 4
  %and.i2.i14 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i14)
  %tobool.not.i.i15 = icmp eq i32 %and.i2.i14, 0
  br i1 %tobool.not.i.i15, label %if.end.i.i18, label %if.then.i.i17, !prof !86

if.then.i.i17:                                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i16 = add i32 %9, -1
  br label %PageAnon.exit

if.end.i.i18:                                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i18, %if.then.i.i17
  %retval.0.i.i19 = phi i32 [ %sub.i.i16, %if.then.i.i17 ], [ %10, %if.end.i.i18 ]
  %11 = inttoptr i32 %retval.0.i.i19 to ptr
  %mapping.i.i20 = getelementptr inbounds %struct.anon.63, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %mapping.i.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping.i.i20, align 4
  %14 = ptrtoint ptr %13 to i32
  %and.i.i21 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %cmp.i.i22.not = icmp eq i32 %and.i.i21, 0
  br i1 %cmp.i.i22.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef %rwc, i1 noundef zeroext true)
  br label %if.end8

if.else:                                          ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef %rwc, i1 noundef zeroext true)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @try_to_migrate(ptr noundef %page, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #9
  %0 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %4 = inttoptr i32 %flags to ptr
  %5 = ptrtoint ptr %rwc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %rwc, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @try_to_migrate_one, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @page_not_mapped, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @page_lock_anon_vma_read, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %3, align 4
  %and = and i32 %flags, -149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b61 = load i1, ptr @try_to_migrate.__already_done, align 1
  br i1 %.b61, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !86

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @try_to_migrate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1976, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end38:                                         ; preds = %entry
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i2.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %12, -1
  br label %PageKsm.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %PageKsm.exit.if.end47_crit_edge, label %land.lhs.true43

PageKsm.exit.if.end47_crit_edge:                  ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true43:                                  ; preds = %PageKsm.exit
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %10, align 4
  %and.i2.i63 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i2.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i67, label %if.then.i.i66, !prof !86

if.then.i.i66:                                    ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i65 = add i32 %19, -1
  br label %PageAnon.exit

if.end.i.i67:                                     ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %page to i32
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.end.i.i67, %if.then.i.i66
  %retval.0.i.i68 = phi i32 [ %sub.i.i65, %if.then.i.i66 ], [ %20, %if.end.i.i67 ]
  %21 = inttoptr i32 %retval.0.i.i68 to ptr
  %mapping.i.i69 = getelementptr inbounds %struct.anon.63, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %mapping.i.i69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapping.i.i69, align 4
  %24 = ptrtoint ptr %23 to i32
  %and.i.i70 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70)
  %cmp.i.i71.not = icmp eq i32 %and.i.i70, 0
  br i1 %cmp.i.i71.not, label %PageAnon.exit.if.end47_crit_edge, label %if.then45

PageAnon.exit.if.end47_crit_edge:                 ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @invalid_migration_vma, ptr %3, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %PageAnon.exit.if.end47_crit_edge, %PageKsm.exit.if.end47_crit_edge
  %and48 = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %10, align 4
  %and.i2.i.i72 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i72)
  %tobool.not.i.i.i73 = icmp eq i32 %and.i2.i.i72, 0
  br i1 %tobool49.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.end47
  br i1 %tobool.not.i.i.i73, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %27, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %28, %if.end.i.i.i ]
  %29 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mapping.i.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %and.i.i.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end5.i, !prof !90

if.then.i:                                        ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2410, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

do.end5.i:                                        ; preds = %PageKsm.exit.i
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %10, align 4
  %and.i2.i14.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i14.i)
  %tobool.not.i.i15.i = icmp eq i32 %and.i2.i14.i, 0
  br i1 %tobool.not.i.i15.i, label %if.end.i.i18.i, label %if.then.i.i17.i, !prof !86

if.then.i.i17.i:                                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i16.i = add i32 %34, -1
  br label %PageAnon.exit.i

if.end.i.i18.i:                                   ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i18.i, %if.then.i.i17.i
  %retval.0.i.i19.i = phi i32 [ %sub.i.i16.i, %if.then.i.i17.i ], [ %35, %if.end.i.i18.i ]
  %36 = inttoptr i32 %retval.0.i.i19.i to ptr
  %mapping.i.i20.i = getelementptr inbounds %struct.anon.63, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %mapping.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mapping.i.i20.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %and.i.i21.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21.i)
  %cmp.i.i22.not.i = icmp eq i32 %and.i.i21.i, 0
  br i1 %cmp.i.i22.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext true) #9
  br label %cleanup

if.else.i:                                        ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext true) #9
  br label %cleanup

if.else:                                          ; preds = %if.end47
  br i1 %tobool.not.i.i.i73, label %if.end.i.i.i76, label %if.then.i.i.i75, !prof !86

if.then.i.i.i75:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i74 = add i32 %27, -1
  br label %PageKsm.exit.i81

if.end.i.i.i76:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i81

PageKsm.exit.i81:                                 ; preds = %if.end.i.i.i76, %if.then.i.i.i75
  %retval.0.i.i.i77 = phi i32 [ %sub.i.i.i74, %if.then.i.i.i75 ], [ %40, %if.end.i.i.i76 ]
  %41 = inttoptr i32 %retval.0.i.i.i77 to ptr
  %mapping.i.i.i78 = getelementptr inbounds %struct.anon.63, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %mapping.i.i.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mapping.i.i.i78, align 4
  %44 = ptrtoint ptr %43 to i32
  %and.i.i.i79 = and i32 %44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i79)
  %cmp.i.i.i80 = icmp eq i32 %and.i.i.i79, 3
  br i1 %cmp.i.i.i80, label %if.then.i82, label %if.else.i83, !prof !90

if.then.i82:                                      ; preds = %PageKsm.exit.i81
  call void @__sanitizer_cov_trace_pc() #11
  call void @rmap_walk_ksm(ptr noundef %page, ptr noundef nonnull %rwc) #9
  br label %cleanup

if.else.i83:                                      ; preds = %PageKsm.exit.i81
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %10, align 4
  %and.i2.i12.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i12.i)
  %tobool.not.i.i13.i = icmp eq i32 %and.i2.i12.i, 0
  br i1 %tobool.not.i.i13.i, label %if.end.i.i16.i, label %if.then.i.i15.i, !prof !86

if.then.i.i15.i:                                  ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i14.i = add i32 %46, -1
  br label %PageAnon.exit.i84

if.end.i.i16.i:                                   ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i84

PageAnon.exit.i84:                                ; preds = %if.end.i.i16.i, %if.then.i.i15.i
  %retval.0.i.i17.i = phi i32 [ %sub.i.i14.i, %if.then.i.i15.i ], [ %47, %if.end.i.i16.i ]
  %48 = inttoptr i32 %retval.0.i.i17.i to ptr
  %mapping.i.i18.i = getelementptr inbounds %struct.anon.63, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %mapping.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mapping.i.i18.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %and.i.i19.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %cmp.i.i20.not.i = icmp eq i32 %and.i.i19.i, 0
  br i1 %cmp.i.i20.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %PageAnon.exit.i84
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %cleanup

if.else4.i:                                       ; preds = %PageAnon.exit.i84
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else4.i, %if.then3.i, %if.then.i82, %if.else.i, %if.then7.i, %if.then, %land.rhs.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @try_to_migrate_one(ptr noundef %page, ptr noundef %vma, i32 noundef %address, ptr noundef %arg) #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  %range = alloca %struct.mmu_notifier_range, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  %0 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_mm, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #9
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %5 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %6 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %page, ptr %pvmw, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vma, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %address, ptr %3, align 4
  %9 = call ptr @memset(ptr %4, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %range) #9
  %10 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 2
  %12 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 3
  %13 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 4
  %14 = getelementptr inbounds %struct.mmu_notifier_range, ptr %range, i32 0, i32 5
  %15 = ptrtoint ptr %arg to i32
  %and = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %16 = getelementptr inbounds i8, ptr %range, i32 24
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %18, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %20 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i2.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %22, -1
  br label %PageKsm.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %page to i32
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end.i.i ]
  %24 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.63, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mapping.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %and.i.i = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %cond.true, label %cond.false

cond.true:                                        ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %address, 4096
  br label %cond.end

cond.false:                                       ; preds = %PageKsm.exit
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %20, align 4
  %and.i2.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %29, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %30, %if.end.i.i.i ]
  %31 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mapping.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i, label %do.end7.i, !prof !90

if.then.i:                                        ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 470, 0\0A.popsection", ""() #9, !srcloc !107
  unreachable

do.end7.i:                                        ; preds = %PageKsm.exit.i
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i, align 4
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i.i.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i25.i, label %PageHead.exit.i.i, !prof !90

if.then.i.i25.i:                                  ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i.i:                                ; preds = %do.end7.i
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i279 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i279, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i280

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compound_nr.exit.i

if.end.i.i280:                                    ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i280, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i281 = phi i32 [ %43, %if.end.i.i280 ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i281, %36
  %44 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vma, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %46 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vm_pgoff.i, align 4
  %sub.i = sub i32 %add.i, %47
  %shl.i = shl i32 %sub.i, 12
  %add10.i = add i32 %shl.i, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %45)
  %cmp.i = icmp ult i32 %add10.i, %45
  br i1 %cmp.i, label %compound_nr.exit.i.if.then13.i_crit_edge, label %lor.lhs.false.i

compound_nr.exit.i.if.then13.i_crit_edge:         ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %compound_nr.exit.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %48 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %49)
  %cmp12.i = icmp ugt i32 %add10.i, %49
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.cond.end_crit_edge

lor.lhs.false.i.cond.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %compound_nr.exit.i.if.then13.i_crit_edge
  %vm_end14.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %50 = ptrtoint ptr %vm_end14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vm_end14.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.then13.i, %lor.lhs.false.i.cond.end_crit_edge, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %51, %if.then13.i ], [ %add10.i, %lor.lhs.false.i.cond.end_crit_edge ]
  %52 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %vma, ptr %range, align 4
  %53 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %14, align 4
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %1, ptr %10, align 4
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %address, ptr %11, align 4
  %56 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond, ptr %12, align 4
  %57 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %13, align 4
  call fastcc void @mmu_notifier_invalidate_range_start(ptr noundef nonnull %range)
  %call18295 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call18295, label %do.body.lr.ph, label %cond.end.while.end_crit_edge

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.body.lr.ph:                                    ; preds = %cond.end
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %rss_stat.i.i.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 40
  %arrayidx.i.i.i = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 1
  %arrayidx.i9.i.i = getelementptr %struct.anon, ptr %1, i32 0, i32 40, i32 0, i32 3
  %hiwater_rss.i = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 17
  br label %do.body

do.body:                                          ; preds = %put_page.exit.do.body_crit_edge, %do.body.lr.ph
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %tobool20.not = icmp eq ptr %59, null
  br i1 %tobool20.not, label %if.then24, label %do.end31, !prof !90

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1788, 0\0A.popsection", ""() #9, !srcloc !136
  unreachable

do.end31:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %60 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div.neg = sdiv exact i32 %sub.ptr.sub, -36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %61 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add32.neg = sub i32 %sub.ptr.div.neg, %61
  %add.ptr = getelementptr %struct.page, ptr %page, i32 %add32.neg
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %59, align 4
  %shr = lshr i32 %63, 12
  %add.ptr35 = getelementptr %struct.page, ptr %add.ptr, i32 %shr
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %3, align 4
  call void @flush_cache_page(ptr noundef %vma, i32 noundef %65, i32 noundef %shr) #9
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %call78 = call i32 @ptep_clear_flush(ptr noundef %vma, i32 noundef %65, ptr noundef %67) #9
  %and80 = and i32 %call78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.end31.if.end91_crit_edge, label %if.then89

do.end31.if.end91_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then89:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = call zeroext i1 @set_page_dirty(ptr noundef %page) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %do.end31.if.end91_crit_edge
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i.i, i32 noundef 4) #9
  %68 = ptrtoint ptr %rss_stat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %rss_stat.i.i.i, align 4
  %70 = call i32 @llvm.smax.i32(i32 %69, i32 0) #9
  %call.i.i.i7.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i.i, i32 noundef 4) #9
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %73 = call i32 @llvm.smax.i32(i32 %72, i32 0) #9
  %add.i.i = add nuw i32 %73, %70
  %call.i.i.i10.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i.i, i32 noundef 4) #9
  %74 = ptrtoint ptr %arrayidx.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %arrayidx.i9.i.i, align 4
  %76 = call i32 @llvm.smax.i32(i32 %75, i32 0) #9
  %add3.i.i = add i32 %add.i.i, %76
  %77 = ptrtoint ptr %hiwater_rss.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hiwater_rss.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %add3.i.i)
  %cmp.i282 = icmp ult i32 %78, %add3.i.i
  br i1 %cmp.i282, label %if.then.i283, label %if.end91.update_hiwater_rss.exit_crit_edge

if.end91.update_hiwater_rss.exit_crit_edge:       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %update_hiwater_rss.exit

if.then.i283:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %hiwater_rss.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add3.i.i, ptr %hiwater_rss.i, align 8
  br label %update_hiwater_rss.exit

update_hiwater_rss.exit:                          ; preds = %if.then.i283, %if.end91.update_hiwater_rss.exit_crit_edge
  %and158 = and i32 %call78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %80 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast162 = ptrtoint ptr %add.ptr35 to i32
  %sub.ptr.rhs.cast163 = ptrtoint ptr %80 to i32
  %sub.ptr.sub164 = sub i32 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163
  %sub.ptr.div165 = sdiv exact i32 %sub.ptr.sub164, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %81 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add166 = add i32 %sub.ptr.div165, %81
  %. = select i1 %tobool159.not, i32 124, i32 120
  %shl6.i = shl i32 %add166, 7
  %or.i = or i32 %., %shl6.i
  %82 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %5, align 4
  call void @set_pte_at(ptr noundef %1, i32 noundef %65, ptr noundef %83, i32 noundef %or.i) #9
  call void @page_remove_rmap(ptr noundef %add.ptr35, i1 noundef zeroext false)
  %84 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %20, align 4
  %and.i.i288 = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i288)
  %tobool.not.i.i289 = icmp eq i32 %and.i.i288, 0
  br i1 %tobool.not.i.i289, label %update_hiwater_rss.exit._compound_head.exit.i_crit_edge, label %if.then.i.i291, !prof !86

update_hiwater_rss.exit._compound_head.exit.i_crit_edge: ; preds = %update_hiwater_rss.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i291:                                   ; preds = %update_hiwater_rss.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i290 = add i32 %85, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i291, %update_hiwater_rss.exit._compound_head.exit.i_crit_edge
  %retval.0.i.i293 = phi i32 [ %sub.i.i290, %if.then.i.i291 ], [ %sub.ptr.lhs.cast, %update_hiwater_rss.exit._compound_head.exit.i_crit_edge ]
  %86 = inttoptr i32 %retval.0.i.i293 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %86, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %87 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i.i.i.i = icmp eq i32 %88, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !90

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = inttoptr i32 %retval.0.i.i293 to ptr
  call void @dump_page(ptr noundef %89, ptr noundef nonnull @.str.26) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !134
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !87
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %90 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %90, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@try_to_migrate_one, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !135

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %86, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %86) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %call18 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call18, label %put_page.exit.do.body_crit_edge, label %put_page.exit.while.end_crit_edge

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

put_page.exit.do.body_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %cond.end.while.end_crit_edge
  %91 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %13, align 4
  %and.i.i294 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i294)
  %tobool.i.not.i = icmp eq i32 %and.i.i294, 0
  br i1 %tobool.i.not.i, label %while.end.if.end.i_crit_edge, label %do.body.i

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.body.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 482) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %while.end.if.end.i_crit_edge
  %93 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %10, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon, ptr %94, i32 0, i32 49
  %95 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i8.not.i = icmp eq ptr %96, null
  br i1 %tobool.i8.not.i, label %if.end.i.mmu_notifier_invalidate_range_end.exit_crit_edge, label %if.then4.i

if.end.i.mmu_notifier_invalidate_range_end.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mmu_notifier_invalidate_range_end.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__mmu_notifier_invalidate_range_end(ptr noundef nonnull %range, i1 noundef zeroext false) #9
  br label %mmu_notifier_invalidate_range_end.exit

mmu_notifier_invalidate_range_end.exit:           ; preds = %if.then4.i, %if.end.i.mmu_notifier_invalidate_range_end.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %range) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #9
  ret i1 true
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @invalid_migration_vma(ptr nocapture noundef readonly %vma, ptr nocapture noundef readnone %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %0 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_flags.i, align 4
  %2 = and i32 %1, 98560
  call void @__sanitizer_cov_trace_const_cmp4(i32 98560, i32 %2)
  %3 = icmp eq i32 %2, 98560
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_mlock(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #9
  %0 = call ptr @memcpy(ptr %rwc, ptr @__const.page_mlock.rwc, i32 20)
  %1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %4, %if.end.i.i ]
  %5 = inttoptr i32 %retval.0.i.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %1, align 4
  %and.i16.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !90

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !86

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %9, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %10, %if.end.i20.i ]
  %11 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !86

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %9, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %12, %if.end.i27.i ]
  %13 = inttoptr i32 %retval.0.i28.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %PageLocked.exit.if.then_crit_edge, label %lor.rhs, !prof !90

PageLocked.exit.if.then_crit_edge:                ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.rhs:                                          ; preds = %PageLocked.exit
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %1, align 4
  %and.i.i45 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.not.i.i46, label %if.end.i.i49, label %if.then.i.i48, !prof !86

if.then.i.i48:                                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i47 = add i32 %17, -1
  br label %_compound_head.exit.i52

if.end.i.i49:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i52

_compound_head.exit.i52:                          ; preds = %if.end.i.i49, %if.then.i.i48
  %retval.0.i.i50 = phi i32 [ %sub.i.i47, %if.then.i.i48 ], [ %18, %if.end.i.i49 ]
  %19 = inttoptr i32 %retval.0.i.i50 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i51 = icmp eq i32 %21, -1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %1, align 4
  %and.i13.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i51, label %if.then.i53, label %do.end8.i, !prof !90

if.then.i53:                                      ; preds = %_compound_head.exit.i52
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !86

if.then.i16.i:                                    ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i15.i = add i32 %23, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %24, %if.end.i17.i ]
  %25 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 422, 0\0A.popsection", ""() #9, !srcloc !137
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i52
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !86

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i22.i = add i32 %23, -1
  br label %PageLRU.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %page to i32
  br label %PageLRU.exit

PageLRU.exit:                                     ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %26, %if.end.i24.i ]
  %27 = inttoptr i32 %retval.0.i25.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool2.not = icmp eq i32 %30, 0
  br i1 %tobool2.not, label %do.body11, label %PageLRU.exit.if.then_crit_edge, !prof !86

PageLRU.exit.if.then_crit_edge:                   ; preds = %PageLRU.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %PageLRU.exit.if.then_crit_edge, %PageLocked.exit.if.then_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2059, 0\0A.popsection", ""() #9, !srcloc !138
  unreachable

do.body11:                                        ; preds = %PageLRU.exit
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %page, align 4
  %33 = and i32 %32, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %PageCompound.exit, label %do.body11.do.end31_crit_edge

do.body11.do.end31_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

PageCompound.exit:                                ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %1, align 4
  br label %do.end31

do.end31:                                         ; preds = %PageCompound.exit, %do.body11.do.end31_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %1, align 4
  %and.i2.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !86

if.then.i.i.i:                                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %37, -1
  br label %PageKsm.exit.i

if.end.i.i.i:                                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %38, %if.end.i.i.i ]
  %39 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mapping.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  %and.i.i.i = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i56, label %if.else.i, !prof !90

if.then.i56:                                      ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @rmap_walk_ksm(ptr noundef %page, ptr noundef nonnull %rwc) #9
  br label %rmap_walk.exit

if.else.i:                                        ; preds = %PageKsm.exit.i
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %1, align 4
  %and.i2.i12.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i12.i)
  %tobool.not.i.i13.i = icmp eq i32 %and.i2.i12.i, 0
  br i1 %tobool.not.i.i13.i, label %if.end.i.i16.i, label %if.then.i.i15.i, !prof !86

if.then.i.i15.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i14.i = add i32 %44, -1
  br label %PageAnon.exit.i

if.end.i.i16.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i16.i, %if.then.i.i15.i
  %retval.0.i.i17.i = phi i32 [ %sub.i.i14.i, %if.then.i.i15.i ], [ %45, %if.end.i.i16.i ]
  %46 = inttoptr i32 %retval.0.i.i17.i to ptr
  %mapping.i.i18.i = getelementptr inbounds %struct.anon.63, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %mapping.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mapping.i.i18.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i19.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19.i)
  %cmp.i.i20.not.i = icmp eq i32 %and.i.i19.i, 0
  br i1 %cmp.i.i20.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_anon(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %rmap_walk.exit

if.else4.i:                                       ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rmap_walk_file(ptr noundef %page, ptr noundef nonnull %rwc, i1 noundef zeroext false) #9
  br label %rmap_walk.exit

rmap_walk.exit:                                   ; preds = %if.else4.i, %if.then3.i, %if.then.i56
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @page_mlock_one(ptr noundef %page, ptr noundef %vma, i32 noundef %address, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #9
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %5 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %page, ptr %pvmw, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vma, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %address, ptr %1, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = call ptr @memset(ptr %2, i32 0, i32 16)
  %9 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vm_flags, align 4
  %and = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %call = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #9
  br i1 %call, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %11 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_flags, align 4
  %and5 = and i32 %12, 8192
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %while.body.while.cond_crit_edge, label %if.then7

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then7:                                         ; preds = %while.body
  call void @mlock_vma_page(ptr noundef %page) #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then7.if.end.i_crit_edge, label %land.lhs.true.i

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void @kunmap_local_indexed(ptr noundef nonnull %14) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %15 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %20, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %21 = call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then7.if.end.i_crit_edge
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.then6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef nonnull %26) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.then6.i ], [ true, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmap_walk_ksm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rmap_walk_anon(ptr noundef %page, ptr nocapture noundef readonly %rwc, i1 noundef zeroext %locked) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %locked, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call ptr @page_anon_vma(ptr noundef %page) #9
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then5, label %if.then.if.end16_crit_edge, !prof !90

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.27) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2310, 0\0A.popsection", ""() #9, !srcloc !139
  unreachable

if.else:                                          ; preds = %entry
  %anon_lock.i = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 3
  %0 = ptrtoint ptr %anon_lock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %anon_lock.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13

if.end.i:                                         ; preds = %if.else
  %call2.i = tail call ptr @page_anon_vma(ptr noundef %page) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup62_crit_edge, label %if.end5.i

if.end.i.cleanup62_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call2.i, align 4
  %rwsem.i.i = getelementptr inbounds %struct.anon_vma, ptr %3, i32 0, i32 1
  tail call void @down_read(ptr noundef %rwsem.i.i) #9
  br label %if.end16

if.end13:                                         ; preds = %if.else
  %call.i = tail call ptr %1(ptr noundef %page) #9
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end13.cleanup62_crit_edge, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end13.cleanup62_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.end16:                                         ; preds = %if.end13.if.end16_crit_edge, %if.end5.i, %if.then.if.end16_crit_edge
  %anon_vma.0102 = phi ptr [ %call.i, %if.end13.if.end16_crit_edge ], [ %call2.i, %if.end5.i ], [ %call, %if.then.if.end16_crit_edge ]
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i96 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i96, label %thp_nr_pages.exit, label %if.then.i97, !prof !86

if.then.i97:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #9, !srcloc !120
  unreachable

thp_nr_pages.exit:                                ; preds = %if.end16
  %rb_root = getelementptr inbounds %struct.anon_vma, ptr %anon_vma.0102, i32 0, i32 5
  %call19 = tail call ptr @anon_vma_interval_tree_iter_first(ptr noundef %rb_root, i32 noundef %5, i32 noundef %5) #9
  %tobool20.not114 = icmp eq ptr %call19, null
  br i1 %tobool20.not114, label %thp_nr_pages.exit.for.end_crit_edge, label %for.body.lr.ph

thp_nr_pages.exit.for.end_crit_edge:              ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %thp_nr_pages.exit
  %9 = ptrtoint ptr %page to i32
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %done = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %avc.0115 = phi ptr [ %call19, %for.body.lr.ph ], [ %call58, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %avc.0115 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %avc.0115, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %6, align 4
  %and.i2.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.PageKsm.exit.i_crit_edge, label %if.then.i.i.i, !prof !86

for.body.PageKsm.exit.i_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageKsm.exit.i

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %13, -1
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.then.i.i.i, %for.body.PageKsm.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %9, %for.body.PageKsm.exit.i_crit_edge ]
  %14 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i98, label %do.end7.i, !prof !90

if.then.i98:                                      ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 441, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

do.end7.i:                                        ; preds = %PageKsm.exit.i
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 13
  %20 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i = icmp ult i32 %19, %21
  br i1 %cmp.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end7.i
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %11, align 4
  %sub.i = sub i32 %19, %21
  %shl.i = shl i32 %sub.i, 12
  %add.i = add i32 %23, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %23)
  %cmp12.i = icmp ult i32 %add.i, %23
  br i1 %cmp12.i, label %if.then9.i.if.then30_crit_edge, label %lor.lhs.false.i

if.then9.i.if.then30_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false.i:                                  ; preds = %if.then9.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp13.not.i = icmp ult i32 %add.i, %25
  br i1 %cmp13.not.i, label %lor.lhs.false.i.vma_address.exit_crit_edge, label %lor.lhs.false.i.if.then30_crit_edge

lor.lhs.false.i.if.then30_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

lor.lhs.false.i.vma_address.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vma_address.exit

if.else.i:                                        ; preds = %do.end7.i
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i.i = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageHead.exit.i, !prof !90

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i:                                  ; preds = %if.else.i
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool17.not.i = icmp eq i32 %30, 0
  br i1 %tobool17.not.i, label %PageHead.exit.i.if.then30_crit_edge, label %land.lhs.true.i

PageHead.exit.i.if.then30_crit_edge:              ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

land.lhs.true.i:                                  ; preds = %PageHead.exit.i
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i.i = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i42.i, label %PageHead.exit.i.i, !prof !90

if.then.i.i42.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i.i:                                ; preds = %land.lhs.true.i
  %33 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %page, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compound_nr.exit.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %37, %if.end.i.i ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %add19.i = add i32 %19, -1
  %sub20.i = add i32 %add19.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20.i, i32 %21)
  %cmp22.not.i = icmp ult i32 %sub20.i, %21
  br i1 %cmp22.not.i, label %compound_nr.exit.i.if.then30_crit_edge, label %if.then23.i

compound_nr.exit.i.if.then30_crit_edge:           ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then23.i:                                      ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %11, align 4
  br label %vma_address.exit

vma_address.exit:                                 ; preds = %if.then23.i, %lor.lhs.false.i.vma_address.exit_crit_edge
  %address.0.i = phi i32 [ %add.i, %lor.lhs.false.i.vma_address.exit_crit_edge ], [ %39, %if.then23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %address.0.i)
  %cmp = icmp eq i32 %address.0.i, -14
  br i1 %cmp, label %vma_address.exit.if.then30_crit_edge, label %do.end39, !prof !90

vma_address.exit.if.then30_crit_edge:             ; preds = %vma_address.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then30:                                        ; preds = %vma_address.exit.if.then30_crit_edge, %compound_nr.exit.i.if.then30_crit_edge, %PageHead.exit.i.if.then30_crit_edge, %lor.lhs.false.i.if.then30_crit_edge, %if.then9.i.if.then30_crit_edge
  tail call void @dump_vma(ptr noundef %11) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2324, 0\0A.popsection", ""() #9, !srcloc !140
  unreachable

do.end39:                                         ; preds = %vma_address.exit
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2325, i32 noundef 0) #9
  %call.i99 = tail call i32 @__cond_resched() #9
  %40 = ptrtoint ptr %invalid_vma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %invalid_vma, align 4
  %tobool41.not = icmp eq ptr %41, null
  br i1 %tobool41.not, label %do.end39.if.end45_crit_edge, label %land.lhs.true

do.end39.if.end45_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true:                                    ; preds = %do.end39
  %42 = ptrtoint ptr %rwc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rwc, align 4
  %call43 = tail call zeroext i1 %41(ptr noundef %11, ptr noundef %43) #9
  br i1 %call43, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end45:                                         ; preds = %land.lhs.true.if.end45_crit_edge, %do.end39.if.end45_crit_edge
  %44 = ptrtoint ptr %rmap_one to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmap_one, align 4
  %46 = ptrtoint ptr %rwc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rwc, align 4
  %call47 = tail call zeroext i1 %45(ptr noundef %page, ptr noundef %11, i32 noundef %address.0.i, ptr noundef %47) #9
  br i1 %call47, label %if.end49, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end49:                                         ; preds = %if.end45
  %48 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %done, align 4
  %tobool50.not = icmp eq ptr %49, null
  br i1 %tobool50.not, label %if.end49.for.inc_crit_edge, label %land.lhs.true51

if.end49.for.inc_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true51:                                  ; preds = %if.end49
  %call53 = tail call i32 %49(ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true51.for.inc_crit_edge, label %land.lhs.true51.for.end_crit_edge

land.lhs.true51.for.end_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true51.for.inc_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true51.for.inc_crit_edge, %if.end49.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %call58 = tail call ptr @anon_vma_interval_tree_iter_next(ptr noundef nonnull %avc.0115, i32 noundef %5, i32 noundef %5) #9
  %tobool20.not = icmp eq ptr %call58, null
  br i1 %tobool20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true51.for.end_crit_edge, %if.end45.for.end_crit_edge, %thp_nr_pages.exit.for.end_crit_edge
  br i1 %locked, label %for.end.cleanup62_crit_edge, label %if.then60

for.end.cleanup62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup62

if.then60:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %anon_vma.0102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %anon_vma.0102, align 4
  %rwsem.i = getelementptr inbounds %struct.anon_vma, ptr %51, i32 0, i32 1
  tail call void @up_read(ptr noundef %rwsem.i) #9
  br label %cleanup62

cleanup62:                                        ; preds = %if.then60, %for.end.cleanup62_crit_edge, %if.end13.cleanup62_crit_edge, %if.end.i.cleanup62_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rmap_walk_file(ptr noundef %page, ptr nocapture noundef readonly %rwc, i1 noundef zeroext %locked) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_mapping(ptr noundef %page) #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !86

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !90

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !86

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.20) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #9, !srcloc !108
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !86

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.end10, !prof !90

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2366, 0\0A.popsection", ""() #9, !srcloc !141
  unreachable

do.end10:                                         ; preds = %PageLocked.exit
  %tobool11.not = icmp eq ptr %call, null
  br i1 %tobool11.not, label %do.end10.cleanup61_crit_edge, label %if.end13

do.end10.cleanup61_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup61

if.end13:                                         ; preds = %do.end10
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i, align 4
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %0, align 4
  %and.i.i94 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool.not.i = icmp eq i32 %and.i.i94, 0
  br i1 %tobool.not.i, label %thp_nr_pages.exit, label %if.then.i95, !prof !86

if.then.i95:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #9, !srcloc !120
  unreachable

thp_nr_pages.exit:                                ; preds = %if.end13
  br i1 %locked, label %thp_nr_pages.exit.if.end18_crit_edge, label %if.then17

thp_nr_pages.exit.if.end18_crit_edge:             ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  %i_mmap_rwsem.i = getelementptr inbounds %struct.address_space, ptr %call, i32 0, i32 6
  tail call void @down_read(ptr noundef %i_mmap_rwsem.i) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %thp_nr_pages.exit.if.end18_crit_edge
  %i_mmap = getelementptr inbounds %struct.address_space, ptr %call, i32 0, i32 5
  %call19 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %i_mmap, i32 noundef %16, i32 noundef %16) #9
  %tobool20.not109 = icmp eq ptr %call19, null
  br i1 %tobool20.not109, label %if.end18.done57_crit_edge, label %for.body.lr.ph

if.end18.done57_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %done57

for.body.lr.ph:                                   ; preds = %if.end18
  %19 = ptrtoint ptr %page to i32
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %invalid_vma = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %rmap_one = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %done = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vma.0110 = phi ptr [ %call19, %for.body.lr.ph ], [ %call56, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %0, align 4
  %and.i2.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.PageKsm.exit.i_crit_edge, label %if.then.i.i.i, !prof !86

for.body.PageKsm.exit.i_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %PageKsm.exit.i

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %21, -1
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.then.i.i.i, %for.body.PageKsm.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %19, %for.body.PageKsm.exit.i_crit_edge ]
  %22 = inttoptr i32 %retval.0.i.i.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.63, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mapping.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 3
  br i1 %cmp.i.i.i, label %if.then.i96, label %do.end7.i, !prof !90

if.then.i96:                                      ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 441, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

do.end7.i:                                        ; preds = %PageKsm.exit.i
  %26 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.i, align 4
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0110, i32 0, i32 13
  %28 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_pgoff.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.not.i = icmp ult i32 %27, %29
  br i1 %cmp.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end7.i
  %30 = ptrtoint ptr %vma.0110 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vma.0110, align 4
  %sub.i = sub i32 %27, %29
  %shl.i = shl i32 %sub.i, 12
  %add.i = add i32 %31, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %31)
  %cmp12.i = icmp ult i32 %add.i, %31
  br i1 %cmp12.i, label %if.then9.i.if.then29_crit_edge, label %lor.lhs.false.i

if.then9.i.if.then29_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

lor.lhs.false.i:                                  ; preds = %if.then9.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.0110, i32 0, i32 1
  %32 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %33)
  %cmp13.not.i = icmp ult i32 %add.i, %33
  br i1 %cmp13.not.i, label %lor.lhs.false.i.vma_address.exit_crit_edge, label %lor.lhs.false.i.if.then29_crit_edge

lor.lhs.false.i.if.then29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

lor.lhs.false.i.vma_address.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vma_address.exit

if.else.i:                                        ; preds = %do.end7.i
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i97, label %PageHead.exit.i, !prof !90

if.then.i.i97:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i:                                  ; preds = %if.else.i
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool17.not.i = icmp eq i32 %38, 0
  br i1 %tobool17.not.i, label %PageHead.exit.i.if.then29_crit_edge, label %land.lhs.true.i

PageHead.exit.i.if.then29_crit_edge:              ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

land.lhs.true.i:                                  ; preds = %PageHead.exit.i
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i.i.i = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i42.i, label %PageHead.exit.i.i, !prof !90

if.then.i.i42.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

PageHead.exit.i.i:                                ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %page, align 4
  %43 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i98 = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i98, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i99

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compound_nr.exit.i

if.end.i.i99:                                     ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i99, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i100 = phi i32 [ %45, %if.end.i.i99 ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %add19.i = add i32 %27, -1
  %sub20.i = add i32 %add19.i, %retval.0.i.i100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20.i, i32 %29)
  %cmp22.not.i = icmp ult i32 %sub20.i, %29
  br i1 %cmp22.not.i, label %compound_nr.exit.i.if.then29_crit_edge, label %if.then23.i

compound_nr.exit.i.if.then29_crit_edge:           ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then23.i:                                      ; preds = %compound_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %vma.0110 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vma.0110, align 4
  br label %vma_address.exit

vma_address.exit:                                 ; preds = %if.then23.i, %lor.lhs.false.i.vma_address.exit_crit_edge
  %address.0.i = phi i32 [ %add.i, %lor.lhs.false.i.vma_address.exit_crit_edge ], [ %47, %if.then23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %address.0.i)
  %cmp = icmp eq i32 %address.0.i, -14
  br i1 %cmp, label %vma_address.exit.if.then29_crit_edge, label %do.end38, !prof !90

vma_address.exit.if.then29_crit_edge:             ; preds = %vma_address.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then29:                                        ; preds = %vma_address.exit.if.then29_crit_edge, %compound_nr.exit.i.if.then29_crit_edge, %PageHead.exit.i.if.then29_crit_edge, %lor.lhs.false.i.if.then29_crit_edge, %if.then9.i.if.then29_crit_edge
  tail call void @dump_vma(ptr noundef nonnull %vma.0110) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2379, 0\0A.popsection", ""() #9, !srcloc !142
  unreachable

do.end38:                                         ; preds = %vma_address.exit
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 2380, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %48 = ptrtoint ptr %invalid_vma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %invalid_vma, align 4
  %tobool40.not = icmp eq ptr %49, null
  br i1 %tobool40.not, label %do.end38.if.end44_crit_edge, label %land.lhs.true

do.end38.if.end44_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true:                                    ; preds = %do.end38
  %50 = ptrtoint ptr %rwc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rwc, align 4
  %call42 = tail call zeroext i1 %49(ptr noundef nonnull %vma.0110, ptr noundef %51) #9
  br i1 %call42, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %do.end38.if.end44_crit_edge
  %52 = ptrtoint ptr %rmap_one to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmap_one, align 4
  %54 = ptrtoint ptr %rwc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rwc, align 4
  %call46 = tail call zeroext i1 %53(ptr noundef %page, ptr noundef nonnull %vma.0110, i32 noundef %address.0.i, ptr noundef %55) #9
  br i1 %call46, label %if.end48, label %if.end44.done57_crit_edge

if.end44.done57_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %done57

if.end48:                                         ; preds = %if.end44
  %56 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %done, align 4
  %tobool49.not = icmp eq ptr %57, null
  br i1 %tobool49.not, label %if.end48.for.inc_crit_edge, label %land.lhs.true50

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true50:                                  ; preds = %if.end48
  %call52 = tail call i32 %57(ptr noundef %page) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %land.lhs.true50.for.inc_crit_edge, label %land.lhs.true50.done57_crit_edge

land.lhs.true50.done57_crit_edge:                 ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %done57

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true50.for.inc_crit_edge, %if.end48.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %call56 = tail call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %vma.0110, i32 noundef %16, i32 noundef %16) #9
  %tobool20.not = icmp eq ptr %call56, null
  br i1 %tobool20.not, label %for.inc.done57_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.done57_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %done57

done57:                                           ; preds = %for.inc.done57_crit_edge, %land.lhs.true50.done57_crit_edge, %if.end44.done57_crit_edge, %if.end18.done57_crit_edge
  br i1 %locked, label %done57.cleanup61_crit_edge, label %if.then59

done57.cleanup61_crit_edge:                       ; preds = %done57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup61

if.then59:                                        ; preds = %done57
  call void @__sanitizer_cov_trace_pc() #11
  %i_mmap_rwsem.i101 = getelementptr inbounds %struct.address_space, ptr %call, i32 0, i32 6
  tail call void @up_read(ptr noundef %i_mmap_rwsem.i101) #9
  br label %cleanup61

cleanup61:                                        ; preds = %if.then59, %done57.cleanup61_crit_edge, %do.end10.cleanup61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_vma_mapped_walk_done(ptr nocapture noundef readonly %pvmw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %pte = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %0 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pte, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kunmap_local_indexed(ptr noundef nonnull %1) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %2 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i1.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 213
  %6 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %7, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %8 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %ptl = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %12 = ptrtoint ptr %ptl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptl, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef nonnull %13) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush_young(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_clear_flush_young(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mem_cgroup_from_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmu_notifier_invalidate_range_start(ptr noundef %range) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 454) #9
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
declare dso_local void @flush_cache_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptep_clear_flush(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_invalidate_range_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range_end(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_duplicate([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_invalidate_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_trace_rss_stat(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/rmap.c", i32 189, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/rmap.c", i32 455, i32 38}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/rmap.c", i32 458, i32 26}
!6 = !{ptr @__ksymtab_folio_mkclean, !7, !"__ksymtab_folio_mkclean", i1 false, i1 false}
!7 = !{!"../mm/rmap.c", i32 1036, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/rmap.c", i32 1054, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/rmap.c", i32 1164, i32 3}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/rmap.c", i32 1225, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../mm/rmap.c", i32 1244, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../mm/rmap.c", i32 1265, i32 4}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../mm/rmap.c", i32 1975, i32 6}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/rmap.c", i32 2059, i32 2}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../mm/rmap.c", i32 2060, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/rmap.c", i32 2410, i32 2}
!26 = !{ptr @anon_vma_cachep, !27, !"anon_vma_cachep", i1 false, i1 false}
!27 = !{!"../mm/rmap.c", i32 83, i32 27}
!28 = !{ptr @anon_vma_chain_cachep, !29, !"anon_vma_chain_cachep", i1 false, i1 false}
!29 = !{!"../mm/rmap.c", i32 84, i32 27}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../mm/rmap.c", i32 243, i32 7}
!32 = !{ptr @anon_vma_ctor.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../mm/rmap.c", i32 448, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../mm/rmap.c", i32 841, i32 4}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/memcontrol.h", i32 864, i32 36}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../mm/rmap.c", i32 985, i32 4}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/mmu_notifier.h", i32 454, i32 2}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../mm/rmap.c", i32 1122, i32 2}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../mm/rmap.c", i32 1123, i32 2}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/page-flags.h", i32 445, i32 2}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../mm/rmap.c", i32 1283, i32 2}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../mm/rmap.c", i32 1492, i32 3}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../mm/rmap.c", i32 1591, i32 5}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/mm.h", i32 717, i32 2}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../mm/rmap.c", i32 2310, i32 3}
!76 = !{!"sp"}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148822538}
!88 = !{i64 2148737247, i64 2148737279, i64 2148737308, i64 2148737342, i64 2148737373, i64 2148737396}
!89 = !{i64 2148822767}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{i64 2148734062, i64 2148734088, i64 2148734117, i64 2148734151, i64 2148734182, i64 2148734205}
!92 = !{i64 2150069395}
!93 = !{i64 2148733481}
!94 = !{i64 1220081, i64 1220106, i64 1220128, i64 1220144, i64 1220156, i64 1220176, i64 1220200, i64 1220216, i64 1220228}
!95 = !{i64 2148733669}
!96 = !{i64 2150069661}
!97 = !{i64 2155305325, i64 2155305799, i64 2155305362, i64 2155305418, i64 2155305452, i64 2155305476, i64 2155305517, i64 2155305538, i64 2155305566, i64 2155305600}
!98 = !{i64 2155298620, i64 2155299098, i64 2155298657, i64 2155298713, i64 2155298747, i64 2155298771, i64 2155298812, i64 2155298833, i64 2155298861, i64 2155298895}
!99 = !{i64 2151055846, i64 2151056337, i64 2151055883, i64 2151055939, i64 2151055973, i64 2151055997, i64 2151056038, i64 2151056059, i64 2151056087, i64 2151056121}
!100 = !{i64 2155336922}
!101 = !{i64 2150289060, i64 2150289551, i64 2150289097, i64 2150289153, i64 2150289187, i64 2150289211, i64 2150289252, i64 2150289273, i64 2150289301, i64 2150289335}
!102 = !{i64 2148742920, i64 2148742952, i64 2148742981, i64 2148743015, i64 2148743046, i64 2148743069}
!103 = !{i64 2148832025}
!104 = !{i64 2152797316}
!105 = !{i64 2153865323}
!106 = !{i64 2155341543, i64 2155342018, i64 2155341580, i64 2155341636, i64 2155341670, i64 2155341694, i64 2155341735, i64 2155341756, i64 2155341784, i64 2155341818}
!107 = !{i64 2155300543, i64 2155301021, i64 2155300580, i64 2155300636, i64 2155300670, i64 2155300694, i64 2155300735, i64 2155300756, i64 2155300784, i64 2155300818}
!108 = !{i64 2150300554, i64 2150301045, i64 2150300591, i64 2150300647, i64 2150300681, i64 2150300705, i64 2150300746, i64 2150300767, i64 2150300795, i64 2150300829}
!109 = !{i64 2155344727, i64 2155345202, i64 2155344764, i64 2155344820, i64 2155344854, i64 2155344878, i64 2155344919, i64 2155344940, i64 2155344968, i64 2155345002}
!110 = !{i64 2155346339, i64 2155346814, i64 2155346376, i64 2155346432, i64 2155346466, i64 2155346490, i64 2155346531, i64 2155346552, i64 2155346580, i64 2155346614}
!111 = !{i64 2155361926, i64 2155362401, i64 2155361963, i64 2155362019, i64 2155362053, i64 2155362077, i64 2155362118, i64 2155362139, i64 2155362167, i64 2155362201}
!112 = !{i64 2155363668, i64 2155364143, i64 2155363705, i64 2155363761, i64 2155363795, i64 2155363819, i64 2155363860, i64 2155363881, i64 2155363909, i64 2155363943}
!113 = !{i64 2155365425, i64 2155365900, i64 2155365462, i64 2155365518, i64 2155365552, i64 2155365576, i64 2155365617, i64 2155365638, i64 2155365666, i64 2155365700}
!114 = !{i64 2148819497}
!115 = !{i64 2148734782, i64 2148734814, i64 2148734843, i64 2148734877, i64 2148734908, i64 2148734931}
!116 = !{i64 2148819726}
!117 = !{i64 2155350067, i64 2155350542, i64 2155350104, i64 2155350160, i64 2155350194, i64 2155350218, i64 2155350259, i64 2155350280, i64 2155350308, i64 2155350342}
!118 = !{i64 2155354145, i64 2155354620, i64 2155354182, i64 2155354238, i64 2155354272, i64 2155354296, i64 2155354337, i64 2155354358, i64 2155354386, i64 2155354420}
!119 = !{i64 2155360133, i64 2155360608, i64 2155360170, i64 2155360226, i64 2155360260, i64 2155360284, i64 2155360325, i64 2155360346, i64 2155360374, i64 2155360408}
!120 = !{i64 2153171048, i64 2153171536, i64 2153171085, i64 2153171141, i64 2153171175, i64 2153171199, i64 2153171240, i64 2153171261, i64 2153171289, i64 2153171323}
!121 = !{i64 2155367163, i64 2155367638, i64 2155367200, i64 2155367256, i64 2155367290, i64 2155367314, i64 2155367355, i64 2155367376, i64 2155367404, i64 2155367438}
!122 = !{i64 2150746465, i64 2150746956, i64 2150746502, i64 2150746558, i64 2150746592, i64 2150746616, i64 2150746657, i64 2150746678, i64 2150746706, i64 2150746740}
!123 = !{i64 2150748845, i64 2150749336, i64 2150748882, i64 2150748938, i64 2150748972, i64 2150748996, i64 2150749037, i64 2150749058, i64 2150749086, i64 2150749120}
!124 = !{i64 2155368920, i64 2155369395, i64 2155368957, i64 2155369013, i64 2155369047, i64 2155369071, i64 2155369112, i64 2155369133, i64 2155369161, i64 2155369195}
!125 = !{i64 2155372509, i64 2155372984, i64 2155372546, i64 2155372602, i64 2155372636, i64 2155372660, i64 2155372701, i64 2155372722, i64 2155372750, i64 2155372784}
!126 = !{i64 2155375384, i64 2155375859, i64 2155375421, i64 2155375477, i64 2155375511, i64 2155375535, i64 2155375576, i64 2155375597, i64 2155375625, i64 2155375659}
!127 = !{i64 2150970653, i64 2150971144, i64 2150970690, i64 2150970746, i64 2150970780, i64 2150970804, i64 2150970845, i64 2150970866, i64 2150970894, i64 2150970928}
!128 = !{i64 2155404723, i64 2155405198, i64 2155404760, i64 2155404816, i64 2155404850, i64 2155404874, i64 2155404915, i64 2155404936, i64 2155404964, i64 2155404998}
!129 = !{i64 2155378336, i64 2155378811, i64 2155378373, i64 2155378429, i64 2155378463, i64 2155378487, i64 2155378528, i64 2155378549, i64 2155378577, i64 2155378611}
!130 = !{i64 2150716574, i64 2150717065, i64 2150716611, i64 2150716667, i64 2150716701, i64 2150716725, i64 2150716766, i64 2150716787, i64 2150716815, i64 2150716849}
!131 = !{i64 2150403030, i64 2150403521, i64 2150403067, i64 2150403123, i64 2150403157, i64 2150403181, i64 2150403222, i64 2150403243, i64 2150403271, i64 2150403305}
!132 = !{i64 2150725192, i64 2150725365, i64 2150725380, i64 2150725432, i64 2150725491, i64 2150725515, i64 2150725556, i64 2150725577, i64 2150725605, i64 2150725637}
!133 = !{i64 2150726067, i64 2150726240, i64 2150726255, i64 2150726307, i64 2150726366, i64 2150726390, i64 2150726431, i64 2150726452, i64 2150726480, i64 2150726512}
!134 = !{i64 2153180058, i64 2153180541, i64 2153180095, i64 2153180151, i64 2153180185, i64 2153180209, i64 2153180250, i64 2153180271, i64 2153180299, i64 2153180333}
!135 = !{i64 2148334739, i64 2148334744, i64 2148334757, i64 2148334801, i64 2148334835, i64 2148334856}
!136 = !{i64 2155383953, i64 2155384428, i64 2155383990, i64 2155384046, i64 2155384080, i64 2155384104, i64 2155384145, i64 2155384166, i64 2155384194, i64 2155384228}
!137 = !{i64 2150431126, i64 2150431617, i64 2150431163, i64 2150431219, i64 2150431253, i64 2150431277, i64 2150431318, i64 2150431339, i64 2150431367, i64 2150431401}
!138 = !{i64 2155389697, i64 2155390172, i64 2155389734, i64 2155389790, i64 2155389824, i64 2155389848, i64 2155389889, i64 2155389910, i64 2155389938, i64 2155389972}
!139 = !{i64 2155393287, i64 2155393762, i64 2155393324, i64 2155393380, i64 2155393414, i64 2155393438, i64 2155393479, i64 2155393500, i64 2155393528, i64 2155393562}
!140 = !{i64 2155395129, i64 2155395604, i64 2155395166, i64 2155395222, i64 2155395256, i64 2155395280, i64 2155395321, i64 2155395342, i64 2155395370, i64 2155395404}
!141 = !{i64 2155396977, i64 2155401513, i64 2155397014, i64 2155397070, i64 2155397104, i64 2155397128, i64 2155397169, i64 2155397190, i64 2155397218, i64 2155397252}
!142 = !{i64 2155402868, i64 2155403343, i64 2155402905, i64 2155402961, i64 2155402995, i64 2155403019, i64 2155403060, i64 2155403081, i64 2155403109, i64 2155403143}
