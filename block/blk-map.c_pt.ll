; ModuleID = '/llk/IR_all_yes/block/blk-map.c_pt.bc'
source_filename = "../block/blk-map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blk_rq_append_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_rq_append_bio\09\09\09\09"
module asm "\09.long\09__crc_blk_rq_append_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_append_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_append_bio\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_append_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_rq_map_user_iov\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_rq_map_user_iov\09\09\09\09"
module asm "\09.long\09__crc_blk_rq_map_user_iov\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_map_user_iov:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_map_user_iov\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_map_user_iov:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_rq_map_user\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_rq_map_user\09\09\09\09"
module asm "\09.long\09__crc_blk_rq_map_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_map_user:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_map_user\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_map_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_rq_unmap_user\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_rq_unmap_user\09\09\09\09"
module asm "\09.long\09__crc_blk_rq_unmap_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_unmap_user:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_unmap_user\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_unmap_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+blk_rq_map_kern\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_rq_map_kern\09\09\09\09"
module asm "\09.long\09__crc_blk_rq_map_kern\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_map_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_map_kern\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_map_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.38, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.38 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.76, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.77, %union.anon.78, %union.anon.79, %union.anon.82, ptr, ptr }
%union.anon.76 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.77 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, ptr }
%union.anon.82 = type { i64, [8 x i8] }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.61, %union.anon.62 }
%union.anon.61 = type { ptr }
%union.anon.62 = type { i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rq_map_data = type { ptr, i32, i32, i32, i32, i32 }
%struct.bio_map_data = type { i8, %struct.iov_iter, [0 x %struct.iovec] }
%struct.iovec = type { ptr, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%union.anon.55 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_blk_rq_append_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_append_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_append_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_append_bio to i32), ptr @__kstrtab_blk_rq_append_bio, ptr @__kstrtabns_blk_rq_append_bio }, section "___ksymtab+blk_rq_append_bio", align 4
@__kstrtab_blk_rq_map_user_iov = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_map_user_iov = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_map_user_iov = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_map_user_iov to i32), ptr @__kstrtab_blk_rq_map_user_iov, ptr @__kstrtabns_blk_rq_map_user_iov }, section "___ksymtab+blk_rq_map_user_iov", align 4
@__kstrtab_blk_rq_map_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_map_user = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_map_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_map_user to i32), ptr @__kstrtab_blk_rq_map_user, ptr @__kstrtabns_blk_rq_map_user }, section "___ksymtab+blk_rq_map_user", align 4
@__kstrtab_blk_rq_unmap_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_unmap_user = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_unmap_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_unmap_user to i32), ptr @__kstrtab_blk_rq_unmap_user, ptr @__kstrtabns_blk_rq_unmap_user }, section "___ksymtab+blk_rq_unmap_user", align 4
@__kstrtab_blk_rq_map_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_map_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_map_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_map_kern to i32), ptr @__kstrtab_blk_rq_map_kern, ptr @__kstrtabns_blk_rq_map_kern }, section "___ksymtab+blk_rq_map_kern", align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_ = private constant [19 x i8] c"../block/blk-map.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 717, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_blk_rq_append_bio, ptr @__ksymtab_blk_rq_map_kern, ptr @__ksymtab_blk_rq_map_user, ptr @__ksymtab_blk_rq_map_user_iov, ptr @__ksymtab_blk_rq_unmap_user, ptr @.str.1], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_rq_append_bio(ptr noundef %rq, ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool.not48 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool.not48, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %iter.sroa.14.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %iter.sroa.14.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %iter.sroa.14.0.copyload = load i32, ptr %iter.sroa.14.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %3 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_io_vec, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %6, 255
  %7 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %7, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %nr_segs.052 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.051 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.050 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.14.049 = phi i32 [ %iter.sroa.14.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.14.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %bv_len6 = getelementptr %struct.bio_vec, ptr %4, i32 %iter.sroa.10.050, i32 1
  %8 = ptrtoint ptr %bv_len6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len6, align 4
  %sub = sub i32 %9, %iter.sroa.14.049
  %10 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.051, i32 %sub)
  %inc = add i32 %nr_segs.052, 1
  br i1 %switch.selectcmp.i.i, label %land.rhs.bio_advance_iter_single.exit_crit_edge, label %if.else.i

land.rhs.bio_advance_iter_single.exit_crit_edge:  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add i32 %10, %iter.sroa.14.049
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp.i.i = icmp eq i32 %add.i.i, %9
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select47 = add i32 %iter.sroa.10.050, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %land.rhs.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.14.1 = phi i32 [ %iter.sroa.14.049, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.050, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select47, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.051, %10
  %tobool.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not, label %bio_advance_iter_single.exit.for.end_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

bio_advance_iter_single.exit.for.end_crit_edge:   ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %bio_advance_iter_single.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_segs.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %bio_advance_iter_single.exit.for.end_crit_edge ]
  %bio13 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %11 = ptrtoint ptr %bio13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bio13, align 8
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i43 = trunc i32 %nr_segs.0.lcssa to i16
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 19
  %13 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i43, ptr %nr_phys_segments.i, align 4
  %14 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  %__data_len.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %16 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %__data_len.i, align 8
  %biotail.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 11
  %17 = ptrtoint ptr %biotail.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bio, ptr %biotail.i, align 4
  %18 = ptrtoint ptr %bio13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bio, ptr %bio13, align 8
  %bi_ioprio.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 4
  %19 = ptrtoint ptr %bi_ioprio.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bi_ioprio.i, align 2
  %ioprio.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 24
  %21 = ptrtoint ptr %ioprio.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %ioprio.i, align 2
  br label %cleanup

if.else:                                          ; preds = %for.end
  %call = tail call i32 @ll_back_merge_fn(ptr noundef %rq, ptr noundef %bio, i32 noundef %nr_segs.0.lcssa) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.else
  %biotail = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 11
  %22 = ptrtoint ptr %biotail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %biotail, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bio, ptr %23, align 8
  store ptr %bio, ptr %biotail, align 4
  %25 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  %__data_len = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %27 = ptrtoint ptr %__data_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %__data_len, align 8
  %add20 = add i32 %28, %26
  store i32 %add20, ptr %__data_len, align 8
  %bi_crypt_context.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %29 = ptrtoint ptr %bi_crypt_context.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_crypt_context.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %30, null
  br i1 %tobool.i.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__bio_crypt_free_ctx(ptr noundef %bio) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ll_back_merge_fn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_rq_map_user_iov(ptr noundef readonly %q, ptr noundef %rq, ptr noundef %map_data, ptr noundef %iter, i32 noundef %gfp_mask) #0 align 64 {
entry:
  %i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_pad_mask = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 22
  %0 = ptrtoint ptr %dma_pad_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_pad_mask, align 4
  %tobool.not.i = icmp eq ptr %q, null
  br i1 %tobool.not.i, label %entry.queue_dma_alignment.exit_crit_edge, label %cond.true.i

entry.queue_dma_alignment.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue_dma_alignment.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_alignment.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 23
  %2 = ptrtoint ptr %dma_alignment.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_alignment.i, align 8
  br label %queue_dma_alignment.exit

queue_dma_alignment.exit:                         ; preds = %cond.true.i, %entry.queue_dma_alignment.exit_crit_edge
  %cond.i = phi i32 [ %3, %cond.true.i ], [ 511, %entry.queue_dma_alignment.exit_crit_edge ]
  %or = or i32 %cond.i, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i) #7
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iter, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.end, label %queue_dma_alignment.exit.fail_crit_edge

queue_dma_alignment.exit.fail_crit_edge:          ; preds = %queue_dma_alignment.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end:                                           ; preds = %queue_dma_alignment.exit
  %tobool.not = icmp eq ptr %map_data, null
  br i1 %tobool.not, label %if.else, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.else:                                          ; preds = %if.end
  %limits.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37
  %6 = ptrtoint ptr %limits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %limits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i56 = icmp eq i32 %7, 1
  br i1 %cmp.i56, label %blk_queue_may_bounce.exit, label %if.else.if.else5_crit_edge

if.else.if.else5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else5

blk_queue_may_bounce.exit:                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %8 = load i32, ptr @max_low_pfn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %9 = load i32, ptr @max_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp1.i.not = icmp ult i32 %8, %9
  br i1 %cmp1.i.not, label %blk_queue_may_bounce.exit.if.else5_crit_edge, label %blk_queue_may_bounce.exit.if.end20_crit_edge

blk_queue_may_bounce.exit.if.end20_crit_edge:     ; preds = %blk_queue_may_bounce.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

blk_queue_may_bounce.exit.if.else5_crit_edge:     ; preds = %blk_queue_may_bounce.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else5

if.else5:                                         ; preds = %blk_queue_may_bounce.exit.if.else5_crit_edge, %if.else.if.else5_crit_edge
  %call6 = tail call i32 @iov_iter_alignment(ptr noundef %iter) #7
  %and = and i32 %call6, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else9, label %if.else5.if.end20_crit_edge

if.else5.if.end20_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.else9:                                         ; preds = %if.else5
  %virt_boundary_mask.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 2
  %10 = ptrtoint ptr %virt_boundary_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %virt_boundary_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %if.else9.if.end20_crit_edge, label %if.then12

if.else9.if.end20_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @iov_iter_gap_alignment(ptr noundef %iter) #7
  %and15 = and i32 %call14, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16 = icmp ne i32 %and15, 0
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.else9.if.end20_crit_edge, %if.else5.if.end20_crit_edge, %blk_queue_may_bounce.exit.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %bf.shl.i = phi i8 [ -128, %if.else5.if.end20_crit_edge ], [ -128, %blk_queue_may_bounce.exit.if.end20_crit_edge ], [ 0, %if.end.if.end20_crit_edge ], [ -128, %if.else9.if.end20_crit_edge ], [ -128, %if.then12 ]
  %copy.0.off0 = phi i1 [ true, %if.else5.if.end20_crit_edge ], [ true, %blk_queue_may_bounce.exit.if.end20_crit_edge ], [ true, %if.end.if.end20_crit_edge ], [ false, %if.else9.if.end20_crit_edge ], [ %tobool16, %if.then12 ]
  %12 = call ptr @memcpy(ptr %i, ptr %iter, i32 24)
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 4
  %offset1.i = getelementptr inbounds %struct.rq_map_data, ptr %map_data, i32 0, i32 3
  %13 = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 6
  %14 = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 5
  %null_mapped.i = getelementptr inbounds %struct.rq_map_data, ptr %map_data, i32 0, i32 4
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %page_order.i = getelementptr inbounds %struct.rq_map_data, ptr %map_data, i32 0, i32 1
  %nr_entries.i = getelementptr inbounds %struct.rq_map_data, ptr %map_data, i32 0, i32 2
  %or36.i = or i32 %gfp_mask, 3072
  %data_source.i189.i = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 2
  %from_user.i = getelementptr inbounds %struct.rq_map_data, ptr %map_data, i32 0, i32 5
  %bio32 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end20
  %bio.0 = phi ptr [ null, %if.end20 ], [ %bio.1, %do.cond.do.body_crit_edge ]
  br i1 %copy.0.off0, label %if.then22, label %if.end26

if.then22:                                        ; preds = %do.body
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count.i, align 8
  br i1 %tobool.not, label %if.then22.cond.end.i_crit_edge, label %cond.true.i59

if.then22.cond.end.i_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i59:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset1.i, align 4
  %and.i = and i32 %18, 4095
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i59, %if.then22.cond.end.i_crit_edge
  %cond.i60 = phi i32 [ %and.i, %cond.true.i59 ], [ 0, %if.then22.cond.end.i_crit_edge ]
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %20)
  %cmp.i.i = icmp ugt i32 %20, 1024
  br i1 %cmp.i.i, label %cond.end.i.unmap_rq_crit_edge, label %if.end8.i.i.i

cond.end.i.unmap_rq_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_rq

if.end8.i.i.i:                                    ; preds = %cond.end.i
  %21 = shl nuw nsw i32 %20, 3
  %spec.select.i16.i.i = add nuw nsw i32 %21, 32
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i16.i.i, i32 noundef %gfp_mask) #10
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.unmap_rq_crit_edge, label %if.end.i

if.end8.i.i.i.unmap_rq_crit_edge:                 ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_rq

if.end.i:                                         ; preds = %if.end8.i.i.i
  %iov.i.i = getelementptr inbounds %struct.bio_map_data, ptr %call9.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %14, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 8
  %mul.i.i = shl i32 %25, 3
  %26 = call ptr @memcpy(ptr %iov.i.i, ptr %23, i32 %mul.i.i)
  %iter.i.i = getelementptr inbounds %struct.bio_map_data, ptr %call9.i.i.i, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %iter.i.i, ptr %i, i32 24)
  %28 = getelementptr inbounds %struct.bio_map_data, ptr %call9.i.i.i, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %iov.i.i, ptr %28, align 4
  %30 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %call9.i.i.i, align 128
  %bf.clear.i = and i8 %bf.load.i, 63
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  br i1 %tobool.not, label %if.end.i.land.end.thread.i_crit_edge, label %land.end.i

if.end.i.land.end.thread.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread.i

land.end.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %null_mapped.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %null_mapped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool6.not.i = icmp eq i32 %32, 0
  %spec.select203.i = select i1 %tobool6.not.i, i8 0, i8 64
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.end.i, %if.end.i.land.end.thread.i_crit_edge
  %33 = phi i8 [ 0, %if.end.i.land.end.thread.i_crit_edge ], [ %spec.select203.i, %land.end.i ]
  %bf.set10.i = or i8 %33, %bf.set.i
  %34 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.set10.i, ptr %call9.i.i.i, align 128
  %add.i = add i32 %16, 4095
  %sub.i = add i32 %add.i, %cond.i60
  %div157.i = lshr i32 %sub.i, 12
  %35 = call i32 @llvm.umin.i32(i32 %div157.i, i32 256) #7
  %conv.i = trunc i32 %35 to i16
  %call14.i = call ptr @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef zeroext %conv.i) #7
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %land.end.thread.i.out_bmd.i_crit_edge, label %if.end17.i

land.end.thread.i.out_bmd.i_crit_edge:            ; preds = %land.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_bmd.i

if.end17.i:                                       ; preds = %land.end.thread.i
  %36 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_flags.i, align 4
  %and18.i = and i32 %37, 255
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call14.i, i32 0, i32 2
  %38 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi_opf.i, align 8
  %or.i = or i32 %39, %and18.i
  store i32 %or.i, ptr %bi_opf.i, align 8
  br i1 %tobool.not, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %page_order.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %page_order.i, align 4
  %shl.i = shl nuw i32 1, %41
  %42 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset1.i, align 4
  %div22158.i = lshr i32 %43, 12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %i.0.i = phi i32 [ %div22158.i, %if.then20.i ], [ 0, %if.end17.i.if.end23.i_crit_edge ]
  %nr_pages.0.i = phi i32 [ %shl.i, %if.then20.i ], [ %35, %if.end17.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not205.i = icmp eq i32 %16, 0
  br i1 %tobool24.not205.i, label %if.end23.i.while.end.i_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  br label %while.body.i

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end23.i.while.body.i_crit_edge
  %offset.0208.i = phi i32 [ 0, %cleanup.i.while.body.i_crit_edge ], [ %cond.i60, %if.end23.i.while.body.i_crit_edge ]
  %len.0207.i = phi i32 [ %sub50.i, %cleanup.i.while.body.i_crit_edge ], [ %16, %if.end23.i.while.body.i_crit_edge ]
  %i.1206.i = phi i32 [ %i.2175.i, %cleanup.i.while.body.i_crit_edge ], [ %i.0.i, %if.end23.i.while.body.i_crit_edge ]
  %sub25.i = sub nuw nsw i32 4096, %offset.0208.i
  %44 = call i32 @llvm.umin.i32(i32 %sub25.i, i32 %len.0207.i) #7
  br i1 %tobool.not, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %while.body.i
  %45 = ptrtoint ptr %nr_entries.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_entries.i, align 4
  %mul.i = mul i32 %46, %nr_pages.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1206.i, i32 %mul.i)
  %cmp31.i = icmp eq i32 %i.1206.i, %mul.i
  br i1 %cmp31.i, label %if.then30.i.if.end86.i_crit_edge, label %if.end41.thread.i

if.then30.i.if.end86.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

if.else.i:                                        ; preds = %while.body.i
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef %or36.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool38.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool38.not.i, label %if.else.i.if.then85.i_crit_edge, label %if.end41.i

if.else.i.if.then85.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i

if.end41.i:                                       ; preds = %if.else.i
  %47 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rq, align 8
  %call42.i = call i32 @bio_add_pc_page(ptr noundef %48, ptr noundef nonnull %call14.i, ptr noundef nonnull %call38.i.i.i.i, i32 noundef %44, i32 noundef %offset.0208.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call42.i, i32 %44)
  %cmp43.i = icmp ult i32 %call42.i, %44
  br i1 %cmp43.i, label %while.end.thread.i, label %if.end41.i.cleanup.i_crit_edge

if.end41.i.cleanup.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end41.thread.i:                                ; preds = %if.then30.i
  %49 = ptrtoint ptr %map_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map_data, align 4
  %i.1206.i.frozen = freeze i32 %i.1206.i
  %nr_pages.0.i.frozen = freeze i32 %nr_pages.0.i
  %div35.i = sdiv i32 %i.1206.i.frozen, %nr_pages.0.i.frozen
  %arrayidx.i = getelementptr ptr, ptr %50, i32 %div35.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %53 = mul i32 %div35.i, %nr_pages.0.i.frozen
  %rem.i.decomposed = sub i32 %i.1206.i.frozen, %53
  %add.ptr.i = getelementptr %struct.page, ptr %52, i32 %rem.i.decomposed
  %inc.i = add i32 %i.1206.i, 1
  %54 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rq, align 8
  %call42172.i = call i32 @bio_add_pc_page(ptr noundef %55, ptr noundef nonnull %call14.i, ptr noundef %add.ptr.i, i32 noundef %44, i32 noundef %offset.0208.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call42172.i, i32 %44)
  %cmp43173.i = icmp ult i32 %call42172.i, %44
  br i1 %cmp43173.i, label %if.end41.thread.i.if.end55.thread.i_crit_edge, label %if.end41.thread.i.cleanup.i_crit_edge

if.end41.thread.i.cleanup.i_crit_edge:            ; preds = %if.end41.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end41.thread.i.if.end55.thread.i_crit_edge:    ; preds = %if.end41.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.thread.i

while.end.thread.i:                               ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #7
  br label %if.end55.i

cleanup.i:                                        ; preds = %if.end41.thread.i.cleanup.i_crit_edge, %if.end41.i.cleanup.i_crit_edge
  %i.2175.i = phi i32 [ %inc.i, %if.end41.thread.i.cleanup.i_crit_edge ], [ %i.1206.i, %if.end41.i.cleanup.i_crit_edge ]
  %sub50.i = sub i32 %len.0207.i, %44
  %tobool24.not.i = icmp eq i32 %sub50.i, 0
  br i1 %tobool24.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end23.i.while.end.i_crit_edge
  br i1 %tobool.not, label %while.end.i.if.end55.i_crit_edge, label %while.end.i.if.end55.thread.i_crit_edge

while.end.i.if.end55.thread.i_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.thread.i

while.end.i.if.end55.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.end55.i:                                       ; preds = %while.end.i.if.end55.i_crit_edge, %while.end.thread.i
  %56 = ptrtoint ptr %data_source.i189.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data_source.i189.i, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp58.i = icmp eq i8 %57, 1
  br i1 %cmp58.i, label %if.end55.i.if.then67.i_crit_edge, label %if.end55.i.if.else72.i_crit_edge

if.end55.i.if.else72.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72.i

if.end55.i.if.then67.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i

if.end55.thread.i:                                ; preds = %while.end.i.if.end55.thread.i_crit_edge, %if.end41.thread.i.if.end55.thread.i_crit_edge
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %call14.i, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bi_size.i, align 8
  %60 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset1.i, align 4
  %add54.i = add i32 %61, %59
  store i32 %add54.i, ptr %offset1.i, align 4
  %62 = ptrtoint ptr %data_source.i189.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data_source.i189.i, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp58190.i = icmp eq i8 %63, 1
  br i1 %cmp58190.i, label %lor.lhs.false.i, label %if.end55.thread.i.land.lhs.true65.i_crit_edge

if.end55.thread.i.land.lhs.true65.i_crit_edge:    ; preds = %if.end55.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true65.i

lor.lhs.false.i:                                  ; preds = %if.end55.thread.i
  %64 = ptrtoint ptr %null_mapped.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %null_mapped.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool62.not.i = icmp eq i32 %65, 0
  br i1 %tobool62.not.i, label %lor.lhs.false.i.if.then67.i_crit_edge, label %lor.lhs.false.i.land.lhs.true65.i_crit_edge

lor.lhs.false.i.land.lhs.true65.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true65.i

lor.lhs.false.i.if.then67.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i

land.lhs.true65.i:                                ; preds = %lor.lhs.false.i.land.lhs.true65.i_crit_edge, %if.end55.thread.i.land.lhs.true65.i_crit_edge
  %66 = ptrtoint ptr %from_user.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %from_user.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool66.not.i = icmp eq i32 %67, 0
  br i1 %tobool66.not.i, label %land.lhs.true65.i.if.else72.i_crit_edge, label %land.lhs.true65.i.if.then67.i_crit_edge

land.lhs.true65.i.if.then67.i_crit_edge:          ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i

land.lhs.true65.i.if.else72.i_crit_edge:          ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else72.i

if.then67.i:                                      ; preds = %land.lhs.true65.i.if.then67.i_crit_edge, %lor.lhs.false.i.if.then67.i_crit_edge, %if.end55.i.if.then67.i_crit_edge
  %bi_vcnt.i.i.i = getelementptr inbounds %struct.bio, ptr %call14.i, i32 0, i32 17
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %call14.i, i32 0, i32 20
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i163.i.for.cond.i.i_crit_edge, %if.then67.i
  %iter_all.sroa.18.0.i.i = phi i32 [ 0, %if.then67.i ], [ %spec.select.i.i, %if.end.i163.i.for.cond.i.i_crit_edge ]
  %iter_all.sroa.14.0.i.i = phi i32 [ 0, %if.then67.i ], [ %spec.select29.i.i, %if.end.i163.i.for.cond.i.i_crit_edge ]
  %iter_all.sroa.0.0.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.then67.i ], [ %iter_all.sroa.0.1.i.i, %if.end.i163.i.for.cond.i.i_crit_edge ]
  %68 = ptrtoint ptr %bi_vcnt.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %bi_vcnt.i.i.i, align 8
  %conv.i.i.i = zext i16 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_all.sroa.14.0.i.i, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %iter_all.sroa.14.0.i.i, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %for.cond.i.i.if.end78.i_crit_edge

for.cond.i.i.if.end78.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.end.i.i.i:                                     ; preds = %for.cond.i.i
  %70 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.18.0.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %iter_all.sroa.18.0.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0.i.i, i32 1
  br label %if.end.i.i.i161.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr %struct.bio_vec, ptr %71, i32 %iter_all.sroa.14.0.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i, align 4
  %bv_offset3.i.i.i.i = getelementptr %struct.bio_vec, ptr %71, i32 %iter_all.sroa.14.0.i.i, i32 2
  %74 = ptrtoint ptr %bv_offset3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_offset3.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %75, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %73, i32 %shr.i.i.i.i
  %and.i.i.i159.i = and i32 %75, 4095
  br label %if.end.i.i.i161.i

if.end.i.i.i161.i:                                ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %iter_all.sroa.0.1.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.else.i.i.i.i ], [ %incdec.ptr.i.i.i.i, %if.then.i.i.i.i ]
  %.sink.i.i.i.i = phi i32 [ %and.i.i.i159.i, %if.else.i.i.i.i ], [ 0, %if.then.i.i.i.i ]
  %sub.i.i.i.i = sub nuw nsw i32 4096, %.sink.i.i.i.i
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %71, i32 %iter_all.sroa.14.0.i.i, i32 1
  %76 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bv_len.i.i.i.i, align 4
  %sub9.i.i.i.i = sub i32 %77, %iter_all.sroa.18.0.i.i
  %78 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %sub9.i.i.i.i) #7
  %call2.i.i = call i32 @copy_page_from_iter(ptr noundef %iter_all.sroa.0.1.i.i, i32 noundef %.sink.i.i.i.i, i32 noundef %78, ptr noundef nonnull %i) #7
  %79 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i160.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i160.i, label %if.end.i.i.i161.i.if.end78.i_crit_edge, label %if.end.i163.i

if.end.i.i.i161.i.if.end78.i_crit_edge:           ; preds = %if.end.i.i.i161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

if.end.i163.i:                                    ; preds = %if.end.i.i.i161.i
  %add.i.i.i.i = add i32 %78, %iter_all.sroa.18.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %77)
  %cmp15.i.i.i.i = icmp eq i32 %add.i.i.i.i, %77
  %inc.i.i.i.i = zext i1 %cmp15.i.i.i.i to i32
  %spec.select29.i.i = add nuw nsw i32 %iter_all.sroa.14.0.i.i, %inc.i.i.i.i
  %spec.select.i.i = select i1 %cmp15.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %cmp.i162.i = icmp ult i32 %call2.i.i, %78
  br i1 %cmp.i162.i, label %if.end.i163.i.cleanup83.i_crit_edge, label %if.end.i163.i.for.cond.i.i_crit_edge

if.end.i163.i.for.cond.i.i_crit_edge:             ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.end.i163.i.cleanup83.i_crit_edge:              ; preds = %if.end.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83.i

if.else72.i:                                      ; preds = %land.lhs.true65.i.if.else72.i_crit_edge, %if.end55.i.if.else72.i_crit_edge
  %81 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load73.i = load i8, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load73.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load73.i, -1
  br i1 %bf.cast.not.i, label %if.else72.i.if.end75.i_crit_edge, label %if.then74.i

if.else72.i.if.end75.i_crit_edge:                 ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.i

if.then74.i:                                      ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @zero_fill_bio(ptr noundef nonnull %call14.i) #7
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then74.i, %if.else72.i.if.end75.i_crit_edge
  %bi_size77.i = getelementptr inbounds %struct.bio, ptr %call14.i, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %bi_size77.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bi_size77.i, align 8
  call void @iov_iter_advance(ptr noundef nonnull %i, i32 noundef %83) #7
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.end75.i, %if.end.i.i.i161.i.if.end78.i_crit_edge, %for.cond.i.i.if.end78.i_crit_edge
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call14.i, i32 0, i32 11
  %84 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call9.i.i.i, ptr %bi_private.i, align 4
  %call79.i = call i32 @blk_rq_append_bio(ptr noundef %rq, ptr noundef nonnull %call14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end78.i.if.end29_crit_edge, label %if.end78.i.cleanup83.i_crit_edge

if.end78.i.cleanup83.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup83.i

if.end78.i.if.end29_crit_edge:                    ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

cleanup83.i:                                      ; preds = %if.end78.i.cleanup83.i_crit_edge, %if.end.i163.i.cleanup83.i_crit_edge
  %ret.2.i = phi i32 [ -14, %if.end.i163.i.cleanup83.i_crit_edge ], [ %call79.i, %if.end78.i.cleanup83.i_crit_edge ]
  br i1 %tobool.not, label %cleanup83.i.if.then85.i_crit_edge, label %cleanup83.i.if.end86.i_crit_edge

cleanup83.i.if.end86.i_crit_edge:                 ; preds = %cleanup83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

cleanup83.i.if.then85.i_crit_edge:                ; preds = %cleanup83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i

if.then85.i:                                      ; preds = %cleanup83.i.if.then85.i_crit_edge, %if.else.i.if.then85.i_crit_edge
  %ret.2199.i = phi i32 [ %ret.2.i, %cleanup83.i.if.then85.i_crit_edge ], [ -12, %if.else.i.if.then85.i_crit_edge ]
  call void @bio_free_pages(ptr noundef nonnull %call14.i) #7
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then85.i, %cleanup83.i.if.end86.i_crit_edge, %if.then30.i.if.end86.i_crit_edge
  %ret.2198.i = phi i32 [ %ret.2199.i, %if.then85.i ], [ %ret.2.i, %cleanup83.i.if.end86.i_crit_edge ], [ -12, %if.then30.i.if.end86.i_crit_edge ]
  call void @bio_put(ptr noundef nonnull %call14.i) #7
  br label %out_bmd.i

out_bmd.i:                                        ; preds = %if.end86.i, %land.end.thread.i.out_bmd.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2198.i, %if.end86.i ], [ -12, %land.end.thread.i.out_bmd.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  br label %unmap_rq

if.end26:                                         ; preds = %do.body
  %call25 = call fastcc i32 @bio_map_user_iov(ptr noundef %rq, ptr noundef nonnull %i, i32 noundef %gfp_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.end26.unmap_rq_crit_edge

if.end26.unmap_rq_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap_rq

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %if.end26.if.end29_crit_edge, %if.end78.i.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %bio.0, null
  br i1 %tobool30.not, label %if.then31, label %if.end29.do.cond_crit_edge

if.end29.do.cond_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %bio32 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bio32, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.then31, %if.end29.do.cond_crit_edge
  %bio.1 = phi ptr [ %bio.0, %if.end29.do.cond_crit_edge ], [ %86, %if.then31 ]
  %87 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count.i, align 8
  %tobool35.not = icmp eq i32 %88, 0
  br i1 %tobool35.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

unmap_rq:                                         ; preds = %if.end26.unmap_rq_crit_edge, %out_bmd.i, %if.end8.i.i.i.unmap_rq_crit_edge, %cond.end.i.unmap_rq_crit_edge
  %ret.064 = phi i32 [ %ret.3.i, %out_bmd.i ], [ %call25, %if.end26.unmap_rq_crit_edge ], [ -12, %cond.end.i.unmap_rq_crit_edge ], [ -12, %if.end8.i.i.i.unmap_rq_crit_edge ]
  %call36 = call i32 @blk_rq_unmap_user(ptr noundef %bio.0)
  br label %fail

fail:                                             ; preds = %unmap_rq, %queue_dma_alignment.exit.fail_crit_edge
  %ret.1 = phi i32 [ %ret.064, %unmap_rq ], [ -22, %queue_dma_alignment.exit.fail_crit_edge ]
  %bio37 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %89 = ptrtoint ptr %bio37 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %bio37, align 8
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %fail ], [ 0, %do.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_gap_alignment(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bio_map_user_iov(ptr noundef %rq, ptr noundef %iter, i32 noundef %gfp_mask) unnamed_addr #0 align 64 {
entry:
  %pages = alloca ptr, align 4
  %offs = alloca i32, align 4
  %same_page = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 3
  %2 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_hw_sectors.i, align 4
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup69_crit_edge, label %if.end

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @iov_iter_npages(ptr noundef %iter, i32 noundef 256) #7
  %conv = trunc i32 %call2 to i16
  %call3 = tail call ptr @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef zeroext %conv) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup69_crit_edge, label %if.end6

if.end.cleanup69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end6:                                          ; preds = %if.end
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %7, 255
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf, align 8
  %or = or i32 %9, %and
  store i32 %or, ptr %bi_opf, align 8
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not156 = icmp eq i32 %11, 0
  br i1 %tobool8.not156, label %if.end6.while.end64_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.end6.while.end64_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end64

while.body:                                       ; preds = %cleanup57.while.body_crit_edge, %if.end6.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pages) #7
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %pages, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #7
  %13 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %offs, align 4, !annotation !25
  %call9 = call i32 @iov_iter_get_pages_alloc(ptr noundef %iter, ptr noundef nonnull %pages, i32 noundef 2147483647, ptr noundef nonnull %offs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call9)
  %cmp = icmp slt i32 %call9, 1
  br i1 %cmp, label %cleanup57.thread134, label %if.end15, !prof !26

cleanup57.thread134:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool14.not = icmp eq i32 %call9, 0
  %spec.select = select i1 %tobool14.not, i32 -14, i32 %call9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #7
  br label %out_unmap

if.end15:                                         ; preds = %while.body
  %14 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offs, align 4
  %add = add nuw i32 %call9, 4095
  %sub = add i32 %add, %15
  %div105 = lshr i32 %sub, 12
  %16 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rq, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end15.queue_dma_alignment.exit_crit_edge, label %cond.true.i

if.end15.queue_dma_alignment.exit_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %queue_dma_alignment.exit

cond.true.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dma_alignment.i = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %dma_alignment.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_alignment.i, align 8
  br label %queue_dma_alignment.exit

queue_dma_alignment.exit:                         ; preds = %cond.true.i, %if.end15.queue_dma_alignment.exit_crit_edge
  %cond.i = phi i32 [ %19, %cond.true.i ], [ 511, %if.end15.queue_dma_alignment.exit_crit_edge ]
  %and19 = and i32 %cond.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %for.cond.preheader, label %queue_dma_alignment.exit.if.end47_crit_edge, !prof !27

queue_dma_alignment.exit.if.end47_crit_edge:      ; preds = %queue_dma_alignment.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

for.cond.preheader:                               ; preds = %queue_dma_alignment.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp28148.not = icmp ult i32 %sub, 4096
  br i1 %cmp28148.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div105, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %added.0151 = phi i32 [ %add43, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bytes.0150 = phi i32 [ %sub44, %for.inc.for.body_crit_edge ], [ %call9, %for.body.preheader ]
  %j.0149 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %j.0149
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offs, align 4
  %sub30 = sub i32 4096, %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %same_page) #7
  %26 = ptrtoint ptr %same_page to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %same_page, align 1
  %27 = call i32 @llvm.umin.i32(i32 %sub30, i32 %bytes.0150)
  %28 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rq, align 8
  %call36 = call i32 @bio_add_hw_page(ptr noundef %29, ptr noundef nonnull %call3, ptr noundef %23, i32 noundef %27, i32 noundef %25, i32 noundef %3, ptr noundef nonnull %same_page) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then38, label %for.inc

if.then38:                                        ; preds = %for.body
  %30 = ptrtoint ptr %same_page to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %same_page, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool39.not = icmp eq i8 %31, 0
  br i1 %tobool39.not, label %if.then38.cleanup.thread_crit_edge, label %if.then40

if.then38.cleanup.thread_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then40:                                        ; preds = %if.then38
  %32 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !27

if.then.i.i:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %23 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !26

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@bio_map_user_iov, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !32

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup.thread_crit_edge

folio_put_testzero.exit.i.i.cleanup.thread_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %36) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup.thread_crit_edge, %if.then38.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %same_page) #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %add43 = add i32 %27, %added.0151
  %sub44 = sub i32 %bytes.0150, %27
  %41 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %offs, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %same_page) #7
  %inc = add nuw nsw i32 %j.0149, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %for.cond.preheader.for.end_crit_edge
  %j.0142 = phi i32 [ %j.0149, %cleanup.thread ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %umax, %for.inc.for.end_crit_edge ]
  %bytes.0140 = phi i32 [ %bytes.0150, %cleanup.thread ], [ %call9, %for.cond.preheader.for.end_crit_edge ], [ %sub44, %for.inc.for.end_crit_edge ]
  %added.0138 = phi i32 [ %added.0151, %cleanup.thread ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add43, %for.inc.for.end_crit_edge ]
  call void @iov_iter_advance(ptr noundef %iter, i32 noundef %added.0138) #7
  br label %if.end47

if.end47:                                         ; preds = %for.end, %queue_dma_alignment.exit.if.end47_crit_edge
  %j.1 = phi i32 [ %j.0142, %for.end ], [ 0, %queue_dma_alignment.exit.if.end47_crit_edge ]
  %bytes.3 = phi i32 [ %bytes.0140, %for.end ], [ 1, %queue_dma_alignment.exit.if.end47_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %div105)
  %cmp49154 = icmp ult i32 %j.1, %div105
  br i1 %cmp49154, label %if.end47.while.body51_crit_edge, label %if.end47.while.end_crit_edge

if.end47.while.end_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end47.while.body51_crit_edge:                  ; preds = %if.end47
  br label %while.body51

while.body51:                                     ; preds = %put_page.exit127.while.body51_crit_edge, %if.end47.while.body51_crit_edge
  %j.2155 = phi i32 [ %inc52, %put_page.exit127.while.body51_crit_edge ], [ %j.1, %if.end47.while.body51_crit_edge ]
  %42 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pages, align 4
  %inc52 = add nuw nsw i32 %j.2155, 1
  %arrayidx53 = getelementptr ptr, ptr %43, i32 %j.2155
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx53, align 4
  %46 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i108 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i108)
  %tobool.not.i.i109 = icmp eq i32 %and.i.i108, 0
  br i1 %tobool.not.i.i109, label %if.end.i.i112, label %if.then.i.i111, !prof !27

if.then.i.i111:                                   ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i110 = add i32 %48, -1
  br label %_compound_head.exit.i117

if.end.i.i112:                                    ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %45 to i32
  br label %_compound_head.exit.i117

_compound_head.exit.i117:                         ; preds = %if.end.i.i112, %if.then.i.i111
  %retval.0.i.i113 = phi i32 [ %sub.i.i110, %if.then.i.i111 ], [ %49, %if.end.i.i112 ]
  %50 = inttoptr i32 %retval.0.i.i113 to ptr
  %_refcount.i.i.i.i.i114 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i.i115 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i114, i32 noundef 4) #7
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i114 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i116 = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i116, label %if.then.i.i.i.i118, label %do.end5.i.i.i.i122, !prof !26

if.then.i.i.i.i118:                               ; preds = %_compound_head.exit.i117
  call void @__sanitizer_cov_trace_pc() #9
  %53 = inttoptr i32 %retval.0.i.i113 to ptr
  call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

do.end5.i.i.i.i122:                               ; preds = %_compound_head.exit.i117
  %call.i.i.i10.i.i.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i114, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i114, i32 1, i32 3, i32 1) #7
  %54 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i114, ptr %_refcount.i.i.i.i.i114, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i114) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i.i.i120 = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i120)
  %cmp.i.i.i.i.i.i.i121 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i120, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@bio_map_user_iov, %if.then.i.i.i.i.i124)) #7
          to label %folio_put_testzero.exit.i.i125 [label %if.then.i.i.i.i.i124], !srcloc !32

if.then.i.i.i.i.i124:                             ; preds = %do.end5.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i123 = zext i1 %cmp.i.i.i.i.i.i.i121 to i32
  call void @__page_ref_mod_and_test(ptr noundef %50, i32 noundef -1, i32 noundef %conv.i.i.i.i.i123) #7
  br label %folio_put_testzero.exit.i.i125

folio_put_testzero.exit.i.i125:                   ; preds = %if.then.i.i.i.i.i124, %do.end5.i.i.i.i122
  br i1 %cmp.i.i.i.i.i.i.i121, label %if.then.i4.i126, label %folio_put_testzero.exit.i.i125.put_page.exit127_crit_edge

folio_put_testzero.exit.i.i125.put_page.exit127_crit_edge: ; preds = %folio_put_testzero.exit.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit127

if.then.i4.i126:                                  ; preds = %folio_put_testzero.exit.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %50) #7
  br label %put_page.exit127

put_page.exit127:                                 ; preds = %if.then.i4.i126, %folio_put_testzero.exit.i.i125.put_page.exit127_crit_edge
  %exitcond166.not = icmp eq i32 %inc52, %div105
  br i1 %exitcond166.not, label %put_page.exit127.while.end_crit_edge, label %put_page.exit127.while.body51_crit_edge

put_page.exit127.while.body51_crit_edge:          ; preds = %put_page.exit127
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body51

put_page.exit127.while.end_crit_edge:             ; preds = %put_page.exit127
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %put_page.exit127.while.end_crit_edge, %if.end47.while.end_crit_edge
  %55 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pages, align 4
  call void @kvfree(ptr noundef %56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.3)
  %tobool54.not = icmp eq i32 %bytes.3, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #7
  br i1 %tobool54.not, label %cleanup57, label %while.end.while.end64_crit_edge

while.end.while.end64_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end64

cleanup57:                                        ; preds = %while.end
  %57 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i, align 8
  %tobool8.not = icmp eq i32 %58, 0
  br i1 %tobool8.not, label %cleanup57.while.end64_crit_edge, label %cleanup57.while.body_crit_edge

cleanup57.while.body_crit_edge:                   ; preds = %cleanup57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup57.while.end64_crit_edge:                  ; preds = %cleanup57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end64

while.end64:                                      ; preds = %cleanup57.while.end64_crit_edge, %while.end.while.end64_crit_edge, %if.end6.while.end64_crit_edge
  %call65 = call i32 @blk_rq_append_bio(ptr noundef %rq, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %while.end64.cleanup69_crit_edge, label %while.end64.out_unmap_crit_edge

while.end64.out_unmap_crit_edge:                  ; preds = %while.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unmap

while.end64.cleanup69_crit_edge:                  ; preds = %while.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

out_unmap:                                        ; preds = %while.end64.out_unmap_crit_edge, %cleanup57.thread134
  %ret.3 = phi i32 [ %call65, %while.end64.out_unmap_crit_edge ], [ %spec.select, %cleanup57.thread134 ]
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call3, i32 0, i32 3
  %59 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %bi_flags.i.i, align 4
  %61 = and i16 %60, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp.i.not.i = icmp eq i16 %61, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %out_unmap.bio_release_pages.exit_crit_edge

out_unmap.bio_release_pages.exit_crit_edge:       ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_release_pages.exit

if.then.i:                                        ; preds = %out_unmap
  call void @__sanitizer_cov_trace_pc() #9
  call void @__bio_release_pages(ptr noundef nonnull %call3, i1 noundef zeroext false) #7
  br label %bio_release_pages.exit

bio_release_pages.exit:                           ; preds = %if.then.i, %out_unmap.bio_release_pages.exit_crit_edge
  call void @bio_put(ptr noundef nonnull %call3) #7
  br label %cleanup69

cleanup69:                                        ; preds = %bio_release_pages.exit, %while.end64.cleanup69_crit_edge, %if.end.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ %ret.3, %bio_release_pages.exit ], [ -22, %entry.cleanup69_crit_edge ], [ -12, %if.end.cleanup69_crit_edge ], [ 0, %while.end64.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_rq_unmap_user(ptr noundef %bio) #0 align 64 {
entry:
  %iter.i.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not16 = icmp eq ptr %bio, null
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %iter.coerce.fca.1.gep.i.i = getelementptr inbounds [3 x i64], ptr %iter.i.i, i32 0, i32 1
  %iter.coerce.fca.2.gep.i.i = getelementptr inbounds [3 x i64], ptr %iter.i.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %ret.021 = phi i32 [ 0, %while.body.lr.ph ], [ %ret.1, %if.end6.while.body_crit_edge ]
  %bio.addr.017 = phi ptr [ %bio, %while.body.lr.ph ], [ %38, %if.end6.while.body_crit_edge ]
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio.addr.017, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %1, align 8
  %3 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not.i = icmp eq i8 %3, 0
  br i1 %bf.cast.not.i, label %if.then.i, label %if.then.bio_uncopy_user.exit_crit_edge

if.then.bio_uncopy_user.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_uncopy_user.exit

if.then.i:                                        ; preds = %if.then
  %4 = call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %mm.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 53
  %8 = ptrtoint ptr %mm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mm.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.else.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.else.i:                                        ; preds = %if.then.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.addr.017, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_opf.i, align 8
  %and.i22.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.i.not.i = icmp eq i32 %and.i22.i, 0
  br i1 %tobool.i.not.i, label %if.then3.i, label %if.else.i.if.end5.i_crit_edge

if.else.i.if.end5.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.else.i
  %iter.i = getelementptr inbounds %struct.bio_map_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %iter.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %.unpack.i = load i64, ptr %iter.i, align 8
  %.elt18.i = getelementptr inbounds %struct.bio_map_data, ptr %1, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %.elt18.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack19.i = load i64, ptr %.elt18.i, align 8
  %.elt20.i = getelementptr inbounds %struct.bio_map_data, ptr %1, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %.elt20.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack21.i = load i64, ptr %.elt20.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i.i) #7
  %15 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %.unpack.i, ptr %iter.i.i, align 8
  %16 = ptrtoint ptr %iter.coerce.fca.1.gep.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %.unpack19.i, ptr %iter.coerce.fca.1.gep.i.i, align 8
  %17 = ptrtoint ptr %iter.coerce.fca.2.gep.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %.unpack21.i, ptr %iter.coerce.fca.2.gep.i.i, align 8
  %bi_vcnt.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.017, i32 0, i32 17
  %bi_io_vec.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.017, i32 0, i32 20
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i.for.cond.i.i_crit_edge, %if.then3.i
  %iter_all.sroa.18.0.i.i = phi i32 [ 0, %if.then3.i ], [ %spec.select.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %iter_all.sroa.14.0.i.i = phi i32 [ 0, %if.then3.i ], [ %spec.select28.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %iter_all.sroa.0.0.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.then3.i ], [ %iter_all.sroa.0.1.i.i, %if.end.i.i.for.cond.i.i_crit_edge ]
  %18 = ptrtoint ptr %bi_vcnt.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_vcnt.i.i.i, align 8
  %conv.i.i.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_all.sroa.14.0.i.i, i32 %conv.i.i.i)
  %cmp.not.i.i.i = icmp ult i32 %iter_all.sroa.14.0.i.i, %conv.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %for.cond.i.i.bio_copy_to_iter.exit.i_crit_edge

for.cond.i.i.bio_copy_to_iter.exit.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_copy_to_iter.exit.i

if.end.i.i.i:                                     ; preds = %for.cond.i.i
  %20 = ptrtoint ptr %bi_io_vec.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_io_vec.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.18.0.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %iter_all.sroa.18.0.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.0.i.i, i32 1
  br label %if.end.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter_all.sroa.14.0.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i.i, align 4
  %bv_offset3.i.i.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter_all.sroa.14.0.i.i, i32 2
  %24 = ptrtoint ptr %bv_offset3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_offset3.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %25, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %23, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %25, 4095
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %iter_all.sroa.0.1.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.else.i.i.i.i ], [ %incdec.ptr.i.i.i.i, %if.then.i.i.i.i ]
  %.sink.i.i.i.i = phi i32 [ %and.i.i.i.i, %if.else.i.i.i.i ], [ 0, %if.then.i.i.i.i ]
  %sub.i.i.i.i = sub nuw nsw i32 4096, %.sink.i.i.i.i
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter_all.sroa.14.0.i.i, i32 1
  %26 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_len.i.i.i.i, align 4
  %sub9.i.i.i.i = sub i32 %27, %iter_all.sroa.18.0.i.i
  %28 = call i32 @llvm.umin.i32(i32 %sub.i.i.i.i, i32 %sub9.i.i.i.i) #7
  %call2.i.i = call i32 @copy_page_to_iter(ptr noundef %iter_all.sroa.0.1.i.i, i32 noundef %.sink.i.i.i.i, i32 noundef %28, ptr noundef nonnull %iter.i.i) #7
  %29 = ptrtoint ptr %iter.coerce.fca.1.gep.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iter.coerce.fca.1.gep.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.i.i.bio_copy_to_iter.exit.i_crit_edge, label %if.end.i.i

if.end.i.i.i.i.bio_copy_to_iter.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_copy_to_iter.exit.i

if.end.i.i:                                       ; preds = %if.end.i.i.i.i
  %add.i.i.i.i = add i32 %28, %iter_all.sroa.18.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %27)
  %cmp15.i.i.i.i = icmp eq i32 %add.i.i.i.i, %27
  %inc.i.i.i.i = zext i1 %cmp15.i.i.i.i to i32
  %spec.select28.i.i = add nuw nsw i32 %iter_all.sroa.14.0.i.i, %inc.i.i.i.i
  %spec.select.i.i = select i1 %cmp15.i.i.i.i, i32 0, i32 %add.i.i.i.i
  %cmp.i.i = icmp ult i32 %call2.i.i, %28
  br i1 %cmp.i.i, label %if.end.i.i.bio_copy_to_iter.exit.i_crit_edge, label %if.end.i.i.for.cond.i.i_crit_edge

if.end.i.i.for.cond.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

if.end.i.i.bio_copy_to_iter.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_copy_to_iter.exit.i

bio_copy_to_iter.exit.i:                          ; preds = %if.end.i.i.bio_copy_to_iter.exit.i_crit_edge, %if.end.i.i.i.i.bio_copy_to_iter.exit.i_crit_edge, %for.cond.i.i.bio_copy_to_iter.exit.i_crit_edge
  %retval.2.i.i = phi i32 [ 0, %for.cond.i.i.bio_copy_to_iter.exit.i_crit_edge ], [ 0, %if.end.i.i.i.i.bio_copy_to_iter.exit.i_crit_edge ], [ -14, %if.end.i.i.bio_copy_to_iter.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i.i) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %bio_copy_to_iter.exit.i, %if.else.i.if.end5.i_crit_edge, %if.then.i.if.end5.i_crit_edge
  %ret.0.i = phi i32 [ %retval.2.i.i, %bio_copy_to_iter.exit.i ], [ 0, %if.else.i.if.end5.i_crit_edge ], [ -4, %if.then.i.if.end5.i_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load6.i = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i)
  %bf.cast8.not.i = icmp sgt i8 %bf.load6.i, -1
  br i1 %bf.cast8.not.i, label %if.end5.i.bio_uncopy_user.exit_crit_edge, label %if.then9.i

if.end5.i.bio_uncopy_user.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_uncopy_user.exit

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @bio_free_pages(ptr noundef nonnull %bio.addr.017) #7
  br label %bio_uncopy_user.exit

bio_uncopy_user.exit:                             ; preds = %if.then9.i, %if.end5.i.bio_uncopy_user.exit_crit_edge, %if.then.bio_uncopy_user.exit_crit_edge
  %ret.1.i = phi i32 [ 0, %if.then.bio_uncopy_user.exit_crit_edge ], [ %ret.0.i, %if.then9.i ], [ %ret.0.i, %if.end5.i.bio_uncopy_user.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool2.not = icmp ne i32 %ret.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.021)
  %tobool3.not = icmp eq i32 %ret.021, 0
  %or.cond = select i1 %tobool2.not, i1 %tobool3.not, i1 false
  %spec.select = select i1 %or.cond, i32 %ret.1.i, i32 %ret.021
  br label %if.end6

if.else:                                          ; preds = %while.body
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.017, i32 0, i32 3
  %32 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bi_flags.i.i, align 4
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp.i.not.i = icmp eq i16 %34, 0
  br i1 %cmp.i.not.i, label %if.then.i15, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.i15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.addr.017, i32 0, i32 2
  %35 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  call void @__bio_release_pages(ptr noundef nonnull %bio.addr.017, i1 noundef zeroext %tobool.i.not) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then.i15, %if.else.if.end6_crit_edge, %bio_uncopy_user.exit
  %ret.1 = phi i32 [ %spec.select, %bio_uncopy_user.exit ], [ %ret.021, %if.else.if.end6_crit_edge ], [ %ret.021, %if.then.i15 ]
  %37 = ptrtoint ptr %bio.addr.017 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bio.addr.017, align 8
  call void @bio_put(ptr noundef nonnull %bio.addr.017) #7
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %if.end6.while.end_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end6.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %ret.1, %if.end6.while.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_rq_map_user(ptr noundef %q, ptr noundef %rq, ptr noundef %map_data, ptr noundef %ubuf, i32 noundef %len, i32 noundef %gfp_mask) #0 align 64 {
entry:
  %iov = alloca %struct.iovec, align 4
  %i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #7
  %0 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 4, !annotation !25
  %1 = getelementptr inbounds %struct.iovec, ptr %iov, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %i) #7
  %3 = call ptr @memset(ptr %i, i32 255, i32 24)
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %5, 1
  %call1 = call i32 @import_single_range(i32 noundef %and.i, ptr noundef %ubuf, i32 noundef %len, ptr noundef nonnull %iov, ptr noundef nonnull %i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !26

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 @blk_rq_map_user_iov(ptr noundef %q, ptr noundef %rq, ptr noundef %map_data, ptr noundef nonnull %i, i32 noundef %gfp_mask)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_rq_map_kern(ptr noundef %q, ptr noundef %rq, ptr noundef %kbuf, i32 noundef %len, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %2 = ptrtoint ptr %kbuf to i32
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 3
  %3 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_hw_sectors.i, align 4
  %shl = shl i32 %4, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %len)
  %cmp2 = icmp ult i32 %shl, %len
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  %tobool4.not = icmp eq ptr %kbuf, null
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool.not.i.i = icmp eq ptr %q, null
  br i1 %tobool.not.i.i, label %if.end6.blk_rq_aligned.exit_crit_edge, label %cond.true.i.i

if.end6.blk_rq_aligned.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %blk_rq_aligned.exit

cond.true.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dma_alignment.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 23
  %5 = ptrtoint ptr %dma_alignment.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_alignment.i.i, align 8
  br label %blk_rq_aligned.exit

blk_rq_aligned.exit:                              ; preds = %cond.true.i.i, %if.end6.blk_rq_aligned.exit_crit_edge
  %cond.i.i = phi i32 [ %6, %cond.true.i.i ], [ 511, %if.end6.blk_rq_aligned.exit_crit_edge ]
  %dma_pad_mask.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 22
  %7 = ptrtoint ptr %dma_pad_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_pad_mask.i, align 4
  %or.i = or i32 %8, %cond.i.i
  %9 = or i32 %2, %len
  %10 = and i32 %or.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %lor.lhs.false9, label %blk_rq_aligned.exit.if.then15_crit_edge

blk_rq_aligned.exit.if.then15_crit_edge:          ; preds = %blk_rq_aligned.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false9:                                   ; preds = %blk_rq_aligned.exit
  %11 = tail call i32 @llvm.read_register.i32(metadata !14) #7
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %stack1.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %stack1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack1.i, align 4
  %cmp.not.i = icmp ugt ptr %16, %kbuf
  %add.ptr.i = getelementptr i8, ptr %16, i32 16384
  %cmp2.i = icmp ule ptr %add.ptr.i, %kbuf
  %tobool11.not = or i1 %cmp.not.i, %cmp2.i
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.if.then15_crit_edge

lor.lhs.false9.if.then15_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %limits.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37
  %17 = ptrtoint ptr %limits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %limits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %blk_queue_may_bounce.exit, label %lor.lhs.false12.if.else_crit_edge

lor.lhs.false12.if.else_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

blk_queue_may_bounce.exit:                        ; preds = %lor.lhs.false12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_low_pfn to i32))
  %19 = load i32, ptr @max_low_pfn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %20 = load i32, ptr @max_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp1.i.not = icmp ult i32 %19, %20
  br i1 %cmp1.i.not, label %blk_queue_may_bounce.exit.if.else_crit_edge, label %blk_queue_may_bounce.exit.if.then15_crit_edge

blk_queue_may_bounce.exit.if.then15_crit_edge:    ; preds = %blk_queue_may_bounce.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then15

blk_queue_may_bounce.exit.if.else_crit_edge:      ; preds = %blk_queue_may_bounce.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then15:                                        ; preds = %blk_queue_may_bounce.exit.if.then15_crit_edge, %lor.lhs.false9.if.then15_crit_edge, %blk_rq_aligned.exit.if.then15_crit_edge
  %add.i = add i32 %2, %len
  %sub.i = add i32 %add.i, 4095
  %shr.i = lshr i32 %sub.i, 12
  %shr2.i = lshr i32 %2, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr2.i)
  %cmp.i57 = icmp ult i32 %shr.i, %shr2.i
  br i1 %cmp.i57, label %if.then15.if.then20_crit_edge, label %if.end.i

if.then15.if.then20_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.end.i:                                         ; preds = %if.then15
  %sub3.i = sub nsw i32 %shr.i, %shr2.i
  %conv.i = trunc i32 %sub3.i to i16
  %call4.i = tail call ptr @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef zeroext %conv.i) #7
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then20_crit_edge, label %while.body.lr.ph.i

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

while.body.lr.ph.i:                               ; preds = %if.end.i
  %or.i58 = or i32 %gfp_mask, 3328
  br label %while.body.i

while.body.i:                                     ; preds = %if.end20.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.075.i = phi ptr [ %kbuf, %while.body.lr.ph.i ], [ %add.ptr.i59, %if.end20.i.while.body.i_crit_edge ]
  %len.addr.074.i = phi i32 [ %len, %while.body.lr.ph.i ], [ %sub26.i, %if.end20.i.while.body.i_crit_edge ]
  %21 = tail call i32 @llvm.umin.i32(i32 %len.addr.074.i, i32 4096) #7
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i58, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool14.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool14.not.i, label %cleanup32.i, label %if.end16.i

if.end16.i:                                       ; preds = %while.body.i
  br i1 %tobool.i.not, label %if.end16.i.if.end20.i_crit_edge, label %if.then18.i

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #7
  %22 = call ptr @memcpy(ptr %call19.i, ptr %p.075.i, i32 %21)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end16.i.if.end20.i_crit_edge
  %call21.i = tail call i32 @bio_add_pc_page(ptr noundef %q, ptr noundef nonnull %call4.i, ptr noundef nonnull %call38.i.i.i.i, i32 noundef %21, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call21.i, i32 %21)
  %cmp22.i = icmp ult i32 %call21.i, %21
  %sub26.i = sub i32 %len.addr.074.i, %21
  %add.ptr.i59 = getelementptr i8, ptr %p.075.i, i32 %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26.i)
  %tobool8.not.i = icmp eq i32 %sub26.i, 0
  %or.cond.i = select i1 %cmp22.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond.i, label %while.end.i, label %if.end20.i.while.body.i_crit_edge

if.end20.i.while.body.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %if.end20.i
  %bi_end_io30.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 10
  br i1 %tobool.i.not, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %bi_end_io30.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bio_copy_kern_endio_read, ptr %bi_end_io30.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call4.i, i32 0, i32 11
  %24 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %kbuf, ptr %bi_private.i, align 4
  br label %if.end18

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %bi_end_io30.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @bio_copy_kern_endio, ptr %bi_end_io30.i, align 8
  br label %if.end18

cleanup32.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bio_free_pages(ptr noundef nonnull %call4.i) #7
  br label %if.then20.sink.split

if.else:                                          ; preds = %blk_queue_may_bounce.exit.if.else_crit_edge, %lor.lhs.false12.if.else_crit_edge
  %add.i60 = add i32 %2, %len
  %sub.i61 = add i32 %add.i60, 4095
  %shr.i62 = lshr i32 %sub.i61, 12
  %shr2.i63 = lshr i32 %2, 12
  %sub3.i64 = sub nsw i32 %shr.i62, %shr2.i63
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %kbuf) #7
  %conv.i65 = trunc i32 %sub3.i64 to i16
  %call4.i66 = tail call ptr @bio_kmalloc(i32 noundef %gfp_mask, i16 noundef zeroext %conv.i65) #7
  %tobool.not.i67 = icmp eq ptr %call4.i66, null
  br i1 %tobool.not.i67, label %if.else.if.then20_crit_edge, label %if.end.i68

if.else.if.then20_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.end.i68:                                       ; preds = %if.else
  br i1 %call.i, label %if.then7.i, label %if.end.i68.if.end8.i_crit_edge

if.end.i68.if.end8.i_crit_edge:                   ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %26 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then7.i.flush_kernel_vmap_range.exit.i_crit_edge, label %if.then.i.i

if.then7.i.flush_kernel_vmap_range.exit.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %flush_kernel_vmap_range.exit.i

if.then.i.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %27(ptr noundef nonnull %kbuf, i32 noundef %len) #7
  br label %flush_kernel_vmap_range.exit.i

flush_kernel_vmap_range.exit.i:                   ; preds = %if.then.i.i, %if.then7.i.flush_kernel_vmap_range.exit.i_crit_edge
  %bi_private.i69 = getelementptr inbounds %struct.bio, ptr %call4.i66, i32 0, i32 11
  %28 = ptrtoint ptr %bi_private.i69 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %kbuf, ptr %bi_private.i69, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %flush_kernel_vmap_range.exit.i, %if.end.i68.if.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub3.i64)
  %cmp85.i = icmp slt i32 %sub3.i64, 1
  br i1 %cmp85.i, label %if.end8.i.for.end.i_crit_edge, label %if.end14.preheader.i

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end14.preheader.i:                             ; preds = %if.end8.i
  %and.i70 = and i32 %2, 4095
  br label %if.end14.i

if.end14.i:                                       ; preds = %for.inc.i.if.end14.i_crit_edge, %if.end14.preheader.i
  %i.092.i = phi i32 [ %inc.i, %for.inc.i.if.end14.i_crit_edge ], [ 0, %if.end14.preheader.i ]
  %offset.091.i = phi i32 [ 0, %for.inc.i.if.end14.i_crit_edge ], [ %and.i70, %if.end14.preheader.i ]
  %data.addr.089.i = phi ptr [ %add.ptr33.i, %for.inc.i.if.end14.i_crit_edge ], [ %kbuf, %if.end14.preheader.i ]
  %len.addr.088.i = phi i32 [ %sub34.i, %for.inc.i.if.end14.i_crit_edge ], [ %len, %if.end14.preheader.i ]
  %sub10.i = sub nuw nsw i32 4096, %offset.091.i
  %29 = tail call i32 @llvm.umin.i32(i32 %sub10.i, i32 %len.addr.088.i) #7
  br i1 %call.i, label %if.else.i72, label %if.then20.i

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %data.addr.089.i to i32
  %sub21.i = add i32 %31, 1073741824
  %shr22.i = lshr i32 %sub21.i, 12
  %add.ptr.i71 = getelementptr %struct.page, ptr %30, i32 %shr22.i
  br label %if.end26.i

if.else.i72:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call25.i = tail call ptr @vmalloc_to_page(ptr noundef %data.addr.089.i) #7
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i72, %if.then20.i
  %page.0.i = phi ptr [ %call25.i, %if.else.i72 ], [ %add.ptr.i71, %if.then20.i ]
  %call27.i = tail call i32 @bio_add_pc_page(ptr noundef %q, ptr noundef nonnull %call4.i66, ptr noundef %page.0.i, i32 noundef %29, i32 noundef %offset.091.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i, i32 %29)
  %cmp28.i = icmp ult i32 %call27.i, %29
  br i1 %cmp28.i, label %if.end26.i.if.then20.sink.split_crit_edge, label %for.inc.i

if.end26.i.if.then20.sink.split_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20.sink.split

for.inc.i:                                        ; preds = %if.end26.i
  %add.ptr33.i = getelementptr i8, ptr %data.addr.089.i, i32 %29
  %sub34.i = sub i32 %len.addr.088.i, %29
  %inc.i = add nuw nsw i32 %i.092.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %sub3.i64)
  %cmp.i73 = icmp sge i32 %inc.i, %sub3.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub34.i)
  %cmp11.i = icmp eq i32 %sub34.i, 0
  %or.cond.i74 = select i1 %cmp.i73, i1 true, i1 %cmp11.i
  br i1 %or.cond.i74, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.if.end14.i_crit_edge

for.inc.i.if.end14.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call4.i66, i32 0, i32 10
  %32 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bio_map_kern_endio, ptr %bi_end_io.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %for.end.i, %if.else.i, %if.then29.i
  %bio.0 = phi ptr [ %call4.i, %if.else.i ], [ %call4.i, %if.then29.i ], [ %call4.i66, %for.end.i ]
  %cmp.i75 = icmp ugt ptr %bio.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.end18.if.then20_crit_edge, label %if.end22

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20.sink.split:                             ; preds = %if.end26.i.if.then20.sink.split_crit_edge, %cleanup32.i
  %call4.i66.sink = phi ptr [ %call4.i, %cleanup32.i ], [ %call4.i66, %if.end26.i.if.then20.sink.split_crit_edge ]
  %bio.078.ph = phi ptr [ inttoptr (i32 -12 to ptr), %cleanup32.i ], [ inttoptr (i32 -22 to ptr), %if.end26.i.if.then20.sink.split_crit_edge ]
  tail call void @bio_put(ptr noundef nonnull %call4.i66.sink) #7
  br label %if.then20

if.then20:                                        ; preds = %if.then20.sink.split, %if.end18.if.then20_crit_edge, %if.else.if.then20_crit_edge, %if.end.i.if.then20_crit_edge, %if.then15.if.then20_crit_edge
  %bio.078 = phi ptr [ %bio.0, %if.end18.if.then20_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.if.then20_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then20_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then15.if.then20_crit_edge ], [ %bio.078.ph, %if.then20.sink.split ]
  %33 = ptrtoint ptr %bio.078 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %34 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_opf, align 8
  %and23 = and i32 %35, -256
  store i32 %and23, ptr %bi_opf, align 8
  %36 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_flags, align 4
  %and25 = and i32 %37, 255
  %or = or i32 %and25, %and23
  store i32 %or, ptr %bi_opf, align 8
  %call27 = tail call i32 @blk_rq_append_bio(ptr noundef %rq, ptr noundef nonnull %bio.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end22.cleanup_crit_edge, label %if.then31, !prof !27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bio_put(ptr noundef nonnull %bio.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end22.cleanup_crit_edge, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %33, %if.then20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call27, %if.then31 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_crypt_free_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_pc_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_hw_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bio_copy_kern_endio_read(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i23.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i23.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %2 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_private, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  br label %if.end.i

if.end.i:                                         ; preds = %memcpy_from_bvec.exit.if.end.i_crit_edge, %if.end.i.lr.ph
  %p.027 = phi ptr [ %3, %if.end.i.lr.ph ], [ %add.ptr, %memcpy_from_bvec.exit.if.end.i_crit_edge ]
  %iter_all.sroa.0.026 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %memcpy_from_bvec.exit.if.end.i_crit_edge ]
  %iter_all.sroa.14.025 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select21, %memcpy_from_bvec.exit.if.end.i_crit_edge ]
  %iter_all.sroa.18.024 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %memcpy_from_bvec.exit.if.end.i_crit_edge ]
  %4 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.18.024)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.18.024, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.026, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %5, i32 %iter_all.sroa.14.025
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %5, i32 %iter_all.sroa.14.025, i32 2
  %8 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %9, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %7, i32 %shr.i.i
  %and.i.i = and i32 %9, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %5, i32 %iter_all.sroa.14.025, i32 1
  %10 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %11, %iter_all.sroa.18.024
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %13 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %13, 512
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %iter_all.sroa.0.1, i32 noundef %or.i.i.i) #7
  %add.i.i7 = add nuw nsw i32 %12, %.sink.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i7)
  %cmp.i.i = icmp ugt i32 %add.i.i7, 4096
  br i1 %cmp.i.i, label %do.body2.i.i, label %memcpy_from_bvec.exit, !prof !26

do.body2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/highmem.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #7, !srcloc !33
  unreachable

memcpy_from_bvec.exit:                            ; preds = %if.end.i.i
  %add.i.i = add i32 %12, %iter_all.sroa.18.024
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %11)
  %cmp15.i.i = icmp eq i32 %add.i.i, %11
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select21 = add nuw nsw i32 %iter_all.sroa.14.025, %inc.i.i
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %add.ptr.i.i8 = getelementptr i8, ptr %call.i.i.i, i32 %.sink.i.i
  %14 = call ptr @memcpy(ptr %p.027, ptr %add.ptr.i.i8, i32 %12)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #7
  %add.ptr = getelementptr i8, ptr %p.027, i32 %12
  %15 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %16 to i32
  %cmp.not.i = icmp ult i32 %spec.select21, %conv.i
  br i1 %cmp.not.i, label %memcpy_from_bvec.exit.if.end.i_crit_edge, label %memcpy_from_bvec.exit.for.end_crit_edge

memcpy_from_bvec.exit.for.end_crit_edge:          ; preds = %memcpy_from_bvec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

memcpy_from_bvec.exit.if.end.i_crit_edge:         ; preds = %memcpy_from_bvec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.end:                                          ; preds = %memcpy_from_bvec.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @bio_free_pages(ptr noundef %bio) #7
  tail call void @bio_put(ptr noundef %bio) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bio_copy_kern_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bio_free_pages(ptr noundef %bio) #7
  tail call void @bio_put(ptr noundef %bio) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bio_map_kern_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.bio_invalidate_vmalloc_pages.exit_crit_edge, label %land.lhs.true.i

entry.bio_invalidate_vmalloc_pages.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_invalidate_vmalloc_pages.exit

land.lhs.true.i:                                  ; preds = %entry
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.cond.preheader.i, label %land.lhs.true.i.bio_invalidate_vmalloc_pages.exit_crit_edge

land.lhs.true.i.bio_invalidate_vmalloc_pages.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_invalidate_vmalloc_pages.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %4 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp10.not.i = icmp eq i16 %5, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %6 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_io_vec.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %len.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %bv_len.i = getelementptr %struct.bio_vec, ptr %7, i32 %i.011.i, i32 1
  %8 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i, align 4
  %add.i = add i32 %9, %len.012.i
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %10 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool2.not.i.i, label %for.end.i.bio_invalidate_vmalloc_pages.exit_crit_edge, label %if.then.i.i

for.end.i.bio_invalidate_vmalloc_pages.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_invalidate_vmalloc_pages.exit

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %11(ptr noundef nonnull %1, i32 noundef %len.0.lcssa.i) #7
  br label %bio_invalidate_vmalloc_pages.exit

bio_invalidate_vmalloc_pages.exit:                ; preds = %if.then.i.i, %for.end.i.bio_invalidate_vmalloc_pages.exit_crit_edge, %land.lhs.true.i.bio_invalidate_vmalloc_pages.exit_crit_edge, %entry.bio_invalidate_vmalloc_pages.exit_crit_edge
  tail call void @bio_put(ptr noundef %bio) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_blk_rq_append_bio, !1, !"__ksymtab_blk_rq_append_bio", i1 false, i1 false}
!1 = !{!"../block/blk-map.c", i32 504, i32 1}
!2 = !{ptr @__ksymtab_blk_rq_map_user_iov, !3, !"__ksymtab_blk_rq_map_user_iov", i1 false, i1 false}
!3 = !{!"../block/blk-map.c", i32 563, i32 1}
!4 = !{ptr @__ksymtab_blk_rq_map_user, !5, !"__ksymtab_blk_rq_map_user", i1 false, i1 false}
!5 = !{!"../block/blk-map.c", i32 578, i32 1}
!6 = !{ptr @__ksymtab_blk_rq_unmap_user, !7, !"__ksymtab_blk_rq_unmap_user", i1 false, i1 false}
!7 = !{!"../block/blk-map.c", i32 610, i32 1}
!8 = !{ptr @__ksymtab_blk_rq_map_kern, !9, !"__ksymtab_blk_rq_map_kern", i1 false, i1 false}
!9 = !{!"../block/blk-map.c", i32 655, i32 1}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i8 0, i8 2}
!25 = !{!"auto-init"}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2153413716, i64 2153414199, i64 2153413753, i64 2153413809, i64 2153413843, i64 2153413867, i64 2153413908, i64 2153413929, i64 2153413957, i64 2153413991}
!29 = !{i64 2148310698}
!30 = !{i64 2148225431, i64 2148225463, i64 2148225492, i64 2148225526, i64 2148225557, i64 2148225580}
!31 = !{i64 2148310927}
!32 = !{i64 2148704061, i64 2148704066, i64 2148704079, i64 2148704123, i64 2148704157, i64 2148704178}
!33 = !{i64 2153857536, i64 2153858024, i64 2153857573, i64 2153857629, i64 2153857663, i64 2153857687, i64 2153857728, i64 2153857749, i64 2153857777, i64 2153857811}
