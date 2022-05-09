; ModuleID = '/llk/IR_all_yes/mm/damon/vaddr.c_pt.bc'
source_filename = "../mm/damon/vaddr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kunit_suite = type { [256 x i8], ptr, ptr, ptr, [256 x i8], ptr, ptr }
%struct.kunit_case = type { ptr, ptr, ptr, i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.3, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.damon_addr_range = type { i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.damon_ctx = type { i32, i32, i32, %struct.timespec64, %struct.timespec64, ptr, %struct.mutex, %struct.damon_primitive, %struct.damon_callback, i32, i32, %struct.list_head, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.damon_primitive = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.damon_callback = type { ptr, ptr, ptr, ptr, ptr }
%struct.damos = type { i32, i32, i32, i32, i32, i32, i32, %struct.damos_quota, %struct.damos_watermarks, %struct.damos_stat, %struct.list_head }
%struct.damos_quota = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, [100 x i32], i32 }
%struct.damos_watermarks = type { i32, i32, i32, i32, i32, i8 }
%struct.damos_stat = type { i32, i32, i32, i32, i32 }
%struct.damon_target = type { i32, i32, %struct.list_head, %struct.list_head }
%struct.damon_region = type { %struct.damon_addr_range, i32, i32, %struct.list_head, i32, i32 }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.7, %union.anon.42, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.42 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.damon_young_walk_private = type { ptr, i8 }
%struct.kunit_binary_assert = type { %struct.kunit_assert, ptr, ptr, i64, ptr, i64 }
%struct.kunit_assert = type { ptr, i32, i32, ptr, %struct.va_format, ptr }
%struct.va_format = type { ptr, ptr }

@__UNIQUE_ID_array268 = internal global [2 x ptr] [ptr @damon_test_suite, ptr null], align 4
@__UNIQUE_ID_suites269 = internal global ptr @__UNIQUE_ID_array268, section ".kunit_test_suites", align 4
@__damon_va_init_regions.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vaddr\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__damon_va_init_regions\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mm/damon/vaddr.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get three regions of %dth target\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"damon-va: Failed to get three regions of %dth target\0A\00", [42 x i8] zeroinitializer }, align 32
@__damon_va_init_regions._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, align 1
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013damon-va: %d'th init region creation failed\0A\00", [49 x i8] zeroinitializer }, align 32
@__damon_va_init_regions._entry_ptr = internal global ptr @__damon_va_init_regions._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@damon_mkold_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @damon_mkold_pmd_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__damon_va_check_access.last_mm = internal unnamed_addr global ptr null, align 4
@__damon_va_check_access.last_addr = internal unnamed_addr global i32 0, align 4
@__damon_va_check_access.last_page_sz = internal global i32 4096, align 4
@__damon_va_check_access.last_accessed = internal unnamed_addr global i8 0, align 1
@damon_young_ops = internal constant { %struct.mm_walk_ops, [56 x i8] } { %struct.mm_walk_ops { ptr null, ptr null, ptr null, ptr @damon_young_pmd_entry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@damon_test_suite = internal global { %struct.kunit_suite, [140 x i8] } { %struct.kunit_suite { [256 x i8] c"damon-primitives\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @damon_test_cases, [256 x i8] zeroinitializer, ptr null, ptr null }, [140 x i8] zeroinitializer }, align 32
@damon_test_cases = internal global { [7 x %struct.kunit_case], [52 x i8] } { [7 x %struct.kunit_case] [%struct.kunit_case { ptr @damon_test_three_regions_in_vmas, ptr @.str.7, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_apply_three_regions1, ptr @.str.8, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_apply_three_regions2, ptr @.str.9, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_apply_three_regions3, ptr @.str.10, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_apply_three_regions4, ptr @.str.11, ptr null, i32 0, ptr null }, %struct.kunit_case { ptr @damon_test_split_evenly, ptr @.str.12, ptr null, i32 0, ptr null }, %struct.kunit_case zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"damon_test_three_regions_in_vmas\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"damon_test_apply_three_regions1\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"damon_test_apply_three_regions2\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"damon_test_apply_three_regions3\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"damon_test_apply_three_regions4\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"damon_test_split_evenly\00", [40 x i8] zeroinitializer }, align 32
@__const.damon_test_three_regions_in_vmas.vmas = private unnamed_addr constant [6 x %struct.vm_area_struct] [%struct.vm_area_struct { i32 10, i32 20, ptr null, ptr null, %struct.rb_node zeroinitializer, i32 0, ptr null, i32 0, i32 0, %union.anon.3 zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, %struct.vm_userfaultfd_ctx zeroinitializer }, %struct.vm_area_struct { i32 20, i32 25, ptr null, ptr null, %struct.rb_node zeroinitializer, i32 0, ptr null, i32 0, i32 0, %union.anon.3 zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, %struct.vm_userfaultfd_ctx zeroinitializer }, %struct.vm_area_struct { i32 200, i32 210, ptr null, ptr null, %struct.rb_node zeroinitializer, i32 0, ptr null, i32 0, i32 0, %union.anon.3 zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, %struct.vm_userfaultfd_ctx zeroinitializer }, %struct.vm_area_struct { i32 210, i32 220, ptr null, ptr null, %struct.rb_node zeroinitializer, i32 0, ptr null, i32 0, i32 0, %union.anon.3 zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, %struct.vm_userfaultfd_ctx zeroinitializer }, %struct.vm_area_struct { i32 300, i32 305, ptr null, ptr null, %struct.rb_node zeroinitializer, i32 0, ptr null, i32 0, i32 0, %union.anon.3 zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, %struct.vm_userfaultfd_ctx zeroinitializer }, %struct.vm_area_struct { i32 307, i32 330, ptr null, ptr null, %struct.rb_node zeroinitializer, i32 0, ptr null, i32 0, i32 0, %union.anon.3 zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, %struct.vm_userfaultfd_ctx zeroinitializer }], align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mm/damon/vaddr-test.h\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10ul\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"regions[0].start\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25ul\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regions[0].end\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200ul\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"regions[1].start\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"220ul\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regions[1].end\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300ul\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"regions[2].start\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"330ul\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"regions[2].end\00", [17 x i8] zeroinitializer }, align 32
@__const.damon_test_apply_three_regions1.new_three_regions = private unnamed_addr constant [3 x %struct.damon_addr_range] [%struct.damon_addr_range { i32 5, i32 27 }, %struct.damon_addr_range { i32 45, i32 55 }, %struct.damon_addr_range { i32 73, i32 104 }], align 4
@__const.damon_test_apply_three_regions1.expected = private unnamed_addr constant [12 x i32] [i32 5, i32 20, i32 20, i32 27, i32 45, i32 55, i32 73, i32 80, i32 80, i32 90, i32 90, i32 104], align 4
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r->ar.start\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"expected[i * 2]\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"r->ar.end\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"expected[i * 2 + 1]\00", [44 x i8] zeroinitializer }, align 32
@__const.damon_test_apply_three_regions2.new_three_regions = private unnamed_addr constant [3 x %struct.damon_addr_range] [%struct.damon_addr_range { i32 5, i32 27 }, %struct.damon_addr_range { i32 56, i32 57 }, %struct.damon_addr_range { i32 65, i32 104 }], align 4
@__const.damon_test_apply_three_regions2.expected = private unnamed_addr constant [12 x i32] [i32 5, i32 20, i32 20, i32 27, i32 56, i32 57, i32 65, i32 80, i32 80, i32 90, i32 90, i32 104], align 4
@__const.damon_test_apply_three_regions3.new_three_regions = private unnamed_addr constant [3 x %struct.damon_addr_range] [%struct.damon_addr_range { i32 5, i32 27 }, %struct.damon_addr_range { i32 61, i32 63 }, %struct.damon_addr_range { i32 65, i32 104 }], align 4
@__const.damon_test_apply_three_regions3.expected = private unnamed_addr constant [12 x i32] [i32 5, i32 20, i32 20, i32 27, i32 61, i32 63, i32 65, i32 80, i32 80, i32 90, i32 90, i32 104], align 4
@__const.damon_test_apply_three_regions4.regions = private unnamed_addr constant [16 x i32] [i32 10, i32 20, i32 20, i32 30, i32 50, i32 55, i32 55, i32 57, i32 57, i32 59, i32 70, i32 80, i32 80, i32 90, i32 90, i32 100], align 4
@__const.damon_test_apply_three_regions4.new_three_regions = private unnamed_addr constant [3 x %struct.damon_addr_range] [%struct.damon_addr_range { i32 5, i32 7 }, %struct.damon_addr_range { i32 30, i32 32 }, %struct.damon_addr_range { i32 65, i32 68 }], align 4
@__const.damon_test_apply_three_regions4.expected = private unnamed_addr constant [6 x i32] [i32 5, i32 7, i32 30, i32 32, i32 65, i32 68], align 4
@.str.31 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"damon_va_evenly_split_region(((void *)0), ((void *)0), 5)\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-22\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"damon_va_evenly_split_region(t, r, nr_pieces)\00", [50 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"damon_nr_regions(t)\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1u\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"end\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_pieces\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"start + i++ * expected_width\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"start + i * expected_width\00", [37 x i8] zeroinitializer }, align 32
@switch.table.damon_va_apply_scheme = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 20, i32 21, i32 14, i32 15], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 247, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 262, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"damon_mkold_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 453, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"damon_young_ops\00", align 1
@___asan_gen_.64 = private constant [20 x i8] c"../mm/damon/vaddr.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 588, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 717, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"damon_test_suite\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 316, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"damon_test_cases\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 306, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 307, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 308, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 309, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 310, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 311, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 312, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 90, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 91, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 92, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 93, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 94, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 95, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 152, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 153, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 297, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 258, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 260, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 263, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 264, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 279, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 281, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 286, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [25 x i8] c"../mm/damon/vaddr-test.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 288, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [35 x i8] c"switch.table.damon_va_apply_scheme\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_suites269, ptr @__damon_va_init_regions._entry, ptr @__damon_va_init_regions._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @damon_mkold_ops, ptr @damon_young_ops, ptr @.str.6, ptr @damon_test_suite, ptr @damon_test_cases, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.damon_va_apply_scheme], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_mkold_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_young_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_test_suite to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @damon_test_cases to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.damon_va_apply_scheme to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @damon_va_target_valid(ptr nocapture noundef readonly %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %2 = inttoptr i32 %1 to ptr
  %call.i = tail call ptr @get_pid_task(ptr noundef %2, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !101
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !102

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @__put_task_struct(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %4 = xor i1 %tobool.not, true
  ret i1 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @damon_va_set_primitives(ptr nocapture noundef writeonly %ctx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %primitive = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %primitive to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @damon_va_init, ptr %primitive, align 8
  %update = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @damon_va_update, ptr %update, align 4
  %prepare_access_checks = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %prepare_access_checks to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @damon_va_prepare_access_checks, ptr %prepare_access_checks, align 8
  %check_accesses = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 3
  %3 = ptrtoint ptr %check_accesses to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @damon_va_check_accesses, ptr %check_accesses, align 4
  %reset_aggregated = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %reset_aggregated to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %reset_aggregated, align 8
  %target_valid = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 7
  %5 = ptrtoint ptr %target_valid to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @damon_va_target_valid, ptr %target_valid, align 4
  %cleanup = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cleanup, align 8
  %apply_scheme = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 6
  %7 = ptrtoint ptr %apply_scheme to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @damon_va_apply_scheme, ptr %apply_scheme, align 8
  %get_scheme_score = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %get_scheme_score to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @damon_va_scheme_score, ptr %get_scheme_score, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_va_init(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn12 = load ptr, ptr %adaptive_targets, align 4
  %cmp.not14 = icmp eq ptr %.pn12, %adaptive_targets
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn15 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %t.016 = getelementptr i8, ptr %.pn15, i32 -16
  %call = tail call i32 @damon_nr_regions(ptr noundef %t.016) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__damon_va_init_regions(ptr noundef %ctx, ptr noundef %t.016)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %1 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn15, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_va_update(ptr noundef readonly %ctx) #0 align 64 {
entry:
  %three_regions = alloca [3 x %struct.damon_addr_range], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %three_regions) #8
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %0 = call ptr @memset(ptr %three_regions, i32 255, i32 24)
  %1 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12 = load ptr, ptr %adaptive_targets, align 4
  %cmp.not14 = icmp eq ptr %.pn12, %adaptive_targets
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn15 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %t.016 = getelementptr i8, ptr %.pn15, i32 -16
  %call = call fastcc i32 @damon_va_three_regions(ptr noundef %t.016, ptr noundef nonnull %three_regions)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @damon_va_apply_three_regions(ptr noundef %t.016, ptr noundef nonnull %three_regions)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn15, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %three_regions) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_va_prepare_access_checks(ptr noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn38 = load ptr, ptr %adaptive_targets, align 4
  %cmp.not39 = icmp eq ptr %.pn38, %adaptive_targets
  br i1 %cmp.not39, label %entry.for.end23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.inc17.for.body_crit_edge ], [ %.pn38, %entry.for.body_crit_edge ]
  %t.0 = getelementptr i8, ptr %.pn40, i32 -16
  %call = tail call fastcc ptr @damon_get_mm(ptr noundef %t.0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc17_crit_edge, label %if.end

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

if.end:                                           ; preds = %for.body
  %regions_list = getelementptr i8, ptr %.pn40, i32 -8
  %1 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn3435 = load ptr, ptr %regions_list, align 4
  %cmp9.not36 = icmp eq ptr %.pn3435, %regions_list
  br i1 %cmp9.not36, label %if.end.for.end_crit_edge, label %if.end.for.body11_crit_edge

if.end.for.body11_crit_edge:                      ; preds = %if.end
  br label %for.body11

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %if.end.for.body11_crit_edge
  %.pn3437 = phi ptr [ %.pn34, %for.body11.for.body11_crit_edge ], [ %.pn3435, %if.end.for.body11_crit_edge ]
  %r.0 = getelementptr i8, ptr %.pn3437, i32 -16
  %2 = ptrtoint ptr %r.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r.0, align 4
  %end.i = getelementptr i8, ptr %.pn3437, i32 -12
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i.i = sub i32 %5, %3
  %call.i.i.i = tail call i32 @prandom_u32() #8
  %conv.i.i.i = zext i32 %call.i.i.i to i64
  %conv1.i.i.i = zext i32 %sub.i.i to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv1.i.i.i
  %shr.i.i.i = lshr i64 %mul.i.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i.i.i to i32
  %add.i.i = add i32 %3, %conv2.i.i.i
  %sampling_addr.i = getelementptr i8, ptr %.pn3437, i32 -8
  %6 = ptrtoint ptr %sampling_addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i.i, ptr %sampling_addr.i, align 4
  tail call fastcc void @damon_va_mkold(ptr noundef nonnull %call, i32 noundef %add.i.i) #8
  %7 = ptrtoint ptr %.pn3437 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn34 = load ptr, ptr %.pn3437, align 4
  %cmp9.not = icmp eq ptr %.pn34, %regions_list
  br i1 %cmp9.not, label %for.body11.for.end_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

for.body11.for.end_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body11.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mmput(ptr noundef nonnull %call) #8
  br label %for.inc17

for.inc17:                                        ; preds = %for.end, %for.body.for.inc17_crit_edge
  %8 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.inc17.for.end23_crit_edge, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc17.for.end23_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.end23:                                        ; preds = %for.inc17.for.end23_crit_edge, %entry.for.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_va_check_accesses(ptr noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  %0 = ptrtoint ptr %adaptive_targets to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn45 = load ptr, ptr %adaptive_targets, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %adaptive_targets
  br i1 %cmp.not46, label %entry.for.end25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %for.inc19.for.body_crit_edge ], [ %.pn45, %entry.for.body_crit_edge ]
  %max_nr_accesses.047 = phi i32 [ %max_nr_accesses.2, %for.inc19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %t.0 = getelementptr i8, ptr %.pn48, i32 -16
  %call = tail call fastcc ptr @damon_get_mm(ptr noundef %t.0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc19_crit_edge, label %if.end

for.body.for.inc19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

if.end:                                           ; preds = %for.body
  %regions_list = getelementptr i8, ptr %.pn48, i32 -8
  %1 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn4041 = load ptr, ptr %regions_list, align 4
  %cmp9.not42 = icmp eq ptr %.pn4041, %regions_list
  br i1 %cmp9.not42, label %if.end.for.end_crit_edge, label %if.end.for.body11_crit_edge

if.end.for.body11_crit_edge:                      ; preds = %if.end
  br label %for.body11

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body11:                                       ; preds = %__damon_va_check_access.exit.for.body11_crit_edge, %if.end.for.body11_crit_edge
  %.pn4044 = phi ptr [ %.pn40, %__damon_va_check_access.exit.for.body11_crit_edge ], [ %.pn4041, %if.end.for.body11_crit_edge ]
  %max_nr_accesses.143 = phi i32 [ %20, %__damon_va_check_access.exit.for.body11_crit_edge ], [ %max_nr_accesses.047, %if.end.for.body11_crit_edge ]
  %2 = load ptr, ptr @__damon_va_check_access.last_mm, align 4
  %cmp.i = icmp eq ptr %2, %call
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body11.if.end13.i_crit_edge

for.body11.if.end13.i_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %for.body11
  %3 = load i32, ptr @__damon_va_check_access.last_addr, align 4
  %4 = load i32, ptr @__damon_va_check_access.last_page_sz, align 4
  %neg.i = sub i32 0, %4
  %sampling_addr.i = getelementptr i8, ptr %.pn4044, i32 -8
  %5 = ptrtoint ptr %sampling_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sampling_addr.i, align 4
  %7 = xor i32 %6, %3
  %8 = and i32 %7, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11.i = icmp eq i32 %8, 0
  br i1 %cmp11.i, label %if.then.i, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %9 = load i8, ptr @__damon_va_check_access.last_accessed, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i.__damon_va_check_access.exit_crit_edge, label %if.then12.i

if.then.i.__damon_va_check_access.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__damon_va_check_access.exit

if.then12.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %nr_accesses.i = getelementptr i8, ptr %.pn4044, i32 -4
  %10 = ptrtoint ptr %nr_accesses.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_accesses.i, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %nr_accesses.i, align 4
  br label %__damon_va_check_access.exit

if.end13.i:                                       ; preds = %land.lhs.true.i.if.end13.i_crit_edge, %for.body11.if.end13.i_crit_edge
  %sampling_addr14.i = getelementptr i8, ptr %.pn4044, i32 -8
  %12 = ptrtoint ptr %sampling_addr14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sampling_addr14.i, align 4
  %call.i = tail call fastcc zeroext i1 @damon_va_young(ptr noundef nonnull %call, i32 noundef %13) #8
  %frombool.i = zext i1 %call.i to i8
  store i8 %frombool.i, ptr @__damon_va_check_access.last_accessed, align 1
  br i1 %call.i, label %if.then16.i, label %if.end13.i.if.end19.i_crit_edge

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %nr_accesses17.i = getelementptr i8, ptr %.pn4044, i32 -4
  %14 = ptrtoint ptr %nr_accesses17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_accesses17.i, align 4
  %inc18.i = add i32 %15, 1
  store i32 %inc18.i, ptr %nr_accesses17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end19.i_crit_edge
  store ptr %call, ptr @__damon_va_check_access.last_mm, align 4
  %16 = ptrtoint ptr %sampling_addr14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sampling_addr14.i, align 4
  store i32 %17, ptr @__damon_va_check_access.last_addr, align 4
  br label %__damon_va_check_access.exit

__damon_va_check_access.exit:                     ; preds = %if.end19.i, %if.then12.i, %if.then.i.__damon_va_check_access.exit_crit_edge
  %nr_accesses = getelementptr i8, ptr %.pn4044, i32 -4
  %18 = ptrtoint ptr %nr_accesses to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_accesses, align 4
  %20 = tail call i32 @llvm.umax.i32(i32 %19, i32 %max_nr_accesses.143)
  %21 = ptrtoint ptr %.pn4044 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn40 = load ptr, ptr %.pn4044, align 4
  %cmp9.not = icmp eq ptr %.pn40, %regions_list
  br i1 %cmp9.not, label %__damon_va_check_access.exit.for.end_crit_edge, label %__damon_va_check_access.exit.for.body11_crit_edge

__damon_va_check_access.exit.for.body11_crit_edge: ; preds = %__damon_va_check_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

__damon_va_check_access.exit.for.end_crit_edge:   ; preds = %__damon_va_check_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %__damon_va_check_access.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %max_nr_accesses.1.lcssa = phi i32 [ %max_nr_accesses.047, %if.end.for.end_crit_edge ], [ %20, %__damon_va_check_access.exit.for.end_crit_edge ]
  tail call void @mmput(ptr noundef nonnull %call) #8
  br label %for.inc19

for.inc19:                                        ; preds = %for.end, %for.body.for.inc19_crit_edge
  %max_nr_accesses.2 = phi i32 [ %max_nr_accesses.1.lcssa, %for.end ], [ %max_nr_accesses.047, %for.body.for.inc19_crit_edge ]
  %22 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  br i1 %cmp.not, label %for.inc19.for.end25_crit_edge, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc19.for.end25_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.end25:                                        ; preds = %for.inc19.for.end25_crit_edge, %entry.for.end25_crit_edge
  %max_nr_accesses.0.lcssa = phi i32 [ 0, %entry.for.end25_crit_edge ], [ %max_nr_accesses.2, %for.inc19.for.end25_crit_edge ]
  ret i32 %max_nr_accesses.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_va_apply_scheme(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %t, ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %scheme) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %action = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 6
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.damon_va_apply_scheme, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %4 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r, align 4
  %end.i = getelementptr inbounds %struct.damon_addr_range, ptr %r, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %call.i = tail call fastcc ptr @damon_get_mm(ptr noundef %t) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %switch.lookup.cleanup_crit_edge, label %if.end.i

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 4095, %5
  %add5.i = add i32 %sub.i, %7
  %and6.i = and i32 %add5.i, -4096
  %add.i = add i32 %5, 4095
  %and.i = and i32 %add.i, -4096
  %call7.i = tail call i32 @do_madvise(ptr noundef nonnull %call.i, i32 noundef %and.i, i32 noundef %and6.i, i32 noundef %switch.load) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 %and6.i, i32 0
  tail call void @mmput(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select.i, %if.end.i ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_va_scheme_score(ptr noundef %context, ptr nocapture noundef readnone %t, ptr noundef %r, ptr noundef %scheme) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %action = getelementptr inbounds %struct.damos, ptr %scheme, i32 0, i32 6
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cond = icmp eq i32 %1, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @damon_pageout_score(ptr noundef %context, ptr noundef %r, ptr noundef %scheme) #8
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ 99, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_nr_regions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__damon_va_init_regions(ptr noundef readonly %ctx, ptr noundef %t) unnamed_addr #0 align 64 {
entry:
  %regions = alloca [3 x %struct.damon_addr_range], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %regions) #8
  %0 = call ptr @memset(ptr %regions, i32 255, i32 24)
  %call = call fastcc i32 @damon_va_three_regions(ptr noundef %t, ptr noundef nonnull %regions)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body20.preheader, label %if.then

for.body20.preheader:                             ; preds = %entry
  %1 = getelementptr inbounds [3 x %struct.damon_addr_range], ptr %regions, i32 0, i32 2, i32 1
  %2 = getelementptr inbounds [3 x %struct.damon_addr_range], ptr %regions, i32 0, i32 2
  %3 = getelementptr inbounds [3 x %struct.damon_addr_range], ptr %regions, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds [3 x %struct.damon_addr_range], ptr %regions, i32 0, i32 1
  %5 = getelementptr inbounds %struct.damon_addr_range, ptr %regions, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regions, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %14 = add i32 %7, %11
  %15 = add i32 %9, %13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %20 = add i32 %14, %17
  %21 = add i32 %15, %19
  %add.2 = sub i32 %20, %21
  %min_nr_regions = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 9
  %22 = ptrtoint ptr %min_nr_regions to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %min_nr_regions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not = icmp eq i32 %23, 0
  br i1 %tobool25.not, label %for.body20.preheader.if.end28_crit_edge, label %if.then26

for.body20.preheader.if.end28_crit_edge:          ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %entry
  %adaptive_targets = getelementptr inbounds %struct.damon_ctx, ptr %ctx, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.then
  %tidx.0 = phi i32 [ 0, %if.then ], [ %inc, %for.cond.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %adaptive_targets, %if.then ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %24 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %adaptive_targets
  %ti.0 = getelementptr i8, ptr %.pn, i32 -16
  %cmp2 = icmp eq ptr %ti.0, %t
  %or.cond = or i1 %cmp.not, %cmp2
  %inc = add i32 %tidx.0, 1
  br i1 %or.cond, label %do.body, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__damon_va_init_regions.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__damon_va_init_regions, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !105

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__damon_va_init_regions.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.4, i32 noundef %tidx.0) #8
  br label %cleanup

if.then26:                                        ; preds = %for.body20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %add.2, %23
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body20.preheader.if.end28_crit_edge
  %sz.1 = phi i32 [ %div, %if.then26 ], [ %add.2, %for.body20.preheader.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.1)
  %cmp29 = icmp eq i32 %sz.1, 0
  %spec.store.select = select i1 %cmp29, i32 1, i32 %sz.1
  %nr_regions.i.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 1
  br label %for.body34

for.body34:                                       ; preds = %damon_va_evenly_split_region.exit.for.body34_crit_edge, %if.end28
  %i.194 = phi i32 [ 0, %if.end28 ], [ %inc56, %damon_va_evenly_split_region.exit.for.body34_crit_edge ]
  %arrayidx35 = getelementptr [3 x %struct.damon_addr_range], ptr %regions, i32 0, i32 %i.194
  %25 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx35, align 4
  %end38 = getelementptr [3 x %struct.damon_addr_range], ptr %regions, i32 0, i32 %i.194, i32 1
  %27 = ptrtoint ptr %end38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end38, align 4
  %call39 = tail call ptr @damon_new_region(i32 noundef %26, i32 noundef %28) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %do.end44, label %if.end47

do.end44:                                         ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %i.194) #11
  br label %cleanup

if.end47:                                         ; preds = %for.body34
  tail call void @damon_add_region(ptr noundef nonnull %call39, ptr noundef %t) #8
  %sub52 = sub i32 %28, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %sub52)
  %tobool1.not.i = icmp ugt i32 %spec.store.select, %sub52
  br i1 %tobool1.not.i, label %if.end47.damon_va_evenly_split_region.exit_crit_edge, label %if.end.i

if.end47.damon_va_evenly_split_region.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end.i:                                         ; preds = %if.end47
  %div53 = udiv i32 %sub52, %spec.store.select
  %end.i = getelementptr inbounds %struct.damon_addr_range, ptr %call39, i32 0, i32 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  %31 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call39, align 4
  %sub.i = sub i32 %30, %32
  %div.i = udiv i32 %sub.i, %div53
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div53)
  %tobool7.not.i = icmp ult i32 %sub.i, %div53
  br i1 %tobool7.not.i, label %if.end.i.damon_va_evenly_split_region.exit_crit_edge, label %if.end9.i

if.end.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end9.i:                                        ; preds = %if.end.i
  %add12.i = add i32 %div.i, %32
  %33 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add12.i, ptr %end.i, align 4
  %list.i.i = getelementptr inbounds %struct.damon_region, ptr %call39, i32 0, i32 3
  %34 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list.i.i, align 4
  %add1757.i = add i32 %add12.i, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add1757.i, i32 %30)
  %cmp.not58.i = icmp ugt i32 %add1757.i, %30
  br i1 %cmp.not58.i, label %if.end9.i.damon_va_evenly_split_region.exit_crit_edge, label %for.body.lr.ph.i

if.end9.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %prev1.i.i.i = getelementptr i8, ptr %35, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %damon_insert_region.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %add1761.i = phi i32 [ %add1757.i, %for.body.lr.ph.i ], [ %add17.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %start.060.i = phi i32 [ %add12.i, %for.body.lr.ph.i ], [ %add1761.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %r.addr.059.i = phi ptr [ %call39, %for.body.lr.ph.i ], [ %call19.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %call19.i = tail call ptr @damon_new_region(i32 noundef %start.060.i, i32 noundef %add1761.i) #8
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %for.body.i.damon_va_evenly_split_region.exit_crit_edge, label %if.end22.i

for.body.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end22.i:                                       ; preds = %for.body.i
  %list.i55.i = getelementptr inbounds %struct.damon_region, ptr %call19.i, i32 0, i32 3
  %list1.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.059.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i55.i, ptr noundef %list1.i.i, ptr noundef %35) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end22.i.damon_insert_region.exit.i_crit_edge

if.end22.i.damon_insert_region.exit.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_insert_region.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i55.i, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %list.i55.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %list.i55.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call19.i, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %list1.i.i, ptr %prev3.i.i.i, align 4
  %39 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list.i55.i, ptr %list1.i.i, align 4
  br label %damon_insert_region.exit.i

damon_insert_region.exit.i:                       ; preds = %if.end.i.i.i, %if.end22.i.damon_insert_region.exit.i_crit_edge
  %40 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_regions.i.i, align 4
  %inc.i.i = add i32 %41, 1
  store i32 %inc.i.i, ptr %nr_regions.i.i, align 4
  %add17.i = add i32 %add1761.i, %div.i
  %cmp.not.i = icmp ugt i32 %add17.i, %30
  br i1 %cmp.not.i, label %if.then25.i, label %damon_insert_region.exit.i.for.body.i_crit_edge

damon_insert_region.exit.i.for.body.i_crit_edge:  ; preds = %damon_insert_region.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then25.i:                                      ; preds = %damon_insert_region.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %end27.i = getelementptr inbounds %struct.damon_addr_range, ptr %call19.i, i32 0, i32 1
  %42 = ptrtoint ptr %end27.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %30, ptr %end27.i, align 4
  br label %damon_va_evenly_split_region.exit

damon_va_evenly_split_region.exit:                ; preds = %if.then25.i, %for.body.i.damon_va_evenly_split_region.exit_crit_edge, %if.end9.i.damon_va_evenly_split_region.exit_crit_edge, %if.end.i.damon_va_evenly_split_region.exit_crit_edge, %if.end47.damon_va_evenly_split_region.exit_crit_edge
  %inc56 = add nuw nsw i32 %i.194, 1
  %exitcond.not = icmp eq i32 %inc56, 3
  br i1 %exitcond.not, label %damon_va_evenly_split_region.exit.cleanup_crit_edge, label %damon_va_evenly_split_region.exit.for.body34_crit_edge

damon_va_evenly_split_region.exit.for.body34_crit_edge: ; preds = %damon_va_evenly_split_region.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34

damon_va_evenly_split_region.exit.cleanup_crit_edge: ; preds = %damon_va_evenly_split_region.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %damon_va_evenly_split_region.exit.cleanup_crit_edge, %do.end44, %if.then15, %do.body
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %regions) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @damon_va_three_regions(ptr nocapture noundef readonly %t, ptr nocapture noundef writeonly %regions) unnamed_addr #0 align 64 {
entry:
  %rbroot.i = alloca %struct.rb_root, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @damon_get_mm(ptr noundef %t)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@damon_va_three_regions, %if.then.i.i)) #8
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !105

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %call, i1 noundef zeroext false) #8
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.2, ptr %call, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@damon_va_three_regions, %if.then.i3.i)) #8
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !105

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %call, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbroot.i) #8
  %2 = ptrtoint ptr %rbroot.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rbroot.i, align 4, !annotation !106
  %tobool.not123.i = icmp eq ptr %1, null
  br i1 %tobool.not123.i, label %mmap_read_lock.exit.__damon_va_three_regions.exit_crit_edge, label %mmap_read_lock.exit.for.body.i_crit_edge

mmap_read_lock.exit.for.body.i_crit_edge:         ; preds = %mmap_read_lock.exit
  br label %for.body.i

mmap_read_lock.exit.__damon_va_three_regions.exit_crit_edge: ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__damon_va_three_regions.exit

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %mmap_read_lock.exit.for.body.i_crit_edge
  %vma.addr.0130.i = phi ptr [ %13, %next.i.for.body.i_crit_edge ], [ %1, %mmap_read_lock.exit.for.body.i_crit_edge ]
  %last_vma.0129.i = phi ptr [ %vma.addr.1.i, %next.i.for.body.i_crit_edge ], [ null, %mmap_read_lock.exit.for.body.i_crit_edge ]
  %start.0128.i = phi i32 [ %start.1.i, %next.i.for.body.i_crit_edge ], [ 0, %mmap_read_lock.exit.for.body.i_crit_edge ]
  %second_gap.sroa.0.0127.i = phi i32 [ %second_gap.sroa.0.1.i, %next.i.for.body.i_crit_edge ], [ 0, %mmap_read_lock.exit.for.body.i_crit_edge ]
  %second_gap.sroa.15.0126.i = phi i32 [ %second_gap.sroa.15.1.i, %next.i.for.body.i_crit_edge ], [ 0, %mmap_read_lock.exit.for.body.i_crit_edge ]
  %first_gap.sroa.0.0125.i = phi i32 [ %first_gap.sroa.0.1.i, %next.i.for.body.i_crit_edge ], [ 0, %mmap_read_lock.exit.for.body.i_crit_edge ]
  %first_gap.sroa.10.0124.i = phi i32 [ %first_gap.sroa.10.1.i, %next.i.for.body.i_crit_edge ], [ 0, %mmap_read_lock.exit.for.body.i_crit_edge ]
  %tobool1.not.i = icmp eq ptr %last_vma.0129.i, null
  br i1 %tobool1.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %vma.addr.0130.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vma.addr.0130.i, align 4
  br label %next.i

if.end.i:                                         ; preds = %for.body.i
  %rb_subtree_gap.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0130.i, i32 0, i32 5
  %5 = ptrtoint ptr %rb_subtree_gap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rb_subtree_gap.i, align 4
  %sub.i.i = sub i32 %second_gap.sroa.15.0126.i, %second_gap.sroa.0.0127.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %6, %sub.i.i
  br i1 %cmp.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %vm_rb.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0130.i, i32 0, i32 4
  %7 = ptrtoint ptr %rbroot.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vm_rb.i, ptr %rbroot.i, align 4
  %call3.i = call ptr @rb_last(ptr noundef nonnull %rbroot.i) #8
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 -16
  br label %next.i

if.end4.i:                                        ; preds = %if.end.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %last_vma.0129.i, i32 0, i32 1
  %8 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end.i, align 4
  %10 = ptrtoint ptr %vma.addr.0130.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma.addr.0130.i, align 4
  %sub.i87.i = sub i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i87.i, i32 %sub.i.i)
  %cmp9.i = icmp ugt i32 %sub.i87.i, %sub.i.i
  br i1 %cmp9.i, label %do.body.i, label %if.end4.i.next.i_crit_edge

if.end4.i.next.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

do.body.i:                                        ; preds = %if.end4.i
  %sub.i93.i = sub i32 %first_gap.sroa.10.0124.i, %first_gap.sroa.0.0125.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i87.i, i32 %sub.i93.i)
  %cmp13.i = icmp ugt i32 %sub.i87.i, %sub.i93.i
  br i1 %cmp13.i, label %do.body15.i, label %do.body.i.next.i_crit_edge

do.body.i.next.i_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

do.body15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

next.i:                                           ; preds = %do.body15.i, %do.body.i.next.i_crit_edge, %if.end4.i.next.i_crit_edge, %if.then2.i, %if.then.i
  %first_gap.sroa.10.1.i = phi i32 [ %first_gap.sroa.10.0124.i, %if.then.i ], [ %11, %do.body15.i ], [ %first_gap.sroa.10.0124.i, %do.body.i.next.i_crit_edge ], [ %first_gap.sroa.10.0124.i, %if.end4.i.next.i_crit_edge ], [ %first_gap.sroa.10.0124.i, %if.then2.i ]
  %first_gap.sroa.0.1.i = phi i32 [ %first_gap.sroa.0.0125.i, %if.then.i ], [ %9, %do.body15.i ], [ %first_gap.sroa.0.0125.i, %do.body.i.next.i_crit_edge ], [ %first_gap.sroa.0.0125.i, %if.end4.i.next.i_crit_edge ], [ %first_gap.sroa.0.0125.i, %if.then2.i ]
  %second_gap.sroa.15.1.i = phi i32 [ %second_gap.sroa.15.0126.i, %if.then.i ], [ %first_gap.sroa.10.0124.i, %do.body15.i ], [ %11, %do.body.i.next.i_crit_edge ], [ %second_gap.sroa.15.0126.i, %if.end4.i.next.i_crit_edge ], [ %second_gap.sroa.15.0126.i, %if.then2.i ]
  %second_gap.sroa.0.1.i = phi i32 [ %second_gap.sroa.0.0127.i, %if.then.i ], [ %first_gap.sroa.0.0125.i, %do.body15.i ], [ %9, %do.body.i.next.i_crit_edge ], [ %second_gap.sroa.0.0127.i, %if.end4.i.next.i_crit_edge ], [ %second_gap.sroa.0.0127.i, %if.then2.i ]
  %start.1.i = phi i32 [ %4, %if.then.i ], [ %start.0128.i, %do.body15.i ], [ %start.0128.i, %do.body.i.next.i_crit_edge ], [ %start.0128.i, %if.end4.i.next.i_crit_edge ], [ %start.0128.i, %if.then2.i ]
  %vma.addr.1.i = phi ptr [ %vma.addr.0130.i, %if.then.i ], [ %vma.addr.0130.i, %do.body15.i ], [ %vma.addr.0130.i, %do.body.i.next.i_crit_edge ], [ %vma.addr.0130.i, %if.end4.i.next.i_crit_edge ], [ %add.ptr.i, %if.then2.i ]
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.1.i, i32 0, i32 2
  %12 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vm_next.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.end.i, label %next.i.for.body.i_crit_edge

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %next.i
  call void @__sanitizer_cov_trace_cmp4(i32 %second_gap.sroa.15.1.i, i32 %second_gap.sroa.0.1.i)
  %tobool22.not.i = icmp eq i32 %second_gap.sroa.15.1.i, %second_gap.sroa.0.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %first_gap.sroa.10.1.i, i32 %first_gap.sroa.0.1.i)
  %tobool24.not.i = icmp eq i32 %first_gap.sroa.10.1.i, %first_gap.sroa.0.1.i
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond.i, label %for.end.i.__damon_va_three_regions.exit_crit_edge, label %if.end26.i

for.end.i.__damon_va_three_regions.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__damon_va_three_regions.exit

if.end26.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %first_gap.sroa.0.1.i, i32 %second_gap.sroa.0.1.i)
  %cmp29.i = icmp ugt i32 %first_gap.sroa.0.1.i, %second_gap.sroa.0.1.i
  br i1 %cmp29.i, label %do.body31.i, label %if.end26.i.if.end35.i_crit_edge

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

do.body31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.body31.i, %if.end26.i.if.end35.i_crit_edge
  %first_gap.sroa.10.2.i = phi i32 [ %second_gap.sroa.15.1.i, %do.body31.i ], [ %first_gap.sroa.10.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %first_gap.sroa.0.2.i = phi i32 [ %second_gap.sroa.0.1.i, %do.body31.i ], [ %first_gap.sroa.0.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %second_gap.sroa.15.2.i = phi i32 [ %first_gap.sroa.10.1.i, %do.body31.i ], [ %second_gap.sroa.15.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %second_gap.sroa.0.2.i = phi i32 [ %first_gap.sroa.0.1.i, %do.body31.i ], [ %second_gap.sroa.0.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %14 = ptrtoint ptr %regions to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %start.1.i, ptr %regions, align 4
  %end41.i = getelementptr inbounds %struct.damon_addr_range, ptr %regions, i32 0, i32 1
  %15 = ptrtoint ptr %end41.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %first_gap.sroa.0.2.i, ptr %end41.i, align 4
  %arrayidx45.i = getelementptr %struct.damon_addr_range, ptr %regions, i32 1
  %16 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %first_gap.sroa.10.2.i, ptr %arrayidx45.i, align 4
  %end51.i = getelementptr %struct.damon_addr_range, ptr %regions, i32 1, i32 1
  %17 = ptrtoint ptr %end51.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %second_gap.sroa.0.2.i, ptr %end51.i, align 4
  %arrayidx55.i = getelementptr %struct.damon_addr_range, ptr %regions, i32 2
  %18 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %second_gap.sroa.15.2.i, ptr %arrayidx55.i, align 4
  %vm_end57.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.1.i, i32 0, i32 1
  %19 = ptrtoint ptr %vm_end57.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vm_end57.i, align 4
  %end61.i = getelementptr %struct.damon_addr_range, ptr %regions, i32 2, i32 1
  %21 = ptrtoint ptr %end61.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %end61.i, align 4
  br label %__damon_va_three_regions.exit

__damon_va_three_regions.exit:                    ; preds = %if.end35.i, %for.end.i.__damon_va_three_regions.exit_crit_edge, %mmap_read_lock.exit.__damon_va_three_regions.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end35.i ], [ -22, %for.end.i.__damon_va_three_regions.exit_crit_edge ], [ -22, %mmap_read_lock.exit.__damon_va_three_regions.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbroot.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@damon_va_three_regions, %if.then.i.i7)) #8
          to label %mmap_read_unlock.exit [label %if.then.i.i7], !srcloc !105

if.then.i.i7:                                     ; preds = %__damon_va_three_regions.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %call, i1 noundef zeroext false) #8
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i7, %__damon_va_three_regions.exit
  call void @up_read(ptr noundef %mmap_lock.i) #8
  call void @mmput(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mmap_read_unlock.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_add_region(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @damon_get_mm(ptr nocapture noundef readonly %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  %2 = inttoptr i32 %1 to ptr
  %call.i = tail call ptr @get_pid_task(ptr noundef %2, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @get_task_mm(ptr noundef nonnull %call.i) #8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !101
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !102

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @__put_task_struct(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call1, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call1, %if.then10.i.i.i.i ], [ %call1, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_va_apply_three_regions(ptr noundef %t, ptr nocapture noundef readonly %bregions) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regions_list, align 4
  %cmp.not130 = icmp eq ptr %1, %regions_list
  br i1 %cmp.not130, label %entry.for.cond21.preheader_crit_edge, label %for.cond8.preheader.preheader

entry.for.cond21.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond21.preheader

for.cond8.preheader.preheader:                    ; preds = %entry
  %end1.i = getelementptr %struct.damon_addr_range, ptr %bregions, i32 0, i32 1
  %arrayidx.1 = getelementptr %struct.damon_addr_range, ptr %bregions, i32 1
  %end1.i.1 = getelementptr %struct.damon_addr_range, ptr %bregions, i32 1, i32 1
  %arrayidx.2 = getelementptr %struct.damon_addr_range, ptr %bregions, i32 2
  %end1.i.2 = getelementptr %struct.damon_addr_range, ptr %bregions, i32 2, i32 1
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc14.for.cond8.preheader_crit_edge, %for.cond8.preheader.preheader
  %.pn.in131 = phi ptr [ %.pn133, %for.inc14.for.cond8.preheader_crit_edge ], [ %1, %for.cond8.preheader.preheader ]
  %r.0132 = getelementptr i8, ptr %.pn.in131, i32 -16
  %2 = ptrtoint ptr %.pn.in131 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn133 = load ptr, ptr %.pn.in131, align 4
  %end.i = getelementptr i8, ptr %.pn.in131, i32 -12
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %5 = ptrtoint ptr %bregions to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bregions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not.i = icmp ugt i32 %4, %6
  br i1 %cmp.not.i, label %damon_intersect.exit, label %for.cond8.preheader.for.inc_crit_edge

for.cond8.preheader.for.inc_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.cond21.preheader:                             ; preds = %for.inc14.for.cond21.preheader_crit_edge, %entry.for.cond21.preheader_crit_edge
  %nr_regions.i = getelementptr inbounds %struct.damon_target, ptr %t, i32 0, i32 1
  br label %for.body23

damon_intersect.exit:                             ; preds = %for.cond8.preheader
  %7 = ptrtoint ptr %end1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end1.i, align 4
  %9 = ptrtoint ptr %r.0132 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r.0132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp4.i = icmp ugt i32 %8, %10
  br i1 %cmp4.i, label %damon_intersect.exit.for.inc14_crit_edge, label %damon_intersect.exit.for.inc_crit_edge

damon_intersect.exit.for.inc_crit_edge:           ; preds = %damon_intersect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

damon_intersect.exit.for.inc14_crit_edge:         ; preds = %damon_intersect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

for.inc:                                          ; preds = %damon_intersect.exit.for.inc_crit_edge, %for.cond8.preheader.for.inc_crit_edge
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %12)
  %cmp.not.i.1 = icmp ugt i32 %4, %12
  br i1 %cmp.not.i.1, label %damon_intersect.exit.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

damon_intersect.exit.1:                           ; preds = %for.inc
  %13 = ptrtoint ptr %end1.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end1.i.1, align 4
  %15 = ptrtoint ptr %r.0132 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r.0132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp4.i.1 = icmp ugt i32 %14, %16
  br i1 %cmp4.i.1, label %damon_intersect.exit.1.for.inc14_crit_edge, label %damon_intersect.exit.1.for.inc.1_crit_edge

damon_intersect.exit.1.for.inc.1_crit_edge:       ; preds = %damon_intersect.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

damon_intersect.exit.1.for.inc14_crit_edge:       ; preds = %damon_intersect.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

for.inc.1:                                        ; preds = %damon_intersect.exit.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %18)
  %cmp.not.i.2 = icmp ugt i32 %4, %18
  br i1 %cmp.not.i.2, label %damon_intersect.exit.2, label %for.inc.1.if.then12_crit_edge

for.inc.1.if.then12_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

damon_intersect.exit.2:                           ; preds = %for.inc.1
  %19 = ptrtoint ptr %end1.i.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end1.i.2, align 4
  %21 = ptrtoint ptr %r.0132 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %r.0132, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp4.i.2 = icmp ugt i32 %20, %22
  br i1 %cmp4.i.2, label %damon_intersect.exit.2.for.inc14_crit_edge, label %damon_intersect.exit.2.if.then12_crit_edge

damon_intersect.exit.2.if.then12_crit_edge:       ; preds = %damon_intersect.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

damon_intersect.exit.2.for.inc14_crit_edge:       ; preds = %damon_intersect.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

if.then12:                                        ; preds = %damon_intersect.exit.2.if.then12_crit_edge, %for.inc.1.if.then12_crit_edge
  tail call void @damon_destroy_region(ptr noundef %r.0132, ptr noundef %t) #8
  br label %for.inc14

for.inc14:                                        ; preds = %if.then12, %damon_intersect.exit.2.for.inc14_crit_edge, %damon_intersect.exit.1.for.inc14_crit_edge, %damon_intersect.exit.for.inc14_crit_edge
  %cmp.not = icmp eq ptr %.pn133, %regions_list
  br i1 %cmp.not, label %for.inc14.for.cond21.preheader_crit_edge, label %for.inc14.for.cond8.preheader_crit_edge

for.inc14.for.cond8.preheader_crit_edge:          ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond8.preheader

for.inc14.for.cond21.preheader_crit_edge:         ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond21.preheader

for.body23:                                       ; preds = %cleanup.for.body23_crit_edge, %for.cond21.preheader
  %i.1134 = phi i32 [ 0, %for.cond21.preheader ], [ %inc78, %cleanup.for.body23_crit_edge ]
  %arrayidx24 = getelementptr %struct.damon_addr_range, ptr %bregions, i32 %i.1134
  %end1.i116 = getelementptr %struct.damon_addr_range, ptr %bregions, i32 %i.1134, i32 1
  br label %for.cond30

for.cond30:                                       ; preds = %.for.cond30_crit_edge, %for.body23
  %last.0 = phi ptr [ inttoptr (i32 -1 to ptr), %for.body23 ], [ %33, %.for.cond30_crit_edge ]
  %first.0 = phi ptr [ null, %for.body23 ], [ %34, %.for.cond30_crit_edge ]
  %.pn112.in = phi ptr [ %regions_list, %for.body23 ], [ %.pn112, %.for.cond30_crit_edge ]
  %23 = ptrtoint ptr %.pn112.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn112 = load ptr, ptr %.pn112.in, align 4
  %r.1 = getelementptr i8, ptr %.pn112, i32 -16
  %cmp33.not = icmp eq ptr %.pn112, %regions_list
  br i1 %cmp33.not, label %for.cond30.for.end50_crit_edge, label %for.body35

for.cond30.for.end50_crit_edge:                   ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

for.body35:                                       ; preds = %for.cond30
  %end.i114 = getelementptr i8, ptr %.pn112, i32 -12
  %24 = ptrtoint ptr %end.i114 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i114, align 4
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i115 = icmp ugt i32 %25, %27
  br i1 %cmp.not.i115, label %damon_intersect.exit119, label %for.body35..thread_crit_edge

for.body35..thread_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread

damon_intersect.exit119:                          ; preds = %for.body35
  %28 = ptrtoint ptr %end1.i116 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end1.i116, align 4
  %30 = ptrtoint ptr %r.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %r.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp4.i117 = icmp ugt i32 %29, %31
  %tobool.not = icmp eq ptr %first.0, null
  %spec.select = select i1 %tobool.not, ptr %r.1, ptr %first.0
  br i1 %cmp4.i117, label %damon_intersect.exit119._crit_edge, label %damon_intersect.exit119..thread_crit_edge

damon_intersect.exit119..thread_crit_edge:        ; preds = %damon_intersect.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread

damon_intersect.exit119._crit_edge:               ; preds = %damon_intersect.exit119
  call void @__sanitizer_cov_trace_pc() #10
  br label %32

.thread:                                          ; preds = %damon_intersect.exit119..thread_crit_edge, %for.body35..thread_crit_edge
  br label %32

32:                                               ; preds = %.thread, %damon_intersect.exit119._crit_edge
  %33 = phi ptr [ %last.0, %.thread ], [ %r.1, %damon_intersect.exit119._crit_edge ]
  %34 = phi ptr [ %first.0, %.thread ], [ %spec.select, %damon_intersect.exit119._crit_edge ]
  %35 = ptrtoint ptr %r.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %r.1, align 4
  %37 = ptrtoint ptr %end1.i116 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %end1.i116, align 4
  %cmp41.not = icmp ult i32 %36, %38
  br i1 %cmp41.not, label %.for.cond30_crit_edge, label %.for.end50_crit_edge

.for.end50_crit_edge:                             ; preds = %32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end50

.for.cond30_crit_edge:                            ; preds = %32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond30

for.end50:                                        ; preds = %.for.end50_crit_edge, %for.cond30.for.end50_crit_edge
  %.pn112.lcssa = phi ptr [ %.pn112, %.for.end50_crit_edge ], [ %regions_list, %for.cond30.for.end50_crit_edge ]
  %last.2 = phi ptr [ %33, %.for.end50_crit_edge ], [ %last.0, %for.cond30.for.end50_crit_edge ]
  %first.3 = phi ptr [ %34, %.for.end50_crit_edge ], [ %first.0, %for.cond30.for.end50_crit_edge ]
  %tobool51.not = icmp eq ptr %first.3, null
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx24, align 4
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %for.end50
  %41 = ptrtoint ptr %end1.i116 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %end1.i116, align 4
  %call57 = tail call ptr @damon_new_region(i32 noundef %40, i32 noundef %42) #8
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.then52.cleanup_crit_edge, label %if.end60

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60:                                         ; preds = %if.then52
  %prev.i = getelementptr i8, ptr %.pn112.lcssa, i32 4
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %list.i = getelementptr inbounds %struct.damon_region, ptr %call57, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %44, ptr noundef %.pn112.lcssa) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.damon_insert_region.exit_crit_edge

if.end60.damon_insert_region.exit_crit_edge:      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_insert_region.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list.i, ptr %prev.i, align 4
  %46 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn112.lcssa, ptr %list.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.damon_region, ptr %call57, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list.i, ptr %44, align 4
  br label %damon_insert_region.exit

damon_insert_region.exit:                         ; preds = %if.end.i.i, %if.end60.damon_insert_region.exit_crit_edge
  %49 = ptrtoint ptr %nr_regions.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_regions.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %nr_regions.i, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %first.3 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %40, ptr %first.3, align 4
  %52 = ptrtoint ptr %end1.i116 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end1.i116, align 4
  %end72 = getelementptr inbounds %struct.damon_addr_range, ptr %last.2, i32 0, i32 1
  %54 = ptrtoint ptr %end72 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %end72, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %damon_insert_region.exit, %if.then52.cleanup_crit_edge
  %inc78 = add nuw nsw i32 %i.1134, 1
  %exitcond.not = icmp eq i32 %inc78, 3
  br i1 %exitcond.not, label %for.end79, label %cleanup.for.body23_crit_edge

cleanup.for.body23_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.end79:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_destroy_region(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_va_mkold(ptr noundef %mm, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@damon_va_mkold, %if.then.i.i)) #8
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !105

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #8
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.2, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@damon_va_mkold, %if.then.i3.i)) #8
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !105

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %add = add i32 %addr, 1
  %call = tail call i32 @walk_page_range(ptr noundef %mm, i32 noundef %addr, i32 noundef %add, ptr noundef nonnull @damon_mkold_ops, ptr noundef null) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@damon_va_mkold, %if.then.i.i4)) #8
          to label %mmap_read_unlock.exit [label %if.then.i.i4], !srcloc !105

if.then.i.i4:                                     ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #8
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i4, %mmap_read_lock.exit
  tail call void @up_read(ptr noundef %mmap_lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @walk_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_mkold_pmd_entry(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %next, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp ne i32 %1, 0
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool7.not, %tobool8.not
  br i1 %or.cond, label %if.end12, label %entry.cleanup_crit_edge, !prof !107

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %1, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %3
  %ptl.i.i = getelementptr %struct.page, ptr %2, i32 %sub.i, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !108
  %11 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #8
  %shr.i54 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i54, 511
  %add.ptr18 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %5) #8
  %17 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr18, align 4
  %and19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end12.do.body_crit_edge, label %if.end28

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end28:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %mm13 = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  %19 = ptrtoint ptr %mm13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm13, align 4
  tail call void @damon_ptep_mkold(ptr noundef %add.ptr18, ptr noundef %20, i32 noundef %addr) #8
  br label %do.body

do.body:                                          ; preds = %if.end28, %if.end12.do.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %5) #8
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr18) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  %21 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i1.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 213
  %25 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %26, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  %27 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_ptep_mkold(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @damon_va_young(ptr noundef %mm, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.damon_young_walk_private, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #8
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4278190081, ptr %arg, align 8, !annotation !106
  store ptr @__damon_va_check_access.last_page_sz, ptr %arg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@damon_va_young, %if.then.i.i)) #8
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !105

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #8
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.2, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@damon_va_young, %if.then.i3.i)) #8
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !105

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %add = add i32 %addr, 1
  %call = call i32 @walk_page_range(ptr noundef %mm, i32 noundef %addr, i32 noundef %add, ptr noundef nonnull @damon_young_ops, ptr noundef nonnull %arg) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@damon_va_young, %if.then.i.i1)) #8
          to label %mmap_read_unlock.exit [label %if.then.i.i1], !srcloc !105

if.then.i.i1:                                     ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #8
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i1, %mmap_read_lock.exit
  %young = getelementptr inbounds %struct.damon_young_walk_private, ptr %arg, i32 0, i32 1
  call void @up_read(ptr noundef %mmap_lock.i) #8
  %1 = ptrtoint ptr %young to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %young, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #8
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @damon_young_pmd_entry(ptr nocapture noundef readonly %pmd, i32 noundef %addr, i32 noundef %next, ptr nocapture noundef readonly %walk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge, !prof !107

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mm = getelementptr inbounds %struct.mm_walk, ptr %walk, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %3, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %5
  %ptl.i.i = getelementptr %struct.page, ptr %4, i32 %sub.i, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %8, 512
  %9 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i1.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !109
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #8
  %shr.i64 = lshr i32 %addr, 12
  %and.i = and i32 %shr.i64, 511
  %add.ptr7 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %7) #8
  %19 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr7, align 4
  %and8 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.do.body_crit_edge, label %if.end17

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end17:                                         ; preds = %if.end
  %shr19 = lshr i32 %20, 12
  %call20 = tail call ptr @damon_get_page(i32 noundef %shr19) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end17.do.body_crit_edge, label %cond.true24

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cond.true24:                                      ; preds = %if.end17
  %21 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr7, align 4
  %and25 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false34, label %cond.true24.if.then40_crit_edge

cond.true24.if.then40_crit_edge:                  ; preds = %cond.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

lor.lhs.false34:                                  ; preds = %cond.true24
  %23 = getelementptr inbounds %struct.page, ptr %call20, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call20 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %26, %if.end.i.i ]
  %27 = inttoptr i32 %retval.0.i.i to ptr
  %call.i.i65 = tail call ptr @lookup_page_ext(ptr noundef %27) #8
  %tobool.not.i2.i = icmp eq ptr %call.i.i65, null
  br i1 %tobool.not.i2.i, label %_compound_head.exit.i.if.then40_crit_edge, label %page_is_idle.exit, !prof !112

_compound_head.exit.i.if.then40_crit_edge:        ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

page_is_idle.exit:                                ; preds = %_compound_head.exit.i
  %28 = ptrtoint ptr %call.i.i65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call.i.i65, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool5.i.i.not = icmp eq i32 %30, 0
  br i1 %tobool5.i.i.not, label %page_is_idle.exit.if.then40_crit_edge, label %lor.lhs.false36

page_is_idle.exit.if.then40_crit_edge:            ; preds = %page_is_idle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

lor.lhs.false36:                                  ; preds = %page_is_idle.exit
  %31 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mm, align 4
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon.2, ptr %32, i32 0, i32 49
  %33 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %34, null
  br i1 %tobool.i.not.i, label %lor.lhs.false36.if.end41_crit_edge, label %mmu_notifier_test_young.exit

lor.lhs.false36.if.end41_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

mmu_notifier_test_young.exit:                     ; preds = %lor.lhs.false36
  %call1.i = tail call i32 @__mmu_notifier_test_young(ptr noundef %32, i32 noundef %addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool39.not = icmp eq i32 %call1.i, 0
  br i1 %tobool39.not, label %mmu_notifier_test_young.exit.if.end41_crit_edge, label %mmu_notifier_test_young.exit.if.then40_crit_edge

mmu_notifier_test_young.exit.if.then40_crit_edge: ; preds = %mmu_notifier_test_young.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

mmu_notifier_test_young.exit.if.end41_crit_edge:  ; preds = %mmu_notifier_test_young.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then40:                                        ; preds = %mmu_notifier_test_young.exit.if.then40_crit_edge, %page_is_idle.exit.if.then40_crit_edge, %_compound_head.exit.i.if.then40_crit_edge, %cond.true24.if.then40_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4096, ptr %36, align 4
  %young = getelementptr inbounds %struct.damon_young_walk_private, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %young to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %young, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %mmu_notifier_test_young.exit.if.end41_crit_edge, %lor.lhs.false36.if.end41_crit_edge
  %39 = getelementptr inbounds %struct.page, ptr %call20, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i66 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i66)
  %tobool.not.i.i67 = icmp eq i32 %and.i.i66, 0
  br i1 %tobool.not.i.i67, label %if.end.i.i70, label %if.then.i.i69, !prof !102

if.then.i.i69:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i68 = add i32 %41, -1
  br label %_compound_head.exit.i72

if.end.i.i70:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call20 to i32
  br label %_compound_head.exit.i72

_compound_head.exit.i72:                          ; preds = %if.end.i.i70, %if.then.i.i69
  %retval.0.i.i71 = phi i32 [ %sub.i.i68, %if.then.i.i69 ], [ %42, %if.end.i.i70 ]
  %43 = inttoptr i32 %retval.0.i.i71 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %44 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i.i.i = icmp eq i32 %45, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !112

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.6) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !113
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i72
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !115
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@damon_young_pmd_entry, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !105

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %43, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.do.body_crit_edge

folio_put_testzero.exit.i.i.do.body_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %43) #8
  br label %do.body

do.body:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.do.body_crit_edge, %if.end17.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %7) #8
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr7) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !110
  %47 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i1.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 213
  %51 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %52, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !111
  %53 = tail call i32 @llvm.read_register.i32(metadata !90) #8
  %and.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i73 = add i32 %56, -1
  store volatile i32 %sub.i.i73, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_get_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmu_notifier_test_young(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_madvise(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @damon_pageout_score(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_three_regions_in_vmas(ptr noundef %test) #0 align 64 {
entry:
  %rbroot.i = alloca %struct.rb_root, align 4
  %vmas = alloca [6 x %struct.vm_area_struct], align 4
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion45 = alloca %struct.kunit_binary_assert, align 8
  %__assertion75 = alloca %struct.kunit_binary_assert, align 8
  %__assertion105 = alloca %struct.kunit_binary_assert, align 8
  %__assertion135 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %vmas) #8
  %0 = call ptr @memcpy(ptr %vmas, ptr @__const.damon_test_three_regions_in_vmas.vmas, i32 576)
  %arrayidx.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 1
  %vm_next.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 0, i32 2
  %1 = ptrtoint ptr %vm_next.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx.i, ptr %vm_next.i, align 4
  %rb_left.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rb_left.i, align 4
  %vm_rb5.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 1, i32 4
  %rb_right.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vm_rb5.i, ptr %rb_right.i, align 4
  %arrayidx14.216.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 2
  %arrayidx14.323.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 3
  %arrayidx14.430.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 4
  %arrayidx14.5.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 5
  %rb_subtree_gap.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 0, i32 5
  %4 = ptrtoint ptr %rb_subtree_gap.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 175, ptr %rb_subtree_gap.i, align 4
  %vm_next.1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 1, i32 2
  %5 = ptrtoint ptr %vm_next.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx14.216.i, ptr %vm_next.1.i, align 4
  %rb_left.1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 1, i32 4, i32 2
  %6 = ptrtoint ptr %rb_left.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rb_left.1.i, align 4
  %vm_rb5.1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 2, i32 4
  %rb_right.1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 1, i32 4, i32 1
  %7 = ptrtoint ptr %rb_right.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vm_rb5.1.i, ptr %rb_right.1.i, align 4
  %rb_subtree_gap.1.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 1, i32 5
  %8 = ptrtoint ptr %rb_subtree_gap.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 175, ptr %rb_subtree_gap.1.i, align 4
  %vm_next.2.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 2, i32 2
  %9 = ptrtoint ptr %vm_next.2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx14.323.i, ptr %vm_next.2.i, align 4
  %rb_left.2.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 2, i32 4, i32 2
  %10 = ptrtoint ptr %rb_left.2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rb_left.2.i, align 4
  %vm_rb5.2.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 3, i32 4
  %rb_right.2.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 2, i32 4, i32 1
  %11 = ptrtoint ptr %rb_right.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vm_rb5.2.i, ptr %rb_right.2.i, align 4
  %rb_subtree_gap.2.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 2, i32 5
  %12 = ptrtoint ptr %rb_subtree_gap.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 175, ptr %rb_subtree_gap.2.i, align 4
  %vm_next.3.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 3, i32 2
  %13 = ptrtoint ptr %vm_next.3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx14.430.i, ptr %vm_next.3.i, align 4
  %rb_left.3.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 3, i32 4, i32 2
  %14 = ptrtoint ptr %rb_left.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_left.3.i, align 4
  %vm_rb5.3.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 4, i32 4
  %rb_right.3.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 3, i32 4, i32 1
  %15 = ptrtoint ptr %rb_right.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vm_rb5.3.i, ptr %rb_right.3.i, align 4
  %rb_subtree_gap.3.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 3, i32 5
  %16 = ptrtoint ptr %rb_subtree_gap.3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 80, ptr %rb_subtree_gap.3.i, align 4
  %vm_next.4.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 4, i32 2
  %17 = ptrtoint ptr %vm_next.4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx14.5.i, ptr %vm_next.4.i, align 4
  %rb_left.4.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 4, i32 4, i32 2
  %18 = ptrtoint ptr %rb_left.4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_left.4.i, align 4
  %vm_rb5.4.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 5, i32 4
  %rb_right.4.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 4, i32 4, i32 1
  %19 = ptrtoint ptr %rb_right.4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %vm_rb5.4.i, ptr %rb_right.4.i, align 4
  %rb_subtree_gap.4.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 4, i32 5
  %20 = ptrtoint ptr %rb_subtree_gap.4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 80, ptr %rb_subtree_gap.4.i, align 4
  %vm_next26.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 5, i32 2
  %21 = ptrtoint ptr %vm_next26.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %vm_next26.i, align 4
  %rb_right29.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 5, i32 4, i32 1
  %22 = ptrtoint ptr %rb_right29.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %rb_right29.i, align 4
  %rb_subtree_gap31.i = getelementptr inbounds %struct.vm_area_struct, ptr %vmas, i32 5, i32 5
  %23 = ptrtoint ptr %rb_subtree_gap31.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rb_subtree_gap31.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbroot.i) #8
  %24 = ptrtoint ptr %rbroot.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %rbroot.i, align 4, !annotation !106
  br label %for.body.i

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %entry
  %vma.addr.0130.i = phi ptr [ %35, %next.i.for.body.i_crit_edge ], [ %vmas, %entry ]
  %last_vma.0129.i = phi ptr [ %vma.addr.1.i, %next.i.for.body.i_crit_edge ], [ null, %entry ]
  %start.0128.i = phi i32 [ %start.1.i, %next.i.for.body.i_crit_edge ], [ 0, %entry ]
  %second_gap.sroa.0.0127.i = phi i32 [ %second_gap.sroa.0.1.i, %next.i.for.body.i_crit_edge ], [ 0, %entry ]
  %second_gap.sroa.15.0126.i = phi i32 [ %second_gap.sroa.15.1.i, %next.i.for.body.i_crit_edge ], [ 0, %entry ]
  %first_gap.sroa.0.0125.i = phi i32 [ %first_gap.sroa.0.1.i, %next.i.for.body.i_crit_edge ], [ 0, %entry ]
  %first_gap.sroa.10.0124.i = phi i32 [ %first_gap.sroa.10.1.i, %next.i.for.body.i_crit_edge ], [ 0, %entry ]
  %tobool1.not.i = icmp eq ptr %last_vma.0129.i, null
  br i1 %tobool1.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %vma.addr.0130.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vma.addr.0130.i, align 4
  br label %next.i

if.end.i:                                         ; preds = %for.body.i
  %rb_subtree_gap.i182 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0130.i, i32 0, i32 5
  %27 = ptrtoint ptr %rb_subtree_gap.i182 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rb_subtree_gap.i182, align 4
  %sub.i.i = sub i32 %second_gap.sroa.15.0126.i, %second_gap.sroa.0.0127.i
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %28, %sub.i.i
  br i1 %cmp.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %vm_rb.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.0130.i, i32 0, i32 4
  %29 = ptrtoint ptr %rbroot.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %vm_rb.i, ptr %rbroot.i, align 4
  %call3.i = call ptr @rb_last(ptr noundef nonnull %rbroot.i) #8
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 -16
  br label %next.i

if.end4.i:                                        ; preds = %if.end.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %last_vma.0129.i, i32 0, i32 1
  %30 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vm_end.i, align 4
  %32 = ptrtoint ptr %vma.addr.0130.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vma.addr.0130.i, align 4
  %sub.i87.i = sub i32 %33, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i87.i, i32 %sub.i.i)
  %cmp9.i = icmp ugt i32 %sub.i87.i, %sub.i.i
  br i1 %cmp9.i, label %do.body.i, label %if.end4.i.next.i_crit_edge

if.end4.i.next.i_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

do.body.i:                                        ; preds = %if.end4.i
  %sub.i93.i = sub i32 %first_gap.sroa.10.0124.i, %first_gap.sroa.0.0125.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i87.i, i32 %sub.i93.i)
  %cmp13.i = icmp ugt i32 %sub.i87.i, %sub.i93.i
  br i1 %cmp13.i, label %do.body15.i, label %do.body.i.next.i_crit_edge

do.body.i.next.i_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

do.body15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %next.i

next.i:                                           ; preds = %do.body15.i, %do.body.i.next.i_crit_edge, %if.end4.i.next.i_crit_edge, %if.then2.i, %if.then.i
  %first_gap.sroa.10.1.i = phi i32 [ %first_gap.sroa.10.0124.i, %if.then.i ], [ %33, %do.body15.i ], [ %first_gap.sroa.10.0124.i, %do.body.i.next.i_crit_edge ], [ %first_gap.sroa.10.0124.i, %if.end4.i.next.i_crit_edge ], [ %first_gap.sroa.10.0124.i, %if.then2.i ]
  %first_gap.sroa.0.1.i = phi i32 [ %first_gap.sroa.0.0125.i, %if.then.i ], [ %31, %do.body15.i ], [ %first_gap.sroa.0.0125.i, %do.body.i.next.i_crit_edge ], [ %first_gap.sroa.0.0125.i, %if.end4.i.next.i_crit_edge ], [ %first_gap.sroa.0.0125.i, %if.then2.i ]
  %second_gap.sroa.15.1.i = phi i32 [ %second_gap.sroa.15.0126.i, %if.then.i ], [ %first_gap.sroa.10.0124.i, %do.body15.i ], [ %33, %do.body.i.next.i_crit_edge ], [ %second_gap.sroa.15.0126.i, %if.end4.i.next.i_crit_edge ], [ %second_gap.sroa.15.0126.i, %if.then2.i ]
  %second_gap.sroa.0.1.i = phi i32 [ %second_gap.sroa.0.0127.i, %if.then.i ], [ %first_gap.sroa.0.0125.i, %do.body15.i ], [ %31, %do.body.i.next.i_crit_edge ], [ %second_gap.sroa.0.0127.i, %if.end4.i.next.i_crit_edge ], [ %second_gap.sroa.0.0127.i, %if.then2.i ]
  %start.1.i = phi i32 [ %26, %if.then.i ], [ %start.0128.i, %do.body15.i ], [ %start.0128.i, %do.body.i.next.i_crit_edge ], [ %start.0128.i, %if.end4.i.next.i_crit_edge ], [ %start.0128.i, %if.then2.i ]
  %vma.addr.1.i = phi ptr [ %vma.addr.0130.i, %if.then.i ], [ %vma.addr.0130.i, %do.body15.i ], [ %vma.addr.0130.i, %do.body.i.next.i_crit_edge ], [ %vma.addr.0130.i, %if.end4.i.next.i_crit_edge ], [ %add.ptr.i, %if.then2.i ]
  %vm_next.i183 = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.1.i, i32 0, i32 2
  %34 = ptrtoint ptr %vm_next.i183 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vm_next.i183, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.end.i, label %next.i.for.body.i_crit_edge

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %next.i
  call void @__sanitizer_cov_trace_cmp4(i32 %second_gap.sroa.15.1.i, i32 %second_gap.sroa.0.1.i)
  %tobool22.not.i = icmp eq i32 %second_gap.sroa.15.1.i, %second_gap.sroa.0.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %first_gap.sroa.10.1.i, i32 %first_gap.sroa.0.1.i)
  %tobool24.not.i = icmp eq i32 %first_gap.sroa.10.1.i, %first_gap.sroa.0.1.i
  %or.cond.i = select i1 %tobool22.not.i, i1 true, i1 %tobool24.not.i
  br i1 %or.cond.i, label %for.end.i.__damon_va_three_regions.exit_crit_edge, label %if.end26.i

for.end.i.__damon_va_three_regions.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__damon_va_three_regions.exit

if.end26.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %first_gap.sroa.0.1.i, i32 %second_gap.sroa.0.1.i)
  %cmp29.i = icmp ugt i32 %first_gap.sroa.0.1.i, %second_gap.sroa.0.1.i
  br i1 %cmp29.i, label %do.body31.i, label %if.end26.i.if.end35.i_crit_edge

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

do.body31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.body31.i, %if.end26.i.if.end35.i_crit_edge
  %first_gap.sroa.10.2.i = phi i32 [ %second_gap.sroa.15.1.i, %do.body31.i ], [ %first_gap.sroa.10.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %first_gap.sroa.0.2.i = phi i32 [ %second_gap.sroa.0.1.i, %do.body31.i ], [ %first_gap.sroa.0.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %second_gap.sroa.15.2.i = phi i32 [ %first_gap.sroa.10.1.i, %do.body31.i ], [ %second_gap.sroa.15.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %second_gap.sroa.0.2.i = phi i32 [ %first_gap.sroa.0.1.i, %do.body31.i ], [ %second_gap.sroa.0.1.i, %if.end26.i.if.end35.i_crit_edge ]
  %vm_end57.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma.addr.1.i, i32 0, i32 1
  %36 = ptrtoint ptr %vm_end57.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vm_end57.i, align 4
  br label %__damon_va_three_regions.exit

__damon_va_three_regions.exit:                    ; preds = %if.end35.i, %for.end.i.__damon_va_three_regions.exit_crit_edge
  %regions.sroa.0.0 = phi i32 [ 0, %for.end.i.__damon_va_three_regions.exit_crit_edge ], [ %start.1.i, %if.end35.i ]
  %regions.sroa.5.0 = phi i32 [ 0, %for.end.i.__damon_va_three_regions.exit_crit_edge ], [ %first_gap.sroa.0.2.i, %if.end35.i ]
  %regions.sroa.7.0 = phi i32 [ 0, %for.end.i.__damon_va_three_regions.exit_crit_edge ], [ %first_gap.sroa.10.2.i, %if.end35.i ]
  %regions.sroa.9.0 = phi i32 [ 0, %for.end.i.__damon_va_three_regions.exit_crit_edge ], [ %second_gap.sroa.0.2.i, %if.end35.i ]
  %regions.sroa.11.0 = phi i32 [ 0, %for.end.i.__damon_va_three_regions.exit_crit_edge ], [ %second_gap.sroa.15.2.i, %if.end35.i ]
  %regions.sroa.13.0 = phi i32 [ 0, %for.end.i.__damon_va_three_regions.exit_crit_edge ], [ %37, %if.end35.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbroot.i) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %38 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %39 = call ptr @memset(ptr %38, i32 255, i32 24)
  %40 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %42 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 90, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %43 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %44 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %46 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %47 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.14, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %48 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.15, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %49 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 10, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %50 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.16, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %conv5 = zext i32 %regions.sroa.0.0 to i64
  %51 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv5, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %regions.sroa.0.0)
  %cmp = icmp eq i32 %regions.sroa.0.0, 10
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #8
  %52 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %53 = call ptr @memset(ptr %52, i32 255, i32 24)
  %54 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %55 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %56 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 91, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %57 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.13, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %58 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %60 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %61 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.14, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %62 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.17, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %63 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 25, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %64 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.18, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %conv31 = zext i32 %regions.sroa.5.0 to i64
  %65 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %conv31, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %regions.sroa.5.0)
  %cmp33 = icmp eq i32 %regions.sroa.5.0, 25
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion45) #8
  %66 = getelementptr inbounds i8, ptr %__assertion45, i32 32
  %67 = call ptr @memset(ptr %66, i32 255, i32 24)
  %68 = ptrtoint ptr %__assertion45 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %test, ptr %__assertion45, align 8
  %type48 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 1
  %69 = ptrtoint ptr %type48 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %type48, align 4
  %line49 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 2
  %70 = ptrtoint ptr %line49 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 92, ptr %line49, align 8
  %file50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 3
  %71 = ptrtoint ptr %file50 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.13, ptr %file50, align 4
  %message51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4
  %72 = ptrtoint ptr %message51 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %message51, align 8
  %va53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %va53 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %va53, align 4
  %format54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion45, i32 0, i32 5
  %74 = ptrtoint ptr %format54 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @kunit_binary_assert_format, ptr %format54, align 8
  %operation55 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 1
  %75 = ptrtoint ptr %operation55 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.14, ptr %operation55, align 4
  %left_text56 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 2
  %76 = ptrtoint ptr %left_text56 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @.str.19, ptr %left_text56, align 8
  %left_value57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 3
  %77 = ptrtoint ptr %left_value57 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 200, ptr %left_value57, align 8
  %right_text59 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 4
  %78 = ptrtoint ptr %right_text59 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.20, ptr %right_text59, align 8
  %right_value60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion45, i32 0, i32 5
  %conv61 = zext i32 %regions.sroa.7.0 to i64
  %79 = ptrtoint ptr %right_value60 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv61, ptr %right_value60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %regions.sroa.7.0)
  %cmp63 = icmp eq i32 %regions.sroa.7.0, 200
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion45, i1 noundef zeroext %cmp63, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion45) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion75) #8
  %80 = getelementptr inbounds i8, ptr %__assertion75, i32 32
  %81 = call ptr @memset(ptr %80, i32 255, i32 24)
  %82 = ptrtoint ptr %__assertion75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %test, ptr %__assertion75, align 8
  %type78 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 1
  %83 = ptrtoint ptr %type78 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %type78, align 4
  %line79 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 2
  %84 = ptrtoint ptr %line79 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 93, ptr %line79, align 8
  %file80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 3
  %85 = ptrtoint ptr %file80 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.13, ptr %file80, align 4
  %message81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 4
  %86 = ptrtoint ptr %message81 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %message81, align 8
  %va83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %va83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %va83, align 4
  %format84 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion75, i32 0, i32 5
  %88 = ptrtoint ptr %format84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @kunit_binary_assert_format, ptr %format84, align 8
  %operation85 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 1
  %89 = ptrtoint ptr %operation85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.14, ptr %operation85, align 4
  %left_text86 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 2
  %90 = ptrtoint ptr %left_text86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.21, ptr %left_text86, align 8
  %left_value87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 3
  %91 = ptrtoint ptr %left_value87 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 220, ptr %left_value87, align 8
  %right_text89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 4
  %92 = ptrtoint ptr %right_text89 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @.str.22, ptr %right_text89, align 8
  %right_value90 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion75, i32 0, i32 5
  %conv91 = zext i32 %regions.sroa.9.0 to i64
  %93 = ptrtoint ptr %right_value90 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv91, ptr %right_value90, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 220, i32 %regions.sroa.9.0)
  %cmp93 = icmp eq i32 %regions.sroa.9.0, 220
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion75, i1 noundef zeroext %cmp93, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion75) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion105) #8
  %94 = getelementptr inbounds i8, ptr %__assertion105, i32 32
  %95 = call ptr @memset(ptr %94, i32 255, i32 24)
  %96 = ptrtoint ptr %__assertion105 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %test, ptr %__assertion105, align 8
  %type108 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion105, i32 0, i32 1
  %97 = ptrtoint ptr %type108 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type108, align 4
  %line109 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion105, i32 0, i32 2
  %98 = ptrtoint ptr %line109 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 94, ptr %line109, align 8
  %file110 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion105, i32 0, i32 3
  %99 = ptrtoint ptr %file110 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.13, ptr %file110, align 4
  %message111 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion105, i32 0, i32 4
  %100 = ptrtoint ptr %message111 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %message111, align 8
  %va113 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion105, i32 0, i32 4, i32 1
  %101 = ptrtoint ptr %va113 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %va113, align 4
  %format114 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion105, i32 0, i32 5
  %102 = ptrtoint ptr %format114 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @kunit_binary_assert_format, ptr %format114, align 8
  %operation115 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion105, i32 0, i32 1
  %103 = ptrtoint ptr %operation115 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.14, ptr %operation115, align 4
  %left_text116 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion105, i32 0, i32 2
  %104 = ptrtoint ptr %left_text116 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.23, ptr %left_text116, align 8
  %left_value117 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion105, i32 0, i32 3
  %105 = ptrtoint ptr %left_value117 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 300, ptr %left_value117, align 8
  %right_text119 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion105, i32 0, i32 4
  %106 = ptrtoint ptr %right_text119 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.24, ptr %right_text119, align 8
  %right_value120 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion105, i32 0, i32 5
  %conv121 = zext i32 %regions.sroa.11.0 to i64
  %107 = ptrtoint ptr %right_value120 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv121, ptr %right_value120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %regions.sroa.11.0)
  %cmp123 = icmp eq i32 %regions.sroa.11.0, 300
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion105, i1 noundef zeroext %cmp123, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion105) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion135) #8
  %108 = getelementptr inbounds i8, ptr %__assertion135, i32 32
  %109 = call ptr @memset(ptr %108, i32 255, i32 24)
  %110 = ptrtoint ptr %__assertion135 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %test, ptr %__assertion135, align 8
  %type138 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion135, i32 0, i32 1
  %111 = ptrtoint ptr %type138 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type138, align 4
  %line139 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion135, i32 0, i32 2
  %112 = ptrtoint ptr %line139 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 95, ptr %line139, align 8
  %file140 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion135, i32 0, i32 3
  %113 = ptrtoint ptr %file140 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @.str.13, ptr %file140, align 4
  %message141 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion135, i32 0, i32 4
  %114 = ptrtoint ptr %message141 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %message141, align 8
  %va143 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion135, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %va143 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %va143, align 4
  %format144 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion135, i32 0, i32 5
  %116 = ptrtoint ptr %format144 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @kunit_binary_assert_format, ptr %format144, align 8
  %operation145 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion135, i32 0, i32 1
  %117 = ptrtoint ptr %operation145 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @.str.14, ptr %operation145, align 4
  %left_text146 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion135, i32 0, i32 2
  %118 = ptrtoint ptr %left_text146 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @.str.25, ptr %left_text146, align 8
  %left_value147 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion135, i32 0, i32 3
  %119 = ptrtoint ptr %left_value147 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 330, ptr %left_value147, align 8
  %right_text149 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion135, i32 0, i32 4
  %120 = ptrtoint ptr %right_text149 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @.str.26, ptr %right_text149, align 8
  %right_value150 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion135, i32 0, i32 5
  %conv151 = zext i32 %regions.sroa.13.0 to i64
  %121 = ptrtoint ptr %right_value150 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %conv151, ptr %right_value150, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 330, i32 %regions.sroa.13.0)
  %cmp153 = icmp eq i32 %regions.sroa.13.0, 330
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion135, i1 noundef zeroext %cmp153, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion135) #8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %vmas) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_apply_three_regions1(ptr noundef %test) #0 align 64 {
entry:
  %regions = alloca [16 x i32], align 4
  %new_three_regions = alloca [3 x %struct.damon_addr_range], align 4
  %expected = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %regions) #8
  %0 = call ptr @memcpy(ptr %regions, ptr @__const.damon_test_apply_three_regions4.regions, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_three_regions) #8
  %1 = call ptr @memcpy(ptr %new_three_regions, ptr @__const.damon_test_apply_three_regions1.new_three_regions, i32 24)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %expected) #8
  %2 = call ptr @memcpy(ptr %expected, ptr @__const.damon_test_apply_three_regions1.expected, i32 48)
  call fastcc void @damon_do_test_apply_three_regions(ptr noundef %test, ptr noundef nonnull %regions, ptr noundef nonnull %new_three_regions, ptr noundef nonnull %expected, i32 noundef 12)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %expected) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_three_regions) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %regions) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_apply_three_regions2(ptr noundef %test) #0 align 64 {
entry:
  %regions = alloca [16 x i32], align 4
  %new_three_regions = alloca [3 x %struct.damon_addr_range], align 4
  %expected = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %regions) #8
  %0 = call ptr @memcpy(ptr %regions, ptr @__const.damon_test_apply_three_regions4.regions, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_three_regions) #8
  %1 = call ptr @memcpy(ptr %new_three_regions, ptr @__const.damon_test_apply_three_regions2.new_three_regions, i32 24)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %expected) #8
  %2 = call ptr @memcpy(ptr %expected, ptr @__const.damon_test_apply_three_regions2.expected, i32 48)
  call fastcc void @damon_do_test_apply_three_regions(ptr noundef %test, ptr noundef nonnull %regions, ptr noundef nonnull %new_three_regions, ptr noundef nonnull %expected, i32 noundef 12)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %expected) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_three_regions) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %regions) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_apply_three_regions3(ptr noundef %test) #0 align 64 {
entry:
  %regions = alloca [16 x i32], align 4
  %new_three_regions = alloca [3 x %struct.damon_addr_range], align 4
  %expected = alloca [12 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %regions) #8
  %0 = call ptr @memcpy(ptr %regions, ptr @__const.damon_test_apply_three_regions4.regions, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_three_regions) #8
  %1 = call ptr @memcpy(ptr %new_three_regions, ptr @__const.damon_test_apply_three_regions3.new_three_regions, i32 24)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %expected) #8
  %2 = call ptr @memcpy(ptr %expected, ptr @__const.damon_test_apply_three_regions3.expected, i32 48)
  call fastcc void @damon_do_test_apply_three_regions(ptr noundef %test, ptr noundef nonnull %regions, ptr noundef nonnull %new_three_regions, ptr noundef nonnull %expected, i32 noundef 12)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %expected) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_three_regions) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %regions) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_apply_three_regions4(ptr noundef %test) #0 align 64 {
entry:
  %regions = alloca [16 x i32], align 4
  %new_three_regions = alloca [3 x %struct.damon_addr_range], align 4
  %expected = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %regions) #8
  %0 = call ptr @memcpy(ptr %regions, ptr @__const.damon_test_apply_three_regions4.regions, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %new_three_regions) #8
  %1 = call ptr @memcpy(ptr %new_three_regions, ptr @__const.damon_test_apply_three_regions4.new_three_regions, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %expected) #8
  %2 = call ptr @memcpy(ptr %expected, ptr @__const.damon_test_apply_three_regions4.expected, i32 24)
  call fastcc void @damon_do_test_apply_three_regions(ptr noundef %test, ptr noundef nonnull %regions, ptr noundef nonnull %new_three_regions, ptr noundef nonnull %expected, i32 noundef 6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %expected) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %new_three_regions) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %regions) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @damon_test_split_evenly(ptr noundef %test) #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %0 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %4 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 298, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %9 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.14, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %10 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.31, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %11 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -22, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %12 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.32, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %13 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -22, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext true, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  call fastcc void @damon_test_split_evenly_fail(ptr noundef %test, i32 noundef 0, i32 noundef 100, i32 noundef 0)
  call fastcc void @damon_test_split_evenly_succ(ptr noundef %test, i32 noundef 0, i32 noundef 100, i32 noundef 10)
  call fastcc void @damon_test_split_evenly_succ(ptr noundef %test, i32 noundef 5, i32 noundef 59, i32 noundef 5)
  call fastcc void @damon_test_split_evenly_fail(ptr noundef %test, i32 noundef 5, i32 noundef 6, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_binary_assert_format(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_do_assertion(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_do_test_apply_three_regions(ptr noundef %test, ptr nocapture noundef readonly %regions, ptr nocapture noundef readonly %three_regions, ptr nocapture noundef readonly %expected, i32 noundef %nr_expected) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion27 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @damon_new_target(i32 noundef 42) #8
  %0 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regions, align 4
  %arrayidx2 = getelementptr i32, ptr %regions, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call ptr @damon_new_region(i32 noundef %1, i32 noundef %3) #8
  tail call void @damon_add_region(ptr noundef %call3, ptr noundef %call) #8
  %arrayidx.1 = getelementptr i32, ptr %regions, i32 2
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr i32, ptr %regions, i32 3
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.1, align 4
  %call3.1 = tail call ptr @damon_new_region(i32 noundef %5, i32 noundef %7) #8
  tail call void @damon_add_region(ptr noundef %call3.1, ptr noundef %call) #8
  %arrayidx.2 = getelementptr i32, ptr %regions, i32 4
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr i32, ptr %regions, i32 5
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.2, align 4
  %call3.2 = tail call ptr @damon_new_region(i32 noundef %9, i32 noundef %11) #8
  tail call void @damon_add_region(ptr noundef %call3.2, ptr noundef %call) #8
  %arrayidx.3 = getelementptr i32, ptr %regions, i32 6
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr i32, ptr %regions, i32 7
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.3, align 4
  %call3.3 = tail call ptr @damon_new_region(i32 noundef %13, i32 noundef %15) #8
  tail call void @damon_add_region(ptr noundef %call3.3, ptr noundef %call) #8
  %arrayidx.4 = getelementptr i32, ptr %regions, i32 8
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr i32, ptr %regions, i32 9
  %18 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.4, align 4
  %call3.4 = tail call ptr @damon_new_region(i32 noundef %17, i32 noundef %19) #8
  tail call void @damon_add_region(ptr noundef %call3.4, ptr noundef %call) #8
  %arrayidx.5 = getelementptr i32, ptr %regions, i32 10
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5, align 4
  %arrayidx2.5 = getelementptr i32, ptr %regions, i32 11
  %22 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2.5, align 4
  %call3.5 = tail call ptr @damon_new_region(i32 noundef %21, i32 noundef %23) #8
  tail call void @damon_add_region(ptr noundef %call3.5, ptr noundef %call) #8
  %arrayidx.6 = getelementptr i32, ptr %regions, i32 12
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6, align 4
  %arrayidx2.6 = getelementptr i32, ptr %regions, i32 13
  %26 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.6, align 4
  %call3.6 = tail call ptr @damon_new_region(i32 noundef %25, i32 noundef %27) #8
  tail call void @damon_add_region(ptr noundef %call3.6, ptr noundef %call) #8
  %arrayidx.7 = getelementptr i32, ptr %regions, i32 14
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.7, align 4
  %arrayidx2.7 = getelementptr i32, ptr %regions, i32 15
  %30 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.7, align 4
  %call3.7 = tail call ptr @damon_new_region(i32 noundef %29, i32 noundef %31) #8
  tail call void @damon_add_region(ptr noundef %call3.7, ptr noundef %call) #8
  tail call fastcc void @damon_va_apply_three_regions(ptr noundef %call, ptr noundef %three_regions)
  %div5 = sdiv i32 %nr_expected, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_expected)
  %cmp63 = icmp sgt i32 %nr_expected, 1
  br i1 %cmp63, label %for.body7.lr.ph, label %entry.for.end53_crit_edge

entry.for.end53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end53

for.body7.lr.ph:                                  ; preds = %entry
  %regions_list.i = getelementptr inbounds %struct.damon_target, ptr %call, i32 0, i32 2
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %type30 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 1
  %line31 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 2
  %file32 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 3
  %message33 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 4
  %va35 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 4, i32 1
  %format36 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion27, i32 0, i32 5
  %operation37 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 1
  %left_text38 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 2
  %left_value39 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 3
  %right_text41 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 4
  %right_value42 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion27, i32 0, i32 5
  %32 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %33 = getelementptr inbounds i8, ptr %__assertion27, i32 32
  br label %for.body7

for.body7:                                        ; preds = %__nth_region_of.exit.for.body7_crit_edge, %for.body7.lr.ph
  %i.14 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc52, %__nth_region_of.exit.for.body7_crit_edge ]
  %34 = ptrtoint ptr %regions_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn14.i = load ptr, ptr %regions_list.i, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %regions_list.i
  br i1 %cmp.not15.i, label %for.body7.__nth_region_of.exit_crit_edge, label %for.body7.for.body.i_crit_edge

for.body7.for.body.i_crit_edge:                   ; preds = %for.body7
  br label %for.body.i

for.body7.__nth_region_of.exit_crit_edge:         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nth_region_of.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %35 = ptrtoint ptr %.pn17.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn17.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %regions_list.i
  br i1 %cmp.not.i, label %for.cond.i.__nth_region_of.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.__nth_region_of.exit_crit_edge:        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__nth_region_of.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body7.for.body.i_crit_edge
  %.pn17.i = phi ptr [ %.pn.i, %for.cond.i.for.body.i_crit_edge ], [ %.pn14.i, %for.body7.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body7.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016.i, i32 %i.14)
  %cmp2.i = icmp eq i32 %i.016.i, %i.14
  br i1 %cmp2.i, label %cleanup.split.loop.exit12.i, label %for.cond.i

cleanup.split.loop.exit12.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %r.0.le.i = getelementptr i8, ptr %.pn17.i, i32 -16
  br label %__nth_region_of.exit

__nth_region_of.exit:                             ; preds = %cleanup.split.loop.exit12.i, %for.cond.i.__nth_region_of.exit_crit_edge, %for.body7.__nth_region_of.exit_crit_edge
  %retval.0.i = phi ptr [ %r.0.le.i, %cleanup.split.loop.exit12.i ], [ null, %for.body7.__nth_region_of.exit_crit_edge ], [ null, %for.cond.i.__nth_region_of.exit_crit_edge ]
  %36 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %retval.0.i, align 4
  %mul9 = shl nuw i32 %i.14, 1
  %arrayidx10 = getelementptr i32, ptr %expected, i32 %mul9
  %38 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx10, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %40 = call ptr @memset(ptr %32, i32 255, i32 24)
  %41 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %test, ptr %__assertion, align 8
  %42 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %type, align 4
  %43 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 152, ptr %line, align 8
  %44 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.13, ptr %file, align 4
  %45 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %message, align 8
  %46 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %va, align 4
  %47 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %48 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.14, ptr %operation, align 4
  %49 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.27, ptr %left_text, align 8
  %conv = zext i32 %37 to i64
  %50 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %conv, ptr %left_value, align 8
  %51 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.28, ptr %right_text, align 8
  %conv13 = zext i32 %39 to i64
  %52 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv13, ptr %right_value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp15 = icmp eq i32 %37, %39
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp15, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  %end = getelementptr inbounds %struct.damon_addr_range, ptr %retval.0.i, i32 0, i32 1
  %53 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end, align 4
  %add24 = or i32 %mul9, 1
  %arrayidx25 = getelementptr i32, ptr %expected, i32 %add24
  %55 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx25, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion27) #8
  %57 = call ptr @memset(ptr %33, i32 255, i32 24)
  %58 = ptrtoint ptr %__assertion27 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %test, ptr %__assertion27, align 8
  %59 = ptrtoint ptr %type30 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %type30, align 4
  %60 = ptrtoint ptr %line31 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 153, ptr %line31, align 8
  %61 = ptrtoint ptr %file32 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.13, ptr %file32, align 4
  %62 = ptrtoint ptr %message33 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %message33, align 8
  %63 = ptrtoint ptr %va35 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %va35, align 4
  %64 = ptrtoint ptr %format36 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @kunit_binary_assert_format, ptr %format36, align 8
  %65 = ptrtoint ptr %operation37 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.14, ptr %operation37, align 4
  %66 = ptrtoint ptr %left_text38 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.29, ptr %left_text38, align 8
  %conv40 = zext i32 %54 to i64
  %67 = ptrtoint ptr %left_value39 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv40, ptr %left_value39, align 8
  %68 = ptrtoint ptr %right_text41 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @.str.30, ptr %right_text41, align 8
  %conv43 = zext i32 %56 to i64
  %69 = ptrtoint ptr %right_value42 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv43, ptr %right_value42, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp45 = icmp eq i32 %54, %56
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion27, i1 noundef zeroext %cmp45, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion27) #8
  %inc52 = add nuw nsw i32 %i.14, 1
  %exitcond.not = icmp eq i32 %inc52, %div5
  br i1 %exitcond.not, label %__nth_region_of.exit.for.end53_crit_edge, label %__nth_region_of.exit.for.body7_crit_edge

__nth_region_of.exit.for.body7_crit_edge:         ; preds = %__nth_region_of.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

__nth_region_of.exit.for.end53_crit_edge:         ; preds = %__nth_region_of.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end53

for.end53:                                        ; preds = %__nth_region_of.exit.for.end53_crit_edge, %entry.for.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @damon_new_target(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_test_split_evenly_fail(ptr noundef %test, i32 noundef %start, i32 noundef %end, i32 noundef %nr_pieces) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion47 = alloca %struct.kunit_binary_assert, align 8
  %__assertion77 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @damon_new_target(i32 noundef 42) #8
  %call1 = tail call ptr @damon_new_region(i32 noundef %start, i32 noundef %end) #8
  tail call void @damon_add_region(ptr noundef %call1, ptr noundef %call) #8
  %tobool.not.i = icmp eq ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pieces)
  %tobool1.not.i = icmp eq i32 %nr_pieces, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.damon_va_evenly_split_region.exit_crit_edge, label %if.end.i

entry.damon_va_evenly_split_region.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end.i:                                         ; preds = %entry
  %end.i = getelementptr inbounds %struct.damon_addr_range, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %sub.i = sub i32 %1, %3
  %div.i = udiv i32 %sub.i, %nr_pieces
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %nr_pieces)
  %tobool7.not.i = icmp ult i32 %sub.i, %nr_pieces
  br i1 %tobool7.not.i, label %if.end.i.damon_va_evenly_split_region.exit_crit_edge, label %if.end9.i

if.end.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end9.i:                                        ; preds = %if.end.i
  %add12.i = add i32 %div.i, %3
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add12.i, ptr %end.i, align 4
  %list.i.i = getelementptr inbounds %struct.damon_region, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list.i.i, align 4
  %add1757.i = add i32 %add12.i, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add1757.i, i32 %1)
  %cmp.not58.i = icmp ugt i32 %add1757.i, %1
  br i1 %cmp.not58.i, label %if.end9.i.damon_va_evenly_split_region.exit_crit_edge, label %for.body.lr.ph.i

if.end9.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %prev1.i.i.i = getelementptr i8, ptr %6, i32 4
  %nr_regions.i.i = getelementptr inbounds %struct.damon_target, ptr %call, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %damon_insert_region.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %add1761.i = phi i32 [ %add1757.i, %for.body.lr.ph.i ], [ %add17.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %start.060.i = phi i32 [ %add12.i, %for.body.lr.ph.i ], [ %add1761.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %r.addr.059.i = phi ptr [ %call1, %for.body.lr.ph.i ], [ %call19.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %call19.i = tail call ptr @damon_new_region(i32 noundef %start.060.i, i32 noundef %add1761.i) #8
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %for.body.i.damon_va_evenly_split_region.exit_crit_edge, label %if.end22.i

for.body.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end22.i:                                       ; preds = %for.body.i
  %list.i55.i = getelementptr inbounds %struct.damon_region, ptr %call19.i, i32 0, i32 3
  %list1.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.059.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i55.i, ptr noundef %list1.i.i, ptr noundef %6) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end22.i.damon_insert_region.exit.i_crit_edge

if.end22.i.damon_insert_region.exit.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_insert_region.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list.i55.i, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %list.i55.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %list.i55.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call19.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list1.i.i, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list.i55.i, ptr %list1.i.i, align 4
  br label %damon_insert_region.exit.i

damon_insert_region.exit.i:                       ; preds = %if.end.i.i.i, %if.end22.i.damon_insert_region.exit.i_crit_edge
  %11 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_regions.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %nr_regions.i.i, align 4
  %add17.i = add i32 %add1761.i, %div.i
  %cmp.not.i = icmp ugt i32 %add17.i, %1
  br i1 %cmp.not.i, label %if.then25.i, label %damon_insert_region.exit.i.for.body.i_crit_edge

damon_insert_region.exit.i.for.body.i_crit_edge:  ; preds = %damon_insert_region.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then25.i:                                      ; preds = %damon_insert_region.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %end27.i = getelementptr inbounds %struct.damon_addr_range, ptr %call19.i, i32 0, i32 1
  %13 = ptrtoint ptr %end27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %end27.i, align 4
  br label %damon_va_evenly_split_region.exit

damon_va_evenly_split_region.exit:                ; preds = %if.then25.i, %for.body.i.damon_va_evenly_split_region.exit_crit_edge, %if.end9.i.damon_va_evenly_split_region.exit_crit_edge, %if.end.i.damon_va_evenly_split_region.exit_crit_edge, %entry.damon_va_evenly_split_region.exit_crit_edge
  %cmp = phi i1 [ true, %entry.damon_va_evenly_split_region.exit_crit_edge ], [ true, %if.end.i.damon_va_evenly_split_region.exit_crit_edge ], [ false, %if.end9.i.damon_va_evenly_split_region.exit_crit_edge ], [ false, %if.then25.i ], [ false, %for.body.i.damon_va_evenly_split_region.exit_crit_edge ]
  %retval.0.i = phi i32 [ -22, %entry.damon_va_evenly_split_region.exit_crit_edge ], [ -22, %if.end.i.damon_va_evenly_split_region.exit_crit_edge ], [ 0, %if.end9.i.damon_va_evenly_split_region.exit_crit_edge ], [ 0, %if.then25.i ], [ -12, %for.body.i.damon_va_evenly_split_region.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %14 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 259, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.14, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.33, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %retval.0.i to i64
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.32, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -22, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  %call12 = call i32 @damon_nr_regions(ptr noundef %call) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #8
  %28 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %31 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %32 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 260, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %33 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.13, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %34 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %36 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %37 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.14, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %38 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.34, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %conv28 = zext i32 %call12 to i64
  %39 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv28, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %40 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.35, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %41 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp33 = icmp eq i32 %call12, 1
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #8
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %call, i32 0, i32 2
  %42 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn134 = load ptr, ptr %regions_list, align 4
  %cmp40.not135 = icmp eq ptr %.pn134, %regions_list
  br i1 %cmp40.not135, label %damon_va_evenly_split_region.exit.for.end_crit_edge, label %do.body42.lr.ph

damon_va_evenly_split_region.exit.for.end_crit_edge: ; preds = %damon_va_evenly_split_region.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body42.lr.ph:                                  ; preds = %damon_va_evenly_split_region.exit
  %type50 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 1
  %line51 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 2
  %file52 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 3
  %message53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 4
  %va55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 4, i32 1
  %format56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion47, i32 0, i32 5
  %operation57 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 1
  %left_text58 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 2
  %left_value59 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 3
  %right_text61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 4
  %right_value62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion47, i32 0, i32 5
  %conv63 = zext i32 %start to i64
  %type80 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 1
  %line81 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 2
  %file82 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 3
  %message83 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 4
  %va85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 4, i32 1
  %format86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion77, i32 0, i32 5
  %operation87 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 1
  %left_text88 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 2
  %left_value89 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 3
  %right_text91 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 4
  %right_value92 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion77, i32 0, i32 5
  %conv93 = zext i32 %end to i64
  %43 = getelementptr inbounds i8, ptr %__assertion47, i32 32
  %44 = getelementptr inbounds i8, ptr %__assertion77, i32 32
  br label %do.body42

do.body42:                                        ; preds = %do.body42.do.body42_crit_edge, %do.body42.lr.ph
  %.pn136 = phi ptr [ %.pn134, %do.body42.lr.ph ], [ %.pn, %do.body42.do.body42_crit_edge ]
  %r.0 = getelementptr i8, ptr %.pn136, i32 -16
  %45 = ptrtoint ptr %r.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %r.0, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion47) #8
  %47 = call ptr @memset(ptr %43, i32 255, i32 24)
  %48 = ptrtoint ptr %__assertion47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %test, ptr %__assertion47, align 8
  %49 = ptrtoint ptr %type50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type50, align 4
  %50 = ptrtoint ptr %line51 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 263, ptr %line51, align 8
  %51 = ptrtoint ptr %file52 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.13, ptr %file52, align 4
  %52 = ptrtoint ptr %message53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %message53, align 8
  %53 = ptrtoint ptr %va55 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %va55, align 4
  %54 = ptrtoint ptr %format56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @kunit_binary_assert_format, ptr %format56, align 8
  %55 = ptrtoint ptr %operation57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.14, ptr %operation57, align 4
  %56 = ptrtoint ptr %left_text58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.27, ptr %left_text58, align 8
  %conv60 = zext i32 %46 to i64
  %57 = ptrtoint ptr %left_value59 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv60, ptr %left_value59, align 8
  %58 = ptrtoint ptr %right_text61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.36, ptr %right_text61, align 8
  %59 = ptrtoint ptr %right_value62 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv63, ptr %right_value62, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %start)
  %cmp65 = icmp eq i32 %46, %start
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion47, i1 noundef zeroext %cmp65, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion47) #8
  %end74 = getelementptr i8, ptr %.pn136, i32 -12
  %60 = ptrtoint ptr %end74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %end74, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion77) #8
  %62 = call ptr @memset(ptr %44, i32 255, i32 24)
  %63 = ptrtoint ptr %__assertion77 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion77, align 8
  %64 = ptrtoint ptr %type80 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type80, align 4
  %65 = ptrtoint ptr %line81 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 264, ptr %line81, align 8
  %66 = ptrtoint ptr %file82 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.13, ptr %file82, align 4
  %67 = ptrtoint ptr %message83 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message83, align 8
  %68 = ptrtoint ptr %va85 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va85, align 4
  %69 = ptrtoint ptr %format86 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_assert_format, ptr %format86, align 8
  %70 = ptrtoint ptr %operation87 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.14, ptr %operation87, align 4
  %71 = ptrtoint ptr %left_text88 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.29, ptr %left_text88, align 8
  %conv90 = zext i32 %61 to i64
  %72 = ptrtoint ptr %left_value89 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv90, ptr %left_value89, align 8
  %73 = ptrtoint ptr %right_text91 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.37, ptr %right_text91, align 8
  %74 = ptrtoint ptr %right_value92 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv93, ptr %right_value92, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %end)
  %cmp95 = icmp eq i32 %61, %end
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion77, i1 noundef zeroext %cmp95, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion77) #8
  %75 = ptrtoint ptr %.pn136 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn = load ptr, ptr %.pn136, align 4
  %cmp40.not = icmp eq ptr %.pn, %regions_list
  br i1 %cmp40.not, label %do.body42.for.end_crit_edge, label %do.body42.do.body42_crit_edge

do.body42.do.body42_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

do.body42.for.end_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %do.body42.for.end_crit_edge, %damon_va_evenly_split_region.exit.for.end_crit_edge
  call void @damon_free_target(ptr noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @damon_test_split_evenly_succ(ptr noundef %test, i32 noundef %start, i32 noundef %end, i32 noundef %nr_pieces) unnamed_addr #0 align 64 {
entry:
  %__assertion = alloca %struct.kunit_binary_assert, align 8
  %__assertion15 = alloca %struct.kunit_binary_assert, align 8
  %__assertion50 = alloca %struct.kunit_binary_assert, align 8
  %__assertion82 = alloca %struct.kunit_binary_assert, align 8
  %__assertion119 = alloca %struct.kunit_binary_assert, align 8
  %__assertion149 = alloca %struct.kunit_binary_assert, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @damon_new_target(i32 noundef 42) #8
  %call1 = tail call ptr @damon_new_region(i32 noundef %start, i32 noundef %end) #8
  %sub = sub i32 %end, %start
  %div = udiv i32 %sub, %nr_pieces
  tail call void @damon_add_region(ptr noundef %call1, ptr noundef %call) #8
  %tobool.not.i = icmp eq ptr %call1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pieces)
  %tobool1.not.i = icmp eq i32 %nr_pieces, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %entry.damon_va_evenly_split_region.exit_crit_edge, label %if.end.i

entry.damon_va_evenly_split_region.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end.i:                                         ; preds = %entry
  %end.i = getelementptr inbounds %struct.damon_addr_range, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %sub.i = sub i32 %1, %3
  %div.i = udiv i32 %sub.i, %nr_pieces
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %nr_pieces)
  %tobool7.not.i = icmp ult i32 %sub.i, %nr_pieces
  br i1 %tobool7.not.i, label %if.end.i.damon_va_evenly_split_region.exit_crit_edge, label %if.end9.i

if.end.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end9.i:                                        ; preds = %if.end.i
  %add12.i = add i32 %div.i, %3
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add12.i, ptr %end.i, align 4
  %list.i.i = getelementptr inbounds %struct.damon_region, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list.i.i, align 4
  %add1757.i = add i32 %add12.i, %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add1757.i, i32 %1)
  %cmp.not58.i = icmp ugt i32 %add1757.i, %1
  br i1 %cmp.not58.i, label %if.end9.i.damon_va_evenly_split_region.exit_crit_edge, label %for.body.lr.ph.i

if.end9.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

for.body.lr.ph.i:                                 ; preds = %if.end9.i
  %prev1.i.i.i = getelementptr i8, ptr %6, i32 4
  %nr_regions.i.i = getelementptr inbounds %struct.damon_target, ptr %call, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %damon_insert_region.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %add1761.i = phi i32 [ %add1757.i, %for.body.lr.ph.i ], [ %add17.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %start.060.i = phi i32 [ %add12.i, %for.body.lr.ph.i ], [ %add1761.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %r.addr.059.i = phi ptr [ %call1, %for.body.lr.ph.i ], [ %call19.i, %damon_insert_region.exit.i.for.body.i_crit_edge ]
  %call19.i = tail call ptr @damon_new_region(i32 noundef %start.060.i, i32 noundef %add1761.i) #8
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %for.body.i.damon_va_evenly_split_region.exit_crit_edge, label %if.end22.i

for.body.i.damon_va_evenly_split_region.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_va_evenly_split_region.exit

if.end22.i:                                       ; preds = %for.body.i
  %list.i55.i = getelementptr inbounds %struct.damon_region, ptr %call19.i, i32 0, i32 3
  %list1.i.i = getelementptr inbounds %struct.damon_region, ptr %r.addr.059.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i55.i, ptr noundef %list1.i.i, ptr noundef %6) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end22.i.damon_insert_region.exit.i_crit_edge

if.end22.i.damon_insert_region.exit.i_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %damon_insert_region.exit.i

if.end.i.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list.i55.i, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %list.i55.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %list.i55.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.damon_region, ptr %call19.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list1.i.i, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list.i55.i, ptr %list1.i.i, align 4
  br label %damon_insert_region.exit.i

damon_insert_region.exit.i:                       ; preds = %if.end.i.i.i, %if.end22.i.damon_insert_region.exit.i_crit_edge
  %11 = ptrtoint ptr %nr_regions.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_regions.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %nr_regions.i.i, align 4
  %add17.i = add i32 %add1761.i, %div.i
  %cmp.not.i = icmp ugt i32 %add17.i, %1
  br i1 %cmp.not.i, label %if.then25.i, label %damon_insert_region.exit.i.for.body.i_crit_edge

damon_insert_region.exit.i.for.body.i_crit_edge:  ; preds = %damon_insert_region.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then25.i:                                      ; preds = %damon_insert_region.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %end27.i = getelementptr inbounds %struct.damon_addr_range, ptr %call19.i, i32 0, i32 1
  %13 = ptrtoint ptr %end27.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %end27.i, align 4
  br label %damon_va_evenly_split_region.exit

damon_va_evenly_split_region.exit:                ; preds = %if.then25.i, %for.body.i.damon_va_evenly_split_region.exit_crit_edge, %if.end9.i.damon_va_evenly_split_region.exit_crit_edge, %if.end.i.damon_va_evenly_split_region.exit_crit_edge, %entry.damon_va_evenly_split_region.exit_crit_edge
  %cmp = phi i1 [ false, %entry.damon_va_evenly_split_region.exit_crit_edge ], [ false, %if.end.i.damon_va_evenly_split_region.exit_crit_edge ], [ true, %if.end9.i.damon_va_evenly_split_region.exit_crit_edge ], [ true, %if.then25.i ], [ false, %for.body.i.damon_va_evenly_split_region.exit_crit_edge ]
  %retval.0.i = phi i32 [ -22, %entry.damon_va_evenly_split_region.exit_crit_edge ], [ -22, %if.end.i.damon_va_evenly_split_region.exit_crit_edge ], [ 0, %if.end9.i.damon_va_evenly_split_region.exit_crit_edge ], [ 0, %if.then25.i ], [ -12, %for.body.i.damon_va_evenly_split_region.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion) #8
  %14 = getelementptr inbounds i8, ptr %__assertion, i32 32
  %15 = call ptr @memset(ptr %14, i32 255, i32 24)
  %16 = ptrtoint ptr %__assertion to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %test, ptr %__assertion, align 8
  %type = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %line = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 2
  %18 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 280, ptr %line, align 8
  %file = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 3
  %19 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.13, ptr %file, align 4
  %message = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4
  %20 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %message, align 8
  %va = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %va, align 4
  %format = getelementptr inbounds %struct.kunit_assert, ptr %__assertion, i32 0, i32 5
  %22 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @kunit_binary_assert_format, ptr %format, align 8
  %operation = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 1
  %23 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.14, ptr %operation, align 4
  %left_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 2
  %24 = ptrtoint ptr %left_text to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.33, ptr %left_text, align 8
  %left_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 3
  %conv = sext i32 %retval.0.i to i64
  %25 = ptrtoint ptr %left_value to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %left_value, align 8
  %right_text = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 4
  %26 = ptrtoint ptr %right_text to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.38, ptr %right_text, align 8
  %right_value = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion, i32 0, i32 5
  %27 = ptrtoint ptr %right_value to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %right_value, align 8
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion, i1 noundef zeroext %cmp, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion) #8
  %call12 = call i32 @damon_nr_regions(ptr noundef %call) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion15) #8
  %28 = getelementptr inbounds i8, ptr %__assertion15, i32 32
  %29 = call ptr @memset(ptr %28, i32 255, i32 24)
  %30 = ptrtoint ptr %__assertion15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %test, ptr %__assertion15, align 8
  %type18 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 1
  %31 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %type18, align 4
  %line19 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 2
  %32 = ptrtoint ptr %line19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 281, ptr %line19, align 8
  %file20 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 3
  %33 = ptrtoint ptr %file20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.13, ptr %file20, align 4
  %message21 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4
  %34 = ptrtoint ptr %message21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %message21, align 8
  %va23 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %va23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %va23, align 4
  %format24 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion15, i32 0, i32 5
  %36 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @kunit_binary_assert_format, ptr %format24, align 8
  %operation25 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 1
  %37 = ptrtoint ptr %operation25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.14, ptr %operation25, align 4
  %left_text26 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 2
  %38 = ptrtoint ptr %left_text26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.34, ptr %left_text26, align 8
  %left_value27 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 3
  %conv28 = zext i32 %call12 to i64
  %39 = ptrtoint ptr %left_value27 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv28, ptr %left_value27, align 8
  %right_text29 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 4
  %40 = ptrtoint ptr %right_text29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.39, ptr %right_text29, align 8
  %right_value30 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion15, i32 0, i32 5
  %conv31 = zext i32 %nr_pieces to i64
  %41 = ptrtoint ptr %right_value30 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv31, ptr %right_value30, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %nr_pieces)
  %cmp33 = icmp eq i32 %call12, %nr_pieces
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion15, i1 noundef zeroext %cmp33, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion15) #8
  %regions_list = getelementptr inbounds %struct.damon_target, ptr %call, i32 0, i32 2
  %sub42 = add i32 %nr_pieces, -1
  %42 = ptrtoint ptr %regions_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn223 = load ptr, ptr %regions_list, align 4
  %r.0224 = getelementptr i8, ptr %.pn223, i32 -16
  %cmp40.not225 = icmp eq ptr %.pn223, %regions_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub42)
  %cmp43226 = icmp eq i32 %sub42, 0
  %or.cond227 = or i1 %cmp40.not225, %cmp43226
  br i1 %or.cond227, label %damon_va_evenly_split_region.exit.do.body111_crit_edge, label %do.body45.lr.ph

damon_va_evenly_split_region.exit.do.body111_crit_edge: ; preds = %damon_va_evenly_split_region.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111

do.body45.lr.ph:                                  ; preds = %damon_va_evenly_split_region.exit
  %type53 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 1
  %line54 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 2
  %file55 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 3
  %message56 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 4
  %va58 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 4, i32 1
  %format59 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion50, i32 0, i32 5
  %operation60 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 1
  %left_text61 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 2
  %left_value62 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 3
  %right_text64 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 4
  %right_value65 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion50, i32 0, i32 5
  %type85 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 1
  %line86 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 2
  %file87 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 3
  %message88 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 4
  %va90 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 4, i32 1
  %format91 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion82, i32 0, i32 5
  %operation92 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 1
  %left_text93 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 2
  %left_value94 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 3
  %right_text96 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 4
  %right_value97 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion82, i32 0, i32 5
  %43 = getelementptr inbounds i8, ptr %__assertion50, i32 32
  %44 = getelementptr inbounds i8, ptr %__assertion82, i32 32
  br label %do.body45

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %do.body45.lr.ph
  %r.0230 = phi ptr [ %r.0224, %do.body45.lr.ph ], [ %r.0, %do.body45.do.body45_crit_edge ]
  %.pn229 = phi ptr [ %.pn223, %do.body45.lr.ph ], [ %.pn, %do.body45.do.body45_crit_edge ]
  %i.0228 = phi i32 [ 0, %do.body45.lr.ph ], [ %inc, %do.body45.do.body45_crit_edge ]
  %45 = ptrtoint ptr %r.0230 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %r.0230, align 4
  %inc = add nuw i32 %i.0228, 1
  %mul = mul i32 %i.0228, %div
  %add = add i32 %mul, %start
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion50) #8
  %47 = call ptr @memset(ptr %43, i32 255, i32 24)
  %48 = ptrtoint ptr %__assertion50 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %test, ptr %__assertion50, align 8
  %49 = ptrtoint ptr %type53 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type53, align 4
  %50 = ptrtoint ptr %line54 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 287, ptr %line54, align 8
  %51 = ptrtoint ptr %file55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.13, ptr %file55, align 4
  %52 = ptrtoint ptr %message56 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %message56, align 8
  %53 = ptrtoint ptr %va58 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %va58, align 4
  %54 = ptrtoint ptr %format59 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @kunit_binary_assert_format, ptr %format59, align 8
  %55 = ptrtoint ptr %operation60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @.str.14, ptr %operation60, align 4
  %56 = ptrtoint ptr %left_text61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.27, ptr %left_text61, align 8
  %conv63 = zext i32 %46 to i64
  %57 = ptrtoint ptr %left_value62 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv63, ptr %left_value62, align 8
  %58 = ptrtoint ptr %right_text64 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @.str.40, ptr %right_text64, align 8
  %conv66 = zext i32 %add to i64
  %59 = ptrtoint ptr %right_value65 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv66, ptr %right_value65, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %add)
  %cmp68 = icmp eq i32 %46, %add
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion50, i1 noundef zeroext %cmp68, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion50) #8
  %end77 = getelementptr i8, ptr %.pn229, i32 -12
  %60 = ptrtoint ptr %end77 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %end77, align 4
  %mul79 = mul i32 %inc, %div
  %add80 = add i32 %mul79, %start
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion82) #8
  %62 = call ptr @memset(ptr %44, i32 255, i32 24)
  %63 = ptrtoint ptr %__assertion82 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %test, ptr %__assertion82, align 8
  %64 = ptrtoint ptr %type85 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %type85, align 4
  %65 = ptrtoint ptr %line86 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 288, ptr %line86, align 8
  %66 = ptrtoint ptr %file87 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.13, ptr %file87, align 4
  %67 = ptrtoint ptr %message88 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %message88, align 8
  %68 = ptrtoint ptr %va90 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %va90, align 4
  %69 = ptrtoint ptr %format91 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @kunit_binary_assert_format, ptr %format91, align 8
  %70 = ptrtoint ptr %operation92 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @.str.14, ptr %operation92, align 4
  %71 = ptrtoint ptr %left_text93 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @.str.29, ptr %left_text93, align 8
  %conv95 = zext i32 %61 to i64
  %72 = ptrtoint ptr %left_value94 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv95, ptr %left_value94, align 8
  %73 = ptrtoint ptr %right_text96 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.41, ptr %right_text96, align 8
  %conv98 = zext i32 %add80 to i64
  %74 = ptrtoint ptr %right_value97 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv98, ptr %right_value97, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %add80)
  %cmp100 = icmp eq i32 %61, %add80
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion82, i1 noundef zeroext %cmp100, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion82) #8
  %75 = ptrtoint ptr %.pn229 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn = load ptr, ptr %.pn229, align 4
  %r.0 = getelementptr i8, ptr %.pn, i32 -16
  %cmp40.not = icmp eq ptr %.pn, %regions_list
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub42)
  %cmp43 = icmp eq i32 %inc, %sub42
  %or.cond = select i1 %cmp40.not, i1 true, i1 %cmp43
  br i1 %or.cond, label %do.body45.do.body111_crit_edge, label %do.body45.do.body45_crit_edge

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

do.body45.do.body111_crit_edge:                   ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body111

do.body111:                                       ; preds = %do.body45.do.body111_crit_edge, %damon_va_evenly_split_region.exit.do.body111_crit_edge
  %i.0.lcssa = phi i32 [ 0, %damon_va_evenly_split_region.exit.do.body111_crit_edge ], [ %inc, %do.body45.do.body111_crit_edge ]
  %.pn.lcssa = phi ptr [ %.pn223, %damon_va_evenly_split_region.exit.do.body111_crit_edge ], [ %.pn, %do.body45.do.body111_crit_edge ]
  %r.0.lcssa = phi ptr [ %r.0224, %damon_va_evenly_split_region.exit.do.body111_crit_edge ], [ %r.0, %do.body45.do.body111_crit_edge ]
  %76 = ptrtoint ptr %r.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %r.0.lcssa, align 4
  %mul116 = mul i32 %i.0.lcssa, %div
  %add117 = add i32 %mul116, %start
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion119) #8
  %78 = getelementptr inbounds i8, ptr %__assertion119, i32 32
  %79 = call ptr @memset(ptr %78, i32 255, i32 24)
  %80 = ptrtoint ptr %__assertion119 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %test, ptr %__assertion119, align 8
  %type122 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 1
  %81 = ptrtoint ptr %type122 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %type122, align 4
  %line123 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 2
  %82 = ptrtoint ptr %line123 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 290, ptr %line123, align 8
  %file124 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 3
  %83 = ptrtoint ptr %file124 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.13, ptr %file124, align 4
  %message125 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 4
  %84 = ptrtoint ptr %message125 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %message125, align 8
  %va127 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %va127 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %va127, align 4
  %format128 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion119, i32 0, i32 5
  %86 = ptrtoint ptr %format128 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @kunit_binary_assert_format, ptr %format128, align 8
  %operation129 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 1
  %87 = ptrtoint ptr %operation129 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.14, ptr %operation129, align 4
  %left_text130 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 2
  %88 = ptrtoint ptr %left_text130 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.27, ptr %left_text130, align 8
  %left_value131 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 3
  %conv132 = zext i32 %77 to i64
  %89 = ptrtoint ptr %left_value131 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv132, ptr %left_value131, align 8
  %right_text133 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 4
  %90 = ptrtoint ptr %right_text133 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @.str.41, ptr %right_text133, align 8
  %right_value134 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion119, i32 0, i32 5
  %conv135 = zext i32 %add117 to i64
  %91 = ptrtoint ptr %right_value134 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv135, ptr %right_value134, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add117)
  %cmp137 = icmp eq i32 %77, %add117
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion119, i1 noundef zeroext %cmp137, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion119) #8
  %end146 = getelementptr i8, ptr %.pn.lcssa, i32 -12
  %92 = ptrtoint ptr %end146 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %end146, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %__assertion149) #8
  %94 = getelementptr inbounds i8, ptr %__assertion149, i32 32
  %95 = call ptr @memset(ptr %94, i32 255, i32 24)
  %96 = ptrtoint ptr %__assertion149 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %test, ptr %__assertion149, align 8
  %type152 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 1
  %97 = ptrtoint ptr %type152 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %type152, align 4
  %line153 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 2
  %98 = ptrtoint ptr %line153 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 291, ptr %line153, align 8
  %file154 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 3
  %99 = ptrtoint ptr %file154 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.13, ptr %file154, align 4
  %message155 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4
  %100 = ptrtoint ptr %message155 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %message155, align 8
  %va157 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 4, i32 1
  %101 = ptrtoint ptr %va157 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %va157, align 4
  %format158 = getelementptr inbounds %struct.kunit_assert, ptr %__assertion149, i32 0, i32 5
  %102 = ptrtoint ptr %format158 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @kunit_binary_assert_format, ptr %format158, align 8
  %operation159 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 1
  %103 = ptrtoint ptr %operation159 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.14, ptr %operation159, align 4
  %left_text160 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 2
  %104 = ptrtoint ptr %left_text160 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.29, ptr %left_text160, align 8
  %left_value161 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 3
  %conv162 = zext i32 %93 to i64
  %105 = ptrtoint ptr %left_value161 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv162, ptr %left_value161, align 8
  %right_text163 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 4
  %106 = ptrtoint ptr %right_text163 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @.str.37, ptr %right_text163, align 8
  %right_value164 = getelementptr inbounds %struct.kunit_binary_assert, ptr %__assertion149, i32 0, i32 5
  %conv165 = zext i32 %end to i64
  %107 = ptrtoint ptr %right_value164 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv165, ptr %right_value164, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %end)
  %cmp167 = icmp eq i32 %93, %end
  call void (ptr, ptr, i1, ptr, ...) @kunit_do_assertion(ptr noundef %test, ptr noundef nonnull %__assertion149, i1 noundef zeroext %cmp167, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %__assertion149) #8
  call void @damon_free_target(ptr noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @damon_free_target(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !78, !80, !82, !84, !86, !88}
!llvm.named.register.sp = !{!90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__UNIQUE_ID_suites269, !1, !"__UNIQUE_ID_suites269", i1 false, i1 false}
!1 = !{!"../mm/damon/vaddr-test.h", i32 320, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/damon/vaddr.c", i32 247, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__damon_va_init_regions.__UNIQUE_ID_ddebug256, !3, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../mm/damon/vaddr.c", i32 262, i32 4}
!11 = !{ptr @__damon_va_init_regions._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @__damon_va_init_regions._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @damon_mkold_ops, !14, !"damon_mkold_ops", i1 false, i1 false}
!14 = !{!"../mm/damon/vaddr.c", i32 453, i32 33}
!15 = !{ptr @__damon_va_check_access.last_mm, !16, !"last_mm", i1 false, i1 false}
!16 = !{!"../mm/damon/vaddr.c", i32 616, i32 27}
!17 = !{ptr @__damon_va_check_access.last_addr, !18, !"last_addr", i1 false, i1 false}
!18 = !{!"../mm/damon/vaddr.c", i32 617, i32 23}
!19 = !{ptr @__damon_va_check_access.last_page_sz, !20, !"last_page_sz", i1 false, i1 false}
!20 = !{!"../mm/damon/vaddr.c", i32 618, i32 23}
!21 = !{ptr @__damon_va_check_access.last_accessed, !22, !"last_accessed", i1 false, i1 false}
!22 = !{!"../mm/damon/vaddr.c", i32 619, i32 14}
!23 = !{ptr @damon_young_ops, !24, !"damon_young_ops", i1 false, i1 false}
!24 = !{!"../mm/damon/vaddr.c", i32 588, i32 33}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/mm.h", i32 717, i32 2}
!27 = !{ptr @__UNIQUE_ID_array268, !1, !"__UNIQUE_ID_array268", i1 false, i1 false}
!28 = !{ptr @damon_test_suite, !29, !"damon_test_suite", i1 false, i1 false}
!29 = !{!"../mm/damon/vaddr-test.h", i32 316, i32 27}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/damon/vaddr-test.h", i32 307, i32 2}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/damon/vaddr-test.h", i32 308, i32 2}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../mm/damon/vaddr-test.h", i32 309, i32 2}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/damon/vaddr-test.h", i32 310, i32 2}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../mm/damon/vaddr-test.h", i32 311, i32 2}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/damon/vaddr-test.h", i32 312, i32 2}
!42 = !{ptr @damon_test_cases, !43, !"damon_test_cases", i1 false, i1 false}
!43 = !{!"../mm/damon/vaddr-test.h", i32 306, i32 26}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../mm/damon/vaddr-test.h", i32 90, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../mm/damon/vaddr-test.h", i32 91, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../mm/damon/vaddr-test.h", i32 92, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../mm/damon/vaddr-test.h", i32 93, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../mm/damon/vaddr-test.h", i32 94, i32 2}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/damon/vaddr-test.h", i32 95, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../mm/damon/vaddr-test.h", i32 152, i32 3}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../mm/damon/vaddr-test.h", i32 153, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../mm/damon/vaddr-test.h", i32 297, i32 2}
!72 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../mm/damon/vaddr-test.h", i32 258, i32 2}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../mm/damon/vaddr-test.h", i32 260, i32 2}
!77 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../mm/damon/vaddr-test.h", i32 263, i32 3}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../mm/damon/vaddr-test.h", i32 264, i32 3}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../mm/damon/vaddr-test.h", i32 279, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../mm/damon/vaddr-test.h", i32 281, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../mm/damon/vaddr-test.h", i32 286, i32 3}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../mm/damon/vaddr-test.h", i32 288, i32 3}
!90 = !{!"sp"}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148774142}
!101 = !{i64 2148688582, i64 2148688614, i64 2148688643, i64 2148688677, i64 2148688708, i64 2148688731}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2150395231}
!104 = !{i8 0, i8 2}
!105 = !{i64 2148509185, i64 2148509190, i64 2148509203, i64 2148509247, i64 2148509281, i64 2148509302}
!106 = !{!"auto-init"}
!107 = !{!"branch_weights", i32 2000, i32 2002}
!108 = !{i64 2153656065}
!109 = !{i64 2152199883}
!110 = !{i64 2152200090}
!111 = !{i64 2153658836}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2153159964, i64 2153160447, i64 2153160001, i64 2153160057, i64 2153160091, i64 2153160115, i64 2153160156, i64 2153160177, i64 2153160205, i64 2153160239}
!114 = !{i64 2148773063}
!115 = !{i64 2148687772, i64 2148687804, i64 2148687833, i64 2148687867, i64 2148687898, i64 2148687921}
!116 = !{i64 2148773292}
