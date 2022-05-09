; ModuleID = '/llk/IR_all_yes/fs/mpage.c_pt.bc'
source_filename = "../fs/mpage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mpage_readahead\22, \22a\22\09"
module asm "\09.weak\09__crc_mpage_readahead\09\09\09\09"
module asm "\09.long\09__crc_mpage_readahead\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_readahead\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mpage_readpage\22, \22a\22\09"
module asm "\09.weak\09__crc_mpage_readpage\09\09\09\09"
module asm "\09.long\09__crc_mpage_readpage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_readpage\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mpage_writepages\22, \22a\22\09"
module asm "\09.weak\09__crc_mpage_writepages\09\09\09\09"
module asm "\09.long\09__crc_mpage_writepages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_writepages\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_writepages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mpage_writepage\22, \22a\22\09"
module asm "\09.weak\09__crc_mpage_writepage\09\09\09\09"
module asm "\09.long\09__crc_mpage_writepage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpage_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22mpage_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_mpage_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.mpage_readpage_args = type { ptr, ptr, i32, i8, i64, %struct.buffer_head, i32, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%union.anon.79 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.mpage_data = type { ptr, i64, ptr, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.40 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.40 = type { %struct.work_struct }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }

@__kstrtab_mpage_readahead = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_readahead = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_readahead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_readahead to i32), ptr @__kstrtab_mpage_readahead, ptr @__kstrtabns_mpage_readahead }, section "___ksymtab+mpage_readahead", align 4
@__kstrtab_mpage_readpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_readpage = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_readpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_readpage to i32), ptr @__kstrtab_mpage_readpage, ptr @__kstrtabns_mpage_readpage }, section "___ksymtab+mpage_readpage", align 4
@__kstrtab_mpage_writepages = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_writepages = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_writepages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_writepages to i32), ptr @__kstrtab_mpage_writepages, ptr @__kstrtabns_mpage_writepages }, section "___ksymtab+mpage_writepages", align 4
@__kstrtab_mpage_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpage_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_mpage_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpage_writepage to i32), ptr @__kstrtab_mpage_writepage, ptr @__kstrtabns_mpage_writepage }, section "___ksymtab+mpage_writepage", align 4
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@buffer_heads_over_limit = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_ = private constant [14 x i8] c"../fs/mpage.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 1096, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 260, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 698, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 463, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 717, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_mpage_readahead, ptr @__ksymtab_mpage_readpage, ptr @__ksymtab_mpage_writepage, ptr @__ksymtab_mpage_writepages, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpage_readahead(ptr nocapture noundef %rac, ptr noundef %get_block) #0 align 64 {
entry:
  %args = alloca %struct.mpage_readpage_args, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %args) #8
  %0 = call ptr @memset(ptr %args, i32 0, i32 136)
  %is_readahead = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 3
  %1 = ptrtoint ptr %is_readahead to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %is_readahead, align 4
  %get_block2 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 7
  %2 = ptrtoint ptr %get_block2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %get_block, ptr %get_block2, align 4
  %_batch_count.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 5
  %_nr_pages.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %3 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_batch_count.i.i, align 4
  %5 = ptrtoint ptr %_nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nr_pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.i.i30 = icmp ult i32 %6, %4
  br i1 %cmp.i.i30, label %entry.do.body2.i.i_crit_edge, label %do.end7.i.i.lr.ph, !prof !31

entry.do.body2.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i

do.end7.i.i.lr.ph:                                ; preds = %entry
  %_index.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %mapping.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %page3 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 1
  %nr_pages = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 2
  br label %do.end7.i.i

do.body2.i.i:                                     ; preds = %put_page.exit.do.body2.i.i_crit_edge, %entry.do.body2.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

do.end7.i.i:                                      ; preds = %put_page.exit.do.end7.i.i_crit_edge, %do.end7.i.i.lr.ph
  %7 = phi i32 [ %6, %do.end7.i.i.lr.ph ], [ %44, %put_page.exit.do.end7.i.i_crit_edge ]
  %8 = phi i32 [ %4, %do.end7.i.i.lr.ph ], [ %42, %put_page.exit.do.end7.i.i_crit_edge ]
  %sub.i.i = sub i32 %7, %8
  %9 = ptrtoint ptr %_nr_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i.i, ptr %_nr_pages.i.i, align 4
  %10 = ptrtoint ptr %_index.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %_index.i.i, align 4
  %add.i.i = add i32 %11, %8
  store i32 %add.i.i, ptr %_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %tobool12.not.i.i = icmp eq i32 %7, %8
  br i1 %tobool12.not.i.i, label %readahead_page.exit.thread, label %if.end15.i.i

readahead_page.exit.thread:                       ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %_batch_count.i.i, align 4
  br label %while.end

if.end15.i.i:                                     ; preds = %do.end7.i.i
  %13 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapping.i.i, align 4
  %i_pages.i.i = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 1
  %call.i.i = call ptr @xa_load(ptr noundef %i_pages.i.i, i32 noundef %add.i.i) #8
  %15 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !33

if.then.i.i.i.i:                                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.1) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %if.end15.i.i
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then27.i.i, label %do.end36.i.i, !prof !31

if.then27.i.i:                                    ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

do.end36.i.i:                                     ; preds = %folio_test_locked.exit.i.i
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !31

if.then.i.i.i.i.i:                                ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.3) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !36
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %do.end36.i.i
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call.i.i, align 4
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i53.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i53.i.i, label %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %readahead_page.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %call.i.i, i32 1, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %readahead_page.exit

readahead_page.exit:                              ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge
  %storemerge.i.i = phi i32 [ %26, %if.end.i.i.i.i ], [ 1, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge ]
  %27 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge.i.i, ptr %_batch_count.i.i, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %readahead_page.exit.while.end_crit_edge, label %while.body

readahead_page.exit.while.end_crit_edge:          ; preds = %readahead_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %readahead_page.exit
  call void @llvm.prefetch.p0(ptr nonnull %call.i.i, i32 1, i32 3, i32 1)
  %28 = ptrtoint ptr %page3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %page3, align 4
  %29 = ptrtoint ptr %_nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %_nr_pages.i.i, align 4
  %31 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %nr_pages, align 8
  %call5 = call fastcc ptr @do_mpage_readpage(ptr noundef nonnull %args)
  %32 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5, ptr %args, align 8
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %15, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !33

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i13 = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i14 = phi i32 [ %sub.i.i13, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i14 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i15, label %do.end5.i.i.i.i, !prof !31

if.then.i.i.i.i15:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = inttoptr i32 %retval.0.i.i14 to ptr
  call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.6) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !37
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !39
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mpage_readahead, %if.then.i.i.i.i.i16)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i16], !srcloc !41

if.then.i.i.i.i.i16:                              ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i16, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %36) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %41 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %_batch_count.i.i, align 4
  %43 = ptrtoint ptr %_nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %_nr_pages.i.i, align 4
  %cmp.i.i = icmp ult i32 %44, %42
  br i1 %cmp.i.i, label %put_page.exit.do.body2.i.i_crit_edge, label %put_page.exit.do.end7.i.i_crit_edge, !prof !31

put_page.exit.do.end7.i.i_crit_edge:              ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

put_page.exit.do.body2.i.i_crit_edge:             ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i.i

while.end:                                        ; preds = %readahead_page.exit.while.end_crit_edge, %readahead_page.exit.thread
  %45 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %args, align 8
  %tobool7.not = icmp eq ptr %46, null
  br i1 %tobool7.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @mpage_end_io, ptr %bi_end_io.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %46, i32 0, i32 2
  %48 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 524288, ptr %bi_opf.i.i, align 8
  call void @guard_bio_eod(ptr noundef nonnull %46) #8
  call void @submit_bio(ptr noundef nonnull %46) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %args) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @do_mpage_readpage(ptr noundef %args) unnamed_addr #0 align 64 {
entry:
  %blocks = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %7 to i32
  %shr = lshr i32 4096, %conv
  %shl = shl nuw i32 1, %conv
  %map_bh2 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %blocks) #8
  %8 = call ptr @memset(ptr %blocks, i32 255, i32 64)
  %is_readahead = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 3
  %9 = ptrtoint ptr %is_readahead to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_readahead, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %gfp_mask.i.i367 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %gfp_mask.i.i367 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gfp_mask.i.i367, align 4
  %and.i = and i32 %12, 3264
  %op_flags.0 = select i1 %tobool.not, i32 0, i32 524288
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !31

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %1, align 4
  %17 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end9, label %PagePrivate.exit.confused_crit_edge

PagePrivate.exit.confused_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end9:                                          ; preds = %PagePrivate.exit
  %index = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %conv10 = zext i32 %19 to i64
  %sub = sub nsw i32 12, %conv
  %sh_prom = zext i32 %sub to i64
  %shl11 = shl i64 %conv10, %sh_prom
  %nr_pages = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 2
  %20 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_pages, align 8
  %mul = mul i32 %21, %shr
  %conv12 = zext i32 %mul to i64
  %add = add i64 %shl11, %conv12
  %call13 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %conv14 = zext i32 %shl to i64
  %add15 = add nsw i64 %conv14, -1
  %sub16 = add i64 %add15, %call13
  %sh_prom17 = zext i8 %7 to i64
  %shr18 = ashr i64 %sub16, %sh_prom17
  %22 = tail call i64 @llvm.umin.i64(i64 %add, i64 %shr18)
  %b_size = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 5, i32 4
  %23 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %b_size, align 8
  %shr22 = lshr i32 %24, %conv
  %25 = ptrtoint ptr %map_bh2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %map_bh2, align 4
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not = icmp eq i32 %27, 0
  br i1 %tobool24.not, label %if.end9.if.end54_crit_edge, label %land.lhs.true

if.end9.if.end54_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end9
  %first_logical_block = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 6
  %28 = ptrtoint ptr %first_logical_block to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_logical_block, align 8
  %conv25 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl11, i64 %conv25)
  %cmp26 = icmp ugt i64 %shl11, %conv25
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true28:                                  ; preds = %land.lhs.true
  %add30 = add i32 %29, %shr22
  %conv31 = zext i32 %add30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl11, i64 %conv31)
  %cmp32 = icmp ult i64 %shl11, %conv31
  br i1 %cmp32, label %if.then34, label %land.lhs.true28.if.end54_crit_edge

land.lhs.true28.if.end54_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then34:                                        ; preds = %land.lhs.true28
  %30 = trunc i64 %shl11 to i32
  %conv38 = sub i32 %30, %29
  %sub39 = sub i32 %shr22, %conv38
  call void @__sanitizer_cov_trace_cmp4(i32 %shr22, i32 %conv38)
  %cmp40422 = icmp eq i32 %shr22, %conv38
  br i1 %cmp40422, label %if.then34.if.then42_crit_edge, label %if.end43.lr.ph

if.then34.if.then42_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.end43.lr.ph:                                   ; preds = %if.then34
  %b_blocknr = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 5, i32 3
  %conv48 = zext i32 %conv38 to i64
  br label %if.end43

if.then42:                                        ; preds = %if.end47.if.then42_crit_edge, %if.then34.if.then42_crit_edge
  %block_in_file.0.lcssa = phi i64 [ %shl11, %if.then34.if.then42_crit_edge ], [ %inc52, %if.end47.if.then42_crit_edge ]
  %page_block.0.lcssa = phi i32 [ 0, %if.then34.if.then42_crit_edge ], [ %sub39, %if.end47.if.then42_crit_edge ]
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %map_bh2) #8
  br label %for.end

if.end43:                                         ; preds = %if.end47.if.end43_crit_edge, %if.end43.lr.ph
  %relative_block.0425 = phi i32 [ 0, %if.end43.lr.ph ], [ %inc53, %if.end47.if.end43_crit_edge ]
  %block_in_file.0423 = phi i64 [ %shl11, %if.end43.lr.ph ], [ %inc52, %if.end47.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %relative_block.0425, i32 %shr)
  %cmp44 = icmp eq i32 %relative_block.0425, %shr
  br i1 %cmp44, label %if.end43.for.end_crit_edge, label %if.end47

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end47:                                         ; preds = %if.end43
  %31 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %b_blocknr, align 8
  %conv50 = zext i32 %relative_block.0425 to i64
  %add49 = add nuw nsw i64 %conv50, %conv48
  %add51 = add i64 %add49, %32
  %arrayidx = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %relative_block.0425
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add51, ptr %arrayidx, align 8
  %inc53 = add nuw nsw i32 %relative_block.0425, 1
  %inc52 = add i64 %block_in_file.0423, 1
  %cmp40 = icmp eq i32 %inc53, %sub39
  br i1 %cmp40, label %if.end47.if.then42_crit_edge, label %if.end47.if.end43_crit_edge

if.end47.if.end43_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end47.if.then42_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %if.then42
  %block_in_file.0421 = phi i64 [ %block_in_file.0.lcssa, %if.then42 ], [ %block_in_file.0423, %if.end43.for.end_crit_edge ]
  %page_block.0419 = phi i32 [ %page_block.0.lcssa, %if.then42 ], [ %shr, %if.end43.for.end_crit_edge ]
  %b_bdev = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 5, i32 6
  %34 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_bdev, align 8
  br label %if.end54

if.end54:                                         ; preds = %for.end, %land.lhs.true28.if.end54_crit_edge, %land.lhs.true.if.end54_crit_edge, %if.end9.if.end54_crit_edge
  %block_in_file.1 = phi i64 [ %block_in_file.0421, %for.end ], [ %shl11, %land.lhs.true28.if.end54_crit_edge ], [ %shl11, %land.lhs.true.if.end54_crit_edge ], [ %shl11, %if.end9.if.end54_crit_edge ]
  %page_block.1 = phi i32 [ %page_block.0419, %for.end ], [ 0, %land.lhs.true28.if.end54_crit_edge ], [ 0, %land.lhs.true.if.end54_crit_edge ], [ 0, %if.end9.if.end54_crit_edge ]
  %bdev.0 = phi ptr [ %35, %for.end ], [ null, %land.lhs.true28.if.end54_crit_edge ], [ null, %land.lhs.true.if.end54_crit_edge ], [ null, %if.end9.if.end54_crit_edge ]
  %b_page = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %b_page to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %b_page, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %page_block.1, i32 %shr)
  %cmp55433445 = icmp ult i32 %page_block.1, %shr
  %extract.t = trunc i64 %block_in_file.1 to i32
  br i1 %cmp55433445, label %while.body.lr.ph.lr.ph, label %if.end54.if.then133_crit_edge

if.end54.if.then133_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

while.body.lr.ph.lr.ph:                           ; preds = %if.end54
  %get_block = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 7
  %first_logical_block71 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 6
  %b_blocknr95 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 5, i32 3
  %b_bdev122 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 5, i32 6
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then75.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %tobool132.not = phi i1 [ false, %while.body.lr.ph.lr.ph ], [ true, %if.then75.while.body.lr.ph_crit_edge ]
  %bdev.1.ph449 = phi ptr [ %bdev.0, %while.body.lr.ph.lr.ph ], [ %bdev.1436, %if.then75.while.body.lr.ph_crit_edge ]
  %first_hole.0.ph448 = phi i32 [ %shr, %while.body.lr.ph.lr.ph ], [ %spec.select357, %if.then75.while.body.lr.ph_crit_edge ]
  %page_block.2.ph447 = phi i32 [ %page_block.1, %while.body.lr.ph.lr.ph ], [ %inc80, %if.then75.while.body.lr.ph_crit_edge ]
  %block_in_file.2.ph446 = phi i64 [ %block_in_file.1, %while.body.lr.ph.lr.ph ], [ %inc81, %if.then75.while.body.lr.ph_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %first_hole.0.ph448, i32 %shr)
  %cmp87.not = icmp eq i32 %first_hole.0.ph448, %shr
  br label %while.body

while.body:                                       ; preds = %for.end121.while.body_crit_edge, %while.body.lr.ph
  %bdev.1436 = phi ptr [ %bdev.1.ph449, %while.body.lr.ph ], [ %95, %for.end121.while.body_crit_edge ]
  %page_block.2435 = phi i32 [ %page_block.2.ph447, %while.body.lr.ph ], [ %page_block.3.lcssa, %for.end121.while.body_crit_edge ]
  %block_in_file.2434 = phi i64 [ %block_in_file.2.ph446, %while.body.lr.ph ], [ %block_in_file.3.lcssa, %for.end121.while.body_crit_edge ]
  %37 = ptrtoint ptr %map_bh2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %map_bh2, align 8
  %38 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %b_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %block_in_file.2434)
  %cmp58 = icmp ugt i64 %22, %block_in_file.2434
  br i1 %cmp58, label %if.then60, label %while.body.if.end72_crit_edge

while.body.if.end72_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then60:                                        ; preds = %while.body
  %sub61 = sub i64 %22, %block_in_file.2434
  %shl63 = shl i64 %sub61, %sh_prom17
  %conv64 = trunc i64 %shl63 to i32
  %39 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv64, ptr %b_size, align 8
  %40 = ptrtoint ptr %get_block to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_block, align 4
  %call66 = tail call i32 %41(ptr noundef %5, i64 noundef %block_in_file.2434, ptr noundef %map_bh2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then60.confused_crit_edge

if.then60.confused_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end69:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %conv70 = trunc i64 %block_in_file.2434 to i32
  %42 = ptrtoint ptr %first_logical_block71 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv70, ptr %first_logical_block71, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.end69, %while.body.if.end72_crit_edge
  %43 = ptrtoint ptr %map_bh2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %map_bh2, align 4
  %45 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool74.not = icmp eq i32 %45, 0
  br i1 %tobool74.not, label %if.then75, label %if.end82

if.then75:                                        ; preds = %if.end72
  %spec.select357 = select i1 %cmp87.not, i32 %page_block.2435, i32 %first_hole.0.ph448
  %inc80 = add nuw i32 %page_block.2435, 1
  %inc81 = add i64 %block_in_file.2434, 1
  %cmp55433 = icmp ult i32 %inc80, %shr
  br i1 %cmp55433, label %if.then75.while.body.lr.ph_crit_edge, label %while.end

if.then75.while.body.lr.ph_crit_edge:             ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

if.end82:                                         ; preds = %if.end72
  %46 = ptrtoint ptr %map_bh2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %map_bh2, align 4
  %and1.i.i362 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i362)
  %tobool84.not = icmp eq i32 %and1.i.i362, 0
  br i1 %tobool84.not, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end82
  %48 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mapping, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp.i.not.i.i = icmp eq i32 %53, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i368, label %PagePrivate.exit.i, !prof !31

if.then.i.i368:                                   ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

PagePrivate.exit.i:                               ; preds = %if.then85
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %1, align 4
  %56 = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i369 = icmp eq i32 %56, 0
  br i1 %tobool.not.i369, label %if.then.i370, label %PagePrivate.exit.i.do.body.i_crit_edge

PagePrivate.exit.i.do.body.i_crit_edge:           ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i370:                                     ; preds = %PagePrivate.exit.i
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 20
  %57 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i_blkbits.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %58)
  %cmp.i = icmp eq i8 %58, 12
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i370.if.end.i_crit_edge

if.then.i370.if.end.i_crit_edge:                  ; preds = %if.then.i370
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i370
  %59 = ptrtoint ptr %map_bh2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %map_bh2, align 4
  %and1.i.i50.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i50.i)
  %tobool3.not.i = icmp eq i32 %and1.i.i50.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  %61 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !33

if.then.i.i.i.i:                                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #8
  br label %confused

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i370.if.end.i_crit_edge
  %conv.i.i = zext i8 %58 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  tail call void @create_empty_buffers(ptr noundef %1, i32 noundef %shl.i.i, i32 noundef 0) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %PagePrivate.exit.i.do.body.i_crit_edge
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp.i.not.i51.i = icmp eq i32 %65, -1
  br i1 %cmp.i.not.i51.i, label %if.then.i52.i, label %PagePrivate.exit55.i, !prof !31

if.then.i52.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

PagePrivate.exit55.i:                             ; preds = %do.body.i
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %1, align 4
  %68 = and i32 %67, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool8.not.i = icmp eq i32 %68, 0
  br i1 %tobool8.not.i, label %do.body13.i, label %do.end19.i, !prof !31

do.body13.i:                                      ; preds = %PagePrivate.exit55.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

do.end19.i:                                       ; preds = %PagePrivate.exit55.i
  %private.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %69 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %private.i, align 4
  %71 = inttoptr i32 %70 to ptr
  br label %do.body20.i

do.body20.i:                                      ; preds = %if.end27.i.do.body20.i_crit_edge, %do.end19.i
  %page_bh.0.i = phi ptr [ %71, %do.end19.i ], [ %82, %if.end27.i.do.body20.i_crit_edge ]
  %block.0.i = phi i32 [ 0, %do.end19.i ], [ %inc.i, %if.end27.i.do.body20.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %block.0.i, i32 %page_block.2435)
  %cmp21.i = icmp eq i32 %block.0.i, %page_block.2435
  br i1 %cmp21.i, label %if.then23.i, label %if.end27.i

if.then23.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %map_bh2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %map_bh2, align 8
  %74 = ptrtoint ptr %page_bh.0.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %page_bh.0.i, align 8
  %75 = ptrtoint ptr %b_bdev122 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_bdev122, align 8
  %b_bdev25.i = getelementptr inbounds %struct.buffer_head, ptr %page_bh.0.i, i32 0, i32 6
  %77 = ptrtoint ptr %b_bdev25.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %b_bdev25.i, align 8
  %78 = ptrtoint ptr %b_blocknr95 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %b_blocknr95, align 8
  %b_blocknr26.i = getelementptr inbounds %struct.buffer_head, ptr %page_bh.0.i, i32 0, i32 3
  %80 = ptrtoint ptr %b_blocknr26.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %b_blocknr26.i, align 8
  br label %confused

if.end27.i:                                       ; preds = %do.body20.i
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %page_bh.0.i, i32 0, i32 1
  %81 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_this_page.i, align 4
  %inc.i = add i32 %block.0.i, 1
  %cmp29.not.i = icmp eq ptr %82, %71
  br i1 %cmp29.not.i, label %if.end27.i.confused_crit_edge, label %if.end27.i.do.body20.i_crit_edge

if.end27.i.do.body20.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20.i

if.end27.i.confused_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end86:                                         ; preds = %if.end82
  br i1 %cmp87.not, label %if.end90, label %if.end86.confused_crit_edge

if.end86.confused_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end90:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_block.2435)
  %tobool91.not = icmp eq i32 %page_block.2435, 0
  br i1 %tobool91.not, label %if.end90.if.end100_crit_edge, label %land.lhs.true92

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true92:                                  ; preds = %if.end90
  %sub93 = add i32 %page_block.2435, -1
  %arrayidx94 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %sub93
  %83 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx94, align 8
  %85 = ptrtoint ptr %b_blocknr95 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %b_blocknr95, align 8
  %sub96 = add i64 %86, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %sub96)
  %cmp97.not = icmp eq i64 %84, %sub96
  br i1 %cmp97.not, label %land.lhs.true92.if.end100_crit_edge, label %land.lhs.true92.confused_crit_edge

land.lhs.true92.confused_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

land.lhs.true92.if.end100_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end100:                                        ; preds = %land.lhs.true92.if.end100_crit_edge, %if.end90.if.end100_crit_edge
  %87 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %b_size, align 8
  %shr102 = lshr i32 %88, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr102)
  %cmp104427 = icmp eq i32 %shr102, 0
  br i1 %cmp104427, label %if.end100.for.end121_crit_edge, label %if.end100.if.else107_crit_edge

if.end100.if.else107_crit_edge:                   ; preds = %if.end100
  br label %if.else107

if.end100.for.end121_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end121

if.else107:                                       ; preds = %if.end112.if.else107_crit_edge, %if.end100.if.else107_crit_edge
  %relative_block.1430 = phi i32 [ %inc120, %if.end112.if.else107_crit_edge ], [ 0, %if.end100.if.else107_crit_edge ]
  %page_block.3429 = phi i32 [ %inc117, %if.end112.if.else107_crit_edge ], [ %page_block.2435, %if.end100.if.else107_crit_edge ]
  %block_in_file.3428 = phi i64 [ %inc118, %if.end112.if.else107_crit_edge ], [ %block_in_file.2434, %if.end100.if.else107_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %page_block.3429, i32 %shr)
  %cmp108 = icmp eq i32 %page_block.3429, %shr
  br i1 %cmp108, label %for.end121.thread, label %if.end112

for.end121.thread:                                ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %b_bdev122 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %b_bdev122, align 8
  %extract.t557 = trunc i64 %block_in_file.3428 to i32
  br label %if.else131

if.end112:                                        ; preds = %if.else107
  %91 = ptrtoint ptr %b_blocknr95 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %b_blocknr95, align 8
  %conv114 = zext i32 %relative_block.1430 to i64
  %add115 = add i64 %92, %conv114
  %arrayidx116 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %page_block.3429
  %93 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %add115, ptr %arrayidx116, align 8
  %inc117 = add i32 %page_block.3429, 1
  %inc118 = add i64 %block_in_file.3428, 1
  %inc120 = add nuw i32 %relative_block.1430, 1
  %cmp104 = icmp eq i32 %inc120, %shr102
  br i1 %cmp104, label %if.end112.for.end121_crit_edge, label %if.end112.if.else107_crit_edge

if.end112.if.else107_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else107

if.end112.for.end121_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end121

for.end121:                                       ; preds = %if.end112.for.end121_crit_edge, %if.end100.for.end121_crit_edge
  %block_in_file.3.lcssa = phi i64 [ %block_in_file.2434, %if.end100.for.end121_crit_edge ], [ %inc118, %if.end112.for.end121_crit_edge ]
  %page_block.3.lcssa = phi i32 [ %page_block.2435, %if.end100.for.end121_crit_edge ], [ %inc117, %if.end112.for.end121_crit_edge ]
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %map_bh2) #8
  %94 = ptrtoint ptr %b_bdev122 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_bdev122, align 8
  %cmp55 = icmp ult i32 %page_block.3.lcssa, %shr
  br i1 %cmp55, label %for.end121.while.body_crit_edge, label %if.else131.loopexit

for.end121.while.body_crit_edge:                  ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.then75
  %extract.t455 = trunc i64 %inc81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select357, i32 %shr)
  %cmp123.not = icmp eq i32 %spec.select357, %shr
  br i1 %cmp123.not, label %while.end.if.end135_crit_edge, label %if.then125

while.end.if.end135_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then125:                                       ; preds = %while.end
  %shl126 = shl i32 %spec.select357, %conv
  tail call void @zero_user_segments(ptr noundef %1, i32 noundef %shl126, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select357)
  %cmp127 = icmp eq i32 %spec.select357, 0
  br i1 %cmp127, label %if.then129, label %if.then125.if.end135_crit_edge

if.then125.if.end135_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then129:                                       ; preds = %if.then125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !44
  %96 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %96, align 4
  %and.i.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !33

if.then.i.i.i:                                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #8
  tail call void @unlock_page(ptr noundef %1) #8
  br label %out

if.else131.loopexit:                              ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t558 = trunc i64 %block_in_file.3.lcssa to i32
  br label %if.else131

if.else131:                                       ; preds = %if.else131.loopexit, %for.end121.thread
  %block_in_file.3.lcssa.sink.off0 = phi i32 [ %extract.t557, %for.end121.thread ], [ %extract.t558, %if.else131.loopexit ]
  %99 = phi ptr [ %90, %for.end121.thread ], [ %95, %if.else131.loopexit ]
  br i1 %tobool132.not, label %if.else131.if.end135_crit_edge, label %if.else131.if.then133_crit_edge

if.else131.if.then133_crit_edge:                  ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then133

if.else131.if.end135_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then133:                                       ; preds = %if.else131.if.then133_crit_edge, %if.end54.if.then133_crit_edge
  %bdev.1.lcssa.ph510 = phi ptr [ %99, %if.else131.if.then133_crit_edge ], [ %bdev.0, %if.end54.if.then133_crit_edge ]
  %block_in_file.2.lcssa.off0.ph509 = phi i32 [ %block_in_file.3.lcssa.sink.off0, %if.else131.if.then133_crit_edge ], [ %extract.t, %if.end54.if.then133_crit_edge ]
  %100 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %and.i.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i363, !prof !33

if.then.i363:                                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !46
  unreachable

do.body7.i:                                       ; preds = %if.then133
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %100, align 4
  %and.i31.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !33

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %104, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %105, %if.end.i.i ]
  %106 = inttoptr i32 %retval.0.i.i to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %108)
  %cmp.i.not.i364 = icmp eq i32 %108, -1
  %109 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %100, align 4
  %and.i32.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i364, label %if.then17.i, label %do.end24.i, !prof !31

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !33

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %110, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %111, %if.end.i36.i ]
  %112 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %112, ptr noundef nonnull @.str.5) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !33

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %110, -1
  br label %SetPageMappedToDisk.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %1 to i32
  br label %SetPageMappedToDisk.exit

SetPageMappedToDisk.exit:                         ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %113, %if.end.i43.i ]
  %114 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 17, ptr noundef %114) #8
  br label %if.end135

if.end135:                                        ; preds = %SetPageMappedToDisk.exit, %if.else131.if.end135_crit_edge, %if.then125.if.end135_crit_edge, %while.end.if.end135_crit_edge
  %cmp123.not496 = phi i1 [ true, %if.else131.if.end135_crit_edge ], [ true, %SetPageMappedToDisk.exit ], [ false, %if.then125.if.end135_crit_edge ], [ true, %while.end.if.end135_crit_edge ]
  %bdev.1.lcssa494 = phi ptr [ %99, %if.else131.if.end135_crit_edge ], [ %bdev.1.lcssa.ph510, %SetPageMappedToDisk.exit ], [ %bdev.1436, %if.then125.if.end135_crit_edge ], [ %bdev.1436, %while.end.if.end135_crit_edge ]
  %block_in_file.2.lcssa.off0492 = phi i32 [ %block_in_file.3.lcssa.sink.off0, %if.else131.if.end135_crit_edge ], [ %block_in_file.2.lcssa.off0.ph509, %SetPageMappedToDisk.exit ], [ %extract.t455, %if.then125.if.end135_crit_edge ], [ %extract.t455, %while.end.if.end135_crit_edge ]
  %first_hole.0.ph.lcssa417489 = phi i32 [ %shr, %if.else131.if.end135_crit_edge ], [ %shr, %SetPageMappedToDisk.exit ], [ %spec.select357, %if.then125.if.end135_crit_edge ], [ %spec.select357, %while.end.if.end135_crit_edge ]
  %115 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %args, align 8
  %tobool136.not = icmp eq ptr %116, null
  br i1 %tobool136.not, label %if.end135.if.then150_crit_edge, label %land.lhs.true137

if.end135.if.then150_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then150

land.lhs.true137:                                 ; preds = %if.end135
  %last_block_in_bio = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 4
  %117 = ptrtoint ptr %last_block_in_bio to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %last_block_in_bio, align 8
  %119 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %blocks, align 8
  %sub139 = add i64 %120, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %sub139)
  %cmp140.not = icmp eq i64 %118, %sub139
  br i1 %cmp140.not, label %if.end146thread-pre-split, label %if.then142

if.then142:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #10
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %116, i32 0, i32 10
  %121 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @mpage_end_io, ptr %bi_end_io.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %116, i32 0, i32 2
  %122 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %op_flags.0, ptr %bi_opf.i.i, align 8
  tail call void @guard_bio_eod(ptr noundef nonnull %116) #8
  tail call void @submit_bio(ptr noundef nonnull %116) #8
  br label %if.then150.sink.split

if.end146thread-pre-split:                        ; preds = %land.lhs.true137
  %123 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr.pr = load ptr, ptr %args, align 8
  %phi.cmp532 = icmp eq ptr %.pr.pr, null
  br i1 %phi.cmp532, label %if.end146thread-pre-split.if.then150_crit_edge, label %if.end146thread-pre-split.if.end176_crit_edge

if.end146thread-pre-split.if.end176_crit_edge:    ; preds = %if.end146thread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

if.end146thread-pre-split.if.then150_crit_edge:   ; preds = %if.end146thread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then150

if.then150.sink.split:                            ; preds = %if.then182, %if.then142
  %124 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %args, align 8
  br label %if.then150

if.then150:                                       ; preds = %if.then150.sink.split, %if.end146thread-pre-split.if.then150_crit_edge, %if.end135.if.then150_crit_edge
  br i1 %cmp123.not496, label %if.then153, label %if.then150.if.end162_crit_edge

if.then150.if.end162_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add nsw i32 %conv, -9
  %.pre479 = zext i32 %.pre to i64
  br label %if.end162

if.then153:                                       ; preds = %if.then150
  %125 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %blocks, align 8
  %sub155 = add nsw i32 %conv, -9
  %sh_prom156 = zext i32 %sub155 to i64
  %shl157 = shl i64 %126, %sh_prom156
  %call158 = tail call i32 @bdev_read_page(ptr noundef %bdev.1.lcssa494, i64 noundef %shl157, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.then153.out_crit_edge, label %if.then153.if.end162_crit_edge

if.then153.if.end162_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end162

if.then153.out_crit_edge:                         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end162:                                        ; preds = %if.then153.if.end162_crit_edge, %if.then150.if.end162_crit_edge
  %sh_prom165.pre-phi = phi i64 [ %.pre479, %if.then150.if.end162_crit_edge ], [ %sh_prom156, %if.then153.if.end162_crit_edge ]
  %127 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %blocks, align 8
  %shl166 = shl i64 %128, %sh_prom165.pre-phi
  %129 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr_pages, align 8
  %131 = tail call i32 @llvm.umin.i32(i32 %130, i32 256) #8
  %conv.i = trunc i32 %131 to i16
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef %and.i, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #8
  %cmp.i372 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i372, label %land.lhs.true.i375, label %if.end162.if.then9.i_crit_edge

if.end162.if.then9.i_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.lhs.true.i375:                               ; preds = %if.end162
  %132 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i373 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i373 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flags.i, align 4
  %and3.i = and i32 %137, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i374 = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i374, label %land.lhs.true.i375.if.end216.sink.split_crit_edge, label %land.lhs.true.i375.land.rhs.i_crit_edge

land.lhs.true.i375.land.rhs.i_crit_edge:          ; preds = %land.lhs.true.i375
  br label %land.rhs.i

land.lhs.true.i375.if.end216.sink.split_crit_edge: ; preds = %land.lhs.true.i375
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end216.sink.split

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.lhs.true.i375.land.rhs.i_crit_edge
  %nr_vecs.addr.025.i = phi i32 [ %div.i, %while.body.i.land.rhs.i_crit_edge ], [ %131, %land.lhs.true.i375.land.rhs.i_crit_edge ]
  %nr_vecs.addr.0.off.i = add nsw i32 %nr_vecs.addr.025.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %nr_vecs.addr.0.off.i)
  %138 = icmp ult i32 %nr_vecs.addr.0.off.i, 3
  br i1 %138, label %land.rhs.i.if.end216.sink.split_crit_edge, label %while.body.i

land.rhs.i.if.end216.sink.split_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end216.sink.split

while.body.i:                                     ; preds = %land.rhs.i
  %div.i = sdiv i32 %nr_vecs.addr.025.i, 2
  %conv6.i = trunc i32 %div.i to i16
  %call.i20.i = tail call ptr @bio_alloc_bioset(i32 noundef %and.i, i16 noundef zeroext %conv6.i, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i = icmp eq ptr %call.i20.i, null
  br i1 %tobool4.not.i, label %while.body.i.land.rhs.i_crit_edge, label %while.body.i.if.then9.i_crit_edge

while.body.i.if.then9.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

if.then9.i:                                       ; preds = %while.body.i.if.then9.i_crit_edge, %if.end162.if.then9.i_crit_edge
  %bio.1.i = phi ptr [ %call.i.i, %if.end162.if.then9.i_crit_edge ], [ %call.i20.i, %while.body.i.if.then9.i_crit_edge ]
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 3
  %139 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %140, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 1
  %141 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %142, %bdev.1.lcssa494
  br i1 %cmp.not.i.i, label %if.then9.i.mpage_alloc.exit_crit_edge, label %if.then.i.i376

if.then9.i.mpage_alloc.exit_crit_edge:            ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mpage_alloc.exit

if.then.i.i376:                                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i8.i.i = and i16 %140, -2177
  %143 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %mpage_alloc.exit

mpage_alloc.exit:                                 ; preds = %if.then.i.i376, %if.then9.i.mpage_alloc.exit_crit_edge
  %144 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %bdev.1.lcssa494, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %bio.1.i) #8
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 8
  %145 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %shl166, ptr %bi_iter.i, align 8
  %146 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %bio.1.i, ptr %args, align 8
  br label %if.end176

if.end176:                                        ; preds = %mpage_alloc.exit, %if.end146thread-pre-split.if.end176_crit_edge
  %shl177 = shl i32 %first_hole.0.ph.lcssa417489, %conv
  %147 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %args, align 8
  %call179 = tail call i32 @bio_add_page(ptr noundef %148, ptr noundef %1, i32 noundef %shl177, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call179, i32 %shl177)
  %cmp180 = icmp slt i32 %call179, %shl177
  br i1 %cmp180, label %if.then182, label %if.end186

if.then182:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %args, align 8
  %bi_end_io.i377 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 10
  %151 = ptrtoint ptr %bi_end_io.i377 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @mpage_end_io, ptr %bi_end_io.i377, align 8
  %bi_opf.i.i378 = getelementptr inbounds %struct.bio, ptr %150, i32 0, i32 2
  %152 = ptrtoint ptr %bi_opf.i.i378 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %op_flags.0, ptr %bi_opf.i.i378, align 8
  tail call void @guard_bio_eod(ptr noundef %150) #8
  tail call void @submit_bio(ptr noundef %150) #8
  br label %if.then150.sink.split

if.end186:                                        ; preds = %if.end176
  %first_logical_block187 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 6
  %153 = ptrtoint ptr %first_logical_block187 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %first_logical_block187, align 8
  %155 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %b_size, align 8
  %157 = ptrtoint ptr %map_bh2 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %map_bh2, align 4
  %159 = and i32 %158, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool194.not = icmp eq i32 %159, 0
  br i1 %tobool194.not, label %lor.lhs.false, label %land.lhs.true195

land.lhs.true195:                                 ; preds = %if.end186
  %shr192 = lshr i32 %156, %conv
  %conv190 = sub i32 %block_in_file.2.lcssa.off0492, %154
  call void @__sanitizer_cov_trace_cmp4(i32 %conv190, i32 %shr192)
  %cmp196 = icmp ne i32 %conv190, %shr192
  %160 = and i1 %cmp123.not496, %cmp196
  br i1 %160, label %land.lhs.true195.if.else204_crit_edge, label %land.lhs.true195.if.then200_crit_edge

land.lhs.true195.if.then200_crit_edge:            ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then200

land.lhs.true195.if.else204_crit_edge:            ; preds = %land.lhs.true195
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else204

lor.lhs.false:                                    ; preds = %if.end186
  br i1 %cmp123.not496, label %lor.lhs.false.if.else204_crit_edge, label %lor.lhs.false.if.then200_crit_edge

lor.lhs.false.if.then200_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then200

lor.lhs.false.if.else204_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else204

if.then200:                                       ; preds = %lor.lhs.false.if.then200_crit_edge, %land.lhs.true195.if.then200_crit_edge
  %161 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %args, align 8
  %bi_end_io.i379 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 10
  %163 = ptrtoint ptr %bi_end_io.i379 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr @mpage_end_io, ptr %bi_end_io.i379, align 8
  %bi_opf.i.i380 = getelementptr inbounds %struct.bio, ptr %162, i32 0, i32 2
  %164 = ptrtoint ptr %bi_opf.i.i380 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %op_flags.0, ptr %bi_opf.i.i380, align 8
  tail call void @guard_bio_eod(ptr noundef %162) #8
  tail call void @submit_bio(ptr noundef %162) #8
  %165 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %args, align 8
  br label %out

if.else204:                                       ; preds = %lor.lhs.false.if.else204_crit_edge, %land.lhs.true195.if.else204_crit_edge
  %sub205 = add nsw i32 %shr, -1
  %arrayidx206 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %sub205
  %166 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx206, align 8
  %last_block_in_bio207 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 4
  %168 = ptrtoint ptr %last_block_in_bio207 to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %167, ptr %last_block_in_bio207, align 8
  br label %out

out:                                              ; preds = %if.then219, %PageUptodate.exit, %if.else204, %if.then200, %if.then153.out_crit_edge, %SetPageUptodate.exit
  %169 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %args, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %blocks) #8
  ret ptr %170

confused:                                         ; preds = %land.lhs.true92.confused_crit_edge, %if.end86.confused_crit_edge, %if.end27.i.confused_crit_edge, %if.then23.i, %SetPageUptodate.exit.i, %if.then60.confused_crit_edge, %PagePrivate.exit.confused_crit_edge
  %171 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr395 = load ptr, ptr %args, align 8
  %tobool211.not = icmp eq ptr %.pr395, null
  br i1 %tobool211.not, label %confused.if.end216_crit_edge, label %if.then212

confused.if.end216_crit_edge:                     ; preds = %confused
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end216

if.then212:                                       ; preds = %confused
  call void @__sanitizer_cov_trace_pc() #10
  %bi_end_io.i381 = getelementptr inbounds %struct.bio, ptr %.pr395, i32 0, i32 10
  %172 = ptrtoint ptr %bi_end_io.i381 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @mpage_end_io, ptr %bi_end_io.i381, align 8
  %bi_opf.i.i382 = getelementptr inbounds %struct.bio, ptr %.pr395, i32 0, i32 2
  %173 = ptrtoint ptr %bi_opf.i.i382 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %op_flags.0, ptr %bi_opf.i.i382, align 8
  tail call void @guard_bio_eod(ptr noundef nonnull %.pr395) #8
  tail call void @submit_bio(ptr noundef nonnull %.pr395) #8
  br label %if.end216.sink.split

if.end216.sink.split:                             ; preds = %if.then212, %land.rhs.i.if.end216.sink.split_crit_edge, %land.lhs.true.i375.if.end216.sink.split_crit_edge
  %174 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %args, align 8
  br label %if.end216

if.end216:                                        ; preds = %if.end216.sink.split, %confused.if.end216_crit_edge
  %175 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %175, align 4
  %and.i.i383 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i383)
  %tobool.not.i.i384 = icmp eq i32 %and.i.i383, 0
  br i1 %tobool.not.i.i384, label %if.end.i.i387, label %if.then.i.i386, !prof !33

if.then.i.i386:                                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i385 = add i32 %177, -1
  br label %_compound_head.exit.i391

if.end.i.i387:                                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i391

_compound_head.exit.i391:                         ; preds = %if.end.i.i387, %if.then.i.i386
  %retval.0.i.i388 = phi i32 [ %sub.i.i385, %if.then.i.i386 ], [ %178, %if.end.i.i387 ]
  %179 = inttoptr i32 %retval.0.i.i388 to ptr
  %180 = getelementptr inbounds %struct.page, ptr %179, i32 0, i32 1
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile i32, ptr %180, align 4
  %and.i.i.i.i389 = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i389)
  %tobool.not.i.i.i390 = icmp eq i32 %and.i.i.i.i389, 0
  br i1 %tobool.not.i.i.i390, label %folio_flags.exit.i.i, label %if.then.i.i.i392, !prof !33

if.then.i.i.i392:                                 ; preds = %_compound_head.exit.i391
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %179, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i391
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %179, align 4
  %185 = and i32 %184, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.i.not.i = icmp eq i32 %185, 0
  br i1 %tobool.i.not.i, label %if.then219, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @unlock_page(ptr noundef %1) #8
  br label %out

if.then219:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %get_block220 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 7
  %186 = ptrtoint ptr %get_block220 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %get_block220, align 4
  %call221 = tail call i32 @block_read_full_page(ptr noundef %1, ptr noundef %187) #8
  br label %out
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpage_readpage(ptr noundef %page, ptr noundef %get_block) #0 align 64 {
entry:
  %args = alloca %struct.mpage_readpage_args, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %args) #8
  %0 = call ptr @memset(ptr %args, i32 0, i32 136)
  %page1 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %page1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %page, ptr %page1, align 4
  %nr_pages = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nr_pages, align 8
  %get_block2 = getelementptr inbounds %struct.mpage_readpage_args, ptr %args, i32 0, i32 7
  %3 = ptrtoint ptr %get_block2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %get_block, ptr %get_block2, align 4
  %call = call fastcc ptr @do_mpage_readpage(ptr noundef nonnull %args)
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %args, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mpage_end_io, ptr %bi_end_io.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bi_opf.i.i, align 8
  call void @guard_bio_eod(ptr noundef nonnull %call) #8
  call void @submit_bio(ptr noundef nonnull %call) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %args) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clean_page_buffers(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clean_buffers(ptr noundef %page, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clean_buffers(ptr noundef %page, i32 noundef %first_unmapped) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !31

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %PagePrivate.exit.cleanup_crit_edge, label %do.body

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %PagePrivate.exit
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i35 = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i35, label %if.then.i36, label %PagePrivate.exit39, !prof !31

if.then.i36:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

PagePrivate.exit39:                               ; preds = %do.body
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %do.body7, label %do.end13, !prof !31

do.body7:                                         ; preds = %PagePrivate.exit39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #8, !srcloc !49
  unreachable

do.end13:                                         ; preds = %PagePrivate.exit39
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %private, align 4
  %12 = inttoptr i32 %11 to ptr
  br label %do.body14

do.body14:                                        ; preds = %if.end16.do.body14_crit_edge, %do.end13
  %bh.0 = phi ptr [ %12, %do.end13 ], [ %14, %if.end16.do.body14_crit_edge ]
  %buffer_counter.0 = phi i32 [ 0, %do.end13 ], [ %inc, %if.end16.do.body14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %buffer_counter.0, i32 %first_unmapped)
  %cmp = icmp eq i32 %buffer_counter.0, %first_unmapped
  br i1 %cmp, label %do.body14.do.end19_crit_edge, label %if.end16

do.body14.do.end19_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end16:                                         ; preds = %do.body14
  %inc = add i32 %buffer_counter.0, 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #8
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %13 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_this_page, align 4
  %cmp18.not = icmp eq ptr %14, %12
  br i1 %cmp18.not, label %if.end16.do.end19_crit_edge, label %if.end16.do.body14_crit_edge

if.end16.do.body14_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.end16.do.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

do.end19:                                         ; preds = %if.end16.do.end19_crit_edge, %do.body14.do.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @buffer_heads_over_limit to i32))
  %15 = load i32, ptr @buffer_heads_over_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %do.end19.cleanup_crit_edge, label %land.lhs.true

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end19
  %16 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !33

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !33

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %20, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.cleanup_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.cleanup_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %call24 = tail call i32 @try_to_free_buffers(ptr noundef %page) #8
  br label %cleanup

cleanup:                                          ; preds = %PageUptodate.exit, %folio_flags.exit.i.i.cleanup_crit_edge, %do.end19.cleanup_crit_edge, %PagePrivate.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef %get_block) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  %mpd = alloca %struct.mpage_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #8
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug) #8
  %tobool.not = icmp eq ptr %get_block, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @generic_writepages(ptr noundef %mapping, ptr noundef %wbc) #8
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpd) #8
  %1 = ptrtoint ptr %mpd to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %mpd, align 8
  store ptr null, ptr %mpd, align 8
  %last_block_in_bio = getelementptr inbounds %struct.mpage_data, ptr %mpd, i32 0, i32 1
  %2 = ptrtoint ptr %last_block_in_bio to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %last_block_in_bio, align 8
  %get_block1 = getelementptr inbounds %struct.mpage_data, ptr %mpd, i32 0, i32 2
  %3 = ptrtoint ptr %get_block1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %get_block, ptr %get_block1, align 8
  %use_writepage = getelementptr inbounds %struct.mpage_data, ptr %mpd, i32 0, i32 3
  %4 = ptrtoint ptr %use_writepage to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %use_writepage, align 4
  %call2 = call i32 @write_cache_pages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull @__mpage_writepage, ptr noundef nonnull %mpd) #8
  %5 = ptrtoint ptr %mpd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mpd, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.else.if.end_crit_edge, label %if.then5

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %7 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 10
  %9 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mpage_end_io, ptr %bi_end_io.i, align 8
  %or.i.i = select i1 %cmp, i32 2049, i32 1
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %bi_opf.i.i, align 8
  call void @guard_bio_eod(ptr noundef nonnull %6) #8
  call void @submit_bio(ptr noundef nonnull %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpd) #8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call2, %if.end ], [ %call, %if.then ]
  call void @blk_finish_plug(ptr noundef nonnull %plug) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_cache_pages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__mpage_writepage(ptr noundef %page, ptr noundef %wbc, ptr nocapture noundef %data) #0 align 64 {
entry:
  %blocks = alloca [8 x i64], align 8
  %map_bh = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %mapping2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %7 to i32
  %shr = lshr i32 4096, %conv
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %blocks) #8
  %8 = call ptr @memset(ptr %blocks, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %map_bh) #8
  %9 = call ptr @memset(ptr %map_bh, i32 255, i32 104)
  %call = tail call fastcc i64 @i_size_read(ptr noundef %5)
  %punt_to_cgroup.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %10 = ptrtoint ptr %punt_to_cgroup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %punt_to_cgroup.i, align 4
  %11 = and i16 %bf.load.i, 128
  %12 = zext i16 %11 to i32
  %13 = shl nuw nsw i32 %12, 15
  %sync_mode.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %14 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sync_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp eq i32 %15, 1
  %16 = or i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i)
  %17 = icmp ult i16 %bf.load.i, 16384
  %18 = or i32 %13, 1048576
  %spec.select.i = select i1 %17, i32 %13, i32 %18
  %flags.0.i = select i1 %cmp.i, i32 %16, i32 %spec.select.i
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !31

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  %23 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %do.body83, label %if.then

if.then:                                          ; preds = %PagePrivate.exit
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i392 = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i392, label %if.then.i393, label %PagePrivate.exit396, !prof !31

if.then.i393:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

PagePrivate.exit396:                              ; preds = %if.then
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not = icmp eq i32 %28, 0
  br i1 %tobool7.not, label %do.body12, label %do.end17, !prof !31

do.body12:                                        ; preds = %PagePrivate.exit396
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 497, 0\0A.popsection", ""() #8, !srcloc !50
  unreachable

do.end17:                                         ; preds = %PagePrivate.exit396
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %private, align 4
  %31 = inttoptr i32 %30 to ptr
  br label %do.body18

do.body18:                                        ; preds = %do.cond74.do.body18_crit_edge, %do.end17
  %page_block.0 = phi i32 [ 0, %do.end17 ], [ %page_block.1, %do.cond74.do.body18_crit_edge ]
  %first_unmapped.0 = phi i32 [ %shr, %do.end17 ], [ %first_unmapped.1, %do.cond74.do.body18_crit_edge ]
  %bdev.0 = phi ptr [ null, %do.end17 ], [ %bdev.1, %do.cond74.do.body18_crit_edge ]
  %boundary.0 = phi i32 [ 0, %do.end17 ], [ %boundary.1, %do.cond74.do.body18_crit_edge ]
  %boundary_block.0 = phi i64 [ 0, %do.end17 ], [ %boundary_block.2, %do.cond74.do.body18_crit_edge ]
  %boundary_bdev.0 = phi ptr [ null, %do.end17 ], [ %boundary_bdev.2, %do.cond74.do.body18_crit_edge ]
  %bh.0 = phi ptr [ %31, %do.end17 ], [ %60, %do.cond74.do.body18_crit_edge ]
  %32 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %bh.0, align 4
  %34 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool21.not = icmp eq i32 %34, 0
  br i1 %tobool21.not, label %do.end37, label %do.body29, !prof !33

do.body29:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 503, 0\0A.popsection", ""() #8, !srcloc !51
  unreachable

do.end37:                                         ; preds = %do.body18
  %35 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %bh.0, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool39.not = icmp eq i32 %37, 0
  br i1 %tobool39.not, label %if.then40, label %if.end48

if.then40:                                        ; preds = %do.end37
  %38 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %bh.0, align 4
  %40 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool42.not = icmp eq i32 %40, 0
  br i1 %tobool42.not, label %if.end44, label %if.then40.confused_crit_edge

if.then40.confused_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end44:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %first_unmapped.0, i32 %shr)
  %cmp = icmp eq i32 %first_unmapped.0, %shr
  %spec.select = select i1 %cmp, i32 %page_block.0, i32 %first_unmapped.0
  br label %do.cond74

if.end48:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_cmp4(i32 %first_unmapped.0, i32 %shr)
  %cmp49.not = icmp eq i32 %first_unmapped.0, %shr
  br i1 %cmp49.not, label %if.end52, label %if.end48.confused_crit_edge

if.end48.confused_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end52:                                         ; preds = %if.end48
  %41 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %bh.0, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool54.not = icmp eq i32 %43, 0
  br i1 %tobool54.not, label %if.end52.confused_crit_edge, label %lor.lhs.false

if.end52.confused_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

lor.lhs.false:                                    ; preds = %if.end52
  %44 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i405 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i405)
  %tobool56.not = icmp eq i32 %and1.i.i405, 0
  br i1 %tobool56.not, label %lor.lhs.false.confused_crit_edge, label %if.end58

lor.lhs.false.confused_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end58:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_block.0)
  %tobool59.not = icmp eq i32 %page_block.0, 0
  br i1 %tobool59.not, label %if.end58.if.end65_crit_edge, label %if.then60

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then60:                                        ; preds = %if.end58
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %46 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %b_blocknr, align 8
  %sub = add i32 %page_block.0, -1
  %arrayidx = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %sub
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx, align 8
  %add = add i64 %49, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %add)
  %cmp61.not = icmp eq i64 %47, %add
  br i1 %cmp61.not, label %if.then60.if.end65_crit_edge, label %if.then60.confused_crit_edge

if.then60.confused_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.then60.if.end65_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.end65:                                         ; preds = %if.then60.if.end65_crit_edge, %if.end58.if.end65_crit_edge
  %b_blocknr66 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %50 = ptrtoint ptr %b_blocknr66 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %b_blocknr66, align 8
  %inc = add i32 %page_block.0, 1
  %arrayidx67 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %page_block.0
  %52 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx67, align 8
  %53 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bh.0, align 4
  %shr.i.i406 = lshr i32 %54, 9
  %and1.i.i407 = and i32 %shr.i.i406, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i407)
  %tobool69.not = icmp eq i32 %and1.i.i407, 0
  br i1 %tobool69.not, label %if.end65.if.end72_crit_edge, label %if.then70

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %55 = ptrtoint ptr %b_bdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b_bdev, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end65.if.end72_crit_edge
  %boundary_block.1 = phi i64 [ %51, %if.then70 ], [ %boundary_block.0, %if.end65.if.end72_crit_edge ]
  %boundary_bdev.1 = phi ptr [ %56, %if.then70 ], [ %boundary_bdev.0, %if.end65.if.end72_crit_edge ]
  %b_bdev73 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %57 = ptrtoint ptr %b_bdev73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_bdev73, align 8
  br label %do.cond74

do.cond74:                                        ; preds = %if.end72, %if.end44
  %page_block.1 = phi i32 [ %inc, %if.end72 ], [ %page_block.0, %if.end44 ]
  %first_unmapped.1 = phi i32 [ %shr, %if.end72 ], [ %spec.select, %if.end44 ]
  %bdev.1 = phi ptr [ %58, %if.end72 ], [ %bdev.0, %if.end44 ]
  %boundary.1 = phi i32 [ %and1.i.i407, %if.end72 ], [ %boundary.0, %if.end44 ]
  %boundary_block.2 = phi i64 [ %boundary_block.1, %if.end72 ], [ %boundary_block.0, %if.end44 ]
  %boundary_bdev.2 = phi ptr [ %boundary_bdev.1, %if.end72 ], [ %boundary_bdev.0, %if.end44 ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %59 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_this_page, align 4
  %cmp75.not = icmp eq ptr %60, %31
  br i1 %cmp75.not, label %cleanup, label %do.cond74.do.body18_crit_edge

do.cond74.do.body18_crit_edge:                    ; preds = %do.cond74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

cleanup:                                          ; preds = %do.cond74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_unmapped.1)
  %tobool78.not.not = icmp eq i32 %first_unmapped.1, 0
  br i1 %tobool78.not.not, label %cleanup.confused_crit_edge, label %cleanup.page_is_mapped_crit_edge

cleanup.page_is_mapped_crit_edge:                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_is_mapped

cleanup.confused_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

do.body83:                                        ; preds = %PagePrivate.exit
  %61 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i418 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i418)
  %tobool.not.i.i419 = icmp eq i32 %and.i.i418, 0
  br i1 %tobool.not.i.i419, label %if.end.i.i422, label %if.then.i.i421, !prof !33

if.then.i.i421:                                   ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i420 = add i32 %63, -1
  br label %_compound_head.exit.i424

if.end.i.i422:                                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i424

_compound_head.exit.i424:                         ; preds = %if.end.i.i422, %if.then.i.i421
  %retval.0.i.i423 = phi i32 [ %sub.i.i420, %if.then.i.i421 ], [ %64, %if.end.i.i422 ]
  %65 = inttoptr i32 %retval.0.i.i423 to ptr
  %66 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %66, align 4
  %and.i.i.i.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !33

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i424
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %65, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i424
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %65, align 4
  %71 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i.not.i = icmp eq i32 %71, 0
  br i1 %tobool.i.not.i, label %do.body95, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %72 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index, align 4
  %sub106 = add i64 %call, -1
  %sh_prom107 = zext i8 %7 to i64
  %shr108 = ashr i64 %sub106, %sh_prom107
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 2
  %74 = ptrtoint ptr %b_page to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %page, ptr %b_page, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %7)
  %cmp109461.not = icmp ugt i8 %7, 12
  br i1 %cmp109461.not, label %do.body157, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %PageUptodate.exit
  %conv104 = zext i32 %73 to i64
  %sub105 = sub nsw i32 12, %conv
  %sh_prom = zext i32 %sub105 to i64
  %shl = shl i64 %conv104, %sh_prom
  %shl111 = shl nuw i32 1, %conv
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 4
  %get_block = getelementptr inbounds %struct.mpage_data, ptr %data, i32 0, i32 2
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 6
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %map_bh, i32 0, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

do.body95:                                        ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 549, 0\0A.popsection", ""() #8, !srcloc !52
  unreachable

for.cond:                                         ; preds = %if.end136
  %inc146 = add i64 %block_in_file.0462, 1
  %exitcond.not = icmp eq i32 %inc138, %umax
  br i1 %exitcond.not, label %for.cond.page_is_mapped.loopexit_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.page_is_mapped.loopexit_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_is_mapped.loopexit

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %boundary_bdev.4466 = phi ptr [ null, %for.body.lr.ph ], [ %boundary_bdev.5, %for.cond.for.body_crit_edge ]
  %boundary_block.4465 = phi i64 [ 0, %for.body.lr.ph ], [ %boundary_block.5, %for.cond.for.body_crit_edge ]
  %page_block.2463 = phi i32 [ 0, %for.body.lr.ph ], [ %inc138, %for.cond.for.body_crit_edge ]
  %block_in_file.0462 = phi i64 [ %shl, %for.body.lr.ph ], [ %inc146, %for.cond.for.body_crit_edge ]
  %75 = ptrtoint ptr %map_bh to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %map_bh, align 8
  %76 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %shl111, ptr %b_size, align 8
  %77 = ptrtoint ptr %get_block to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_block, align 8
  %call112 = call i32 %78(ptr noundef %5, i64 noundef %block_in_file.0462, ptr noundef nonnull %map_bh, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %for.body.confused_crit_edge

for.body.confused_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.end115:                                        ; preds = %for.body
  %79 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %map_bh, align 8
  %81 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool117.not = icmp eq i32 %81, 0
  br i1 %tobool117.not, label %if.end115.if.end119_crit_edge, label %if.then118

if.end115.if.end119_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_bdev.i, align 8
  %84 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %b_blocknr.i, align 8
  call void @clean_bdev_aliases(ptr noundef %83, i64 noundef %85, i64 noundef 1) #8
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end115.if.end119_crit_edge
  %86 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %map_bh, align 8
  %88 = and i32 %87, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool121.not = icmp eq i32 %88, 0
  br i1 %tobool121.not, label %if.end119.if.end125_crit_edge, label %if.then122

if.end119.if.end125_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %b_blocknr.i, align 8
  %91 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_bdev.i, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end119.if.end125_crit_edge
  %boundary_block.5 = phi i64 [ %90, %if.then122 ], [ %boundary_block.4465, %if.end119.if.end125_crit_edge ]
  %boundary_bdev.5 = phi ptr [ %92, %if.then122 ], [ %boundary_bdev.4466, %if.end119.if.end125_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_block.2463)
  %tobool126.not = icmp eq i32 %page_block.2463, 0
  br i1 %tobool126.not, label %if.end125.if.end136_crit_edge, label %if.then127

if.end125.if.end136_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.then127:                                       ; preds = %if.end125
  %93 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %b_blocknr.i, align 8
  %sub129 = add nsw i32 %page_block.2463, -1
  %arrayidx130 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %sub129
  %95 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx130, align 8
  %add131 = add i64 %96, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %add131)
  %cmp132.not = icmp eq i64 %94, %add131
  br i1 %cmp132.not, label %if.then127.if.end136_crit_edge, label %if.then127.confused_crit_edge

if.then127.confused_crit_edge:                    ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

if.then127.if.end136_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136

if.end136:                                        ; preds = %if.then127.if.end136_crit_edge, %if.end125.if.end136_crit_edge
  %97 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %b_blocknr.i, align 8
  %inc138 = add nuw nsw i32 %page_block.2463, 1
  %arrayidx139 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %page_block.2463
  %99 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %arrayidx139, align 8
  %100 = ptrtoint ptr %map_bh to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %map_bh, align 8
  %102 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_bdev.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %block_in_file.0462, i64 %shr108)
  %cmp142 = icmp eq i64 %block_in_file.0462, %shr108
  br i1 %cmp142, label %if.end136.page_is_mapped.loopexit_crit_edge, label %for.cond

if.end136.page_is_mapped.loopexit_crit_edge:      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_is_mapped.loopexit

do.body157:                                       ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

page_is_mapped.loopexit:                          ; preds = %if.end136.page_is_mapped.loopexit_crit_edge, %for.cond.page_is_mapped.loopexit_crit_edge
  %first_unmapped.3.ph = phi i32 [ %umax, %for.cond.page_is_mapped.loopexit_crit_edge ], [ %inc138, %if.end136.page_is_mapped.loopexit_crit_edge ]
  %shr.i.i412.le = lshr i32 %101, 9
  %and1.i.i413.le = and i32 %shr.i.i412.le, 1
  br label %page_is_mapped

page_is_mapped:                                   ; preds = %page_is_mapped.loopexit, %cleanup.page_is_mapped_crit_edge
  %first_unmapped.3 = phi i32 [ %first_unmapped.1, %cleanup.page_is_mapped_crit_edge ], [ %first_unmapped.3.ph, %page_is_mapped.loopexit ]
  %bdev.5 = phi ptr [ %bdev.1, %cleanup.page_is_mapped_crit_edge ], [ %103, %page_is_mapped.loopexit ]
  %boundary.5 = phi i32 [ %boundary.1, %cleanup.page_is_mapped_crit_edge ], [ %and1.i.i413.le, %page_is_mapped.loopexit ]
  %boundary_block.7 = phi i64 [ %boundary_block.2, %cleanup.page_is_mapped_crit_edge ], [ %boundary_block.5, %page_is_mapped.loopexit ]
  %boundary_bdev.7 = phi ptr [ %boundary_bdev.2, %cleanup.page_is_mapped_crit_edge ], [ %boundary_bdev.5, %page_is_mapped.loopexit ]
  %104 = lshr i64 %call, 12
  %conv167 = trunc i64 %104 to i32
  %index168 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %105 = ptrtoint ptr %index168 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %index168, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv167)
  %cmp169.not = icmp ult i32 %106, %conv167
  br i1 %cmp169.not, label %page_is_mapped.if.end182_crit_edge, label %if.then171

page_is_mapped.if.end182_crit_edge:               ; preds = %page_is_mapped
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

if.then171:                                       ; preds = %page_is_mapped
  %107 = trunc i64 %call to i32
  %conv172 = and i32 %107, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv167)
  %cmp174 = icmp ugt i32 %106, %conv167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv172)
  %tobool177.not = icmp eq i32 %conv172, 0
  %or.cond = select i1 %cmp174, i1 true, i1 %tobool177.not
  br i1 %or.cond, label %if.then171.confused_crit_edge, label %cleanup180.thread

if.then171.confused_crit_edge:                    ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %confused

cleanup180.thread:                                ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  call void @zero_user_segments(ptr noundef %page, i32 noundef %conv172, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %if.end182

if.end182:                                        ; preds = %cleanup180.thread, %page_is_mapped.if.end182_crit_edge
  %tobool183.not = icmp eq ptr %1, null
  br i1 %tobool183.not, label %if.end182.if.end190_crit_edge, label %land.lhs.true

if.end182.if.end190_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

land.lhs.true:                                    ; preds = %if.end182
  %last_block_in_bio = getelementptr inbounds %struct.mpage_data, ptr %data, i32 0, i32 1
  %108 = ptrtoint ptr %last_block_in_bio to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %last_block_in_bio, align 8
  %110 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %blocks, align 8
  %sub185 = add i64 %111, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %sub185)
  %cmp186.not = icmp eq i64 %109, %sub185
  br i1 %cmp186.not, label %land.lhs.true.if.end190_crit_edge, label %if.then188

land.lhs.true.if.end190_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.then188:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 10
  %112 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @mpage_end_io, ptr %bi_end_io.i, align 8
  %or.i.i = or i32 %flags.0.i, 1
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %113 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %or.i.i, ptr %bi_opf.i.i, align 8
  call void @guard_bio_eod(ptr noundef nonnull %1) #8
  call void @submit_bio(ptr noundef nonnull %1) #8
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %land.lhs.true.if.end190_crit_edge, %if.end182.if.end190_crit_edge
  %bio.0 = phi ptr [ null, %if.then188 ], [ %1, %land.lhs.true.if.end190_crit_edge ], [ null, %if.end182.if.end190_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %first_unmapped.3, i32 %shr)
  %cmp194 = icmp eq i32 %first_unmapped.3, %shr
  %sub198 = add nsw i32 %conv, -9
  %sh_prom199 = zext i32 %sub198 to i64
  %wb.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 6
  %i_write_hint = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 21
  %shl217 = shl i32 %first_unmapped.3, %conv
  %or.i.i431 = or i32 %flags.0.i, 1
  br label %alloc_new

alloc_new:                                        ; preds = %if.then221, %if.end190
  %bio.1 = phi ptr [ %bio.0, %if.end190 ], [ null, %if.then221 ]
  %cmp191 = icmp eq ptr %bio.1, null
  br i1 %cmp191, label %if.then193, label %alloc_new.if.end216_crit_edge

alloc_new.if.end216_crit_edge:                    ; preds = %alloc_new
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end216

if.then193:                                       ; preds = %alloc_new
  br i1 %cmp194, label %if.then196, label %if.then193.if.end205_crit_edge

if.then193.if.end205_crit_edge:                   ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then196:                                       ; preds = %if.then193
  %114 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %blocks, align 8
  %shl200 = shl i64 %115, %sh_prom199
  %call201 = call i32 @bdev_write_page(ptr noundef %bdev.5, i64 noundef %shl200, ptr noundef %page, ptr noundef %wbc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201)
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %if.then196.out_crit_edge, label %if.then196.if.end205_crit_edge

if.then196.if.end205_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then196.out_crit_edge:                         ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end205:                                        ; preds = %if.then196.if.end205_crit_edge, %if.then193.if.end205_crit_edge
  %116 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %blocks, align 8
  %shl209 = shl i64 %117, %sh_prom199
  %call.i.i = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #8
  %cmp.i425 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i425, label %land.lhs.true.i, label %if.end205.if.then9.i_crit_edge

if.end205.if.then9.i_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.lhs.true.i:                                  ; preds = %if.end205
  %118 = call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i426 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i426 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i, align 4
  %and3.i = and i32 %123, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end261_crit_edge, label %land.rhs.i.preheader

land.lhs.true.i.if.end261_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end261

land.rhs.i.preheader:                             ; preds = %land.lhs.true.i
  %call.i20.i = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 128, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i = icmp eq ptr %call.i20.i, null
  br i1 %tobool4.not.i, label %land.rhs.i.1, label %land.rhs.i.preheader.if.then9.i_crit_edge

land.rhs.i.preheader.if.then9.i_crit_edge:        ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.1:                                     ; preds = %land.rhs.i.preheader
  %call.i20.i.1 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 64, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i.1 = icmp eq ptr %call.i20.i.1, null
  br i1 %tobool4.not.i.1, label %land.rhs.i.2, label %land.rhs.i.1.if.then9.i_crit_edge

land.rhs.i.1.if.then9.i_crit_edge:                ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.2:                                     ; preds = %land.rhs.i.1
  %call.i20.i.2 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 32, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i.2 = icmp eq ptr %call.i20.i.2, null
  br i1 %tobool4.not.i.2, label %land.rhs.i.3, label %land.rhs.i.2.if.then9.i_crit_edge

land.rhs.i.2.if.then9.i_crit_edge:                ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.3:                                     ; preds = %land.rhs.i.2
  %call.i20.i.3 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 16, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i.3 = icmp eq ptr %call.i20.i.3, null
  br i1 %tobool4.not.i.3, label %land.rhs.i.4, label %land.rhs.i.3.if.then9.i_crit_edge

land.rhs.i.3.if.then9.i_crit_edge:                ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.4:                                     ; preds = %land.rhs.i.3
  %call.i20.i.4 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 8, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i.4 = icmp eq ptr %call.i20.i.4, null
  br i1 %tobool4.not.i.4, label %land.rhs.i.5, label %land.rhs.i.4.if.then9.i_crit_edge

land.rhs.i.4.if.then9.i_crit_edge:                ; preds = %land.rhs.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.5:                                     ; preds = %land.rhs.i.4
  %call.i20.i.5 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 4, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i.5 = icmp eq ptr %call.i20.i.5, null
  br i1 %tobool4.not.i.5, label %land.rhs.i.6, label %land.rhs.i.5.if.then9.i_crit_edge

land.rhs.i.5.if.then9.i_crit_edge:                ; preds = %land.rhs.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.6:                                     ; preds = %land.rhs.i.5
  %call.i20.i.6 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 2, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i.6 = icmp eq ptr %call.i20.i.6, null
  br i1 %tobool4.not.i.6, label %land.rhs.i.7, label %land.rhs.i.6.if.then9.i_crit_edge

land.rhs.i.6.if.then9.i_crit_edge:                ; preds = %land.rhs.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.7:                                     ; preds = %land.rhs.i.6
  %call.i20.i.7 = call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #8
  %tobool4.not.i.7 = icmp eq ptr %call.i20.i.7, null
  br i1 %tobool4.not.i.7, label %land.rhs.i.7.if.end261_crit_edge, label %land.rhs.i.7.if.then9.i_crit_edge

land.rhs.i.7.if.then9.i_crit_edge:                ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

land.rhs.i.7.if.end261_crit_edge:                 ; preds = %land.rhs.i.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end261

if.then9.i:                                       ; preds = %land.rhs.i.7.if.then9.i_crit_edge, %land.rhs.i.6.if.then9.i_crit_edge, %land.rhs.i.5.if.then9.i_crit_edge, %land.rhs.i.4.if.then9.i_crit_edge, %land.rhs.i.3.if.then9.i_crit_edge, %land.rhs.i.2.if.then9.i_crit_edge, %land.rhs.i.1.if.then9.i_crit_edge, %land.rhs.i.preheader.if.then9.i_crit_edge, %if.end205.if.then9.i_crit_edge
  %bio.1.i = phi ptr [ %call.i.i, %if.end205.if.then9.i_crit_edge ], [ %call.i20.i, %land.rhs.i.preheader.if.then9.i_crit_edge ], [ %call.i20.i.1, %land.rhs.i.1.if.then9.i_crit_edge ], [ %call.i20.i.2, %land.rhs.i.2.if.then9.i_crit_edge ], [ %call.i20.i.3, %land.rhs.i.3.if.then9.i_crit_edge ], [ %call.i20.i.4, %land.rhs.i.4.if.then9.i_crit_edge ], [ %call.i20.i.5, %land.rhs.i.5.if.then9.i_crit_edge ], [ %call.i20.i.6, %land.rhs.i.6.if.then9.i_crit_edge ], [ %call.i20.i.7, %land.rhs.i.7.if.then9.i_crit_edge ]
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 3
  %124 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %125, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 1
  %126 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %127, %bdev.5
  br i1 %cmp.not.i.i, label %if.then9.i.if.end214_crit_edge, label %if.then.i.i427

if.then9.i.if.end214_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then.i.i427:                                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i8.i.i = and i16 %125, -2177
  %128 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then.i.i427, %if.then9.i.if.end214_crit_edge
  %129 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %bdev.5, ptr %bi_bdev.i.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %bio.1.i) #8
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 8
  %130 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %shl209, ptr %bi_iter.i, align 8
  %131 = ptrtoint ptr %wb.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %wb.i, align 8
  %tobool.not.i428 = icmp eq ptr %132, null
  br i1 %tobool.not.i428, label %if.end214.wbc_init_bio.exit_crit_edge, label %if.then.i429

if.end214.wbc_init_bio.exit_crit_edge:            ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %wbc_init_bio.exit

if.then.i429:                                     ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  %blkcg_css.i = getelementptr inbounds %struct.bdi_writeback, ptr %132, i32 0, i32 30
  %133 = ptrtoint ptr %blkcg_css.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %blkcg_css.i, align 4
  call void @bio_associate_blkg_from_css(ptr noundef nonnull %bio.1.i, ptr noundef %134) #8
  br label %wbc_init_bio.exit

wbc_init_bio.exit:                                ; preds = %if.then.i429, %if.end214.wbc_init_bio.exit_crit_edge
  %135 = ptrtoint ptr %i_write_hint to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %i_write_hint, align 1
  %conv215 = zext i8 %136 to i16
  %bi_write_hint = getelementptr inbounds %struct.bio, ptr %bio.1.i, i32 0, i32 5
  %137 = ptrtoint ptr %bi_write_hint to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv215, ptr %bi_write_hint, align 8
  br label %if.end216

if.end216:                                        ; preds = %wbc_init_bio.exit, %alloc_new.if.end216_crit_edge
  %bio.2 = phi ptr [ %bio.1.i, %wbc_init_bio.exit ], [ %bio.1, %alloc_new.if.end216_crit_edge ]
  call void @wbc_account_cgroup_owner(ptr noundef %wbc, ptr noundef %page, i32 noundef 4096) #8
  %call218 = call i32 @bio_add_page(ptr noundef nonnull %bio.2, ptr noundef %page, i32 noundef %shl217, i32 noundef 0) #8
  %cmp219 = icmp slt i32 %call218, %shl217
  br i1 %cmp219, label %if.then221, label %if.end223

if.then221:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #10
  %bi_end_io.i430 = getelementptr inbounds %struct.bio, ptr %bio.2, i32 0, i32 10
  %138 = ptrtoint ptr %bi_end_io.i430 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @mpage_end_io, ptr %bi_end_io.i430, align 8
  %bi_opf.i.i432 = getelementptr inbounds %struct.bio, ptr %bio.2, i32 0, i32 2
  %139 = ptrtoint ptr %bi_opf.i.i432 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %or.i.i431, ptr %bi_opf.i.i432, align 8
  call void @guard_bio_eod(ptr noundef nonnull %bio.2) #8
  call void @submit_bio(ptr noundef nonnull %bio.2) #8
  br label %alloc_new

if.end223:                                        ; preds = %if.end216
  call fastcc void @clean_buffers(ptr noundef %page, i32 noundef %first_unmapped.3)
  %140 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  %and.i.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !33

if.then.i.i:                                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %142, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %143, %if.end.i.i ]
  %144 = inttoptr i32 %retval.0.i.i to ptr
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %146)
  %cmp.i.not.i414 = icmp eq i32 %146, -1
  %147 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %140, align 4
  %and.i16.i = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i414, label %if.then.i415, label %do.end10.i, !prof !31

if.then.i415:                                     ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !33

if.then.i19.i:                                    ; preds = %if.then.i415
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %148, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i415
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %149, %if.end.i20.i ]
  %150 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %150, ptr noundef nonnull @.str.5) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !33

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %148, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %151, %if.end.i27.i ]
  %152 = inttoptr i32 %retval.0.i28.i to ptr
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %152, align 4
  %155 = and i32 %154, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool226.not = icmp eq i32 %155, 0
  br i1 %tobool226.not, label %do.end242, label %do.body234, !prof !33

do.body234:                                       ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/mpage.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 634, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

do.end242:                                        ; preds = %PageWriteback.exit
  %call243 = call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  call void @unlock_page(ptr noundef %page) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %boundary.5)
  %tobool244.not = icmp eq i32 %boundary.5, 0
  %or.cond391 = select i1 %tobool244.not, i1 %cmp194, i1 false
  br i1 %or.cond391, label %if.else, label %if.then248

if.then248:                                       ; preds = %do.end242
  %bi_end_io.i433 = getelementptr inbounds %struct.bio, ptr %bio.2, i32 0, i32 10
  %156 = ptrtoint ptr %bi_end_io.i433 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @mpage_end_io, ptr %bi_end_io.i433, align 8
  %bi_opf.i.i435 = getelementptr inbounds %struct.bio, ptr %bio.2, i32 0, i32 2
  %157 = ptrtoint ptr %bi_opf.i.i435 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or.i.i431, ptr %bi_opf.i.i435, align 8
  call void @guard_bio_eod(ptr noundef nonnull %bio.2) #8
  call void @submit_bio(ptr noundef nonnull %bio.2) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %boundary_block.7)
  %tobool250.not = icmp eq i64 %boundary_block.7, 0
  br i1 %tobool250.not, label %if.then248.out_crit_edge, label %if.then251

if.then248.out_crit_edge:                         ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then251:                                       ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #10
  %shl252 = shl nuw i32 1, %conv
  call void @write_boundary_block(ptr noundef %boundary_bdev.7, i64 noundef %boundary_block.7, i32 noundef %shl252) #8
  br label %out

if.else:                                          ; preds = %do.end242
  call void @__sanitizer_cov_trace_pc() #10
  %sub254 = add nsw i32 %shr, -1
  %arrayidx255 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %sub254
  %158 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %arrayidx255, align 8
  %last_block_in_bio256 = getelementptr inbounds %struct.mpage_data, ptr %data, i32 0, i32 1
  %160 = ptrtoint ptr %last_block_in_bio256 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %159, ptr %last_block_in_bio256, align 8
  br label %out

confused:                                         ; preds = %if.then171.confused_crit_edge, %if.then127.confused_crit_edge, %for.body.confused_crit_edge, %cleanup.confused_crit_edge, %if.then60.confused_crit_edge, %lor.lhs.false.confused_crit_edge, %if.end52.confused_crit_edge, %if.end48.confused_crit_edge, %if.then40.confused_crit_edge
  %tobool258.not = icmp eq ptr %1, null
  br i1 %tobool258.not, label %confused.if.end261_crit_edge, label %if.then259

confused.if.end261_crit_edge:                     ; preds = %confused
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end261

if.then259:                                       ; preds = %confused
  call void @__sanitizer_cov_trace_pc() #10
  %bi_end_io.i436 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 10
  %161 = ptrtoint ptr %bi_end_io.i436 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @mpage_end_io, ptr %bi_end_io.i436, align 8
  %or.i.i437 = or i32 %flags.0.i, 1
  %bi_opf.i.i438 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %162 = ptrtoint ptr %bi_opf.i.i438 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %or.i.i437, ptr %bi_opf.i.i438, align 8
  call void @guard_bio_eod(ptr noundef nonnull %1) #8
  call void @submit_bio(ptr noundef nonnull %1) #8
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %confused.if.end261_crit_edge, %land.rhs.i.7.if.end261_crit_edge, %land.lhs.true.i.if.end261_crit_edge
  %use_writepage = getelementptr inbounds %struct.mpage_data, ptr %data, i32 0, i32 3
  %163 = ptrtoint ptr %use_writepage to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %use_writepage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool262.not = icmp eq i32 %164, 0
  br i1 %tobool262.not, label %if.end261.out_crit_edge, label %if.then263

if.end261.out_crit_edge:                          ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then263:                                       ; preds = %if.end261
  %a_ops = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 9
  %165 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %a_ops, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %call264 = call i32 %168(ptr noundef %page, ptr noundef %wbc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %tobool.not.i439 = icmp eq i32 %call264, 0
  br i1 %tobool.not.i439, label %if.then263.out_crit_edge, label %if.end.i, !prof !33

if.then263.out_crit_edge:                         ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %if.then263
  call void @__filemap_set_wb_err(ptr noundef %3, i32 noundef %call264) #8
  %169 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %3, align 4
  %tobool4.not.i440 = icmp eq ptr %170, null
  br i1 %tobool4.not.i440, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %170, i32 0, i32 8
  %171 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %172, i32 0, i32 50
  %call.i = call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call264) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call264)
  %cmp.i441 = icmp eq i32 %call264, -28
  %flags.i442 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 10
  %..i = zext i1 %cmp.i441 to i32
  call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i442) #8
  br label %out

out:                                              ; preds = %if.end7.i, %if.then263.out_crit_edge, %if.end261.out_crit_edge, %if.else, %if.then251, %if.then248.out_crit_edge, %if.then196.out_crit_edge
  %bio.5 = phi ptr [ null, %if.then251 ], [ null, %if.then248.out_crit_edge ], [ %bio.2, %if.else ], [ null, %if.end261.out_crit_edge ], [ null, %if.then263.out_crit_edge ], [ null, %if.end7.i ], [ null, %if.then196.out_crit_edge ]
  %ret.0 = phi i32 [ 0, %if.then251 ], [ 0, %if.then248.out_crit_edge ], [ 0, %if.else ], [ -11, %if.end261.out_crit_edge ], [ 0, %if.then263.out_crit_edge ], [ %call264, %if.end7.i ], [ 0, %if.then196.out_crit_edge ]
  %173 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %bio.5, ptr %data, align 8
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %map_bh) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %blocks) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpage_writepage(ptr noundef %page, ptr noundef %get_block, ptr noundef %wbc) #0 align 64 {
entry:
  %mpd = alloca %struct.mpage_data, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpd) #8
  %0 = call ptr @memset(ptr %mpd, i32 0, i32 24)
  %get_block1 = getelementptr inbounds %struct.mpage_data, ptr %mpd, i32 0, i32 2
  %1 = ptrtoint ptr %get_block1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %get_block, ptr %get_block1, align 8
  %call = call i32 @__mpage_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef nonnull %mpd)
  %2 = ptrtoint ptr %mpd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpd, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %4 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mpage_end_io, ptr %bi_end_io.i, align 8
  %or.i.i = select i1 %cmp, i32 2049, i32 1
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i, ptr %bi_opf.i.i, align 8
  tail call void @guard_bio_eod(ptr noundef nonnull %3) #8
  tail call void @submit_bio(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpd) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !56
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !57
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !31

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !58
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !60
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_read_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpage_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i16.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i16.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.019 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end.i.i.if.end.i_crit_edge ]
  %iter_all.sroa.11.018 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select14, %if.end.i.i.if.end.i_crit_edge ]
  %iter_all.sroa.15.017 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end.i.i.if.end.i_crit_edge ]
  %2 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.017)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.017, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.019, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.018
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.018, i32 2
  %6 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %5, i32 %shr.i.i
  %and.i.i = and i32 %7, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.018, i32 1
  %8 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %9, %iter_all.sroa.15.017
  %10 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #8
  %add.i.i = add i32 %10, %iter_all.sroa.15.017
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp15.i.i = icmp eq i32 %add.i.i, %9
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select14 = add nuw nsw i32 %iter_all.sroa.11.018, %inc.i.i
  %11 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_opf, align 8
  %and = and i32 %12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %13 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bi_status, align 2
  %call2 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %14) #8
  tail call void @page_endio(ptr noundef %iter_all.sroa.0.1, i1 noundef zeroext %tobool, i32 noundef %call2) #8
  %15 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %16 to i32
  %cmp.not.i = icmp ult i32 %spec.select14, %conv.i
  br i1 %cmp.not.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.for.end_crit_edge

if.end.i.i.for.end_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.end:                                          ; preds = %if.end.i.i.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @guard_bio_eod(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_endio(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_write_page(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wbc_account_cgroup_owner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_boundary_block(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg_from_css(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_mpage_readahead, !1, !"__ksymtab_mpage_readahead", i1 false, i1 false}
!1 = !{!"../fs/mpage.c", i32 388, i32 1}
!2 = !{ptr @__ksymtab_mpage_readpage, !3, !"__ksymtab_mpage_readpage", i1 false, i1 false}
!3 = !{!"../fs/mpage.c", i32 406, i32 1}
!4 = !{ptr @__ksymtab_mpage_writepages, !5, !"__ksymtab_mpage_writepages", i1 false, i1 false}
!5 = !{!"../fs/mpage.c", i32 715, i32 1}
!6 = !{ptr @__ksymtab_mpage_writepage, !7, !"__ksymtab_mpage_writepage", i1 false, i1 false}
!7 = !{!"../fs/mpage.c", i32 734, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/pagemap.h", i32 1096, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 463, i32 1}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/mm.h", i32 717, i32 2}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2154219652, i64 2154220141, i64 2154219689, i64 2154219745, i64 2154219779, i64 2154219803, i64 2154219844, i64 2154219865, i64 2154219893, i64 2154219927}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2150239038, i64 2150239529, i64 2150239075, i64 2150239131, i64 2150239165, i64 2150239189, i64 2150239230, i64 2150239251, i64 2150239279, i64 2150239313}
!35 = !{i64 2154221498, i64 2154221987, i64 2154221535, i64 2154221591, i64 2154221625, i64 2154221649, i64 2154221690, i64 2154221711, i64 2154221739, i64 2154221773}
!36 = !{i64 2151005824, i64 2151006315, i64 2151005861, i64 2151005917, i64 2151005951, i64 2151005975, i64 2151006016, i64 2151006037, i64 2151006065, i64 2151006099}
!37 = !{i64 2153130036, i64 2153130519, i64 2153130073, i64 2153130129, i64 2153130163, i64 2153130187, i64 2153130228, i64 2153130249, i64 2153130277, i64 2153130311}
!38 = !{i64 2148316987}
!39 = !{i64 2148231720, i64 2148231752, i64 2148231781, i64 2148231815, i64 2148231846, i64 2148231869}
!40 = !{i64 2148317216}
!41 = !{i64 2148710350, i64 2148710355, i64 2148710368, i64 2148710412, i64 2148710446, i64 2148710467}
!42 = !{i8 0, i8 2}
!43 = !{i64 2150701805, i64 2150702296, i64 2150701842, i64 2150701898, i64 2150701932, i64 2150701956, i64 2150701997, i64 2150702018, i64 2150702046, i64 2150702080}
!44 = !{i64 2150990001}
!45 = !{i64 2155035228, i64 2155035703, i64 2155035265, i64 2155035321, i64 2155035355, i64 2155035379, i64 2155035420, i64 2155035441, i64 2155035469, i64 2155035503}
!46 = !{i64 2150795149, i64 2150795322, i64 2150795337, i64 2150795389, i64 2150795448, i64 2150795472, i64 2150795513, i64 2150795534, i64 2150795562, i64 2150795594}
!47 = !{i64 2150796024, i64 2150796197, i64 2150796212, i64 2150796264, i64 2150796323, i64 2150796347, i64 2150796388, i64 2150796409, i64 2150796437, i64 2150796469}
!48 = !{i64 2150988930}
!49 = !{i64 2155040283, i64 2155040758, i64 2155040320, i64 2155040376, i64 2155040410, i64 2155040434, i64 2155040475, i64 2155040496, i64 2155040524, i64 2155040558}
!50 = !{i64 2155042167, i64 2155046703, i64 2155042204, i64 2155042260, i64 2155042294, i64 2155042318, i64 2155042359, i64 2155042380, i64 2155042408, i64 2155042442}
!51 = !{i64 2155047814, i64 2155048289, i64 2155047851, i64 2155047907, i64 2155047941, i64 2155047965, i64 2155048006, i64 2155048027, i64 2155048055, i64 2155048089}
!52 = !{i64 2155049381, i64 2155049856, i64 2155049418, i64 2155049474, i64 2155049508, i64 2155049532, i64 2155049573, i64 2155049594, i64 2155049622, i64 2155049656}
!53 = !{i64 2155050943, i64 2155051418, i64 2155050980, i64 2155051036, i64 2155051070, i64 2155051094, i64 2155051135, i64 2155051156, i64 2155051184, i64 2155051218}
!54 = !{i64 2150758953, i64 2150759444, i64 2150758990, i64 2150759046, i64 2150759080, i64 2150759104, i64 2150759145, i64 2150759166, i64 2150759194, i64 2150759228}
!55 = !{i64 2155052894, i64 2155053369, i64 2155052931, i64 2155052987, i64 2155053021, i64 2155053045, i64 2155053086, i64 2155053107, i64 2155053135, i64 2155053169}
!56 = !{i64 621016, i64 621077}
!57 = !{i64 623748}
!58 = !{i64 624033}
!59 = !{i64 2153074622}
!60 = !{i64 2153074464}
!61 = !{i64 2153074792}
!62 = !{i64 2149861901}
