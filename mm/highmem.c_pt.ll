; ModuleID = '/llk/IR_all_yes/mm/highmem.c_pt.bc'
source_filename = "../mm/highmem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+_totalhigh_pages\22, \22a\22\09"
module asm "\09.weak\09__crc__totalhigh_pages\09\09\09\09"
module asm "\09.long\09__crc__totalhigh_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__totalhigh_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22_totalhigh_pages\22\09\09\09\09\09"
module asm "__kstrtabns__totalhigh_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kmap_to_page\22, \22a\22\09"
module asm "\09.weak\09__crc___kmap_to_page\09\09\09\09"
module asm "\09.long\09__crc___kmap_to_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmap_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmap_to_page\22\09\09\09\09\09"
module asm "__kstrtabns___kmap_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kmap_high\22, \22a\22\09"
module asm "\09.weak\09__crc_kmap_high\09\09\09\09"
module asm "\09.long\09__crc_kmap_high\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22kmap_high\22\09\09\09\09\09"
module asm "__kstrtabns_kmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kunmap_high\22, \22a\22\09"
module asm "\09.weak\09__crc_kunmap_high\09\09\09\09"
module asm "\09.long\09__crc_kunmap_high\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22kunmap_high\22\09\09\09\09\09"
module asm "__kstrtabns_kunmap_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+zero_user_segments\22, \22a\22\09"
module asm "\09.weak\09__crc_zero_user_segments\09\09\09\09"
module asm "\09.long\09__crc_zero_user_segments\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_zero_user_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22zero_user_segments\22\09\09\09\09\09"
module asm "__kstrtabns_zero_user_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__kmap_local_pfn_prot\22, \22a\22\09"
module asm "\09.weak\09__crc___kmap_local_pfn_prot\09\09\09\09"
module asm "\09.long\09__crc___kmap_local_pfn_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmap_local_pfn_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmap_local_pfn_prot\22\09\09\09\09\09"
module asm "__kstrtabns___kmap_local_pfn_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__kmap_local_page_prot\22, \22a\22\09"
module asm "\09.weak\09__crc___kmap_local_page_prot\09\09\09\09"
module asm "\09.long\09__crc___kmap_local_page_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kmap_local_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22__kmap_local_page_prot\22\09\09\09\09\09"
module asm "__kstrtabns___kmap_local_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kunmap_local_indexed\22, \22a\22\09"
module asm "\09.weak\09__crc_kunmap_local_indexed\09\09\09\09"
module asm "\09.long\09__crc_kunmap_local_indexed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kunmap_local_indexed:\09\09\09\09\09"
module asm "\09.asciz \09\22kunmap_local_indexed\22\09\09\09\09\09"
module asm "__kstrtabns_kunmap_local_indexed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+page_address\22, \22a\22\09"
module asm "\09.weak\09__crc_page_address\09\09\09\09"
module asm "\09.long\09__crc_page_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_address:\09\09\09\09\09"
module asm "\09.asciz \09\22page_address\22\09\09\09\09\09"
module asm "__kstrtabns_page_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mm_struct = type { %struct.anon.9, [0 x i32] }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page_address_map = type { ptr, ptr, %struct.list_head }
%struct.page_address_slot = type { %struct.list_head, %struct.spinlock, [76 x i8] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.69 = type { i32, i8, i8, %struct.atomic_t, i32 }

@_totalhigh_pages = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab__totalhigh_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns__totalhigh_pages = external dso_local constant [0 x i8], align 1
@__ksymtab__totalhigh_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_totalhigh_pages to i32), ptr @__kstrtab__totalhigh_pages, ptr @__kstrtabns__totalhigh_pages }, section "___ksymtab+_totalhigh_pages", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pkmap_page_table = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab___kmap_to_page = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmap_to_page = external dso_local constant [0 x i8], align 1
@__ksymtab___kmap_to_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmap_to_page to i32), ptr @__kstrtab___kmap_to_page, ptr @__kstrtabns___kmap_to_page }, section "___ksymtab+__kmap_to_page", align 4
@kmap_lock = internal global %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, section ".data..cacheline_aligned", align 128
@pkmap_count = internal global { [512 x i32], [512 x i8] } zeroinitializer, align 32
@__kstrtab_kmap_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmap_high = external dso_local constant [0 x i8], align 1
@__ksymtab_kmap_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmap_high to i32), ptr @__kstrtab_kmap_high, ptr @__kstrtabns_kmap_high }, section "___ksymtab+kmap_high", align 4
@__kstrtab_kunmap_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunmap_high = external dso_local constant [0 x i8], align 1
@__ksymtab_kunmap_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunmap_high to i32), ptr @__kstrtab_kunmap_high, ptr @__kstrtabns_kunmap_high }, section "___ksymtab+kunmap_high", align 4
@__kstrtab_zero_user_segments = external dso_local constant [0 x i8], align 1
@__kstrtabns_zero_user_segments = external dso_local constant [0 x i8], align 1
@__ksymtab_zero_user_segments = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @zero_user_segments to i32), ptr @__kstrtab_zero_user_segments, ptr @__kstrtabns_zero_user_segments }, section "___ksymtab+zero_user_segments", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@__kstrtab___kmap_local_pfn_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmap_local_pfn_prot = external dso_local constant [0 x i8], align 1
@__ksymtab___kmap_local_pfn_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmap_local_pfn_prot to i32), ptr @__kstrtab___kmap_local_pfn_prot, ptr @__kstrtabns___kmap_local_pfn_prot }, section "___ksymtab_gpl+__kmap_local_pfn_prot", align 4
@__kstrtab___kmap_local_page_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns___kmap_local_page_prot = external dso_local constant [0 x i8], align 1
@__ksymtab___kmap_local_page_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kmap_local_page_prot to i32), ptr @__kstrtab___kmap_local_page_prot, ptr @__kstrtabns___kmap_local_page_prot }, section "___ksymtab+__kmap_local_page_prot", align 4
@kunmap_local_indexed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/highmem.c\00", [19 x i8] zeroinitializer }, align 32
@kunmap_local_indexed.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__kstrtab_kunmap_local_indexed = external dso_local constant [0 x i8], align 1
@__kstrtabns_kunmap_local_indexed = external dso_local constant [0 x i8], align 1
@__ksymtab_kunmap_local_indexed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kunmap_local_indexed to i32), ptr @__kstrtab_kunmap_local_indexed, ptr @__kstrtabns_kunmap_local_indexed }, section "___ksymtab+kunmap_local_indexed", align 4
@__kmap_local_sched_out.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kmap_local_sched_out.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kmap_local_sched_in.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kmap_local_sched_in.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmap_local_fork.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_page_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_address = external dso_local constant [0 x i8], align 1
@__ksymtab_page_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_address to i32), ptr @__kstrtab_page_address, ptr @__kstrtabns_page_address }, section "___ksymtab+page_address", align 4
@page_address_maps = internal global { [512 x %struct.page_address_map], [2048 x i8] } zeroinitializer, align 32
@page_address_htable = internal global [128 x %struct.page_address_slot] zeroinitializer, align 128
@page_address_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&page_address_htable[i].lock\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kmap_lock\00", [22 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@get_next_pkmap_nr.last_pkmap_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@get_pkmap_wait_queue_head.pkmap_map_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i64 44), ptr getelementptr (i8, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pkmap_map_wait.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@kmap_local_idx_push.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"pkmap_page_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 122, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"pkmap_count\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 119, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 584, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"page_address_maps\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 700, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 792, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 120, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"last_pkmap_nr\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 64, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"pkmap_map_wait\00", align 1
@___asan_gen_.46 = private constant [16 x i8] c"../mm/highmem.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 97, i32 9 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 698, i32 1 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab___kmap_local_page_prot, ptr @__ksymtab___kmap_local_pfn_prot, ptr @__ksymtab___kmap_to_page, ptr @__ksymtab__totalhigh_pages, ptr @__ksymtab_kmap_high, ptr @__ksymtab_kunmap_high, ptr @__ksymtab_kunmap_local_indexed, ptr @__ksymtab_page_address, ptr @__ksymtab_zero_user_segments, ptr @pkmap_page_table, ptr @pkmap_count, ptr @.str, ptr @page_address_maps, ptr @page_address_init.__key, ptr @.str.4, ptr @.str.5, ptr @get_next_pkmap_nr.last_pkmap_nr, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkmap_page_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pkmap_count to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_address_maps to i32), i32 8192, i32 10240, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_address_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_next_pkmap_nr.last_pkmap_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_pkmap_wait_queue_head.pkmap_map_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nr_free_highpages() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @first_online_pgdat() #8
  %tobool.not16 = icmp eq ptr %call, null
  br i1 %tobool.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %pages.019 = phi i32 [ %pages.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %zone.017 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.017, i32 0, i32 13
  %0 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %zone_pgdat.i = getelementptr inbounds %struct.zone, ptr %zone.017, i32 0, i32 4
  %2 = ptrtoint ptr %zone_pgdat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zone_pgdat.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %zone.017 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 1152
  %4 = zext i32 %sub.ptr.div.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sub.ptr.div.i, label %if.else.for.inc_crit_edge [
    i32 2, label %if.else.if.then4_crit_edge
    i32 3, label %is_highmem.exit
  ]

if.else.if.then4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

is_highmem.exit:                                  ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.i.not = icmp eq i32 %5, 2
  br i1 %cmp2.i.i.not, label %is_highmem.exit.if.then4_crit_edge, label %is_highmem.exit.for.inc_crit_edge

is_highmem.exit.for.inc_crit_edge:                ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

is_highmem.exit.if.then4_crit_edge:               ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %is_highmem.exit.if.then4_crit_edge, %if.else.if.then4_crit_edge
  %vm_stat.i = getelementptr inbounds %struct.zone, ptr %zone.017, i32 0, i32 37
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vm_stat.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %vm_stat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %vm_stat.i, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #8
  %add = add i32 %8, %pages.019
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %is_highmem.exit.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pages.1 = phi i32 [ %add, %if.then4 ], [ %pages.019, %is_highmem.exit.for.inc_crit_edge ], [ %pages.019, %for.body.for.inc_crit_edge ], [ %pages.019, %if.else.for.inc_crit_edge ]
  %call7 = tail call ptr @next_zone(ptr noundef nonnull %zone.017) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pages.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pages.1, %for.inc.for.end_crit_edge ]
  ret i32 %pages.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @__kmap_to_page(ptr noundef %vaddr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vaddr to i32
  %cmp = icmp ugt ptr %vaddr, inttoptr (i32 -1075838977 to ptr)
  %cmp1 = icmp ult ptr %vaddr, inttoptr (i32 -1073741824 to ptr)
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %0, 1075838976
  %shr = lshr i32 %sub, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %2 = load ptr, ptr @pkmap_page_table, align 4
  %arrayidx = getelementptr i32, ptr %2, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %shr2 = lshr i32 %4, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub3 = sub i32 %shr2, %5
  %add.ptr = getelementptr %struct.page, ptr %1, i32 %sub3
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %sub4 = add i32 %0, 1073741824
  %shr5 = lshr i32 %sub4, 12
  %add.ptr7 = getelementptr %struct.page, ptr %6, i32 %shr5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr7, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kmap_flush_unused() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  br label %for.body.outer.i

for.body.outer.i:                                 ; preds = %cleanup.thread.i.for.body.outer.i_crit_edge, %entry
  %tobool23.not.i = phi i1 [ false, %cleanup.thread.i.for.body.outer.i_crit_edge ], [ true, %entry ]
  %i.033.ph.i = phi i32 [ %inc36.i, %cleanup.thread.i.for.body.outer.i_crit_edge ], [ 0, %entry ]
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.outer.i
  %i.033.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ %i.033.ph.i, %for.body.outer.i ]
  %arrayidx.i = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %i.033.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1.not.i = icmp eq i32 %1, 1
  br i1 %cmp1.not.i, label %if.end3.i, label %cleanup.i

if.end3.i:                                        ; preds = %for.body.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx.i, align 4
  %3 = load ptr, ptr @pkmap_page_table, align 4
  %arrayidx6.i = getelementptr i32, ptr %3, i32 %i.033.i
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i, label %do.body12.i, label %cleanup.thread.i, !prof !70

do.body12.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

cleanup.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.thread.i:                                 ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %5, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %7
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %8 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i = getelementptr inbounds %struct.processor, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %set_pte_ext.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_pte_ext.i, align 4
  tail call void %10(ptr noundef %arrayidx6.i, i32 noundef 0, i32 noundef 0) #8
  tail call void @set_page_address(ptr noundef %add.ptr.i, ptr noundef null) #8
  %inc36.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not37.i = icmp eq i32 %inc36.i, 512
  br i1 %exitcond.not37.i, label %cleanup.thread.i.if.then24.i_crit_edge, label %cleanup.thread.i.for.body.outer.i_crit_edge

cleanup.thread.i.for.body.outer.i_crit_edge:      ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer.i

cleanup.thread.i.if.then24.i_crit_edge:           ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

for.end.i:                                        ; preds = %cleanup.i
  br i1 %tobool23.not.i, label %for.end.i.flush_all_zero_pkmaps.exit_crit_edge, label %for.end.i.if.then24.i_crit_edge

for.end.i.if.then24.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

for.end.i.flush_all_zero_pkmaps.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_all_zero_pkmaps.exit

if.then24.i:                                      ; preds = %for.end.i.if.then24.i_crit_edge, %cleanup.thread.i.if.then24.i_crit_edge
  tail call void @flush_tlb_kernel_range(i32 noundef -1075838976, i32 noundef -1073741824) #8
  br label %flush_all_zero_pkmaps.exit

flush_all_zero_pkmaps.exit:                       ; preds = %if.then24.i, %for.end.i.flush_all_zero_pkmaps.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kmap_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kmap_high(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %5
  %shl.i.i = shl i32 %add.i.i, 12
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %7 = inttoptr i32 %6 to ptr
  br label %page_address.exit

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %page to i32
  %mul.i.i.i.i.i = mul i32 %8, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 25
  %arrayidx.i.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i.i
  %lock.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i.i, i32 1
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i.i, align 128
  %cmp.i.not.i = icmp eq ptr %10, %arrayidx.i.i
  br i1 %cmp.i.not.i, label %if.end.i.done.i_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i.i, %if.end.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i, %arrayidx.i.i
  br i1 %cmp15.not.i, label %for.cond.i.done.i_crit_edge, label %for.body.i

for.cond.i.done.i_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

for.body.i:                                       ; preds = %for.cond.i
  %pam.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %12 = ptrtoint ptr %pam.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pam.0.i, align 4
  %cmp18.i = icmp eq ptr %13, %page
  br i1 %cmp18.i, label %if.then20.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %virtual.i = getelementptr i8, ptr %.pn.i, i32 -4
  %14 = ptrtoint ptr %virtual.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtual.i, align 4
  br label %done.i

done.i:                                           ; preds = %if.then20.i, %for.cond.i.done.i_crit_edge, %if.end.i.done.i_crit_edge
  %ret.1.i = phi ptr [ null, %if.end.i.done.i_crit_edge ], [ %15, %if.then20.i ], [ null, %for.cond.i.done.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #8
  br label %page_address.exit

page_address.exit:                                ; preds = %done.i, %if.then.i
  %retval.0.i = phi ptr [ %ret.1.i, %done.i ], [ %7, %if.then.i ]
  %16 = ptrtoint ptr %retval.0.i to i32
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.then, label %page_address.exit.if.end_crit_edge

page_address.exit.if.end_crit_edge:               ; preds = %page_address.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %page_address.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @map_new_virtual(ptr noundef %page)
  br label %if.end

if.end:                                           ; preds = %if.then, %page_address.exit.if.end_crit_edge
  %vaddr.0 = phi i32 [ %16, %page_address.exit.if.end_crit_edge ], [ %call1, %if.then ]
  %sub = add i32 %vaddr.0, 1075838976
  %shr = lshr i32 %sub, 12
  %arrayidx = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %shr
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp = icmp slt i32 %inc, 2
  br i1 %cmp, label %do.body8, label %do.end14, !prof !70

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 279, 0\0A.popsection", ""() #8, !srcloc !73
  unreachable

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kmap_lock) #8
  %19 = inttoptr i32 %vaddr.0 to ptr
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @page_address(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i, label %entry.if.then_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.end_crit_edge, label %is_highmem_idx.exit.if.then_crit_edge

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_highmem_idx.exit.if.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %5
  %shl.i = shl i32 %add.i, 12
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %7 = inttoptr i32 %6 to ptr
  br label %cleanup29

if.end:                                           ; preds = %is_highmem_idx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %page to i32
  %mul.i.i.i.i = mul i32 %8, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 25
  %arrayidx.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i
  %lock = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i, i32 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i, align 128
  %cmp.i.not = icmp eq ptr %10, %arrayidx.i
  br i1 %cmp.i.not, label %if.end.done_crit_edge, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %arrayidx.i, %if.end.for.cond_crit_edge ]
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %arrayidx.i
  br i1 %cmp15.not, label %for.cond.done_crit_edge, label %for.body

for.cond.done_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body:                                         ; preds = %for.cond
  %pam.0 = getelementptr i8, ptr %.pn, i32 -8
  %12 = ptrtoint ptr %pam.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pam.0, align 4
  %cmp18 = icmp eq ptr %13, %page
  br i1 %cmp18, label %if.then20, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %virtual = getelementptr i8, ptr %.pn, i32 -4
  %14 = ptrtoint ptr %virtual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtual, align 4
  br label %done

done:                                             ; preds = %if.then20, %for.cond.done_crit_edge, %if.end.done_crit_edge
  %ret.1 = phi ptr [ null, %if.end.done_crit_edge ], [ %15, %if.then20 ], [ null, %for.cond.done_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #8
  br label %cleanup29

cleanup29:                                        ; preds = %done, %if.then
  %retval.0 = phi ptr [ %ret.1, %done ], [ %7, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_new_virtual(ptr noundef %page) #4 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %page to i32
  %mul.i.i.i.i.i = mul i32 %4, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 25
  %arrayidx.i.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i.i
  %lock.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i.i, i32 1
  %5 = getelementptr inbounds i8, ptr %wait, i32 4
  br label %start

start:                                            ; preds = %cleanup.start_crit_edge, %entry
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.1, %cleanup.start_crit_edge ]
  br label %for.cond

for.cond:                                         ; preds = %if.end7.for.cond_crit_edge, %start
  %count.0 = phi i32 [ 512, %start ], [ %dec, %if.end7.for.cond_crit_edge ]
  %6 = load i32, ptr @get_next_pkmap_nr.last_pkmap_nr, align 4
  %add.i = add i32 %6, 1
  %and.i = and i32 %add.i, 511
  store i32 %and.i, ptr @get_next_pkmap_nr.last_pkmap_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %for.cond.for.body.outer.i_crit_edge, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.for.body.outer.i_crit_edge:              ; preds = %for.cond
  br label %for.body.outer.i

for.body.outer.i:                                 ; preds = %cleanup.thread.i.for.body.outer.i_crit_edge, %for.cond.for.body.outer.i_crit_edge
  %tobool23.not.i = phi i1 [ false, %cleanup.thread.i.for.body.outer.i_crit_edge ], [ true, %for.cond.for.body.outer.i_crit_edge ]
  %i.033.ph.i = phi i32 [ %inc36.i, %cleanup.thread.i.for.body.outer.i_crit_edge ], [ 0, %for.cond.for.body.outer.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.outer.i
  %i.033.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ %i.033.ph.i, %for.body.outer.i ]
  %arrayidx.i = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %i.033.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.not.i = icmp eq i32 %8, 1
  br i1 %cmp1.not.i, label %if.end3.i, label %cleanup.i

if.end3.i:                                        ; preds = %for.body.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx.i, align 4
  %10 = load ptr, ptr @pkmap_page_table, align 4
  %arrayidx6.i = getelementptr i32, ptr %10, i32 %i.033.i
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.i = icmp eq i32 %12, 0
  br i1 %tobool7.not.i, label %do.body12.i, label %cleanup.thread.i, !prof !70

do.body12.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

cleanup.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.thread.i:                                 ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %12, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %14
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %15 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext.i = getelementptr inbounds %struct.processor, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %set_pte_ext.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_pte_ext.i, align 4
  call void %17(ptr noundef %arrayidx6.i, i32 noundef 0, i32 noundef 0) #8
  call void @set_page_address(ptr noundef %add.ptr.i, ptr noundef null) #8
  %inc36.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not37.i = icmp eq i32 %inc36.i, 512
  br i1 %exitcond.not37.i, label %cleanup.thread.i.if.then24.i_crit_edge, label %cleanup.thread.i.for.body.outer.i_crit_edge

cleanup.thread.i.for.body.outer.i_crit_edge:      ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer.i

cleanup.thread.i.if.then24.i_crit_edge:           ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

for.end.i:                                        ; preds = %cleanup.i
  br i1 %tobool23.not.i, label %for.end.i.if.end_crit_edge, label %for.end.i.if.then24.i_crit_edge

for.end.i.if.then24.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then24.i:                                      ; preds = %for.end.i.if.then24.i_crit_edge, %cleanup.thread.i.if.then24.i_crit_edge
  call void @flush_tlb_kernel_range(i32 noundef -1075838976, i32 noundef -1073741824) #8
  br label %if.end

if.end:                                           ; preds = %if.then24.i, %for.end.i.if.end_crit_edge, %for.cond.if.end_crit_edge
  %count.1 = phi i32 [ %count.0, %for.cond.if.end_crit_edge ], [ 512, %for.end.i.if.end_crit_edge ], [ 512, %if.then24.i ]
  %arrayidx = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %and.i
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %if.end
  %dec = add i32 %count.1, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.for.cond_crit_edge

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end10:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %20 = call ptr @memset(ptr %5, i32 255, i32 16)
  %21 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %wait, align 4
  %22 = call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i101 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i101 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @default_wake_function, ptr %1, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %2, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %3, align 4
  br label %__here

__here:                                           ; preds = %if.end10
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@map_new_virtual, %__here) to i32), ptr %task_state_change, align 4
  %33 = load ptr, ptr %task, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 2, ptr %33, align 128
  call void @add_wait_queue(ptr noundef nonnull @get_pkmap_wait_queue_head.pkmap_map_wait, ptr noundef nonnull %wait) #8
  call void @_raw_spin_unlock(ptr noundef nonnull @kmap_lock) #8
  call void @schedule() #8
  call void @remove_wait_queue(ptr noundef nonnull @get_pkmap_wait_queue_head.pkmap_map_wait, ptr noundef nonnull %wait) #8
  call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  %35 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %36, 30
  %37 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i, label %__here.if.then.i_crit_edge [
    i32 2, label %__here.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

__here.if.end.i_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

__here.if.then.i_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %__here
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %38 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp2.i.not.i = icmp eq i32 %38, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %__here.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %39 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i = sub i32 %4, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %40
  %shl.i.i = shl i32 %add.i.i, 12
  %41 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %42 = inttoptr i32 %41 to ptr
  br label %page_address.exit

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %__here.if.end.i_crit_edge
  %call6.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx.i.i, align 128
  %cmp.i.not.i = icmp eq ptr %44, %arrayidx.i.i
  br i1 %cmp.i.not.i, label %if.end.i.done.i_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

for.cond.i:                                       ; preds = %for.body.i102.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i102.for.cond.i_crit_edge ], [ %arrayidx.i.i, %if.end.i.for.cond.i_crit_edge ]
  %45 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i, %arrayidx.i.i
  br i1 %cmp15.not.i, label %for.cond.i.done.i_crit_edge, label %for.body.i102

for.cond.i.done.i_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

for.body.i102:                                    ; preds = %for.cond.i
  %pam.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %46 = ptrtoint ptr %pam.0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pam.0.i, align 4
  %cmp18.i = icmp eq ptr %47, %page
  br i1 %cmp18.i, label %if.then20.i, label %for.body.i102.for.cond.i_crit_edge

for.body.i102.for.cond.i_crit_edge:               ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then20.i:                                      ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #10
  %virtual.i = getelementptr i8, ptr %.pn.i, i32 -4
  %48 = ptrtoint ptr %virtual.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virtual.i, align 4
  br label %done.i

done.i:                                           ; preds = %if.then20.i, %for.cond.i.done.i_crit_edge, %if.end.i.done.i_crit_edge
  %ret.1.i = phi ptr [ null, %if.end.i.done.i_crit_edge ], [ %49, %if.then20.i ], [ null, %for.cond.i.done.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #8
  br label %page_address.exit

page_address.exit:                                ; preds = %done.i, %if.then.i
  %retval.0.i = phi ptr [ %ret.1.i, %done.i ], [ %42, %if.then.i ]
  %tobool70.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool70.not, label %page_address.exit.cleanup_crit_edge, label %if.then71

page_address.exit.cleanup_crit_edge:              ; preds = %page_address.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then71:                                        ; preds = %page_address.exit
  %50 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %page, align 4
  %shr.i.i103 = lshr i32 %51, 30
  %52 = zext i32 %shr.i.i103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i103, label %if.then71.if.then.i112_crit_edge [
    i32 2, label %if.then71.if.end.i119_crit_edge
    i32 3, label %is_highmem_idx.exit.i105
  ]

if.then71.if.end.i119_crit_edge:                  ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i119

if.then71.if.then.i112_crit_edge:                 ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i112

is_highmem_idx.exit.i105:                         ; preds = %if.then71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %53 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp2.i.not.i104 = icmp eq i32 %53, 2
  br i1 %cmp2.i.not.i104, label %is_highmem_idx.exit.i105.if.end.i119_crit_edge, label %is_highmem_idx.exit.i105.if.then.i112_crit_edge

is_highmem_idx.exit.i105.if.then.i112_crit_edge:  ; preds = %is_highmem_idx.exit.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i112

is_highmem_idx.exit.i105.if.end.i119_crit_edge:   ; preds = %is_highmem_idx.exit.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i119

if.then.i112:                                     ; preds = %is_highmem_idx.exit.i105.if.then.i112_crit_edge, %if.then71.if.then.i112_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %54 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i107 = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i.i108 = sub i32 %4, %sub.ptr.rhs.cast.i.i107
  %sub.ptr.div.i.i109 = sdiv exact i32 %sub.ptr.sub.i.i108, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %55 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i110 = add i32 %sub.ptr.div.i.i109, %55
  %shl.i.i111 = shl i32 %add.i.i110, 12
  %56 = call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i111, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %57 = inttoptr i32 %56 to ptr
  br label %page_address.exit132

if.end.i119:                                      ; preds = %is_highmem_idx.exit.i105.if.end.i119_crit_edge, %if.then71.if.end.i119_crit_edge
  %call6.i117 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx.i.i, align 128
  %cmp.i.not.i118 = icmp eq ptr %59, %arrayidx.i.i
  br i1 %cmp.i.not.i118, label %if.end.i119.done.i130_crit_edge, label %if.end.i119.for.cond.i123_crit_edge

if.end.i119.for.cond.i123_crit_edge:              ; preds = %if.end.i119
  br label %for.cond.i123

if.end.i119.done.i130_crit_edge:                  ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i130

for.cond.i123:                                    ; preds = %for.body.i126.for.cond.i123_crit_edge, %if.end.i119.for.cond.i123_crit_edge
  %.pn.in.i120 = phi ptr [ %.pn.i121, %for.body.i126.for.cond.i123_crit_edge ], [ %arrayidx.i.i, %if.end.i119.for.cond.i123_crit_edge ]
  %60 = ptrtoint ptr %.pn.in.i120 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn.i121 = load ptr, ptr %.pn.in.i120, align 4
  %cmp15.not.i122 = icmp eq ptr %.pn.i121, %arrayidx.i.i
  br i1 %cmp15.not.i122, label %for.cond.i123.done.i130_crit_edge, label %for.body.i126

for.cond.i123.done.i130_crit_edge:                ; preds = %for.cond.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i130

for.body.i126:                                    ; preds = %for.cond.i123
  %pam.0.i124 = getelementptr i8, ptr %.pn.i121, i32 -8
  %61 = ptrtoint ptr %pam.0.i124 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pam.0.i124, align 4
  %cmp18.i125 = icmp eq ptr %62, %page
  br i1 %cmp18.i125, label %if.then20.i128, label %for.body.i126.for.cond.i123_crit_edge

for.body.i126.for.cond.i123_crit_edge:            ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i123

if.then20.i128:                                   ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #10
  %virtual.i127 = getelementptr i8, ptr %.pn.i121, i32 -4
  %63 = ptrtoint ptr %virtual.i127 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %virtual.i127, align 4
  br label %done.i130

done.i130:                                        ; preds = %if.then20.i128, %for.cond.i123.done.i130_crit_edge, %if.end.i119.done.i130_crit_edge
  %ret.1.i129 = phi ptr [ null, %if.end.i119.done.i130_crit_edge ], [ %64, %if.then20.i128 ], [ null, %for.cond.i123.done.i130_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i117) #8
  br label %page_address.exit132

page_address.exit132:                             ; preds = %done.i130, %if.then.i112
  %retval.0.i131 = phi ptr [ %ret.1.i129, %done.i130 ], [ %57, %if.then.i112 ]
  %65 = ptrtoint ptr %retval.0.i131 to i32
  br label %cleanup

cleanup:                                          ; preds = %page_address.exit132, %page_address.exit.cleanup_crit_edge
  %retval.1 = phi i32 [ %65, %page_address.exit132 ], [ %retval.0, %page_address.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br i1 %tobool70.not, label %cleanup.start_crit_edge, label %cleanup.cleanup80_crit_edge

cleanup.cleanup80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

cleanup.start_crit_edge:                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %start

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw nsw i32 %and.i, 12
  %add = or i32 %shl, -1075838976
  %66 = load ptr, ptr @pkmap_page_table, align 4
  %arrayidx75 = getelementptr i32, ptr %66, i32 %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %67 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %67 to i32
  %sub.ptr.sub = sub i32 %4, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %68 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add76 = add i32 %sub.ptr.div, %68
  %shl77 = shl i32 %add76, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %69 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %69, %shl77
  %or78 = or i32 %or, 512
  call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %add, ptr noundef %arrayidx75, i32 noundef %or78) #8
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %arrayidx, align 4
  %71 = inttoptr i32 %add to ptr
  call void @set_page_address(ptr noundef %page, ptr noundef nonnull %71)
  br label %cleanup80

cleanup80:                                        ; preds = %for.end, %cleanup.cleanup80_crit_edge
  %retval.2 = phi i32 [ %add, %for.end ], [ %retval.1, %cleanup.cleanup80_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunmap_high(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @kmap_lock) #8
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %5
  %shl.i.i = shl i32 %add.i.i, 12
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %7 = inttoptr i32 %6 to ptr
  br label %page_address.exit

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %page to i32
  %mul.i.i.i.i.i = mul i32 %8, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 25
  %arrayidx.i.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i.i
  %lock.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i.i, i32 1
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i.i, align 128
  %cmp.i.not.i = icmp eq ptr %10, %arrayidx.i.i
  br i1 %cmp.i.not.i, label %if.end.i.done.i_crit_edge, label %if.end.i.for.cond.i_crit_edge

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  br label %for.cond.i

if.end.i.done.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i.i, %if.end.i.for.cond.i_crit_edge ]
  %11 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i, %arrayidx.i.i
  br i1 %cmp15.not.i, label %for.cond.i.done.i_crit_edge, label %for.body.i

for.cond.i.done.i_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

for.body.i:                                       ; preds = %for.cond.i
  %pam.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %12 = ptrtoint ptr %pam.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pam.0.i, align 4
  %cmp18.i = icmp eq ptr %13, %page
  br i1 %cmp18.i, label %if.then20.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then20.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %virtual.i = getelementptr i8, ptr %.pn.i, i32 -4
  %14 = ptrtoint ptr %virtual.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virtual.i, align 4
  br label %done.i

done.i:                                           ; preds = %if.then20.i, %for.cond.i.done.i_crit_edge, %if.end.i.done.i_crit_edge
  %ret.1.i = phi ptr [ null, %if.end.i.done.i_crit_edge ], [ %15, %if.then20.i ], [ null, %for.cond.i.done.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #8
  br label %page_address.exit

page_address.exit:                                ; preds = %done.i, %if.then.i
  %retval.0.i = phi ptr [ %ret.1.i, %done.i ], [ %7, %if.then.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %do.body6, label %do.end13, !prof !70

do.body6:                                         ; preds = %page_address.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 329, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

do.end13:                                         ; preds = %page_address.exit
  %16 = ptrtoint ptr %retval.0.i to i32
  %sub = add i32 %16, 1075838976
  %shr = lshr i32 %sub, 12
  %arrayidx = getelementptr [512 x i32], ptr @pkmap_count, i32 0, i32 %shr
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %arrayidx, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %18, label %do.body23.thread [
    i32 1, label %do.body14
    i32 2, label %do.body23
  ]

do.body23.thread:                                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kmap_lock) #8
  br label %if.end28

do.body14:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #8, !srcloc !75
  unreachable

do.body23:                                        ; preds = %do.end13
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i32 0, i32 1), align 4
  %cmp.i.i.not = icmp eq ptr %20, getelementptr inbounds (%struct.wait_queue_head, ptr @get_pkmap_wait_queue_head.pkmap_map_wait, i32 0, i32 1)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kmap_lock) #8
  br i1 %cmp.i.i.not, label %do.body23.if.end28_crit_edge, label %if.then27

do.body23.if.end28_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wake_up(ptr noundef nonnull @get_pkmap_wait_queue_head.pkmap_map_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %do.body23.if.end28_crit_edge, %do.body23.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zero_user_segments(ptr noundef %page, i32 noundef %start1, i32 noundef %end1, i32 noundef %start2, i32 noundef %end2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i.i.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !70

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

PageHead.exit.i.i:                                ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.page_size.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.page_size.exit_crit_edge:       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_size.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i.i = getelementptr inbounds %struct.anon.69, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %compound_order.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %compound_order.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  br label %page_size.exit

page_size.exit:                                   ; preds = %if.end.i.i, %PageHead.exit.i.i.page_size.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.end.i.i ], [ 0, %PageHead.exit.i.i.page_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %end1)
  %cmp = icmp ult i32 %shl.i, %end1
  br i1 %cmp, label %page_size.exit.do.body4_crit_edge, label %lor.rhs, !prof !70

page_size.exit.do.body4_crit_edge:                ; preds = %page_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

lor.rhs:                                          ; preds = %page_size.exit
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i.i.i134 = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i.i.i134, label %if.then.i.i.i135, label %PageHead.exit.i.i137, !prof !70

if.then.i.i.i135:                                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

PageHead.exit.i.i137:                             ; preds = %lor.rhs
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %page, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i136 = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i136, label %PageHead.exit.i.i137.page_size.exit143_crit_edge, label %if.end.i.i140

PageHead.exit.i.i137.page_size.exit143_crit_edge: ; preds = %PageHead.exit.i.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_size.exit143

if.end.i.i140:                                    ; preds = %PageHead.exit.i.i137
  call void @__sanitizer_cov_trace_pc() #10
  %13 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i.i138 = getelementptr inbounds %struct.anon.69, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %compound_order.i.i138 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %compound_order.i.i138, align 1
  %conv.i.i139 = zext i8 %15 to i32
  br label %page_size.exit143

page_size.exit143:                                ; preds = %if.end.i.i140, %PageHead.exit.i.i137.page_size.exit143_crit_edge
  %retval.0.i.i141 = phi i32 [ %conv.i.i139, %if.end.i.i140 ], [ 0, %PageHead.exit.i.i137.page_size.exit143_crit_edge ]
  %shl.i142 = shl i32 4096, %retval.0.i.i141
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i142, i32 %end2)
  %cmp2 = icmp ult i32 %shl.i142, %end2
  br i1 %cmp2, label %page_size.exit143.do.body4_crit_edge, label %do.end9, !prof !70

page_size.exit143.do.body4_crit_edge:             ; preds = %page_size.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

do.body4:                                         ; preds = %page_size.exit143.do.body4_crit_edge, %page_size.exit.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 367, 0\0A.popsection", ""() #8, !srcloc !77
  unreachable

do.end9:                                          ; preds = %page_size.exit143
  %16 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i.i167 = icmp eq i32 %17, -1
  br i1 %cmp.i.not.i.i167, label %do.end9.if.then.i.i_crit_edge, label %PageHead.exit.i.lr.ph, !prof !70

do.end9.if.then.i.i_crit_edge:                    ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

PageHead.exit.i.lr.ph:                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_cmp4(i32 %start2, i32 %end2)
  %cmp13.not = icmp ult i32 %start2, %end2
  %end2.addr.0 = select i1 %cmp13.not, i32 %end2, i32 0
  %start2.addr.0 = select i1 %cmp13.not, i32 %start2, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %start1, i32 %end1)
  %cmp10.not = icmp ult i32 %start1, %end1
  %spec.select133 = select i1 %cmp10.not, i32 %start1, i32 0
  %spec.select = select i1 %cmp10.not, i32 %end1, i32 0
  %compound_nr.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  br label %PageHead.exit.i

for.cond:                                         ; preds = %if.end63
  %inc = add nuw i32 %i.0170, 1
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %page, align 4
  %cmp.i.not.i.i = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i.i, label %for.cond.if.then.i.i_crit_edge, label %for.cond.PageHead.exit.i_crit_edge, !prof !70

for.cond.PageHead.exit.i_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageHead.exit.i

for.cond.if.then.i.i_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond.if.then.i.i_crit_edge, %do.end9.if.then.i.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.7) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

PageHead.exit.i:                                  ; preds = %for.cond.PageHead.exit.i_crit_edge, %PageHead.exit.i.lr.ph
  %start1.addr.1173 = phi i32 [ %spec.select133, %PageHead.exit.i.lr.ph ], [ %start1.addr.2, %for.cond.PageHead.exit.i_crit_edge ]
  %end1.addr.1172 = phi i32 [ %spec.select, %PageHead.exit.i.lr.ph ], [ %end1.addr.2, %for.cond.PageHead.exit.i_crit_edge ]
  %i.0170 = phi i32 [ 0, %PageHead.exit.i.lr.ph ], [ %inc, %for.cond.PageHead.exit.i_crit_edge ]
  %end2.addr.1169 = phi i32 [ %end2.addr.0, %PageHead.exit.i.lr.ph ], [ %end2.addr.2, %for.cond.PageHead.exit.i_crit_edge ]
  %start2.addr.1168 = phi i32 [ %start2.addr.0, %PageHead.exit.i.lr.ph ], [ %start2.addr.2, %for.cond.PageHead.exit.i_crit_edge ]
  %20 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %page, align 4
  %22 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %PageHead.exit.i.compound_nr.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_nr.exit_crit_edge:       ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %compound_nr.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %compound_nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %compound_nr.i, align 4
  br label %compound_nr.exit

compound_nr.exit:                                 ; preds = %if.end.i, %PageHead.exit.i.compound_nr.exit_crit_edge
  %retval.0.i = phi i32 [ %24, %if.end.i ], [ 1, %PageHead.exit.i.compound_nr.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0170, i32 %retval.0.i)
  %cmp17 = icmp ult i32 %i.0170, %retval.0.i
  br i1 %cmp17, label %for.body, label %compound_nr.exit.do.body68_crit_edge

compound_nr.exit.do.body68_crit_edge:             ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

for.body:                                         ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %start1.addr.1173)
  %cmp18 = icmp ugt i32 %start1.addr.1173, 4095
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %start1.addr.1173, -4096
  %sub20 = add i32 %end1.addr.1172, -4096
  br label %if.end29

if.else:                                          ; preds = %for.body
  %25 = tail call i32 @llvm.umin.i32(i32 %end1.addr.1172, i32 4096)
  call void @__sanitizer_cov_trace_cmp4(i32 %end1.addr.1172, i32 %start1.addr.1173)
  %cmp22 = icmp ugt i32 %end1.addr.1172, %start1.addr.1173
  br i1 %cmp22, label %if.then23, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then23:                                        ; preds = %if.else
  %add.ptr = getelementptr %struct.page, ptr %page, i32 %i.0170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %26 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %26, 512
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %shr.i.i.i = lshr i32 %28, 30
  %29 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i.i, label %if.then23.if.then.i.i.i144_crit_edge [
    i32 2, label %if.then23.if.end.i.i145_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then23.if.end.i.i145_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i145

if.then23.if.then.i.i.i144_crit_edge:             ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i144

is_highmem_idx.exit.i.i:                          ; preds = %if.then23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %30 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp2.i.not.i.i = icmp eq i32 %30, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.end.i.i145_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i.i144_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i.i144_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i144

is_highmem_idx.exit.i.i.if.end.i.i145_crit_edge:  ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i145

if.then.i.i.i144:                                 ; preds = %is_highmem_idx.exit.i.i.if.then.i.i.i144_crit_edge, %if.then23.if.then.i.i.i144_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i.i = add i32 %sub.ptr.div.i.i.i.i, %32
  %shl.i.i.i.i = shl i32 %add.i.i.i.i, 12
  %33 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %34 = inttoptr i32 %33 to ptr
  br label %kmap_local_page.exit

if.end.i.i145:                                    ; preds = %is_highmem_idx.exit.i.i.if.end.i.i145_crit_edge, %if.then23.if.end.i.i145_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %36 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %36
  %call7.i.i = tail call ptr @__kmap_local_pfn_prot(i32 noundef %add.i.i, i32 noundef %or.i) #8
  br label %kmap_local_page.exit

kmap_local_page.exit:                             ; preds = %if.end.i.i145, %if.then.i.i.i144
  %retval.0.i.i146 = phi ptr [ %call7.i.i, %if.end.i.i145 ], [ %34, %if.then.i.i.i144 ]
  %add.ptr25 = getelementptr i8, ptr %retval.0.i.i146, i32 %start1.addr.1173
  %sub26 = sub nsw i32 %25, %start1.addr.1173
  %37 = call ptr @memset(ptr %add.ptr25, i32 0, i32 %sub26)
  br label %if.end27

if.end27:                                         ; preds = %kmap_local_page.exit, %if.else.if.end27_crit_edge
  %kaddr.0 = phi ptr [ %retval.0.i.i146, %kmap_local_page.exit ], [ null, %if.else.if.end27_crit_edge ]
  %sub28 = sub i32 %end1.addr.1172, %25
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.then19
  %kaddr.1 = phi ptr [ null, %if.then19 ], [ %kaddr.0, %if.end27 ]
  %end1.addr.2 = phi i32 [ %sub20, %if.then19 ], [ %sub28, %if.end27 ]
  %start1.addr.2 = phi i32 [ %sub, %if.then19 ], [ 0, %if.end27 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %start2.addr.1168)
  %cmp30 = icmp ugt i32 %start2.addr.1168, 4095
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %sub32 = add i32 %start2.addr.1168, -4096
  %sub33 = add i32 %end2.addr.1169, -4096
  br label %if.end53

if.else34:                                        ; preds = %if.end29
  %38 = tail call i32 @llvm.umin.i32(i32 %end2.addr.1169, i32 4096)
  call void @__sanitizer_cov_trace_cmp4(i32 %end2.addr.1169, i32 %start2.addr.1168)
  %cmp42 = icmp ugt i32 %end2.addr.1169, %start2.addr.1168
  br i1 %cmp42, label %if.then43, label %if.else34.if.end51_crit_edge

if.else34.if.end51_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then43:                                        ; preds = %if.else34
  %tobool44.not = icmp eq ptr %kaddr.1, null
  br i1 %tobool44.not, label %if.then45, label %if.then43.if.end48_crit_edge

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then45:                                        ; preds = %if.then43
  %add.ptr46 = getelementptr %struct.page, ptr %page, i32 %i.0170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %39 = load i32, ptr @pgprot_kernel, align 4
  %or.i147 = or i32 %39, 512
  %40 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr46, align 4
  %shr.i.i.i148 = lshr i32 %41, 30
  %42 = zext i32 %shr.i.i.i148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i.i148, label %if.then45.if.then.i.i.i157_crit_edge [
    i32 2, label %if.then45.if.end.i.i164_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i150
  ]

if.then45.if.end.i.i164_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i164

if.then45.if.then.i.i.i157_crit_edge:             ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i157

is_highmem_idx.exit.i.i150:                       ; preds = %if.then45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %43 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp2.i.not.i.i149 = icmp eq i32 %43, 2
  br i1 %cmp2.i.not.i.i149, label %is_highmem_idx.exit.i.i150.if.end.i.i164_crit_edge, label %is_highmem_idx.exit.i.i150.if.then.i.i.i157_crit_edge

is_highmem_idx.exit.i.i150.if.then.i.i.i157_crit_edge: ; preds = %is_highmem_idx.exit.i.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i157

is_highmem_idx.exit.i.i150.if.end.i.i164_crit_edge: ; preds = %is_highmem_idx.exit.i.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i164

if.then.i.i.i157:                                 ; preds = %is_highmem_idx.exit.i.i150.if.then.i.i.i157_crit_edge, %if.then45.if.then.i.i.i157_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i.i.i151 = ptrtoint ptr %add.ptr46 to i32
  %sub.ptr.rhs.cast.i.i.i.i152 = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i.i.i.i153 = sub i32 %sub.ptr.lhs.cast.i.i.i.i151, %sub.ptr.rhs.cast.i.i.i.i152
  %sub.ptr.div.i.i.i.i154 = sdiv exact i32 %sub.ptr.sub.i.i.i.i153, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %45 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i.i155 = add i32 %sub.ptr.div.i.i.i.i154, %45
  %shl.i.i.i.i156 = shl i32 %add.i.i.i.i155, 12
  %46 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i.i.i156, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %47 = inttoptr i32 %46 to ptr
  br label %if.end48

if.end.i.i164:                                    ; preds = %is_highmem_idx.exit.i.i150.if.end.i.i164_crit_edge, %if.then45.if.end.i.i164_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i158 = ptrtoint ptr %add.ptr46 to i32
  %sub.ptr.rhs.cast.i.i159 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i160 = sub i32 %sub.ptr.lhs.cast.i.i158, %sub.ptr.rhs.cast.i.i159
  %sub.ptr.div.i.i161 = sdiv exact i32 %sub.ptr.sub.i.i160, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %49 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i162 = add i32 %sub.ptr.div.i.i161, %49
  %call7.i.i163 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %add.i.i162, i32 noundef %or.i147) #8
  br label %if.end48

if.end48:                                         ; preds = %if.end.i.i164, %if.then.i.i.i157, %if.then43.if.end48_crit_edge
  %kaddr.2 = phi ptr [ %kaddr.1, %if.then43.if.end48_crit_edge ], [ %call7.i.i163, %if.end.i.i164 ], [ %47, %if.then.i.i.i157 ]
  %add.ptr49 = getelementptr i8, ptr %kaddr.2, i32 %start2.addr.1168
  %sub50 = sub nsw i32 %38, %start2.addr.1168
  %50 = call ptr @memset(ptr %add.ptr49, i32 0, i32 %sub50)
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.else34.if.end51_crit_edge
  %kaddr.3 = phi ptr [ %kaddr.2, %if.end48 ], [ %kaddr.1, %if.else34.if.end51_crit_edge ]
  %sub52 = sub i32 %end2.addr.1169, %38
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.then31
  %start2.addr.2 = phi i32 [ %sub32, %if.then31 ], [ 0, %if.end51 ]
  %end2.addr.2 = phi i32 [ %sub33, %if.then31 ], [ %sub52, %if.end51 ]
  %kaddr.4 = phi ptr [ %kaddr.1, %if.then31 ], [ %kaddr.3, %if.end51 ]
  %tobool54.not = icmp eq ptr %kaddr.4, null
  br i1 %tobool54.not, label %if.end53.if.end63_crit_edge, label %do.end59

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kunmap_local_indexed(ptr noundef nonnull %kaddr.4) #8
  %add.ptr62 = getelementptr %struct.page, ptr %page, i32 %i.0170
  tail call void @flush_dcache_page(ptr noundef %add.ptr62) #8
  br label %if.end63

if.end63:                                         ; preds = %do.end59, %if.end53.if.end63_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end1.addr.2)
  %tobool64.not = icmp eq i32 %end1.addr.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end2.addr.2)
  %tobool65.not = icmp eq i32 %end2.addr.2, 0
  %or.cond = select i1 %tobool64.not, i1 %tobool65.not, i1 false
  br i1 %or.cond, label %if.end63.do.body68_crit_edge, label %for.cond

if.end63.do.body68_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

do.body68:                                        ; preds = %if.end63.do.body68_crit_edge, %compound_nr.exit.do.body68_crit_edge
  %start2.addr.3 = phi i32 [ %start2.addr.2, %if.end63.do.body68_crit_edge ], [ %start2.addr.1168, %compound_nr.exit.do.body68_crit_edge ]
  %end2.addr.3 = phi i32 [ 0, %if.end63.do.body68_crit_edge ], [ %end2.addr.1169, %compound_nr.exit.do.body68_crit_edge ]
  %end1.addr.3 = phi i32 [ 0, %if.end63.do.body68_crit_edge ], [ %end1.addr.1172, %compound_nr.exit.do.body68_crit_edge ]
  %start1.addr.3 = phi i32 [ %start1.addr.2, %if.end63.do.body68_crit_edge ], [ %start1.addr.1173, %compound_nr.exit.do.body68_crit_edge ]
  %or = or i32 %end2.addr.3, %start2.addr.3
  %or69 = or i32 %or, %end1.addr.3
  %or70 = or i32 %or69, %start1.addr.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or70)
  %cmp71.not = icmp eq i32 %or70, 0
  br i1 %cmp71.not, label %do.end87, label %do.body79, !prof !78

do.body79:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 415, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

do.end87:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__kmap_local_pfn_prot(i32 noundef %pfn, i32 noundef %prot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @migrate_disable() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !80
  %4 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i31 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i31 to ptr
  %preempt_count.i.i32 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i32, align 4
  %and.i = and i32 %7, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end46.i_crit_edge, label %land.rhs.i

entry.if.end46.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

land.rhs.i:                                       ; preds = %entry
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !81
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i, label %land.rhs15.i, label %land.rhs.i.if.end46.i_crit_edge

land.rhs.i.if.end46.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

land.rhs15.i:                                     ; preds = %land.rhs.i
  %.b84.i = load i1, ptr @kmap_local_idx_push.__already_done, align 1
  br i1 %.b84.i, label %land.rhs15.i.if.end46.i_crit_edge, label %if.then.i, !prof !78

land.rhs15.i.if.end46.i_crit_edge:                ; preds = %land.rhs15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.then.i:                                        ; preds = %land.rhs15.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @kmap_local_idx_push.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 436, i32 noundef 9, ptr noundef null) #8
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then.i, %land.rhs15.i.if.end46.i_crit_edge, %land.rhs.i.if.end46.i_crit_edge, %entry.if.end46.i_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i86.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i86.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %kmap_ctrl.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 211
  %13 = ptrtoint ptr %kmap_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kmap_ctrl.i, align 4
  %add.i33 = add i32 %14, 2
  store i32 %add.i33, ptr %kmap_ctrl.i, align 4
  %15 = load ptr, ptr %task.i, align 8
  %kmap_ctrl58.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 211
  %16 = ptrtoint ptr %kmap_ctrl58.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kmap_ctrl58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp60.i = icmp sgt i32 %17, 32
  br i1 %cmp60.i, label %do.body69.i, label %kmap_local_idx_push.exit, !prof !70

do.body69.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 438, 0\0A.popsection", ""() #8, !srcloc !82
  unreachable

kmap_local_idx_push.exit:                         ; preds = %if.end46.i
  %sub.i34.neg = sub i32 1, %17
  %18 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i35 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i35 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i, align 4
  %mul.i.neg = mul i32 %21, 1048543
  %add.i36.neg = add i32 %sub.i34.neg, %mul.i.neg
  %add.neg = shl i32 %add.i36.neg, 12
  %sub = add i32 %add.neg, -1056768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i.i.i = lshr i32 %sub, 21
  %add.ptr.i.i.i.i = getelementptr [2 x i32], ptr %22, i32 %shr.i.i.i.i
  %23 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %kmap_local_idx_push.exit.kmap_get_pte.exit_crit_edge, label %cond.false.i.i

kmap_local_idx_push.exit.kmap_get_pte.exit_crit_edge: ; preds = %kmap_local_idx_push.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmap_get_pte.exit

cond.false.i.i:                                   ; preds = %kmap_local_idx_push.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i.i.i = and i32 %24, -4096
  %25 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %26 = inttoptr i32 %25 to ptr
  %shr.i.i4.i.i = lshr exact i32 %sub, 12
  %and.i.i.i.i = and i32 %shr.i.i4.i.i, 511
  %add.ptr.i.i.i = getelementptr i32, ptr %26, i32 %and.i.i.i.i
  br label %kmap_get_pte.exit

kmap_get_pte.exit:                                ; preds = %cond.false.i.i, %kmap_local_idx_push.exit.kmap_get_pte.exit_crit_edge
  %cond.i.i = phi ptr [ %add.ptr.i.i.i, %cond.false.i.i ], [ null, %kmap_local_idx_push.exit.kmap_get_pte.exit_crit_edge ]
  %27 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cond.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %do.end15, label %do.body8, !prof !78

do.body8:                                         ; preds = %kmap_get_pte.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 532, 0\0A.popsection", ""() #8, !srcloc !83
  unreachable

do.end15:                                         ; preds = %kmap_get_pte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %shl16 = shl i32 %pfn, 12
  %or = or i32 %shl16, %prot
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %sub, ptr noundef %cond.i.i, i32 noundef %or) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %29 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %30 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %30, i32 16) #8, !srcloc !85
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %30, i32 32) #8, !srcloc !86
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %30, i32 64) #8, !srcloc !87
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %29, i32 1048576) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i38 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i38 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %kmap_ctrl.i41 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 211
  %35 = ptrtoint ptr %kmap_ctrl.i41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %kmap_ctrl.i41, align 4
  %sub.i42 = add i32 %36, -1
  %arrayidx = getelementptr %struct.task_struct, ptr %34, i32 0, i32 211, i32 1, i32 %sub.i42
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %arrayidx, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !91
  %38 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i29 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i30, align 4
  %sub.i = add i32 %41, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i30, align 4
  %42 = inttoptr i32 %sub to ptr
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %prot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.end_crit_edge, label %is_highmem_idx.exit.if.then.i_crit_edge

is_highmem_idx.exit.if.then.i_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.if.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %is_highmem_idx.exit.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %5
  %shl.i.i = shl i32 %add.i.i, 12
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %shl.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %7 = inttoptr i32 %6 to ptr
  br label %cleanup

if.end:                                           ; preds = %is_highmem_idx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %9
  %call7 = tail call ptr @__kmap_local_pfn_prot(i32 noundef %add, i32 noundef %prot)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.i
  %retval.0 = phi ptr [ %call7, %if.end ], [ %7, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kunmap_local_indexed(ptr noundef %vaddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vaddr to i32
  %and = and i32 %0, -4096
  %1 = add i32 %and, 1056767
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536577, i32 %1)
  %2 = icmp ult i32 %1, -536577
  br i1 %2, label %if.then, label %do.body41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %and)
  %cmp3 = icmp ult i32 %and, -1073741824
  br i1 %cmp3, label %land.rhs, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.then
  %.b129 = load i1, ptr @kunmap_local_indexed.__already_done, align 1
  br i1 %.b129, label %land.rhs.cleanup_crit_edge, label %if.then10, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @kunmap_local_indexed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body41:                                        ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %6, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !92
  %7 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %kmap_ctrl.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 211
  %11 = ptrtoint ptr %kmap_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %kmap_ctrl.i, align 4
  %sub.i132.neg = sub i32 1, %12
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %mul.i.neg = mul i32 %14, 1048543
  %add.i134.neg = add i32 %sub.i132.neg, %mul.i.neg
  %add.neg = shl i32 %add.i134.neg, 12
  %sub = add i32 %add.neg, -1056768
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub)
  %cmp47.not = icmp eq i32 %and, %sub
  br i1 %cmp47.not, label %do.body41.if.end92_crit_edge, label %land.rhs54

do.body41.if.end92_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.rhs54:                                       ; preds = %do.body41
  %.b127128 = load i1, ptr @kunmap_local_indexed.__already_done.1, align 1
  br i1 %.b127128, label %land.rhs54.if.end92_crit_edge, label %if.then65, !prof !78

land.rhs54.if.end92_crit_edge:                    ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @kunmap_local_indexed.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 590, i32 noundef 9, ptr noundef null) #8
  br label %if.end92

if.end92:                                         ; preds = %if.then65, %land.rhs54.if.end92_crit_edge, %do.body41.if.end92_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i.i.i = lshr i32 %0, 21
  %add.ptr.i.i.i.i = getelementptr [2 x i32], ptr %15, i32 %shr.i.i.i.i
  %16 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %if.end92.kmap_get_pte.exit_crit_edge, label %cond.false.i.i

if.end92.kmap_get_pte.exit_crit_edge:             ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmap_get_pte.exit

cond.false.i.i:                                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i.i.i = and i32 %17, -4096
  %18 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %19 = inttoptr i32 %18 to ptr
  %shr.i.i4.i.i = lshr i32 %0, 12
  %and.i.i.i.i = and i32 %shr.i.i4.i.i, 511
  %add.ptr.i.i.i = getelementptr i32, ptr %19, i32 %and.i.i.i.i
  br label %kmap_get_pte.exit

kmap_get_pte.exit:                                ; preds = %cond.false.i.i, %if.end92.kmap_get_pte.exit_crit_edge
  %cond.i.i = phi ptr [ %add.ptr.i.i.i, %cond.false.i.i ], [ null, %if.end92.kmap_get_pte.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %20 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %set_pte_ext to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_pte_ext, align 4
  tail call void %22(ptr noundef %cond.i.i, i32 noundef 0, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %23 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %and, i32 %24, i32 16) #8, !srcloc !85
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %and, i32 %24, i32 32) #8, !srcloc !86
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %and, i32 %24, i32 64) #8, !srcloc !87
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %and, i32 %23, i32 1048576) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %25 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %kmap_ctrl.i137 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 211
  %29 = ptrtoint ptr %kmap_ctrl.i137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %kmap_ctrl.i137, align 4
  %sub.i138 = add i32 %30, -1
  %arrayidx = getelementptr %struct.task_struct, ptr %28, i32 0, i32 211, i32 1, i32 %sub.i138
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx, align 4
  %32 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i139 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i139 to ptr
  %task.i140 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i140 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i140, align 8
  %kmap_ctrl.i141 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 211
  %36 = ptrtoint ptr %kmap_ctrl.i141 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %kmap_ctrl.i141, align 4
  %sub.i142 = add i32 %37, -2
  store i32 %sub.i142, ptr %kmap_ctrl.i141, align 4
  %38 = load ptr, ptr %task.i140, align 8
  %kmap_ctrl3.i = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 211
  %39 = ptrtoint ptr %kmap_ctrl3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %kmap_ctrl3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp slt i32 %40, 0
  br i1 %cmp.i, label %do.body6.i, label %kmap_local_idx_pop.exit, !prof !70

do.body6.i:                                       ; preds = %kmap_get_pte.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #8, !srcloc !93
  unreachable

kmap_local_idx_pop.exit:                          ; preds = %kmap_get_pte.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !94
  %41 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i.i130 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i130 to ptr
  %preempt_count.i.i131 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i131 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i131, align 4
  %sub.i = add i32 %44, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i131, align 4
  tail call void @migrate_enable() #8
  br label %cleanup

cleanup:                                          ; preds = %kmap_local_idx_pop.exit, %if.then10, %land.rhs.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kmap_local_sched_out() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %kmap_ctrl = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 211
  %4 = ptrtoint ptr %kmap_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kmap_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp132 = icmp sgt i32 %5, 0
  br i1 %cmp132, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0133 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.task_struct, ptr %3, i32 0, i32 211, i32 1, i32 %i.0133
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = and i32 %i.0133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end43

if.then:                                          ; preds = %for.body
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %land.rhs

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.then
  %.b128 = load i1, ptr @__kmap_local_sched_out.__already_done, align 1
  br i1 %.b128, label %land.rhs.cleanup_crit_edge, label %if.then14, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__kmap_local_sched_out.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 627, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end43:                                         ; preds = %for.body
  br i1 %tobool4.not, label %land.rhs54, label %if.end102

land.rhs54:                                       ; preds = %if.end43
  %.b127129 = load i1, ptr @__kmap_local_sched_out.__already_done.2, align 1
  br i1 %.b127129, label %land.rhs54.cleanup_crit_edge, label %if.then65, !prof !78

land.rhs54.cleanup_crit_edge:                     ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__kmap_local_sched_out.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end43
  %8 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %mul.i.neg = mul i32 %11, 1048543
  %add.i.neg = sub i32 %mul.i.neg, %i.0133
  %add.neg = shl i32 %add.i.neg, 12
  %sub = add i32 %add.neg, -1056768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i.i.i = lshr i32 %sub, 21
  %add.ptr.i.i.i.i = getelementptr [2 x i32], ptr %12, i32 %shr.i.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end102.kmap_get_pte.exit_crit_edge, label %cond.false.i.i

if.end102.kmap_get_pte.exit_crit_edge:            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmap_get_pte.exit

cond.false.i.i:                                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i.i.i = and i32 %14, -4096
  %15 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %16 = inttoptr i32 %15 to ptr
  %shr.i.i4.i.i = lshr exact i32 %sub, 12
  %and.i.i.i.i = and i32 %shr.i.i4.i.i, 511
  %add.ptr.i.i.i = getelementptr i32, ptr %16, i32 %and.i.i.i.i
  br label %kmap_get_pte.exit

kmap_get_pte.exit:                                ; preds = %cond.false.i.i, %if.end102.kmap_get_pte.exit_crit_edge
  %cond.i.i = phi ptr [ %add.ptr.i.i.i, %cond.false.i.i ], [ null, %if.end102.kmap_get_pte.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %17 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %set_pte_ext to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_pte_ext, align 4
  tail call void %19(ptr noundef %cond.i.i, i32 noundef 0, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %20 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %21 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %21, i32 16) #8, !srcloc !85
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %21, i32 32) #8, !srcloc !86
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %21, i32 64) #8, !srcloc !87
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %20, i32 1048576) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %kmap_get_pte.exit, %if.then65, %land.rhs54.cleanup_crit_edge, %if.then14, %land.rhs.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0133, 1
  %22 = ptrtoint ptr %kmap_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %kmap_ctrl, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kmap_local_sched_in() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %kmap_ctrl = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 211
  %4 = ptrtoint ptr %kmap_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %kmap_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp126 = icmp sgt i32 %5, 0
  br i1 %cmp126, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0127 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.task_struct, ptr %3, i32 0, i32 211, i32 1, i32 %i.0127
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and = and i32 %i.0127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %if.end43

if.then:                                          ; preds = %for.body
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %land.rhs

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %if.then
  %.b122 = load i1, ptr @__kmap_local_sched_in.__already_done, align 1
  br i1 %.b122, label %land.rhs.cleanup_crit_edge, label %if.then14, !prof !78

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__kmap_local_sched_in.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 664, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end43:                                         ; preds = %for.body
  br i1 %tobool4.not, label %land.rhs54, label %if.end102

land.rhs54:                                       ; preds = %if.end43
  %.b121123 = load i1, ptr @__kmap_local_sched_in.__already_done.3, align 1
  br i1 %.b121123, label %land.rhs54.cleanup_crit_edge, label %if.then65, !prof !78

land.rhs54.cleanup_crit_edge:                     ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %land.rhs54
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__kmap_local_sched_in.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end43
  %8 = tail call i32 @llvm.read_register.i32(metadata !60) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %mul.i.neg = mul i32 %11, 1048543
  %add.i.neg = sub i32 %mul.i.neg, %i.0127
  %add.neg = shl i32 %add.i.neg, 12
  %sub = add i32 %add.neg, -1056768
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %shr.i.i.i.i = lshr i32 %sub, 21
  %add.ptr.i.i.i.i = getelementptr [2 x i32], ptr %12, i32 %shr.i.i.i.i
  %13 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end102.kmap_get_pte.exit_crit_edge, label %cond.false.i.i

if.end102.kmap_get_pte.exit_crit_edge:            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %kmap_get_pte.exit

cond.false.i.i:                                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i.i.i = and i32 %14, -4096
  %15 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and1.i.i.i.i, i32 -2130706432, i32 8454144) #11, !srcloc !72
  %16 = inttoptr i32 %15 to ptr
  %shr.i.i4.i.i = lshr exact i32 %sub, 12
  %and.i.i.i.i = and i32 %shr.i.i4.i.i, 511
  %add.ptr.i.i.i = getelementptr i32, ptr %16, i32 %and.i.i.i.i
  br label %kmap_get_pte.exit

kmap_get_pte.exit:                                ; preds = %cond.false.i.i, %if.end102.kmap_get_pte.exit_crit_edge
  %cond.i.i = phi ptr [ %add.ptr.i.i.i, %cond.false.i.i ], [ null, %if.end102.kmap_get_pte.exit_crit_edge ]
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %sub, ptr noundef %cond.i.i, i32 noundef %7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %17 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %18, i32 16) #8, !srcloc !85
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %18, i32 32) #8, !srcloc !86
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %18, i32 64) #8, !srcloc !87
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 1", "r,r,Ir,~{cc}"(i32 %sub, i32 %17, i32 1048576) #8, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %kmap_get_pte.exit, %if.then65, %land.rhs54.cleanup_crit_edge, %if.then14, %land.rhs.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0127, 1
  %19 = ptrtoint ptr %kmap_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %kmap_ctrl, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kmap_local_fork(ptr nocapture noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kmap_ctrl = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 211
  %0 = ptrtoint ptr %kmap_ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kmap_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end39_crit_edge, label %land.rhs

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.rhs:                                         ; preds = %entry
  %.b43 = load i1, ptr @kmap_local_fork.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.then37_crit_edge, label %if.then, !prof !78

land.rhs.if.then37_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @kmap_local_fork.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 681, i32 noundef 9, ptr noundef null) #8
  br label %if.then37

if.then37:                                        ; preds = %if.then, %land.rhs.if.then37_crit_edge
  %2 = call ptr @memset(ptr %kmap_ctrl, i32 0, i32 136)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %entry.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_page_address(ptr noundef %page, ptr noundef %virtual) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i, label %entry.do.body5_crit_edge [
    i32 2, label %entry.do.end10_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.do.end10_crit_edge, label %is_highmem_idx.exit.do.body5_crit_edge, !prof !78

is_highmem_idx.exit.do.body5_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

is_highmem_idx.exit.do.end10_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.body5:                                         ; preds = %is_highmem_idx.exit.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/highmem.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #8, !srcloc !95
  unreachable

do.end10:                                         ; preds = %is_highmem_idx.exit.do.end10_crit_edge, %entry.do.end10_crit_edge
  %4 = ptrtoint ptr %page to i32
  %mul.i.i.i.i = mul i32 %4, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 25
  %arrayidx.i = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i
  %tobool12.not = icmp eq ptr %virtual, null
  br i1 %tobool12.not, label %do.body26, label %if.then13

if.then13:                                        ; preds = %do.end10
  %5 = ptrtoint ptr %virtual to i32
  %sub = add i32 %5, 1075838976
  %shr = lshr i32 %sub, 12
  %arrayidx = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %page, ptr %arrayidx, align 4
  %virtual15 = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %shr, i32 1
  %7 = ptrtoint ptr %virtual15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %virtual, ptr %virtual15, align 4
  %lock = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i, i32 1
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %list = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %shr, i32 2
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %arrayidx.i) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then13.list_add_tail.exit_crit_edge

if.then13.list_add_tail.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i, ptr %list, align 4
  %prev3.i.i = getelementptr [512 x %struct.page_address_map], ptr @page_address_maps, i32 0, i32 %shr, i32 2, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then13.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #8
  br label %done

do.body26:                                        ; preds = %do.end10
  %lock32 = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %shr.i.i.i, i32 1
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock32) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body26
  %.pn.in = phi ptr [ %arrayidx.i, %do.body26 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %14 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp43.not = icmp eq ptr %.pn, %arrayidx.i
  br i1 %cmp43.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pam.0 = getelementptr i8, ptr %.pn, i32 -8
  %15 = ptrtoint ptr %pam.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pam.0, align 4
  %cmp48 = icmp eq ptr %16, %page
  br i1 %cmp48, label %if.then50, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then50:                                        ; preds = %for.body
  %call.i.i81 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #8
  br i1 %call.i.i81, label %if.end.i.i82, label %if.then50.list_del.exit_crit_edge

if.then50.list_del.exit_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i82:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i82, %if.then50.list_del.exit_crit_edge
  %23 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i83 = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i83 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i83, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock32, i32 noundef %call34) #8
  br label %done

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock32, i32 noundef %call34) #8
  br label %done

done:                                             ; preds = %for.end, %list_del.exit, %list_add_tail.exit
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @page_address_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx, ptr %arrayidx, align 128
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx, ptr %prev.i, align 4
  %lock = getelementptr [128 x %struct.page_address_slot], ptr @page_address_htable, i32 0, i32 %i.05, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @page_address_init.__key, i16 noundef signext 3) #8
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !56, !58}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__ksymtab__totalhigh_pages, !1, !"__ksymtab__totalhigh_pages", i1 false, i1 false}
!1 = !{!"../mm/highmem.c", i32 104, i32 1}
!2 = !{ptr @__ksymtab___kmap_to_page, !3, !"__ksymtab___kmap_to_page", i1 false, i1 false}
!3 = !{!"../mm/highmem.c", i32 155, i32 1}
!4 = !{ptr @__ksymtab_kmap_high, !5, !"__ksymtab_kmap_high", i1 false, i1 false}
!5 = !{!"../mm/highmem.c", i32 283, i32 1}
!6 = !{ptr @__ksymtab_kunmap_high, !7, !"__ksymtab_kunmap_high", i1 false, i1 false}
!7 = !{!"../mm/highmem.c", i32 360, i32 1}
!8 = !{ptr @__ksymtab_zero_user_segments, !9, !"__ksymtab_zero_user_segments", i1 false, i1 false}
!9 = !{!"../mm/highmem.c", i32 417, i32 1}
!10 = !{ptr @__ksymtab___kmap_local_pfn_prot, !11, !"__ksymtab___kmap_local_pfn_prot", i1 false, i1 false}
!11 = !{!"../mm/highmem.c", i32 541, i32 1}
!12 = !{ptr @__ksymtab___kmap_local_page_prot, !13, !"__ksymtab___kmap_local_page_prot", i1 false, i1 false}
!13 = !{!"../mm/highmem.c", i32 562, i32 1}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../mm/highmem.c", i32 584, i32 4}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../mm/highmem.c", i32 590, i32 2}
!19 = !{ptr @__ksymtab_kunmap_local_indexed, !20, !"__ksymtab_kunmap_local_indexed", i1 false, i1 false}
!20 = !{!"../mm/highmem.c", i32 601, i32 1}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../mm/highmem.c", i32 627, i32 4}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../mm/highmem.c", i32 630, i32 7}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../mm/highmem.c", i32 664, i32 4}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../mm/highmem.c", i32 667, i32 7}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../mm/highmem.c", i32 681, i32 6}
!31 = !{ptr @__ksymtab_page_address, !32, !"__ksymtab_page_address", i1 false, i1 false}
!32 = !{!"../mm/highmem.c", i32 747, i32 1}
!33 = !{ptr @page_address_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../mm/highmem.c", i32 792, i32 3}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @_totalhigh_pages, !37, !"_totalhigh_pages", i1 false, i1 false}
!37 = !{!"../mm/highmem.c", i32 103, i32 15}
!38 = !{ptr @pkmap_count, !39, !"pkmap_count", i1 false, i1 false}
!39 = !{!"../mm/highmem.c", i32 119, i32 12}
!40 = !{ptr @pkmap_page_table, !41, !"pkmap_page_table", i1 false, i1 false}
!41 = !{!"../mm/highmem.c", i32 122, i32 8}
!42 = !{ptr @page_address_maps, !43, !"page_address_maps", i1 false, i1 false}
!43 = !{!"../mm/highmem.c", i32 700, i32 32}
!44 = !{ptr @page_address_htable, !45, !"page_address_htable", i1 false, i1 false}
!45 = !{!"../mm/highmem.c", i32 708, i32 32}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../mm/highmem.c", i32 120, i32 36}
!48 = !{ptr @kmap_lock, !47, !"kmap_lock", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../mm/highmem.c", i32 233, i32 4}
!51 = !{ptr @get_next_pkmap_nr.last_pkmap_nr, !52, !"last_pkmap_nr", i1 false, i1 false}
!52 = !{!"../mm/highmem.c", i32 64, i32 22}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../mm/highmem.c", i32 97, i32 9}
!55 = !{ptr @get_pkmap_wait_queue_head.pkmap_map_wait, !54, !"pkmap_map_wait", i1 false, i1 false}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../mm/highmem.c", i32 436, i32 2}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2155031240, i64 2155031717, i64 2155031277, i64 2155031333, i64 2155031367, i64 2155031391, i64 2155031432, i64 2155031453, i64 2155031481, i64 2155031515}
!72 = !{i64 2149090418, i64 2149090441, i64 2149090473, i64 2149090505, i64 2149090543, i64 2149090573}
!73 = !{i64 2155040575, i64 2155041052, i64 2155040612, i64 2155040668, i64 2155040702, i64 2155040726, i64 2155040767, i64 2155040788, i64 2155040816, i64 2155040850}
!74 = !{i64 2155043490, i64 2155043967, i64 2155043527, i64 2155043583, i64 2155043617, i64 2155043641, i64 2155043682, i64 2155043703, i64 2155043731, i64 2155043765}
!75 = !{i64 2155049238, i64 2155049715, i64 2155049275, i64 2155049331, i64 2155049365, i64 2155049389, i64 2155049430, i64 2155049451, i64 2155049479, i64 2155049513}
!76 = !{i64 2151005107, i64 2151005598, i64 2151005144, i64 2151005200, i64 2151005234, i64 2151005258, i64 2151005299, i64 2151005320, i64 2151005348, i64 2151005382}
!77 = !{i64 2155052369, i64 2155052846, i64 2155052406, i64 2155052462, i64 2155052496, i64 2155052520, i64 2155052561, i64 2155052582, i64 2155052610, i64 2155052644}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2155059916, i64 2155060393, i64 2155059953, i64 2155060009, i64 2155060043, i64 2155060067, i64 2155060108, i64 2155060129, i64 2155060157, i64 2155060191}
!80 = !{i64 2155070802}
!81 = !{i64 1090735}
!82 = !{i64 2155065936, i64 2155066413, i64 2155065973, i64 2155066029, i64 2155066063, i64 2155066087, i64 2155066128, i64 2155066149, i64 2155066177, i64 2155066211}
!83 = !{i64 2155071340, i64 2155071817, i64 2155071377, i64 2155071433, i64 2155071467, i64 2155071491, i64 2155071532, i64 2155071553, i64 2155071581, i64 2155071615}
!84 = !{i64 2152094017}
!85 = !{i64 2152085488, i64 2152085501}
!86 = !{i64 2152087709, i64 2152087722}
!87 = !{i64 2152089930, i64 2152089943}
!88 = !{i64 2152094314, i64 2152094327}
!89 = !{i64 2152098187}
!90 = !{i64 2152098272}
!91 = !{i64 2155073036}
!92 = !{i64 2155080994}
!93 = !{i64 2155068085, i64 2155068562, i64 2155068122, i64 2155068178, i64 2155068212, i64 2155068236, i64 2155068277, i64 2155068298, i64 2155068326, i64 2155068360}
!94 = !{i64 2155082901}
!95 = !{i64 2155101060, i64 2155101537, i64 2155101097, i64 2155101153, i64 2155101187, i64 2155101211, i64 2155101252, i64 2155101273, i64 2155101301, i64 2155101335}
