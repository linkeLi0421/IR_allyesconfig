; ModuleID = '/llk/IR_all_yes/block/blk-merge.c_pt.bc'
source_filename = "../block/blk-merge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+blk_queue_split\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_queue_split\09\09\09\09"
module asm "\09.long\09__crc_blk_queue_split\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_queue_split:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_queue_split\22\09\09\09\09\09"
module asm "__kstrtabns_blk_queue_split:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__blk_rq_map_sg\22, \22a\22\09"
module asm "\09.weak\09__crc___blk_rq_map_sg\09\09\09\09"
module asm "\09.long\09__crc___blk_rq_map_sg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blk_rq_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22__blk_rq_map_sg\22\09\09\09\09\09"
module asm "__kstrtabns___blk_rq_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_bio_list_merge\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_bio_list_merge\09\09\09\09"
module asm "\09.long\09__crc_blk_bio_list_merge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_bio_list_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_bio_list_merge\22\09\09\09\09\09"
module asm "__kstrtabns_blk_bio_list_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_mq_sched_try_merge\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_mq_sched_try_merge\09\09\09\09"
module asm "\09.long\09__crc_blk_mq_sched_try_merge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_mq_sched_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_mq_sched_try_merge\22\09\09\09\09\09"
module asm "__kstrtabns_blk_mq_sched_try_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.44, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.44 = type { ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.75, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.82, %union.anon.83, %union.anon.84, %union.anon.87, ptr, ptr }
%union.anon.75 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%union.anon.83 = type { %struct.rb_node }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, %struct.list_head, ptr }
%union.anon.87 = type { i64, [8 x i8] }
%struct.page = type { i32, %union.anon.4, %union.anon.74, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.74 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.61 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bio_crypt_ctx = type { ptr, [4 x i64] }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__kstrtab_blk_queue_split = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_queue_split = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_queue_split = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_queue_split to i32), ptr @__kstrtab_blk_queue_split, ptr @__kstrtabns_blk_queue_split }, section "___ksymtab+blk_queue_split", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"block/blk-merge.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab___blk_rq_map_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns___blk_rq_map_sg = external dso_local constant [0 x i8], align 1
@__ksymtab___blk_rq_map_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blk_rq_map_sg to i32), ptr @__kstrtab___blk_rq_map_sg, ptr @__kstrtabns___blk_rq_map_sg }, section "___ksymtab+__blk_rq_map_sg", align 4
@blk_rq_set_mixed_merge.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_bio_list_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_bio_list_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_bio_list_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_bio_list_merge to i32), ptr @__kstrtab_blk_bio_list_merge, ptr @__kstrtabns_blk_bio_list_merge }, section "___ksymtab_gpl+blk_bio_list_merge", align 4
@__kstrtab_blk_mq_sched_try_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_mq_sched_try_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_mq_sched_try_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_mq_sched_try_merge to i32), ptr @__kstrtab_blk_mq_sched_try_merge, ptr @__kstrtabns_blk_mq_sched_try_merge }, section "___ksymtab_gpl+blk_mq_sched_try_merge", align 4
@__tracepoint_block_split = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_block_rq_merge = external dso_local global %struct.tracepoint, align 4
@trace_block_rq_merge.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_bio_backmerge = external dso_local global %struct.tracepoint, align 4
@trace_block_bio_backmerge.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_block_bio_frontmerge = external dso_local global %struct.tracepoint, align 4
@trace_block_bio_frontmerge.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 9, i64 13]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 9, i64 13]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 9, i64 13]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 9]
@___asan_gen_.31 = private constant [21 x i8] c"../block/blk-merge.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 570, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 418, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 108, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab___blk_rq_map_sg, ptr @__ksymtab_blk_bio_list_merge, ptr @__ksymtab_blk_mq_sched_try_merge, ptr @__ksymtab_blk_queue_split, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__blk_queue_split(ptr noundef %q, ptr nocapture noundef %bio, ptr nocapture noundef writeonly %nr_segs) local_unnamed_addr #0 align 64 {
entry:
  %bvprv.i = alloca %struct.bio_vec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 3, label %entry.sw.bb_crit_edge
    i8 5, label %entry.sw.bb_crit_edge105
    i8 9, label %sw.bb1
    i8 7, label %sw.bb4
  ]

entry.sw.bb_crit_edge105:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge105
  %bio_split = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 63
  %5 = ptrtoint ptr %nr_segs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nr_segs, align 4
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 18
  %6 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %discard_granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %7)
  %cmp.i = icmp ugt i32 %7, 1023
  %shr.i = lshr i32 %7, 9
  %cond.i = select i1 %cmp.i, i32 %shr.i, i32 1
  %max_discard_sectors3.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 13
  %8 = ptrtoint ptr %max_discard_sectors3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_discard_sectors3.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %q, null
  br i1 %tobool.not.i.i.i, label %sw.bb.bio_allowed_max_sectors.exit.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.bio_allowed_max_sectors.exit.i_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_allowed_max_sectors.exit.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i.i = icmp eq i32 %11, 0
  %spec.select.i.i.i = select i1 %tobool2.not.i.i.i, i32 512, i32 %11
  br label %bio_allowed_max_sectors.exit.i

bio_allowed_max_sectors.exit.i:                   ; preds = %land.lhs.true.i.i.i, %sw.bb.bio_allowed_max_sectors.exit.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %sw.bb.bio_allowed_max_sectors.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %neg.i.i = sub i32 0, %retval1.0.i.i.i
  %shr.i.i = lshr i32 %neg.i.i, 9
  %12 = tail call i32 @llvm.umin.i32(i32 %9, i32 %shr.i.i) #10
  %rem.i = urem i32 %12, %cond.i
  %sub.i = sub nsw i32 %12, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %12, %rem.i
  br i1 %tobool.not.i, label %bio_allowed_max_sectors.exit.i.if.end_crit_edge, label %if.end.i, !prof !45

bio_allowed_max_sectors.exit.i.if.end_crit_edge:  ; preds = %bio_allowed_max_sectors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %bio_allowed_max_sectors.exit.i
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_size.i, align 8
  %shr13.i = lshr i32 %14, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr13.i, i32 %sub.i)
  %cmp14.not.i = icmp ugt i32 %shr13.i, %sub.i
  br i1 %cmp14.not.i, label %if.end16.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end16.i:                                       ; preds = %if.end.i
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %discard_alignment.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 19
  %15 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %discard_alignment.i, align 4
  %shr18.i = lshr i32 %16, 9
  %rem19.i = urem i32 %shr18.i, %cond.i
  %17 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bi_iter.i, align 8
  %conv.i = zext i32 %sub.i to i64
  %add.i = add i64 %18, %conv.i
  %19 = zext i32 %rem19.i to i64
  %sub22.i = sub i64 %add.i, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub22.i)
  %cmp202.i = icmp ult i64 %sub22.i, 4294967296
  br i1 %cmp202.i, label %if.then210.i, label %if.else216.i, !prof !46

if.then210.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv211.i = trunc i64 %sub22.i to i32
  %rem212.i = urem i32 %conv211.i, %cond.i
  br label %if.end220.i

if.else216.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %cond.i, i64 %sub22.i) #13, !srcloc !47
  %asmresult.i335.i = extractvalue { i64, i64 } %20, 0
  %shr.i336.i = lshr i64 %asmresult.i335.i, 32
  %conv.i.i = trunc i64 %shr.i336.i to i32
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else216.i, %if.then210.i
  %__rem.0.i = phi i32 [ %rem212.i, %if.then210.i ], [ %conv.i.i, %if.else216.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %__rem.0.i)
  %cmp224.i = icmp ugt i32 %sub.i, %__rem.0.i
  %sub228.i = select i1 %cmp224.i, i32 %__rem.0.i, i32 0
  %spec.select.i = sub i32 %sub.i, %sub228.i
  %call231.i = tail call ptr @bio_split(ptr noundef %1, i32 noundef %spec.select.i, i32 noundef 3072, ptr noundef %bio_split) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %bio_split2 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 63
  %21 = ptrtoint ptr %nr_segs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %nr_segs, align 4
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 16
  %22 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i35 = icmp eq i32 %23, 0
  br i1 %tobool.not.i35, label %sw.bb1.if.end_crit_edge, label %if.end.i38

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i38:                                       ; preds = %sw.bb1
  %bi_size.i36 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %bi_size.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_size.i36, align 8
  %shr.i37 = lshr i32 %25, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i37, i32 %23)
  %cmp.not.i = icmp ugt i32 %shr.i37, %23
  br i1 %cmp.not.i, label %if.end4.i, label %if.end.i38.if.end_crit_edge

if.end.i38.if.end_crit_edge:                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @bio_split(ptr noundef %1, i32 noundef %23, i32 noundef 3072, ptr noundef %bio_split2) #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %bio_split5 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 63
  %26 = ptrtoint ptr %nr_segs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %nr_segs, align 4
  %max_write_same_sectors.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 15
  %27 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_write_same_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i40 = icmp eq i32 %28, 0
  br i1 %tobool.not.i40, label %sw.bb4.if.end_crit_edge, label %if.end.i44

sw.bb4.if.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i44:                                       ; preds = %sw.bb4
  %bi_size.i41 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %bi_size.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_size.i41, align 8
  %shr.i42 = lshr i32 %30, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i42, i32 %28)
  %cmp.not.i43 = icmp ugt i32 %shr.i42, %28
  br i1 %cmp.not.i43, label %if.end4.i46, label %if.end.i44.if.end_crit_edge

if.end.i44.if.end_crit_edge:                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end4.i46:                                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #12
  %call.i45 = tail call ptr @bio_split(ptr noundef %1, i32 noundef %28, i32 noundef 3072, ptr noundef %bio_split5) #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %bio_split7 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 63
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bvprv.i) #10
  %31 = ptrtoint ptr %bvprv.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %bvprv.i, align 4, !annotation !48
  %32 = getelementptr inbounds %struct.bio_vec, ptr %bvprv.i, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %32, align 4, !annotation !48
  %34 = getelementptr inbounds %struct.bio_vec, ptr %bvprv.i, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %34, align 4, !annotation !48
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bi_iter.i.i, align 8
  %chunk_sectors1.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 5
  %38 = ptrtoint ptr %chunk_sectors1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chunk_sectors1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not.i.i.i48 = icmp eq i32 %39, 0
  br i1 %tobool2.not.i.i.i48, label %if.else.i.i.i, label %if.end7.i.i.i

if.else.i.i.i:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %max_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 6
  %40 = ptrtoint ptr %max_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_sectors.i.i.i, align 4
  br label %blk_max_size_offset.exit.i.i

if.end7.i.i.i:                                    ; preds = %sw.default
  %42 = tail call i32 @llvm.ctpop.i32(i32 %39) #10, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp1.i.i.i.i = icmp ult i32 %42, 2
  br i1 %cmp1.i.i.i.i, label %if.then10.i.i.i, label %if.else185.i.i.i, !prof !46

if.then10.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %39, -1
  %43 = trunc i64 %37 to i32
  %44 = and i32 %sub.i.i.i, %43
  br label %if.end208.i.i.i

if.else185.i.i.i:                                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %37)
  %cmp187.i.i.i = icmp ult i64 %37, 4294967296
  br i1 %cmp187.i.i.i, label %if.then195.i.i.i, label %if.else201.i.i.i, !prof !46

if.then195.i.i.i:                                 ; preds = %if.else185.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv196.i.i.i = trunc i64 %37 to i32
  %rem197.i.i.i = urem i32 %conv196.i.i.i, %39
  br label %if.end208.i.i.i

if.else201.i.i.i:                                 ; preds = %if.else185.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %39, i64 %37) #13, !srcloc !47
  %asmresult.i.i.i.i = extractvalue { i64, i64 } %45, 0
  %shr.i.i.i.i = lshr i64 %asmresult.i.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %if.end208.i.i.i

if.end208.i.i.i:                                  ; preds = %if.else201.i.i.i, %if.then195.i.i.i, %if.then10.i.i.i
  %.pn.i.i.i = phi i32 [ %44, %if.then10.i.i.i ], [ %rem197.i.i.i, %if.then195.i.i.i ], [ %conv.i.i.i.i, %if.else201.i.i.i ]
  %chunk_sectors.addr.1.i.i.i = sub i32 %39, %.pn.i.i.i
  %max_sectors210.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 6
  %46 = ptrtoint ptr %max_sectors210.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_sectors210.i.i.i, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 %chunk_sectors.addr.1.i.i.i) #10
  br label %blk_max_size_offset.exit.i.i

blk_max_size_offset.exit.i.i:                     ; preds = %if.end208.i.i.i, %if.else.i.i.i
  %retval.0.i.i.i = phi i32 [ %48, %if.end208.i.i.i ], [ %41, %if.else.i.i.i ]
  %physical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 8
  %49 = ptrtoint ptr %physical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %physical_block_size.i.i.i, align 4
  %tobool.not.i.i.i49 = icmp eq ptr %q, null
  br i1 %tobool.not.i.i.i49, label %blk_max_size_offset.exit.i.i.get_max_io_size.exit.i_crit_edge, label %land.lhs.true.i.i.i51

blk_max_size_offset.exit.i.i.get_max_io_size.exit.i_crit_edge: ; preds = %blk_max_size_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_max_io_size.exit.i

land.lhs.true.i.i.i51:                            ; preds = %blk_max_size_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i.i50 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 9
  %51 = ptrtoint ptr %logical_block_size.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %logical_block_size.i.i.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.not.i28.i.i = icmp eq i32 %52, 0
  %.op.i.i = lshr i32 %52, 9
  %phi.bo.i.i = select i1 %tobool2.not.i28.i.i, i32 1, i32 %.op.i.i
  br label %get_max_io_size.exit.i

get_max_io_size.exit.i:                           ; preds = %land.lhs.true.i.i.i51, %blk_max_size_offset.exit.i.i.get_max_io_size.exit.i_crit_edge
  %retval1.0.i.i.i52 = phi i32 [ 1, %blk_max_size_offset.exit.i.i.get_max_io_size.exit.i_crit_edge ], [ %phi.bo.i.i, %land.lhs.true.i.i.i51 ]
  %shr.i.i53 = lshr i32 %50, 9
  %sub.i.i = add nsw i32 %shr.i.i53, -1
  %53 = trunc i64 %37 to i32
  %conv6.i.i = and i32 %sub.i.i, %53
  %add.i.i = add i32 %conv6.i.i, %retval.0.i.i.i
  %neg.i.i54 = sub nsw i32 0, %shr.i.i53
  %and8.i.i = and i32 %add.i.i, %neg.i.i54
  call void @__sanitizer_cov_trace_cmp4(i32 %and8.i.i, i32 %conv6.i.i)
  %cmp.i.i = icmp ugt i32 %and8.i.i, %conv6.i.i
  %sub10.i.i = sub i32 %and8.i.i, %conv6.i.i
  %neg12.i.i = sub nsw i32 0, %retval1.0.i.i.i52
  %and13.i.i = and i32 %retval.0.i.i.i, %neg12.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 %sub10.i.i, i32 %and13.i.i
  %max_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 21
  %54 = ptrtoint ptr %max_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %max_segments.i.i, align 4
  %conv.i55 = zext i16 %55 to i32
  %iter.sroa.6.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %iter.sroa.6.0.copyload.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not120.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not120.i, label %get_max_io_size.exit.i.for.end.i_crit_edge, label %land.rhs.lr.ph.i

get_max_io_size.exit.i.for.end.i_crit_edge:       ; preds = %get_max_io_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

land.rhs.lr.ph.i:                                 ; preds = %get_max_io_size.exit.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 3
  %57 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %iter.sroa.15.0.copyload.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 2
  %58 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 20
  %59 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bi_io_vec.i, align 8
  %virt_boundary_mask.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 2
  %61 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 8388607) #10
  %seg_boundary_mask.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 1
  %max_segment_size.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %bvprvp.0127.i = phi ptr [ null, %land.rhs.lr.ph.i ], [ %bvprv.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %sectors.0126.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %sectors.3.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %nsegs.0124.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %nsegs.4.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.0123.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i83.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.0122.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.15.0121.i = phi i32 [ %iter.sroa.15.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.15.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %60, i32 %iter.sroa.10.0122.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i, align 4
  %bv_len7.i = getelementptr %struct.bio_vec, ptr %60, i32 %iter.sroa.10.0122.i, i32 1
  %64 = ptrtoint ptr %bv_len7.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bv_len7.i, align 4
  %sub.i56 = sub i32 %65, %iter.sroa.15.0121.i
  %66 = call i32 @llvm.umin.i32(i32 %iter.sroa.6.0123.i, i32 %sub.i56) #10
  %bv_offset12.i = getelementptr %struct.bio_vec, ptr %60, i32 %iter.sroa.10.0122.i, i32 2
  %67 = ptrtoint ptr %bv_offset12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bv_offset12.i, align 4
  %add.i57 = add i32 %68, %iter.sroa.15.0121.i
  %tobool14.not.i = icmp eq ptr %bvprvp.0127.i, null
  br i1 %tobool14.not.i, label %land.rhs.i.if.end.i59_crit_edge, label %land.lhs.true.i58

land.rhs.i.if.end.i59_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i59

land.lhs.true.i58:                                ; preds = %land.rhs.i
  %69 = ptrtoint ptr %virt_boundary_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %virt_boundary_mask.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i58.if.end.i59_crit_edge, label %if.end.i.i

land.lhs.true.i58.if.end.i59_crit_edge:           ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i59

if.end.i.i:                                       ; preds = %land.lhs.true.i58
  %and.i.i65.i = and i32 %70, %add.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65.i)
  %tobool.not.i.i66.i = icmp eq i32 %and.i.i65.i, 0
  br i1 %tobool.not.i.i66.i, label %bvec_gap_to_prev.exit.i, label %if.end.i.i.split.i_crit_edge

if.end.i.i.split.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %split.i

bvec_gap_to_prev.exit.i:                          ; preds = %if.end.i.i
  %bv_offset.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %bvprvp.0127.i, i32 0, i32 2
  %71 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i = getelementptr inbounds %struct.bio_vec, ptr %bvprvp.0127.i, i32 0, i32 1
  %73 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i67.i = add i32 %74, %72
  %and2.i.i.i = and i32 %add.i.i67.i, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.i.i.not.i, label %bvec_gap_to_prev.exit.i.if.end.i59_crit_edge, label %bvec_gap_to_prev.exit.i.split.i_crit_edge

bvec_gap_to_prev.exit.i.split.i_crit_edge:        ; preds = %bvec_gap_to_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %split.i

bvec_gap_to_prev.exit.i.if.end.i59_crit_edge:     ; preds = %bvec_gap_to_prev.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i59

if.end.i59:                                       ; preds = %bvec_gap_to_prev.exit.i.if.end.i59_crit_edge, %land.lhs.true.i58.if.end.i59_crit_edge, %land.rhs.i.if.end.i59_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %nsegs.0124.i, i32 %conv.i55)
  %cmp18.i = icmp ult i32 %nsegs.0124.i, %conv.i55
  br i1 %cmp18.i, label %land.lhs.true20.i, label %if.end.i59.if.else.i_crit_edge

if.end.i59.if.else.i_crit_edge:                   ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true20.i:                                ; preds = %if.end.i59
  %shr.i60 = lshr i32 %66, 9
  %add22.i = add i32 %shr.i60, %sectors.0126.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i, i32 %retval.0.i.i)
  %cmp23.not.i = icmp ule i32 %add22.i, %retval.0.i.i
  %add28.i = add i32 %add.i57, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add28.i)
  %cmp29.i = icmp ult i32 %add28.i, 4097
  %or.cond.i = select i1 %cmp23.not.i, i1 %cmp29.i, i1 false
  br i1 %or.cond.i, label %if.then31.i, label %land.lhs.true20.i.if.else.i_crit_edge

land.lhs.true20.i.if.else.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then31.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add nuw i32 %nsegs.0124.i, 1
  br label %if.end38.i

if.else.i:                                        ; preds = %land.lhs.true20.i.if.else.i_crit_edge, %if.end.i59.if.else.i_crit_edge
  %sub.i69.i = sub i32 %61, %sectors.0126.i
  %shl.i.i = shl i32 %sub.i69.i, 9
  %75 = call i32 @llvm.umin.i32(i32 %66, i32 %shl.i.i) #10
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %umax.i = call i32 @llvm.umax.i32(i32 %nsegs.0124.i, i32 %conv.i55) #10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.else.i
  %nsegs.1.i = phi i32 [ %nsegs.0124.i, %if.else.i ], [ %inc.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %len.0.i.i = phi i32 [ %75, %if.else.i ], [ %sub15.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %total_len.0.i.i = phi i32 [ 0, %if.else.i ], [ %add14.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i.i)
  %tobool.not.i71.i = icmp eq i32 %len.0.i.i, 0
  br i1 %tobool.not.i71.i, label %while.end.thread.i.i, label %land.rhs.i.i

while.end.thread.i.i:                             ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr48.i.i = lshr i32 %total_len.0.i.i, 9
  %add2049.i.i = add i32 %shr48.i.i, %sectors.0126.i
  br label %bvec_split_segs.exit.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nsegs.1.i, i32 %umax.i)
  %exitcond.not.i = icmp eq i32 %nsegs.1.i, %umax.i
  br i1 %exitcond.not.i, label %while.end.thread51.i.i, label %while.body.i.i

while.end.thread51.i.i:                           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr54.i.i = lshr i32 %total_len.0.i.i, 9
  %add2055.i.i = add i32 %shr54.i.i, %sectors.0126.i
  br label %split.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %add.i72.i = add i32 %total_len.0.i.i, %add.i57
  %76 = ptrtoint ptr %seg_boundary_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %seg_boundary_mask.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %78 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %79 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i73.i = add i32 %sub.ptr.div.i.i.i, %79
  %shl.i.i74.i = shl i32 %add.i.i73.i, 12
  %add1.i.i.i = add i32 %add.i72.i, %shl.i.i74.i
  %add1.not.i.i.i = xor i32 %add1.i.i.i, -1
  %sub.i.i75.i = and i32 %77, %add1.not.i.i.i
  %add2.i.i.i = add i32 %sub.i.i75.i, 1
  %80 = ptrtoint ptr %max_segment_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_segment_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %add2.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp4.i.i.i = icmp eq i32 %81, 0
  %82 = call i32 @llvm.umin.i32(i32 %add2.i.i.i, i32 %81) #10
  %spec.select.i.i.i61 = select i1 %cmp4.i.i.i, i32 %add2.i.i.i, i32 %82
  %cond14.i.i.i = select i1 %cmp.i.i.i, i32 %81, i32 %spec.select.i.i.i61
  %83 = call i32 @llvm.umin.i32(i32 %cond14.i.i.i, i32 %len.0.i.i) #10
  %inc.i.i = add i32 %nsegs.1.i, 1
  %add14.i.i = add i32 %83, %total_len.0.i.i
  %sub15.i.i = sub i32 %len.0.i.i, %83
  %add17.i.i = add i32 %add14.i.i, %add.i57
  %84 = ptrtoint ptr %virt_boundary_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %virt_boundary_mask.i.i.i, align 4
  %and.i.i62 = and i32 %add17.i.i, %85
  %tobool19.not.i.i = icmp eq i32 %and.i.i62, 0
  br i1 %tobool19.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.end.i.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %shr.i76.i = lshr i32 %add14.i.i, 9
  %add20.i.i = add i32 %shr.i76.i, %sectors.0126.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i.i)
  %cmp21.not.i.i = icmp eq i32 %sub15.i.i, 0
  br i1 %cmp21.not.i.i, label %while.end.i.i.bvec_split_segs.exit.i_crit_edge, label %while.end.i.i.split.i_crit_edge

while.end.i.i.split.i_crit_edge:                  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %split.i

while.end.i.i.bvec_split_segs.exit.i_crit_edge:   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bvec_split_segs.exit.i

bvec_split_segs.exit.i:                           ; preds = %while.end.i.i.bvec_split_segs.exit.i_crit_edge, %while.end.thread.i.i
  %nsegs.2.i = phi i32 [ %nsegs.1.i, %while.end.thread.i.i ], [ %inc.i.i, %while.end.i.i.bvec_split_segs.exit.i_crit_edge ]
  %sectors.1.i = phi i32 [ %add2049.i.i, %while.end.thread.i.i ], [ %add20.i.i, %while.end.i.i.bvec_split_segs.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %shl.i.i)
  %cmp23.i.i = icmp ugt i32 %66, %shl.i.i
  br i1 %cmp23.i.i, label %bvec_split_segs.exit.i.split.i_crit_edge, label %bvec_split_segs.exit.i.if.end38.i_crit_edge

bvec_split_segs.exit.i.if.end38.i_crit_edge:      ; preds = %bvec_split_segs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

bvec_split_segs.exit.i.split.i_crit_edge:         ; preds = %bvec_split_segs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %split.i

if.end38.i:                                       ; preds = %bvec_split_segs.exit.i.if.end38.i_crit_edge, %if.then31.i
  %nsegs.4.i = phi i32 [ %nsegs.2.i, %bvec_split_segs.exit.i.if.end38.i_crit_edge ], [ %inc.i, %if.then31.i ]
  %sectors.3.i = phi i32 [ %sectors.1.i, %bvec_split_segs.exit.i.if.end38.i_crit_edge ], [ %add22.i, %if.then31.i ]
  %86 = ptrtoint ptr %bvprv.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %63, ptr %bvprv.i, align 4
  %87 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %66, ptr %32, align 4
  %88 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add.i57, ptr %34, align 4
  %89 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bi_opf, align 8
  %and.i.i79.i = and i32 %90, 255
  %91 = add nsw i32 %and.i.i79.i, -3
  %switch.and.i.i.i = and i32 %91, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %if.end38.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i64

if.end38.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_advance_iter_single.exit.i

if.else.i.i64:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i80.i = add i32 %66, %iter.sroa.15.0121.i
  %92 = ptrtoint ptr %bv_len7.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bv_len7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i80.i, i32 %93)
  %cmp.i.i82.i = icmp eq i32 %add.i.i80.i, %93
  %spec.select.i63 = select i1 %cmp.i.i82.i, i32 0, i32 %add.i.i80.i
  %inc.i.i.i = zext i1 %cmp.i.i82.i to i32
  %spec.select111.i = add i32 %iter.sroa.10.0122.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i64, %if.end38.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.15.1.i = phi i32 [ %iter.sroa.15.0121.i, %if.end38.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i63, %if.else.i.i64 ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.0122.i, %if.end38.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select111.i, %if.else.i.i64 ]
  %sub.i.i83.i = sub i32 %iter.sroa.6.0123.i, %66
  %tobool.not.i65 = icmp eq i32 %sub.i.i83.i, 0
  br i1 %tobool.not.i65, label %bio_advance_iter_single.exit.i.for.end.i_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

bio_advance_iter_single.exit.i.for.end.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %bio_advance_iter_single.exit.i.for.end.i_crit_edge, %get_max_io_size.exit.i.for.end.i_crit_edge
  %nsegs.0.lcssa.i = phi i32 [ 0, %get_max_io_size.exit.i.for.end.i_crit_edge ], [ %nsegs.4.i, %bio_advance_iter_single.exit.i.for.end.i_crit_edge ]
  %94 = ptrtoint ptr %nr_segs to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %nsegs.0.lcssa.i, ptr %nr_segs, align 4
  br label %blk_bio_segment_split.exit

split.i:                                          ; preds = %bvec_split_segs.exit.i.split.i_crit_edge, %while.end.i.i.split.i_crit_edge, %while.end.thread51.i.i, %bvec_gap_to_prev.exit.i.split.i_crit_edge, %if.end.i.i.split.i_crit_edge
  %nsegs.5.i = phi i32 [ %umax.i, %while.end.thread51.i.i ], [ %nsegs.2.i, %bvec_split_segs.exit.i.split.i_crit_edge ], [ %nsegs.0124.i, %bvec_gap_to_prev.exit.i.split.i_crit_edge ], [ %nsegs.0124.i, %if.end.i.i.split.i_crit_edge ], [ %inc.i.i, %while.end.i.i.split.i_crit_edge ]
  %sectors.4.i = phi i32 [ %add2055.i.i, %while.end.thread51.i.i ], [ %sectors.1.i, %bvec_split_segs.exit.i.split.i_crit_edge ], [ %sectors.0126.i, %bvec_gap_to_prev.exit.i.split.i_crit_edge ], [ %sectors.0126.i, %if.end.i.i.split.i_crit_edge ], [ %add20.i.i, %while.end.i.i.split.i_crit_edge ]
  %95 = ptrtoint ptr %nr_segs to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %nsegs.5.i, ptr %nr_segs, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %bi_flags.i.i.i, align 4
  %98 = and i16 %97, -8193
  store i16 %98, ptr %bi_flags.i.i.i, align 4
  %99 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bi_opf, align 8
  %101 = and i32 %100, -16777217
  store i32 %101, ptr %bi_opf, align 8
  %call40.i = call ptr @bio_split(ptr noundef %1, i32 noundef %sectors.4.i, i32 noundef 3072, ptr noundef %bio_split7) #10
  br label %blk_bio_segment_split.exit

blk_bio_segment_split.exit:                       ; preds = %split.i, %for.end.i
  %retval.0.i66 = phi ptr [ %call40.i, %split.i ], [ null, %for.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bvprv.i) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %blk_bio_segment_split.exit, %if.end4.i46, %if.end4.i, %if.end220.i
  %split.0 = phi ptr [ %retval.0.i66, %blk_bio_segment_split.exit ], [ %call231.i, %if.end220.i ], [ %call.i, %if.end4.i ], [ %call.i45, %if.end4.i46 ]
  %tobool.not = icmp eq ptr %split.0, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %bi_opf9 = getelementptr inbounds %struct.bio, ptr %split.0, i32 0, i32 2
  %102 = ptrtoint ptr %bi_opf9 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bi_opf9, align 8
  %104 = or i32 %103, 16384
  store i32 %104, ptr %bi_opf9, align 8
  %105 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bio, align 4
  call void @bio_chain(ptr noundef nonnull %split.0, ptr noundef %106) #10
  %107 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %bio, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %108, i32 0, i32 8
  %109 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %bi_iter, align 8
  %conv11 = trunc i64 %110 to i32
  call fastcc void @trace_block_split(ptr noundef nonnull %split.0, i32 noundef %conv11)
  %111 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bio, align 4
  call void @submit_bio_noacct(ptr noundef %112) #10
  %113 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %split.0, ptr %bio, align 4
  call void @blk_throtl_charge_bio_split(ptr noundef nonnull %split.0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge, %if.end.i44.if.end_crit_edge, %sw.bb4.if.end_crit_edge, %if.end.i38.if.end_crit_edge, %sw.bb1.if.end_crit_edge, %if.end.i.if.end_crit_edge, %bio_allowed_max_sectors.exit.i.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_split(ptr noundef %bio, i32 noundef %new_sector) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_split, i32 0, i32 1), ptr blockaddress(@trace_block_split, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !46

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  %call42 = tail call i32 @__traceiter_block_split(ptr noundef null, ptr noundef %bio, i32 noundef %new_sector) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %13 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !46

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_split, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_split, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_split.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_block_split.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_throtl_charge_bio_split(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_queue_split(ptr nocapture noundef %bio) #0 align 64 {
entry:
  %nr_segs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_segs) #10
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %7 to i8
  %8 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %trunc.i, label %sw.epilog.i [
    i8 3, label %entry.if.then_crit_edge
    i8 5, label %entry.if.then_crit_edge6
    i8 9, label %entry.if.then_crit_edge7
    i8 7, label %entry.if.then_crit_edge8
  ]

entry.if.then_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

sw.epilog.i:                                      ; preds = %entry
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 5
  %9 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chunk_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.epilog.i.if.then_crit_edge

sw.epilog.i.if.then_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp.not.i = icmp eq i16 %12, 1
  br i1 %cmp.not.i, label %blk_may_split.exit, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

blk_may_split.exit:                               ; preds = %lor.lhs.false.i
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_io_vec.i, align 8
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bv_len.i, align 4
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bv_offset.i, align 4
  %add.i = add i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp3.i, label %blk_may_split.exit.if.then_crit_edge, label %blk_may_split.exit.if.end_crit_edge

blk_may_split.exit.if.end_crit_edge:              ; preds = %blk_may_split.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

blk_may_split.exit.if.then_crit_edge:             ; preds = %blk_may_split.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %blk_may_split.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %sw.epilog.i.if.then_crit_edge, %entry.if.then_crit_edge, %entry.if.then_crit_edge6, %entry.if.then_crit_edge7, %entry.if.then_crit_edge8
  call void @__blk_queue_split(ptr noundef %5, ptr noundef %bio, ptr noundef nonnull %nr_segs)
  br label %if.end

if.end:                                           ; preds = %if.then, %blk_may_split.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_segs) #10
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_recalc_rq_segments(ptr nocapture noundef readonly %rq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bio = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %trunc, label %if.end.for.body18_crit_edge [
    i8 3, label %if.end.sw.bb_crit_edge
    i8 5, label %if.end.sw.bb_crit_edge123
    i8 9, label %if.end.cleanup_crit_edge
    i8 7, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.sw.bb_crit_edge123:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.for.body18_crit_edge:                      ; preds = %if.end
  br label %for.body18

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge123
  %5 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rq, align 8
  %max_discard_segments.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 37, i32 23
  %7 = ptrtoint ptr %max_discard_segments.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_discard_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp = icmp ugt i16 %8, 1
  br i1 %cmp, label %sw.bb.for.cond_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.for.cond_crit_edge:                         ; preds = %sw.bb
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %sw.bb.for.cond_crit_edge
  %nr_phys_segs.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %sw.bb.for.cond_crit_edge ]
  %bio4.0.in = phi ptr [ %bio4.0, %for.cond.for.cond_crit_edge ], [ %bio, %sw.bb.for.cond_crit_edge ]
  %9 = ptrtoint ptr %bio4.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %bio4.0 = load ptr, ptr %bio4.0.in, align 8
  %tobool6.not = icmp eq ptr %bio4.0, null
  %inc = add i32 %nr_phys_segs.0, 1
  br i1 %tobool6.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body18:                                       ; preds = %for.inc54.for.body18_crit_edge, %if.end.for.body18_crit_edge
  %storemerge112 = phi ptr [ %39, %for.inc54.for.body18_crit_edge ], [ %1, %if.end.for.body18_crit_edge ]
  %nr_sectors.0111 = phi i32 [ %nr_sectors.1.lcssa, %for.inc54.for.body18_crit_edge ], [ 0, %if.end.for.body18_crit_edge ]
  %nr_phys_segs.1110 = phi i32 [ %nr_phys_segs.2.lcssa, %for.inc54.for.body18_crit_edge ], [ 0, %if.end.for.body18_crit_edge ]
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge112, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool23.not102 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool23.not102, label %for.body18.for.inc54_crit_edge, label %land.rhs.lr.ph

for.body18.for.inc54_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

land.rhs.lr.ph:                                   ; preds = %for.body18
  %iter.sroa.15.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge112, i32 0, i32 8, i32 3
  %11 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %iter.sroa.15.0.copyload = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %storemerge112, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %storemerge112, i32 0, i32 20
  %13 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_io_vec, align 8
  %15 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rq, align 8
  %seg_boundary_mask.i.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 1
  %max_segment_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 7
  %virt_boundary_mask.i.i = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 37, i32 2
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %storemerge112, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %18, 255
  %19 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %19, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %iter.sroa.6.0107 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i78, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.0106 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.15.0105 = phi i32 [ %iter.sroa.15.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.15.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %nr_sectors.1104 = phi i32 [ %nr_sectors.0111, %land.rhs.lr.ph ], [ %nr_sectors.3, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %nr_phys_segs.2103 = phi i32 [ %nr_phys_segs.1110, %land.rhs.lr.ph ], [ %nr_phys_segs.5, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.bio_vec, ptr %14, i32 %iter.sroa.10.0106
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %bv_len34 = getelementptr %struct.bio_vec, ptr %14, i32 %iter.sroa.10.0106, i32 1
  %22 = ptrtoint ptr %bv_len34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len34, align 4
  %sub = sub i32 %23, %iter.sroa.15.0105
  %24 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0107, i32 %sub)
  %bv_offset43 = getelementptr %struct.bio_vec, ptr %14, i32 %iter.sroa.10.0106, i32 2
  %25 = ptrtoint ptr %bv_offset43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_offset43, align 4
  %add = add i32 %26, %iter.sroa.15.0105
  %.neg = mul i32 %nr_sectors.1104, -512
  %shl.i = add i32 %.neg, -512
  %27 = tail call i32 @llvm.umin.i32(i32 %24, i32 %shl.i) #10
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %land.rhs
  %nr_phys_segs.3 = phi i32 [ %nr_phys_segs.2103, %land.rhs ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  %len.0.i = phi i32 [ %27, %land.rhs ], [ %sub15.i, %while.body.i.while.cond.i_crit_edge ]
  %total_len.0.i = phi i32 [ 0, %land.rhs ], [ %add14.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.bvec_split_segs.exit_crit_edge, label %land.rhs.i

while.cond.i.bvec_split_segs.exit_crit_edge:      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bvec_split_segs.exit

land.rhs.i:                                       ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %nr_phys_segs.3)
  %cmp7.i.not = icmp eq i32 %nr_phys_segs.3, -1
  br i1 %cmp7.i.not, label %land.rhs.i.bvec_split_segs.exit_crit_edge, label %while.body.i

land.rhs.i.bvec_split_segs.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bvec_split_segs.exit

while.body.i:                                     ; preds = %land.rhs.i
  %add.i = add i32 %total_len.0.i, %add
  %28 = ptrtoint ptr %seg_boundary_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seg_boundary_mask.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %31
  %shl.i.i = shl i32 %add.i.i, 12
  %add1.i.i = add i32 %add.i, %shl.i.i
  %add1.not.i.i = xor i32 %add1.i.i, -1
  %sub.i.i = and i32 %29, %add1.not.i.i
  %add2.i.i = add i32 %sub.i.i, 1
  %32 = ptrtoint ptr %max_segment_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_segment_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i.i)
  %cmp.i.i = icmp eq i32 %add2.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp4.i.i = icmp eq i32 %33, 0
  %34 = tail call i32 @llvm.umin.i32(i32 %add2.i.i, i32 %33) #10
  %spec.select.i.i = select i1 %cmp4.i.i, i32 %add2.i.i, i32 %34
  %cond14.i.i = select i1 %cmp.i.i, i32 %33, i32 %spec.select.i.i
  %35 = tail call i32 @llvm.umin.i32(i32 %cond14.i.i, i32 %len.0.i) #10
  %inc.i = add nuw i32 %nr_phys_segs.3, 1
  %add14.i = add i32 %35, %total_len.0.i
  %sub15.i = sub i32 %len.0.i, %35
  %add17.i = add i32 %add14.i, %add
  %36 = ptrtoint ptr %virt_boundary_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virt_boundary_mask.i.i, align 4
  %and.i = and i32 %add17.i, %37
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.bvec_split_segs.exit_crit_edge

while.body.i.bvec_split_segs.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bvec_split_segs.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

bvec_split_segs.exit:                             ; preds = %while.body.i.bvec_split_segs.exit_crit_edge, %land.rhs.i.bvec_split_segs.exit_crit_edge, %while.cond.i.bvec_split_segs.exit_crit_edge
  %nr_phys_segs.5 = phi i32 [ %nr_phys_segs.3, %while.cond.i.bvec_split_segs.exit_crit_edge ], [ -1, %land.rhs.i.bvec_split_segs.exit_crit_edge ], [ %inc.i, %while.body.i.bvec_split_segs.exit_crit_edge ]
  %shr54.i.pn.in = phi i32 [ %total_len.0.i, %while.cond.i.bvec_split_segs.exit_crit_edge ], [ %total_len.0.i, %land.rhs.i.bvec_split_segs.exit_crit_edge ], [ %add14.i, %while.body.i.bvec_split_segs.exit_crit_edge ]
  %shr54.i.pn = lshr i32 %shr54.i.pn.in, 9
  %nr_sectors.3 = add i32 %shr54.i.pn, %nr_sectors.1104
  br i1 %switch.selectcmp.i.i, label %bvec_split_segs.exit.bio_advance_iter_single.exit_crit_edge, label %if.else.i

bvec_split_segs.exit.bio_advance_iter_single.exit_crit_edge: ; preds = %bvec_split_segs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %bvec_split_segs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i76 = add i32 %24, %iter.sroa.15.0105
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i76, i32 %23)
  %cmp.i.i77 = icmp eq i32 %add.i.i76, %23
  %spec.select = select i1 %cmp.i.i77, i32 0, i32 %add.i.i76
  %inc.i.i = zext i1 %cmp.i.i77 to i32
  %spec.select96 = add i32 %iter.sroa.10.0106, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %bvec_split_segs.exit.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.15.1 = phi i32 [ %iter.sroa.15.0105, %bvec_split_segs.exit.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.0106, %bvec_split_segs.exit.bio_advance_iter_single.exit_crit_edge ], [ %spec.select96, %if.else.i ]
  %sub.i.i78 = sub i32 %iter.sroa.6.0107, %24
  %tobool23.not = icmp eq i32 %sub.i.i78, 0
  br i1 %tobool23.not, label %bio_advance_iter_single.exit.for.inc54_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

bio_advance_iter_single.exit.for.inc54_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc54

for.inc54:                                        ; preds = %bio_advance_iter_single.exit.for.inc54_crit_edge, %for.body18.for.inc54_crit_edge
  %nr_phys_segs.2.lcssa = phi i32 [ %nr_phys_segs.1110, %for.body18.for.inc54_crit_edge ], [ %nr_phys_segs.5, %bio_advance_iter_single.exit.for.inc54_crit_edge ]
  %nr_sectors.1.lcssa = phi i32 [ %nr_sectors.0111, %for.body18.for.inc54_crit_edge ], [ %nr_sectors.3, %bio_advance_iter_single.exit.for.inc54_crit_edge ]
  %38 = ptrtoint ptr %storemerge112 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %storemerge112, align 8
  %tobool17.not = icmp eq ptr %39, null
  br i1 %tobool17.not, label %for.inc54.cleanup_crit_edge, label %for.inc54.for.body18_crit_edge

for.inc54.for.body18_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

for.inc54.cleanup_crit_edge:                      ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc54.cleanup_crit_edge, %sw.bb9, %for.cond.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb9 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %nr_phys_segs.2.lcssa, %for.inc54.cleanup_crit_edge ], [ %nr_phys_segs.0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__blk_rq_map_sg(ptr nocapture noundef readonly %q, ptr nocapture noundef readonly %rq, ptr noundef %sglist, ptr nocapture noundef %last_sg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags, align 8
  %and = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 29
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.unpack = load i32, ptr %2, align 8
  %.elt134 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 29, i32 0, i32 1
  %4 = ptrtoint ptr %.elt134 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack135 = load i32, ptr %.elt134, align 4
  %.elt136 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 29, i32 0, i32 2
  %5 = ptrtoint ptr %.elt136 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack137 = load i32, ptr %.elt136, align 8
  %6 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %last_sg, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.then.blk_next_sg.exit.i_crit_edge, label %if.end.i.i

if.then.blk_next_sg.exit.i_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_next_sg.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i.i = and i32 %9, -3
  store i32 %and.i.i.i, ptr %7, align 4
  %10 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last_sg, align 4
  %call.i.i = tail call ptr @sg_next(ptr noundef %11) #10
  br label %blk_next_sg.exit.i

blk_next_sg.exit.i:                               ; preds = %if.end.i.i, %if.then.blk_next_sg.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.end.i.i ], [ %sglist, %if.then.blk_next_sg.exit.i_crit_edge ]
  %12 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i.i, ptr %last_sg, align 4
  %and2.i.i.i = and i32 %.unpack, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !46

do.body5.i.i.i:                                   ; preds = %blk_next_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

do.body11.i.i.i:                                  ; preds = %blk_next_sg.exit.i
  %13 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %retval.0.i.i, align 4
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %do.body11.i.i.i.if.end68.sink.split_crit_edge, label %do.body19.i.i.i, !prof !46

do.body11.i.i.i.if.end68.sink.split_crit_edge:    ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.sink.split

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

if.else:                                          ; preds = %entry
  %bio = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %15 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bio, align 8
  %tobool1.not = icmp eq ptr %16, null
  br i1 %tobool1.not, label %if.else.if.end68_crit_edge, label %land.lhs.true

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true:                                    ; preds = %if.else
  %bi_opf = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf, align 8
  %and3 = and i32 %18, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and3)
  %cmp = icmp eq i32 %and3, 7
  br i1 %cmp, label %if.then4, label %for.body.lr.ph.i

if.then4:                                         ; preds = %land.lhs.true
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 20
  %19 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bi_io_vec, align 8
  %bi_idx = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %bi_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bi_idx, align 4
  %arrayidx = getelementptr %struct.bio_vec, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %20, i32 %22, i32 2
  %25 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_offset, align 4
  %bi_bvec_done = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 8, i32 3
  %27 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_bvec_done, align 8
  %add = add i32 %28, %26
  %div133 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %24, i32 %div133
  %bi_size = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_size, align 8
  %bv_len24 = getelementptr %struct.bio_vec, ptr %20, i32 %22, i32 1
  %31 = ptrtoint ptr %bv_len24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_len24, align 4
  %sub = sub i32 %32, %28
  %33 = tail call i32 @llvm.umin.i32(i32 %30, i32 %sub)
  %rem = and i32 %add, 4095
  %sub40 = sub nuw nsw i32 4096, %rem
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %sub40)
  %35 = ptrtoint ptr %add.ptr to i32
  %36 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %last_sg, align 4
  %tobool.not.i.i138 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i138, label %if.then4.blk_next_sg.exit.i145_crit_edge, label %if.end.i.i141

if.then4.blk_next_sg.exit.i145_crit_edge:         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_next_sg.exit.i145

if.end.i.i141:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %and.i.i.i139 = and i32 %39, -3
  store i32 %and.i.i.i139, ptr %37, align 4
  %40 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %last_sg, align 4
  %call.i.i140 = tail call ptr @sg_next(ptr noundef %41) #10
  br label %blk_next_sg.exit.i145

blk_next_sg.exit.i145:                            ; preds = %if.end.i.i141, %if.then4.blk_next_sg.exit.i145_crit_edge
  %retval.0.i.i142 = phi ptr [ %call.i.i140, %if.end.i.i141 ], [ %sglist, %if.then4.blk_next_sg.exit.i145_crit_edge ]
  %42 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i.i142, ptr %last_sg, align 4
  %and2.i.i.i143 = and i32 %35, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i143)
  %tobool.not.i.i.i144 = icmp eq i32 %and2.i.i.i143, 0
  br i1 %tobool.not.i.i.i144, label %do.body11.i.i.i149, label %do.body5.i.i.i146, !prof !46

do.body5.i.i.i146:                                ; preds = %blk_next_sg.exit.i145
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

do.body11.i.i.i149:                               ; preds = %blk_next_sg.exit.i145
  %43 = ptrtoint ptr %retval.0.i.i142 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %retval.0.i.i142, align 4
  %and.i.i.i.i147 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i147)
  %tobool.i.not.i.i.i148 = icmp eq i32 %and.i.i.i.i147, 0
  br i1 %tobool.i.not.i.i.i148, label %do.body11.i.i.i149.if.end68.sink.split_crit_edge, label %do.body19.i.i.i150, !prof !46

do.body11.i.i.i149.if.end68.sink.split_crit_edge: ; preds = %do.body11.i.i.i149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.sink.split

do.body19.i.i.i150:                               ; preds = %do.body11.i.i.i149
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

for.body.lr.ph.i:                                 ; preds = %land.lhs.true
  %max_segment_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 7
  %seg_boundary_mask.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc34.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bio.addr.0151.i = phi ptr [ %16, %for.body.lr.ph.i ], [ %111, %for.inc34.i.for.body.i_crit_edge ]
  %nsegs.0150.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nsegs.1.lcssa176.i, %for.inc34.i.for.body.i_crit_edge ]
  %new_bio.0.off0149.i = phi i1 [ false, %for.body.lr.ph.i ], [ %new_bio.2.off0.i, %for.inc34.i.for.body.i_crit_edge ]
  %bvprv.sroa.6.0147.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bvprv.sroa.6.1.i, %for.inc34.i.for.body.i_crit_edge ]
  %bvprv.sroa.5.0145.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bvprv.sroa.5.1.i, %for.inc34.i.for.body.i_crit_edge ]
  %bvprv.sroa.0.0143.i = phi ptr [ null, %for.body.lr.ph.i ], [ %bvprv.sroa.0.1.i, %for.inc34.i.for.body.i_crit_edge ]
  %iter.sroa.6.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio.addr.0151.i, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %iter.sroa.6.0.copyload.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool2.not129.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool2.not129.i, label %for.body.i.for.inc34.i_crit_edge, label %land.rhs.lr.ph.i

for.body.i.for.inc34.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc34.i

land.rhs.lr.ph.i:                                 ; preds = %for.body.i
  %iter.sroa.15.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio.addr.0151.i, i32 0, i32 8, i32 3
  %46 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %iter.sroa.15.0.copyload.i = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %bio.addr.0151.i, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio.addr.0151.i, i32 0, i32 20
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %bvprv.sroa.0.0143.i to i32
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %bio.addr.0151.i, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %nsegs.1134.i = phi i32 [ %nsegs.0150.i, %land.rhs.lr.ph.i ], [ %nsegs.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %new_bio.1.off0133.i = phi i1 [ %new_bio.0.off0149.i, %land.rhs.lr.ph.i ], [ false, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.6.0132.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i85.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.0131.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.15.0130.i = phi i32 [ %iter.sroa.15.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.15.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %48 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_io_vec.i, align 8
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %49, i32 %iter.sroa.10.0131.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %bv_len8.i = getelementptr %struct.bio_vec, ptr %49, i32 %iter.sroa.10.0131.i, i32 1
  %52 = ptrtoint ptr %bv_len8.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bv_len8.i, align 4
  %sub.i = sub i32 %53, %iter.sroa.15.0130.i
  %54 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0132.i, i32 %sub.i) #10
  %bv_offset12.i = getelementptr %struct.bio_vec, ptr %49, i32 %iter.sroa.10.0131.i, i32 2
  %55 = ptrtoint ptr %bv_offset12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bv_offset12.i, align 4
  %add.i = add i32 %56, %iter.sroa.15.0130.i
  br i1 %new_bio.1.off0133.i, label %land.lhs.true.i, label %land.rhs.i.if.end.i_crit_edge

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.rhs.i
  %57 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %last_sg, align 4
  %tobool.not.i.i156 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i156, label %land.lhs.true.i.if.end.i_crit_edge, label %if.end.i.i158

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i.i158:                                    ; preds = %land.lhs.true.i
  %length.i.i157 = getelementptr inbounds %struct.scatterlist, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %length.i.i157 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %length.i.i157, align 4
  %add.i.i = add i32 %60, %54
  %61 = ptrtoint ptr %max_segment_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_segment_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %62)
  %cmp.i.i = icmp ugt i32 %add.i.i, %62
  br i1 %cmp.i.i, label %if.end.i.i158.if.end.i_crit_edge, label %if.end2.i.i

if.end.i.i158.if.end.i_crit_edge:                 ; preds = %if.end.i.i158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end2.i.i:                                      ; preds = %if.end.i.i158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i = add i32 %sub.ptr.div.i.i.i, %64
  %shl.i.i.i = shl i32 %add.i.i.i, 12
  %add1.i.i.i = add i32 %shl.i.i.i, %bvprv.sroa.6.0147.i
  %sub.ptr.lhs.cast3.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub5.i.i.i = sub i32 %sub.ptr.lhs.cast3.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div6.i.i.i = sdiv exact i32 %sub.ptr.sub5.i.i.i, 36
  %add7.i.i.i = add i32 %sub.ptr.div6.i.i.i, %64
  %shl8.i.i.i = shl i32 %add7.i.i.i, 12
  %add10.i.i.i = add i32 %shl8.i.i.i, %add.i
  %add11.i.i.i = add i32 %add1.i.i.i, %bvprv.sroa.5.0145.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i.i, i32 %add10.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %add11.i.i.i, %add10.i.i.i
  br i1 %cmp.not.i.i.i, label %biovec_phys_mergeable.exit.i.i, label %if.end2.i.i.if.end.i_crit_edge

if.end2.i.i.if.end.i_crit_edge:                   ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

biovec_phys_mergeable.exit.i.i:                   ; preds = %if.end2.i.i
  %65 = ptrtoint ptr %seg_boundary_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %seg_boundary_mask.i.i.i.i, align 4
  %or.i.i.i159 = or i32 %66, %add1.i.i.i
  %add13.i.i.i = add i32 %54, -1
  %sub.i.i.i = add i32 %add13.i.i.i, %add10.i.i.i
  %or14.i.i.i = or i32 %66, %sub.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i.i159, i32 %or14.i.i.i)
  %cmp15.not.i.i.i = icmp eq i32 %or.i.i.i159, %or14.i.i.i
  br i1 %cmp15.not.i.i.i, label %__blk_segment_map_sg_merge.exit.i, label %biovec_phys_mergeable.exit.i.i.if.end.i_crit_edge

biovec_phys_mergeable.exit.i.i.if.end.i_crit_edge: ; preds = %biovec_phys_mergeable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

__blk_segment_map_sg_merge.exit.i:                ; preds = %biovec_phys_mergeable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %length.i.i157 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i.i, ptr %length.i.i157, align 4
  br label %next_bvec.i

if.end.i:                                         ; preds = %biovec_phys_mergeable.exit.i.i.if.end.i_crit_edge, %if.end2.i.i.if.end.i_crit_edge, %if.end.i.i158.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %land.rhs.i.if.end.i_crit_edge
  %add18.i = add i32 %add.i, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add18.i)
  %cmp19.i = icmp ult i32 %add18.i, 4097
  br i1 %cmp19.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end.i
  %68 = ptrtoint ptr %51 to i32
  %69 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %last_sg, align 4
  %tobool.not.i.i.i160 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.i160, label %if.then20.i.blk_next_sg.exit.i.i_crit_edge, label %if.end.i.i.i

if.then20.i.blk_next_sg.exit.i.i_crit_edge:       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_next_sg.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %and.i.i.i.i161 = and i32 %72, -3
  store i32 %and.i.i.i.i161, ptr %70, align 4
  %73 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %last_sg, align 4
  %call.i.i.i = tail call ptr @sg_next(ptr noundef %74) #10
  br label %blk_next_sg.exit.i.i

blk_next_sg.exit.i.i:                             ; preds = %if.end.i.i.i, %if.then20.i.blk_next_sg.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call.i.i.i, %if.end.i.i.i ], [ %sglist, %if.then20.i.blk_next_sg.exit.i.i_crit_edge ]
  %75 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %retval.0.i.i.i, ptr %last_sg, align 4
  %76 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %retval.0.i.i.i, align 4
  %and2.i.i.i.i = and i32 %68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !46

do.body5.i.i.i.i:                                 ; preds = %blk_next_sg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

do.body11.i.i.i.i:                                ; preds = %blk_next_sg.exit.i.i
  %and.i.i.i.i.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %__blk_bvec_map_sg.exit.i, label %do.body19.i.i.i.i, !prof !46

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

__blk_bvec_map_sg.exit.i:                         ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i1.i.i = and i32 %77, 3
  %or.i.i.i.i = or i32 %and.i.i1.i.i, %68
  %78 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or.i.i.i.i, ptr %retval.0.i.i.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %54, ptr %length.i.i.i, align 4
  %add22.i = add i32 %nsegs.1134.i, 1
  br label %next_bvec.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.not25.i.i = icmp eq i32 %54, 0
  br i1 %cmp.not25.i.i, label %if.else.i.blk_bvec_map_sg.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.else.i.blk_bvec_map_sg.exit.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_bvec_map_sg.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.else.i
  %sub.ptr.lhs.cast.i.i56.i = ptrtoint ptr %51 to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %sg_set_page.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %nbytes.028.i.i = phi i32 [ %54, %while.body.lr.ph.i.i ], [ %sub.i.i, %sg_set_page.exit.i.i.while.body.i.i_crit_edge ]
  %nsegs.027.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %sg_set_page.exit.i.i.while.body.i.i_crit_edge ]
  %total.026.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %add4.i.i, %sg_set_page.exit.i.i.while.body.i.i_crit_edge ]
  %add.i55.i = add i32 %total.026.i.i, %add.i
  %81 = ptrtoint ptr %seg_boundary_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %seg_boundary_mask.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %83 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i57.i = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i.i58.i = sub i32 %sub.ptr.lhs.cast.i.i56.i, %sub.ptr.rhs.cast.i.i57.i
  %sub.ptr.div.i.i59.i = sdiv exact i32 %sub.ptr.sub.i.i58.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %84 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i60.i = add i32 %sub.ptr.div.i.i59.i, %84
  %shl.i.i61.i = shl i32 %add.i.i60.i, 12
  %add1.i.i62.i = add i32 %shl.i.i61.i, %add.i55.i
  %add1.not.i.i.i = xor i32 %add1.i.i62.i, -1
  %sub.i.i63.i = and i32 %82, %add1.not.i.i.i
  %add2.i.i.i = add i32 %sub.i.i63.i, 1
  %85 = ptrtoint ptr %max_segment_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_segment_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i.i.i)
  %cmp.i.i.i = icmp eq i32 %add2.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp4.i.i.i = icmp eq i32 %86, 0
  %87 = tail call i32 @llvm.umin.i32(i32 %add2.i.i.i, i32 %86) #10
  %spec.select.i.i.i = select i1 %cmp4.i.i.i, i32 %add2.i.i.i, i32 %87
  %cond14.i.i.i = select i1 %cmp.i.i.i, i32 %86, i32 %spec.select.i.i.i
  %88 = tail call i32 @llvm.umin.i32(i32 %cond14.i.i.i, i32 %nbytes.028.i.i) #10
  %shr.i.i = lshr i32 %add.i55.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %51, i32 %shr.i.i
  %and.i.i = and i32 %add.i55.i, 4095
  %89 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %last_sg, align 4
  %tobool.not.i.i64.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i64.i, label %while.body.i.i.blk_next_sg.exit.i71.i_crit_edge, label %if.end.i.i67.i

while.body.i.i.blk_next_sg.exit.i71.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_next_sg.exit.i71.i

if.end.i.i67.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %and.i.i.i65.i = and i32 %92, -3
  store i32 %and.i.i.i65.i, ptr %90, align 4
  %93 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %last_sg, align 4
  %call.i.i66.i = tail call ptr @sg_next(ptr noundef %94) #10
  br label %blk_next_sg.exit.i71.i

blk_next_sg.exit.i71.i:                           ; preds = %if.end.i.i67.i, %while.body.i.i.blk_next_sg.exit.i71.i_crit_edge
  %retval.0.i.i68.i = phi ptr [ %call.i.i66.i, %if.end.i.i67.i ], [ %sglist, %while.body.i.i.blk_next_sg.exit.i71.i_crit_edge ]
  %95 = ptrtoint ptr %last_sg to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %retval.0.i.i68.i, ptr %last_sg, align 4
  %96 = ptrtoint ptr %retval.0.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %retval.0.i.i68.i, align 4
  %98 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i69.i = and i32 %98, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i69.i)
  %tobool.not.i.i.i70.i = icmp eq i32 %and2.i.i.i69.i, 0
  br i1 %tobool.not.i.i.i70.i, label %do.body11.i.i.i75.i, label %do.body5.i.i.i72.i, !prof !46

do.body5.i.i.i72.i:                               ; preds = %blk_next_sg.exit.i71.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

do.body11.i.i.i75.i:                              ; preds = %blk_next_sg.exit.i71.i
  %and.i.i.i.i73.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i73.i)
  %tobool.i.not.i.i.i74.i = icmp eq i32 %and.i.i.i.i73.i, 0
  br i1 %tobool.i.not.i.i.i74.i, label %sg_set_page.exit.i.i, label %do.body19.i.i.i76.i, !prof !46

do.body19.i.i.i76.i:                              ; preds = %do.body11.i.i.i75.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !56
  unreachable

sg_set_page.exit.i.i:                             ; preds = %do.body11.i.i.i75.i
  %and.i.i22.i.i = and i32 %97, 3
  %or.i.i.i77.i = or i32 %and.i.i22.i.i, %98
  %99 = ptrtoint ptr %retval.0.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i.i.i77.i, ptr %retval.0.i.i68.i, align 4
  %offset1.i.i78.i = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i.i68.i, i32 0, i32 1
  %100 = ptrtoint ptr %offset1.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %and.i.i, ptr %offset1.i.i78.i, align 4
  %length.i.i79.i = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i.i68.i, i32 0, i32 2
  %101 = ptrtoint ptr %length.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %88, ptr %length.i.i79.i, align 4
  %add4.i.i = add i32 %88, %total.026.i.i
  %sub.i.i = sub i32 %nbytes.028.i.i, %88
  %inc.i.i = add i32 %nsegs.027.i.i, 1
  %cmp.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %sg_set_page.exit.i.i.blk_bvec_map_sg.exit.i_crit_edge, label %sg_set_page.exit.i.i.while.body.i.i_crit_edge

sg_set_page.exit.i.i.while.body.i.i_crit_edge:    ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

sg_set_page.exit.i.i.blk_bvec_map_sg.exit.i_crit_edge: ; preds = %sg_set_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_bvec_map_sg.exit.i

blk_bvec_map_sg.exit.i:                           ; preds = %sg_set_page.exit.i.i.blk_bvec_map_sg.exit.i_crit_edge, %if.else.i.blk_bvec_map_sg.exit.i_crit_edge
  %nsegs.0.lcssa.i.i = phi i32 [ 0, %if.else.i.blk_bvec_map_sg.exit.i_crit_edge ], [ %inc.i.i, %sg_set_page.exit.i.i.blk_bvec_map_sg.exit.i_crit_edge ]
  %add24.i = add i32 %nsegs.0.lcssa.i.i, %nsegs.1134.i
  br label %next_bvec.i

next_bvec.i:                                      ; preds = %blk_bvec_map_sg.exit.i, %__blk_bvec_map_sg.exit.i, %__blk_segment_map_sg_merge.exit.i
  %nsegs.2.i = phi i32 [ %nsegs.1134.i, %__blk_segment_map_sg_merge.exit.i ], [ %add22.i, %__blk_bvec_map_sg.exit.i ], [ %add24.i, %blk_bvec_map_sg.exit.i ]
  %102 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i.i162 = and i32 %103, 255
  %104 = add nsw i32 %and.i.i.i162, -3
  %switch.and.i.i.i = and i32 %104, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %next_bvec.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

next_bvec.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %next_bvec.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %next_bvec.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bi_io_vec.i, align 8
  %add.i.i82.i = add i32 %54, %iter.sroa.15.0130.i
  %bv_len.i.i83.i = getelementptr %struct.bio_vec, ptr %106, i32 %iter.sroa.10.0131.i, i32 1
  %107 = ptrtoint ptr %bv_len.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_len.i.i83.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i82.i, i32 %108)
  %cmp.i.i84.i = icmp eq i32 %add.i.i82.i, %108
  %spec.select.i = select i1 %cmp.i.i84.i, i32 0, i32 %add.i.i82.i
  %inc.i.i.i = zext i1 %cmp.i.i84.i to i32
  %spec.select101.i = add i32 %iter.sroa.10.0131.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %next_bvec.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.15.1.i = phi i32 [ %iter.sroa.15.0130.i, %next_bvec.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.0131.i, %next_bvec.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select101.i, %if.else.i.i ]
  %sub.i.i85.i = sub i32 %iter.sroa.6.0132.i, %54
  %tobool2.not.i = icmp eq i32 %sub.i.i85.i, 0
  br i1 %tobool2.not.i, label %for.end.i, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.end.i:                                        ; preds = %bio_advance_iter_single.exit.i
  %109 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr.i = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool29.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool29.not.i, label %for.end.i.for.inc34.i_crit_edge, label %if.then32.i, !prof !45

for.end.i.for.inc34.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc34.i

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc34.i

for.inc34.i:                                      ; preds = %if.then32.i, %for.end.i.for.inc34.i_crit_edge, %for.body.i.for.inc34.i_crit_edge
  %nsegs.1.lcssa176.i = phi i32 [ %nsegs.2.i, %for.end.i.for.inc34.i_crit_edge ], [ %nsegs.2.i, %if.then32.i ], [ %nsegs.0150.i, %for.body.i.for.inc34.i_crit_edge ]
  %bvprv.sroa.0.1.i = phi ptr [ %bvprv.sroa.0.0143.i, %for.end.i.for.inc34.i_crit_edge ], [ %51, %if.then32.i ], [ %bvprv.sroa.0.0143.i, %for.body.i.for.inc34.i_crit_edge ]
  %bvprv.sroa.5.1.i = phi i32 [ %bvprv.sroa.5.0145.i, %for.end.i.for.inc34.i_crit_edge ], [ %54, %if.then32.i ], [ %bvprv.sroa.5.0145.i, %for.body.i.for.inc34.i_crit_edge ]
  %bvprv.sroa.6.1.i = phi i32 [ %bvprv.sroa.6.0147.i, %for.end.i.for.inc34.i_crit_edge ], [ %add.i, %if.then32.i ], [ %bvprv.sroa.6.0147.i, %for.body.i.for.inc34.i_crit_edge ]
  %new_bio.2.off0.i = phi i1 [ false, %for.end.i.for.inc34.i_crit_edge ], [ true, %if.then32.i ], [ %new_bio.0.off0149.i, %for.body.i.for.inc34.i_crit_edge ]
  %110 = ptrtoint ptr %bio.addr.0151.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bio.addr.0151.i, align 8
  %tobool.not.i = icmp eq ptr %111, null
  br i1 %tobool.not.i, label %for.inc34.i.if.end68_crit_edge, label %for.inc34.i.for.body.i_crit_edge

for.inc34.i.for.body.i_crit_edge:                 ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc34.i.if.end68_crit_edge:                   ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68.sink.split:                              ; preds = %do.body11.i.i.i149.if.end68.sink.split_crit_edge, %do.body11.i.i.i.if.end68.sink.split_crit_edge
  %.sink208 = phi i32 [ %14, %do.body11.i.i.i.if.end68.sink.split_crit_edge ], [ %44, %do.body11.i.i.i149.if.end68.sink.split_crit_edge ]
  %.sink207 = phi i32 [ %.unpack, %do.body11.i.i.i.if.end68.sink.split_crit_edge ], [ %35, %do.body11.i.i.i149.if.end68.sink.split_crit_edge ]
  %retval.0.i.i142.sink206 = phi ptr [ %retval.0.i.i, %do.body11.i.i.i.if.end68.sink.split_crit_edge ], [ %retval.0.i.i142, %do.body11.i.i.i149.if.end68.sink.split_crit_edge ]
  %rem.sink = phi i32 [ %.unpack137, %do.body11.i.i.i.if.end68.sink.split_crit_edge ], [ %rem, %do.body11.i.i.i149.if.end68.sink.split_crit_edge ]
  %.sink = phi i32 [ %.unpack135, %do.body11.i.i.i.if.end68.sink.split_crit_edge ], [ %34, %do.body11.i.i.i149.if.end68.sink.split_crit_edge ]
  %and.i.i1.i151 = and i32 %.sink208, 3
  %or.i.i.i152 = or i32 %and.i.i1.i151, %.sink207
  %112 = ptrtoint ptr %retval.0.i.i142.sink206 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %or.i.i.i152, ptr %retval.0.i.i142.sink206, align 4
  %offset1.i.i153 = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i.i142.sink206, i32 0, i32 1
  %113 = ptrtoint ptr %offset1.i.i153 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %rem.sink, ptr %offset1.i.i153, align 4
  %length.i.i154 = getelementptr inbounds %struct.scatterlist, ptr %retval.0.i.i142.sink206, i32 0, i32 2
  %114 = ptrtoint ptr %length.i.i154 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink, ptr %length.i.i154, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %for.inc34.i.if.end68_crit_edge, %if.else.if.end68_crit_edge
  %nsegs.0 = phi i32 [ 0, %if.else.if.end68_crit_edge ], [ 1, %if.end68.sink.split ], [ %nsegs.1.lcssa176.i, %for.inc34.i.if.end68_crit_edge ]
  %115 = ptrtoint ptr %last_sg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %last_sg, align 4
  %tobool69.not = icmp eq ptr %116, null
  br i1 %tobool69.not, label %if.end68.if.end71_crit_edge, label %if.then70

if.end68.if.end71_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  %or.i = and i32 %118, -4
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %116, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end68.if.end71_crit_edge
  %119 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rq_flags, align 8
  %and.i163 = and i32 %120, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %tobool.not.i164 = icmp eq i32 %and.i163, 0
  br i1 %tobool.not.i164, label %if.end.i165, label %if.end71.blk_rq_nr_phys_segments.exit_crit_edge

if.end71.blk_rq_nr_phys_segments.exit_crit_edge:  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_rq_nr_phys_segments.exit

if.end.i165:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 19
  %121 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %nr_phys_segments.i, align 4
  %phi.cast = zext i16 %122 to i32
  br label %blk_rq_nr_phys_segments.exit

blk_rq_nr_phys_segments.exit:                     ; preds = %if.end.i165, %if.end71.blk_rq_nr_phys_segments.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i165 ], [ 1, %if.end71.blk_rq_nr_phys_segments.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nsegs.0, i32 %retval.0.i)
  %cmp73 = icmp sgt i32 %nsegs.0, %retval.0.i
  br i1 %cmp73, label %do.end, label %blk_rq_nr_phys_segments.exit.if.end89_crit_edge, !prof !45

blk_rq_nr_phys_segments.exit.if.end89_crit_edge:  ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

do.end:                                           ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 570, i32 noundef 9, ptr noundef null) #10
  br label %if.end89

if.end89:                                         ; preds = %do.end, %blk_rq_nr_phys_segments.exit.if.end89_crit_edge
  ret i32 %nsegs.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ll_back_merge_fn(ptr noundef %req, ptr noundef %bio, i32 noundef %nr_segs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %biotail.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %biotail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %biotail.i, align 4
  %call.i = tail call fastcc zeroext i1 @bio_will_gap(ptr noundef %1, ptr noundef %req, ptr noundef %3, ptr noundef %bio) #10
  br i1 %call.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags.i, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %bio.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %7 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bio.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf.i.i, align 8
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.bio_integrity.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.bio_integrity.exit.i_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %12 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  br label %bio_integrity.exit.i

bio_integrity.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true.bio_integrity.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.then.i.i ], [ null, %land.lhs.true.bio_integrity.exit.i_crit_edge ]
  %bi_opf.i7.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %15 = ptrtoint ptr %bi_opf.i7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_opf.i7.i, align 8
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i8.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i8.i, label %bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge, label %if.then.i9.i

bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge: ; preds = %bio_integrity.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit11.i

if.then.i9.i:                                     ; preds = %bio_integrity.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %bio_integrity.exit11.i

bio_integrity.exit11.i:                           ; preds = %if.then.i9.i, %bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge
  %retval.0.i10.i = phi ptr [ %20, %if.then.i9.i ], [ null, %bio_integrity.exit.i.bio_integrity.exit11.i_crit_edge ]
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 8
  %bip_vec.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %bip_vec.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bip_vec.i, align 4
  %bip_vcnt.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %bip_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bip_vcnt.i, align 4
  %conv.i = zext i16 %26 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %virt_boundary_mask.i.i.i = getelementptr inbounds %struct.request_queue, ptr %22, i32 0, i32 37, i32 2
  %27 = ptrtoint ptr %virt_boundary_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %virt_boundary_mask.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i12.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i12.i, label %bio_integrity.exit11.i.if.end4_crit_edge, label %if.end.i.i

bio_integrity.exit11.i.if.end4_crit_edge:         ; preds = %bio_integrity.exit11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end.i.i:                                       ; preds = %bio_integrity.exit11.i
  %bip_vec2.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i10.i, i32 0, i32 7
  %29 = ptrtoint ptr %bip_vec2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bip_vec2.i, align 4
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_offset.i, align 4
  %and.i.i.i = and i32 %32, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %integrity_req_gap_back_merge.exit, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

integrity_req_gap_back_merge.exit:                ; preds = %if.end.i.i
  %bv_offset.i.i.i = getelementptr %struct.bio_vec, ptr %24, i32 %sub.i, i32 2
  %33 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bv_offset.i.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %24, i32 %sub.i, i32 1
  %35 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i.i = add i32 %36, %34
  %and2.i.i.i = and i32 %add.i.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.i.i.i.not = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.i.i.i.not, label %integrity_req_gap_back_merge.exit.if.end4_crit_edge, label %integrity_req_gap_back_merge.exit.return_crit_edge

integrity_req_gap_back_merge.exit.return_crit_edge: ; preds = %integrity_req_gap_back_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

integrity_req_gap_back_merge.exit.if.end4_crit_edge: ; preds = %integrity_req_gap_back_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %integrity_req_gap_back_merge.exit.if.end4_crit_edge, %bio_integrity.exit11.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %crypt_ctx.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 21
  %37 = ptrtoint ptr %crypt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %crypt_ctx.i, align 8
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %39 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %__data_len.i.i, align 8
  %bi_crypt_context.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %41 = ptrtoint ptr %bi_crypt_context.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bi_crypt_context.i, align 8
  %call1.i = tail call zeroext i1 @bio_crypt_ctx_mergeable(ptr noundef %38, i32 noundef %40, ptr noundef %42) #10
  br i1 %call1.i, label %if.end7, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end7:                                          ; preds = %if.end4
  %43 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %44, 9
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %46, 9
  %add = add nuw nsw i32 %shr, %shr.i
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %47 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %__sector.i, align 8
  %49 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %req, align 8
  %51 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmd_flags.i, align 4
  %53 = and i32 %52, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %53)
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 3
  %55 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_hw_sectors.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end.i:                                         ; preds = %if.end7
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 5
  %57 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chunk_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  %.pre.i = trunc i32 %52 to i8
  br i1 %tobool.not.i, label %if.then7.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %59 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %.pre.i, label %if.end7.i.i [
    i8 5, label %lor.lhs.false.i.if.then.i.i28_crit_edge
    i8 3, label %lor.lhs.false.i.if.then.i.i28_crit_edge41
  ], !prof !57

lor.lhs.false.i.if.then.i.i28_crit_edge41:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i28

lor.lhs.false.i.if.then.i.i28_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i28

if.then7.i:                                       ; preds = %if.end.i
  %60 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %.pre.i, label %if.end23.i.i [
    i8 5, label %if.then7.i.if.then.i.i28_crit_edge
    i8 3, label %if.then7.i.if.then.i.i28_crit_edge42
    i8 7, label %if.then11.i.i
    i8 9, label %if.then21.i.i
  ], !prof !58

if.then7.i.if.then.i.i28_crit_edge42:             ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i28

if.then7.i.if.then.i.i28_crit_edge:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i28

if.then.i.i28:                                    ; preds = %if.then7.i.if.then.i.i28_crit_edge, %if.then7.i.if.then.i.i28_crit_edge42, %lor.lhs.false.i.if.then.i.i28_crit_edge, %lor.lhs.false.i.if.then.i.i28_crit_edge41
  %max_discard_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 13
  %61 = ptrtoint ptr %max_discard_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_discard_sectors.i.i, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 8388607) #10
  br label %blk_rq_get_max_sectors.exit

if.then11.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 15
  %64 = ptrtoint ptr %max_write_same_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_write_same_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.then21.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 16
  %66 = ptrtoint ptr %max_write_zeroes_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_write_zeroes_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end23.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 6
  %68 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end7.i.i:                                      ; preds = %lor.lhs.false.i
  %70 = tail call i32 @llvm.ctpop.i32(i32 %58) #10, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp1.i.i.i = icmp ult i32 %70, 2
  br i1 %cmp1.i.i.i, label %if.then10.i.i, label %if.else185.i.i, !prof !46

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %58, -1
  %71 = trunc i64 %48 to i32
  %72 = and i32 %sub.i.i, %71
  br label %blk_max_size_offset.exit.i

if.else185.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %48)
  %cmp187.i.i = icmp ult i64 %48, 4294967296
  br i1 %cmp187.i.i, label %if.then195.i.i, label %if.else201.i.i, !prof !46

if.then195.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv196.i.i = trunc i64 %48 to i32
  %rem197.i.i = urem i32 %conv196.i.i, %58
  br label %blk_max_size_offset.exit.i

if.else201.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %58, i64 %48) #13, !srcloc !47
  %asmresult.i.i.i = extractvalue { i64, i64 } %73, 0
  %shr.i.i.i = lshr i64 %asmresult.i.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %blk_max_size_offset.exit.i

blk_max_size_offset.exit.i:                       ; preds = %if.else201.i.i, %if.then195.i.i, %if.then10.i.i
  %.pn.i.i = phi i32 [ %72, %if.then10.i.i ], [ %rem197.i.i, %if.then195.i.i ], [ %conv.i.i.i, %if.else201.i.i ]
  %chunk_sectors.addr.1.i.i = sub i32 %58, %.pn.i.i
  %max_sectors210.i.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 6
  %74 = ptrtoint ptr %max_sectors210.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_sectors210.i.i, align 4
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 %chunk_sectors.addr.1.i.i) #10
  %77 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %.pre.i, label %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge [
    i8 9, label %if.then21.i35.i
    i8 7, label %if.then11.i33.i
  ], !prof !59

blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge: ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_get_max_sectors.exit39.i

if.then11.i33.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i32.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 15
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

if.then21.i35.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i34.i = getelementptr inbounds %struct.request_queue, ptr %50, i32 0, i32 37, i32 16
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

blk_queue_get_max_sectors.exit39.i.sink.split:    ; preds = %if.then21.i35.i, %if.then11.i33.i
  %max_write_zeroes_sectors.i34.i.sink = phi ptr [ %max_write_zeroes_sectors.i34.i, %if.then21.i35.i ], [ %max_write_same_sectors.i32.i, %if.then11.i33.i ]
  %78 = ptrtoint ptr %max_write_zeroes_sectors.i34.i.sink to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_write_zeroes_sectors.i34.i.sink, align 4
  br label %blk_queue_get_max_sectors.exit39.i

blk_queue_get_max_sectors.exit39.i:               ; preds = %blk_queue_get_max_sectors.exit39.i.sink.split, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge
  %retval.0.i38.i = phi i32 [ %75, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge ], [ %79, %blk_queue_get_max_sectors.exit39.i.sink.split ]
  %80 = tail call i32 @llvm.umin.i32(i32 %76, i32 %retval.0.i38.i) #10
  br label %blk_rq_get_max_sectors.exit

blk_rq_get_max_sectors.exit:                      ; preds = %blk_queue_get_max_sectors.exit39.i, %if.end23.i.i, %if.then21.i.i, %if.then11.i.i, %if.then.i.i28, %if.then.i
  %retval.0.i = phi i32 [ %56, %if.then.i ], [ %80, %blk_queue_get_max_sectors.exit39.i ], [ %63, %if.then.i.i28 ], [ %65, %if.then11.i.i ], [ %67, %if.then21.i.i ], [ %69, %if.end23.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i)
  %cmp = icmp ugt i32 %add, %retval.0.i
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %blk_rq_get_max_sectors.exit
  %81 = or i32 %52, 16384
  %82 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %cmd_flags.i, align 4
  %83 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %50, align 8
  %cmp.i = icmp eq ptr %84, %req
  br i1 %cmp.i, label %if.then.i30, label %if.then11.return_crit_edge

if.then11.return_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i30:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %50, align 8
  br label %return

if.end12:                                         ; preds = %blk_rq_get_max_sectors.exit
  %call.i32 = tail call zeroext i1 @blk_integrity_merge_bio(ptr noundef %50, ptr noundef %req, ptr noundef %bio) #10
  br i1 %call.i32, label %if.end.i34, label %if.end12.no_merge.i_crit_edge

if.end12.no_merge.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge.i

if.end.i34:                                       ; preds = %if.end12
  %86 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %87, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 3
  br i1 %cmp2.i, label %if.end.i34.return_crit_edge, label %if.end5.i

if.end.i34.return_crit_edge:                      ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5.i:                                        ; preds = %if.end.i34
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %88 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %nr_phys_segments.i, align 4
  %conv6.i = zext i16 %89 to i32
  %add.i = add i32 %conv6.i, %nr_segs
  %90 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %req, align 8
  %max_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %91, i32 0, i32 37, i32 21
  %92 = ptrtoint ptr %max_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %retval.0.in.i.i = load i16, ptr %max_segments.i.i.i, align 4
  %retval.0.i.i35 = zext i16 %retval.0.in.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i.i35)
  %cmp8.i = icmp ugt i32 %add.i, %retval.0.i.i35
  br i1 %cmp8.i, label %if.end5.i.no_merge.i_crit_edge, label %if.end11.i

if.end5.i.no_merge.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge.i

if.end11.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = trunc i32 %nr_segs to i16
  %conv15.i = add i16 %89, %93
  %94 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv15.i, ptr %nr_phys_segments.i, align 4
  br label %return

no_merge.i:                                       ; preds = %if.end5.i.no_merge.i_crit_edge, %if.end12.no_merge.i_crit_edge
  %95 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %req, align 8
  %97 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cmd_flags.i, align 4
  %99 = or i32 %98, 16384
  store i32 %99, ptr %cmd_flags.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %96, align 8
  %cmp.i26.i = icmp eq ptr %101, %req
  br i1 %cmp.i26.i, label %if.then.i.i36, label %no_merge.i.return_crit_edge

no_merge.i.return_crit_edge:                      ; preds = %no_merge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then.i.i36:                                    ; preds = %no_merge.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %96, align 8
  br label %return

return:                                           ; preds = %if.then.i.i36, %no_merge.i.return_crit_edge, %if.end11.i, %if.end.i34.return_crit_edge, %if.then.i30, %if.then11.return_crit_edge, %if.end4.return_crit_edge, %integrity_req_gap_back_merge.exit.return_crit_edge, %if.end.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %integrity_req_gap_back_merge.exit.return_crit_edge ], [ 0, %if.end4.return_crit_edge ], [ 0, %if.then11.return_crit_edge ], [ 0, %if.then.i30 ], [ 1, %if.end11.i ], [ 1, %if.end.i34.return_crit_edge ], [ 0, %no_merge.i.return_crit_edge ], [ 0, %if.then.i.i36 ], [ 0, %if.end.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_rq_set_mixed_merge(ptr nocapture noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags, align 4
  %2 = and i32 %1, 1792
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %3 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq_flags, align 8
  %and2 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bio3 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %5 = ptrtoint ptr %bio3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bio.068 = load ptr, ptr %bio3, align 8
  %tobool4.not69 = icmp eq ptr %bio.068, null
  br i1 %tobool4.not69, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %if.end.for.body_crit_edge
  %bio.070 = phi ptr [ %bio.0, %if.end45.for.body_crit_edge ], [ %bio.068, %if.end.for.body_crit_edge ]
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.070, i32 0, i32 2
  %6 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_opf, align 8
  %8 = and i32 %7, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %2)
  %cmp = icmp ne i32 %8, %2
  %spec.select = select i1 %tobool7.not, i1 %cmp, i1 false
  br i1 %spec.select, label %land.rhs16, label %for.body.if.end45_crit_edge

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.rhs16:                                       ; preds = %for.body
  %.b67 = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  br i1 %.b67, label %land.rhs16.if.end45_crit_edge, label %if.then23, !prof !46

land.rhs16.if.end45_crit_edge:                    ; preds = %land.rhs16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then23:                                        ; preds = %land.rhs16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 734, i32 noundef 9, ptr noundef null) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then23, %land.rhs16.if.end45_crit_edge, %for.body.if.end45_crit_edge
  %9 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf, align 8
  %or = or i32 %10, %2
  store i32 %or, ptr %bi_opf, align 8
  %11 = ptrtoint ptr %bio.070 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bio.0 = load ptr, ptr %bio.070, align 8
  %tobool4.not = icmp eq ptr %bio.0, null
  br i1 %tobool4.not, label %if.end45.for.end_crit_edge, label %if.end45.for.body_crit_edge

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end45.for.end_crit_edge, %if.end.for.end_crit_edge
  %12 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_flags, align 8
  %or55 = or i32 %13, 32
  store i32 %or55, ptr %rq_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_attempt_req_merge(ptr noundef %q, ptr noundef %rq, ptr noundef %next) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @attempt_merge(ptr noundef %q, ptr noundef %rq, ptr noundef %next)
  %tobool = icmp ne ptr %call, null
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @attempt_merge(ptr noundef %q, ptr noundef %req, ptr noundef %next) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags.i.i, align 4
  %2 = and i32 %1, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %2)
  %3 = icmp eq i32 %2, 34
  br i1 %3, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %entry
  %trunc.i = trunc i32 %1 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %trunc.i, label %if.end12.i [
    i8 2, label %if.end.i.return_crit_edge
    i8 9, label %if.end.i.return_crit_edge146
    i8 13, label %if.end.i.return_crit_edge147
  ]

if.end.i.return_crit_edge147:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.return_crit_edge146:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end12.i:                                       ; preds = %if.end.i
  %5 = and i32 %1, 409600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %rq_mergeable.exit, label %if.end12.i.return_crit_edge

if.end12.i.return_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

rq_mergeable.exit:                                ; preds = %if.end12.i
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_flags.i, align 8
  %and17.i = and i32 %7, 262170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false, label %rq_mergeable.exit.return_crit_edge

rq_mergeable.exit.return_crit_edge:               ; preds = %rq_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %rq_mergeable.exit
  %cmd_flags.i.i115 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 3
  %8 = ptrtoint ptr %cmd_flags.i.i115 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_flags.i.i115, align 4
  %10 = and i32 %9, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %10)
  %11 = icmp eq i32 %10, 34
  br i1 %11, label %lor.lhs.false.return_crit_edge, label %if.end.i117

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i117:                                      ; preds = %lor.lhs.false
  %trunc.i116 = trunc i32 %9 to i8
  %12 = zext i8 %trunc.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %trunc.i116, label %if.end12.i119 [
    i8 2, label %if.end.i117.return_crit_edge
    i8 9, label %if.end.i117.return_crit_edge148
    i8 13, label %if.end.i117.return_crit_edge149
  ]

if.end.i117.return_crit_edge149:                  ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i117.return_crit_edge148:                  ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i117.return_crit_edge:                     ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end12.i119:                                    ; preds = %if.end.i117
  %13 = and i32 %9, 409600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i118 = icmp eq i32 %13, 0
  br i1 %tobool.not.i118, label %rq_mergeable.exit125, label %if.end12.i119.return_crit_edge

if.end12.i119.return_crit_edge:                   ; preds = %if.end12.i119
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

rq_mergeable.exit125:                             ; preds = %if.end12.i119
  %rq_flags.i120 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 4
  %14 = ptrtoint ptr %rq_flags.i120 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rq_flags.i120, align 8
  %and17.i121 = and i32 %15, 262170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i121)
  %tobool18.not.i122 = icmp eq i32 %and17.i121, 0
  br i1 %tobool18.not.i122, label %if.end, label %rq_mergeable.exit125.return_crit_edge

rq_mergeable.exit125.return_crit_edge:            ; preds = %rq_mergeable.exit125
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %rq_mergeable.exit125
  %and = and i32 %1, 255
  %and3 = and i32 %9, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and3)
  %cmp.not = icmp eq i32 %and, %and3
  br i1 %cmp.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end5:                                          ; preds = %if.end
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %and.i126 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.i127 = icmp ne i32 %and.i126, 0
  %16 = xor i1 %tobool.i, %tobool.i127
  br i1 %16, label %if.end5.return_crit_edge, label %if.end15

if.end5.return_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp18 = icmp eq i32 %and, 7
  br i1 %cmp18, label %land.lhs.true, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end15
  %bio = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %17 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bio, align 8
  %bio19 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 10
  %19 = ptrtoint ptr %bio19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bio19, align 8
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 20
  %21 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_idx.i, align 4
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %22, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %22, i32 %24, i32 2
  %27 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 8, i32 3
  %29 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_bvec_done.i, align 8
  %add.i = add i32 %30, %28
  %div53.i = lshr i32 %add.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %26, i32 %div53.i
  %bi_io_vec6.i = getelementptr inbounds %struct.bio, ptr %20, i32 0, i32 20
  %31 = ptrtoint ptr %bi_io_vec6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bi_io_vec6.i, align 8
  %bi_idx8.i = getelementptr inbounds %struct.bio, ptr %20, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %bi_idx8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_idx8.i, align 4
  %arrayidx9.i = getelementptr %struct.bio_vec, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx9.i, align 4
  %bv_offset15.i = getelementptr %struct.bio_vec, ptr %32, i32 %34, i32 2
  %37 = ptrtoint ptr %bv_offset15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_offset15.i, align 4
  %bi_bvec_done17.i = getelementptr inbounds %struct.bio, ptr %20, i32 0, i32 8, i32 3
  %39 = ptrtoint ptr %bi_bvec_done17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bi_bvec_done17.i, align 8
  %add18.i = add i32 %40, %38
  %div1954.i = lshr i32 %add18.i, 12
  %add.ptr20.i = getelementptr %struct.page, ptr %36, i32 %div1954.i
  %cmp.i = icmp eq ptr %add.ptr.i, %add.ptr20.i
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %41 = xor i32 %add18.i, %add.i
  %42 = and i32 %41, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp38.i = icmp eq i32 %42, 0
  br i1 %cmp38.i, label %land.lhs.true.i.if.end22_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true.i.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %write_hint = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 23
  %43 = ptrtoint ptr %write_hint to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %write_hint, align 8
  %write_hint23 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 23
  %45 = ptrtoint ptr %write_hint23 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %write_hint23, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %46)
  %cmp25.not = icmp eq i16 %44, %46
  br i1 %cmp25.not, label %if.end28, label %if.end22.return_crit_edge

if.end22.return_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end28:                                         ; preds = %if.end22
  %ioprio = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 24
  %47 = ptrtoint ptr %ioprio to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ioprio, align 2
  %ioprio30 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 24
  %49 = ptrtoint ptr %ioprio30 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ioprio30, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp32.not = icmp eq i16 %48, %50
  br i1 %cmp32.not, label %if.end35, label %if.end28.return_crit_edge

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.i.i = icmp eq i32 %and, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end35.if.else.i_crit_edge

if.end35.if.else.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end35
  %51 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %req, align 8
  %max_discard_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 23
  %53 = ptrtoint ptr %max_discard_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %max_discard_segments.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %54)
  %cmp1.i.i = icmp ugt i16 %54, 1
  br i1 %cmp1.i.i, label %sw.bb, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.i.if.else.i_crit_edge, %if.end35.if.else.i_crit_edge
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %55 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %__sector.i.i, align 8
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %57 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i.i = lshr i32 %58, 9
  %conv.i = zext i32 %shr.i.i to i64
  %add.i131 = add i64 %56, %conv.i
  %__sector.i9.i = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 9
  %59 = ptrtoint ptr %__sector.i9.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %__sector.i9.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i131, i64 %60)
  %cmp.i132 = icmp eq i64 %add.i131, %60
  br i1 %cmp.i132, label %sw.bb40, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %land.lhs.true.i.i
  %call37 = tail call fastcc zeroext i1 @req_attempt_discard_merge(ptr noundef %q, ptr noundef %req, ptr noundef %next)
  br i1 %call37, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.else.i
  %call41 = tail call fastcc i32 @ll_merge_requests_fn(ptr noundef %q, ptr noundef %req, ptr noundef %next)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool.not = icmp eq i32 %call41, 0
  br i1 %tobool.not, label %sw.bb40.return_crit_edge, label %sw.bb40.sw.epilog_crit_edge

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb40.return_crit_edge:                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %sw.bb40.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %61 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rq_flags.i, align 8
  %63 = ptrtoint ptr %rq_flags.i120 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rq_flags.i120, align 8
  %or = or i32 %64, %62
  %and45 = and i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %sw.epilog.if.then56_crit_edge

sw.epilog.if.then56_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false47:                                  ; preds = %sw.epilog
  %65 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cmd_flags.i.i, align 4
  %67 = ptrtoint ptr %cmd_flags.i.i115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmd_flags.i.i115, align 4
  %69 = xor i32 %68, %66
  %70 = and i32 %69, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp54.not = icmp eq i32 %70, 0
  br i1 %cmp54.not, label %lor.lhs.false47.if.end57_crit_edge, label %lor.lhs.false47.if.then56_crit_edge

lor.lhs.false47.if.then56_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

lor.lhs.false47.if.end57_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %lor.lhs.false47.if.then56_crit_edge, %sw.epilog.if.then56_crit_edge
  tail call void @blk_rq_set_mixed_merge(ptr noundef %req)
  tail call void @blk_rq_set_mixed_merge(ptr noundef %next)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %lor.lhs.false47.if.end57_crit_edge
  %start_time_ns = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 15
  %71 = ptrtoint ptr %start_time_ns to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %start_time_ns, align 8
  %start_time_ns58 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 15
  %73 = ptrtoint ptr %start_time_ns58 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %start_time_ns58, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %74)
  %cmp59 = icmp ult i64 %72, %74
  br i1 %cmp59, label %if.then61, label %if.end57.if.end64_crit_edge

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %start_time_ns58 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %72, ptr %start_time_ns58, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end57.if.end64_crit_edge
  %bio65 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 10
  %76 = ptrtoint ptr %bio65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bio65, align 8
  %biotail = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 11
  %78 = ptrtoint ptr %biotail to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %biotail, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %79, align 8
  %biotail66 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 11
  %81 = ptrtoint ptr %biotail66 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %biotail66, align 4
  store ptr %82, ptr %biotail, align 4
  %__data_len.i = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 8
  %83 = ptrtoint ptr %__data_len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %__data_len.i, align 8
  %__data_len = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %85 = ptrtoint ptr %__data_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %__data_len, align 8
  %add = add i32 %86, %84
  store i32 %add, ptr %__data_len, align 8
  %87 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i134 = and i32 %88, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i134)
  %cmp.i135 = icmp eq i32 %and.i134, 3
  br i1 %cmp.i135, label %land.lhs.true.i136, label %if.end64.if.then70_crit_edge

if.end64.if.then70_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

land.lhs.true.i136:                               ; preds = %if.end64
  %89 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %req, align 8
  %max_discard_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 37, i32 23
  %91 = ptrtoint ptr %max_discard_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %max_discard_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %92)
  %cmp1.i = icmp ugt i16 %92, 1
  br i1 %cmp1.i, label %land.lhs.true.i136.if.end71_crit_edge, label %land.lhs.true.i136.if.then70_crit_edge

land.lhs.true.i136.if.then70_crit_edge:           ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then70

land.lhs.true.i136.if.end71_crit_edge:            ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then70:                                        ; preds = %land.lhs.true.i136.if.then70_crit_edge, %if.end64.if.then70_crit_edge
  tail call void @elv_merge_requests(ptr noundef %q, ptr noundef %req, ptr noundef %next) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true.i136.if.end71_crit_edge
  tail call fastcc void @blk_account_io_merge_request(ptr noundef %next)
  tail call fastcc void @trace_block_rq_merge(ptr noundef %next)
  %93 = ptrtoint ptr %bio65 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %bio65, align 8
  br label %return

return:                                           ; preds = %if.end71, %sw.bb40.return_crit_edge, %sw.bb.return_crit_edge, %if.else.i.return_crit_edge, %if.end28.return_crit_edge, %if.end22.return_crit_edge, %land.lhs.true.i.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end5.return_crit_edge, %if.end.return_crit_edge, %rq_mergeable.exit125.return_crit_edge, %if.end12.i119.return_crit_edge, %if.end.i117.return_crit_edge, %if.end.i117.return_crit_edge148, %if.end.i117.return_crit_edge149, %lor.lhs.false.return_crit_edge, %rq_mergeable.exit.return_crit_edge, %if.end12.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end.i.return_crit_edge146, %if.end.i.return_crit_edge147, %entry.return_crit_edge
  %retval.0 = phi ptr [ %next, %if.end71 ], [ null, %rq_mergeable.exit125.return_crit_edge ], [ null, %rq_mergeable.exit.return_crit_edge ], [ null, %if.end.return_crit_edge ], [ null, %if.end5.return_crit_edge ], [ null, %if.end22.return_crit_edge ], [ null, %if.end28.return_crit_edge ], [ null, %sw.bb.return_crit_edge ], [ null, %sw.bb40.return_crit_edge ], [ null, %land.lhs.true.return_crit_edge ], [ null, %land.lhs.true.i.return_crit_edge ], [ null, %entry.return_crit_edge ], [ null, %if.end.i.return_crit_edge ], [ null, %if.end.i.return_crit_edge146 ], [ null, %if.end.i.return_crit_edge147 ], [ null, %if.end12.i.return_crit_edge ], [ null, %lor.lhs.false.return_crit_edge ], [ null, %if.end.i117.return_crit_edge ], [ null, %if.end.i117.return_crit_edge148 ], [ null, %if.end.i117.return_crit_edge149 ], [ null, %if.end12.i119.return_crit_edge ], [ null, %if.else.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_rq_merge_ok(ptr noundef %rq, ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags.i.i, align 4
  %2 = and i32 %1, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %2)
  %3 = icmp eq i32 %2, 34
  br i1 %3, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %entry
  %trunc.i = trunc i32 %1 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %trunc.i, label %if.end12.i [
    i8 2, label %if.end.i.return_crit_edge
    i8 9, label %if.end.i.return_crit_edge63
    i8 13, label %if.end.i.return_crit_edge64
  ]

if.end.i.return_crit_edge64:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.return_crit_edge63:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end12.i:                                       ; preds = %if.end.i
  %5 = and i32 %1, 409600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %rq_mergeable.exit, label %if.end12.i.return_crit_edge

if.end12.i.return_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

rq_mergeable.exit:                                ; preds = %if.end12.i
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %6 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rq_flags.i, align 8
  %and17.i = and i32 %7, 262170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %lor.lhs.false, label %rq_mergeable.exit.return_crit_edge

rq_mergeable.exit.return_crit_edge:               ; preds = %rq_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %rq_mergeable.exit
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf.i, align 8
  %10 = and i32 %9, 409600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i59 = icmp eq i32 %10, 0
  br i1 %tobool.not.i59, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = xor i32 %9, %1
  %12 = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %if.end
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %and.i60 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.i61 = icmp ne i32 %and.i60, 0
  %13 = xor i1 %tobool.i61, %tobool.i
  br i1 %13, label %if.end4.return_crit_edge, label %if.end14

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end14:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq, align 8
  %call15 = tail call zeroext i1 @blk_integrity_merge_bio(ptr noundef %15, ptr noundef %rq, ptr noundef %bio) #10
  br i1 %call15, label %if.end19, label %if.end14.return_crit_edge

if.end14.return_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end19:                                         ; preds = %if.end14
  %call20 = tail call zeroext i1 @bio_crypt_rq_ctx_compatible(ptr noundef %rq, ptr noundef %bio) #10
  br i1 %call20, label %if.end22, label %if.end19.return_crit_edge

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end22:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_flags.i.i, align 4
  %and24 = and i32 %17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 7
  br i1 %cmp25, label %land.lhs.true, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %bio27 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %18 = ptrtoint ptr %bio27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bio27, align 8
  %call28 = tail call fastcc zeroext i1 @blk_write_same_mergeable(ptr noundef %19, ptr noundef %bio)
  br i1 %call28, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %write_hint = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 23
  %20 = ptrtoint ptr %write_hint to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %write_hint, align 8
  %bi_write_hint = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 5
  %22 = ptrtoint ptr %bi_write_hint to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bi_write_hint, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp33.not = icmp eq i16 %21, %23
  br i1 %cmp33.not, label %if.end36, label %if.end30.return_crit_edge

if.end30.return_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %ioprio = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 24
  %24 = ptrtoint ptr %ioprio to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ioprio, align 2
  %bi_ioprio = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 4
  %26 = ptrtoint ptr %bi_ioprio to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bi_ioprio, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp39.not = icmp eq i16 %25, %27
  br label %return

return:                                           ; preds = %if.end36, %if.end30.return_crit_edge, %land.lhs.true.return_crit_edge, %if.end19.return_crit_edge, %if.end14.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %rq_mergeable.exit.return_crit_edge, %if.end12.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end.i.return_crit_edge63, %if.end.i.return_crit_edge64, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.return_crit_edge ], [ false, %rq_mergeable.exit.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ false, %if.end4.return_crit_edge ], [ false, %if.end14.return_crit_edge ], [ false, %if.end19.return_crit_edge ], [ false, %land.lhs.true.return_crit_edge ], [ false, %if.end30.return_crit_edge ], [ %cmp39.not, %if.end36 ], [ false, %entry.return_crit_edge ], [ false, %if.end.i.return_crit_edge ], [ false, %if.end.i.return_crit_edge63 ], [ false, %if.end.i.return_crit_edge64 ], [ false, %if.end12.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_integrity_merge_bio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bio_crypt_rq_ctx_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @blk_write_same_mergeable(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %a, i32 0, i32 20
  %0 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_io_vec, align 8
  %bi_idx = getelementptr inbounds %struct.bio, ptr %a, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %bi_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_idx, align 4
  %arrayidx = getelementptr %struct.bio_vec, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %1, i32 %3, i32 2
  %6 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset, align 4
  %bi_bvec_done = getelementptr inbounds %struct.bio, ptr %a, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %bi_bvec_done to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_bvec_done, align 8
  %add = add i32 %9, %7
  %div53 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %div53
  %bi_io_vec6 = getelementptr inbounds %struct.bio, ptr %b, i32 0, i32 20
  %10 = ptrtoint ptr %bi_io_vec6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bi_io_vec6, align 8
  %bi_idx8 = getelementptr inbounds %struct.bio, ptr %b, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %bi_idx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_idx8, align 4
  %arrayidx9 = getelementptr %struct.bio_vec, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %bv_offset15 = getelementptr %struct.bio_vec, ptr %11, i32 %13, i32 2
  %16 = ptrtoint ptr %bv_offset15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bv_offset15, align 4
  %bi_bvec_done17 = getelementptr inbounds %struct.bio, ptr %b, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %bi_bvec_done17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bi_bvec_done17, align 8
  %add18 = add i32 %19, %17
  %div1954 = lshr i32 %add18, 12
  %add.ptr20 = getelementptr %struct.page, ptr %15, i32 %div1954
  %cmp = icmp eq ptr %add.ptr, %add.ptr20
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %20 = xor i32 %add18, %add
  %21 = and i32 %20, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp38 = icmp eq i32 %21, 0
  br i1 %cmp38, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @blk_try_merge(ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %bio) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 8
  %max_discard_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 23
  %4 = ptrtoint ptr %max_discard_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_discard_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp1.i = icmp ugt i16 %5, 1
  br i1 %cmp1.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %entry.if.else_crit_edge
  %__sector.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %6 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %__sector.i, align 8
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %8 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %9, 9
  %conv = zext i32 %shr.i to i64
  %add = add i64 %7, %conv
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %10 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bi_iter, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %11)
  %cmp = icmp eq i64 %add, %11
  br i1 %cmp, label %if.else.return_crit_edge, label %if.else5

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %13, 9
  %conv8 = zext i32 %shr to i64
  %sub = sub i64 %7, %conv8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %11)
  %cmp11 = icmp eq i64 %sub, %11
  %. = zext i1 %cmp11 to i32
  br label %return

return:                                           ; preds = %if.else5, %if.else.return_crit_edge, %land.lhs.true.i.return_crit_edge
  %retval.0 = phi i32 [ 2, %if.else.return_crit_edge ], [ %., %if.else5 ], [ 3, %land.lhs.true.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_attempt_plug_merge(ptr noundef %q, ptr noundef %bio, i32 noundef %nr_segs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 27
  %0 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %lor.lhs.false.i, label %entry.blk_mq_plug.exit_crit_edge

entry.blk_mq_plug.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_mq_plug.exit

lor.lhs.false.i:                                  ; preds = %entry
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.blk_mq_plug.exit_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.blk_mq_plug.exit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_mq_plug.exit

blk_mq_plug.exit:                                 ; preds = %lor.lhs.false.i.blk_mq_plug.exit_crit_edge, %entry.blk_mq_plug.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i3.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i3.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %plug.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 148
  %8 = ptrtoint ptr %plug.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plug.i, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %blk_mq_plug.exit.cleanup_crit_edge, label %lor.lhs.false

blk_mq_plug.exit.cleanup_crit_edge:               ; preds = %blk_mq_plug.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %blk_mq_plug.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %cmp9 = icmp eq ptr %13, %q
  br i1 %cmp9, label %if.then10, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %call11 = tail call fastcc i32 @blk_attempt_bio_merge(ptr noundef %q, ptr noundef nonnull %11, ptr noundef %bio, i32 noundef %nr_segs, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %blk_mq_plug.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end15 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %blk_mq_plug.exit.cleanup_crit_edge ], [ true, %if.then10.cleanup_crit_edge ], [ false, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @blk_attempt_bio_merge(ptr noundef %q, ptr noundef %rq, ptr noundef %bio, i32 noundef %nr_segs, i1 noundef zeroext %sched_allow_merge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @blk_rq_merge_ok(ptr noundef %rq, ptr noundef %bio)
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %0 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 8
  %max_discard_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 23
  %4 = ptrtoint ptr %max_discard_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_discard_segments.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp1.i.i = icmp ugt i16 %5, 1
  br i1 %cmp1.i.i, label %sw.bb13, label %land.lhs.true.i.i.if.else.i_crit_edge

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %6 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %__sector.i.i, align 8
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 8
  %8 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i.i = lshr i32 %9, 9
  %conv.i = zext i32 %shr.i.i to i64
  %add.i = add i64 %7, %conv.i
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %10 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bi_iter.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %11)
  %cmp.i = icmp eq i64 %add.i, %11
  br i1 %cmp.i, label %sw.bb, label %blk_try_merge.exit

blk_try_merge.exit:                               ; preds = %if.else.i
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_size.i, align 8
  %shr.i = lshr i32 %13, 9
  %conv8.i = zext i32 %shr.i to i64
  %sub.i = sub i64 %7, %conv8.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %11)
  %cmp11.i = icmp eq i64 %sub.i, %11
  br i1 %cmp11.i, label %sw.bb6, label %blk_try_merge.exit.return_crit_edge

blk_try_merge.exit.return_crit_edge:              ; preds = %blk_try_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.else.i
  br i1 %sched_allow_merge, label %lor.lhs.false, label %sw.bb.if.then3_crit_edge

sw.bb.if.then3_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.lhs.false:                                    ; preds = %sw.bb
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %14 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %15, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.then3_crit_edge, label %if.then.i

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then.i:                                        ; preds = %lor.lhs.false
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %16 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %elevator.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %allow_merge.i = getelementptr inbounds %struct.elevator_type, ptr %19, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %allow_merge.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %allow_merge.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.then.i.if.then3_crit_edge, label %blk_mq_sched_allow_merge.exit

if.then.i.if.then3_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

blk_mq_sched_allow_merge.exit:                    ; preds = %if.then.i
  %call.i = tail call zeroext i1 %21(ptr noundef %q, ptr noundef %rq, ptr noundef %bio) #10
  br i1 %call.i, label %blk_mq_sched_allow_merge.exit.if.then3_crit_edge, label %blk_mq_sched_allow_merge.exit.return_crit_edge

blk_mq_sched_allow_merge.exit.return_crit_edge:   ; preds = %blk_mq_sched_allow_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

blk_mq_sched_allow_merge.exit.if.then3_crit_edge: ; preds = %blk_mq_sched_allow_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %blk_mq_sched_allow_merge.exit.if.then3_crit_edge, %if.then.i.if.then3_crit_edge, %lor.lhs.false.if.then3_crit_edge, %sw.bb.if.then3_crit_edge
  %call4 = tail call fastcc i32 @bio_attempt_back_merge(ptr noundef %rq, ptr noundef %bio, i32 noundef %nr_segs)
  br label %return

sw.bb6:                                           ; preds = %blk_try_merge.exit
  br i1 %sched_allow_merge, label %lor.lhs.false8, label %sw.bb6.if.then10_crit_edge

sw.bb6.if.then10_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

lor.lhs.false8:                                   ; preds = %sw.bb6
  %rq_flags.i31 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %22 = ptrtoint ptr %rq_flags.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_flags.i31, align 8
  %and.i32 = and i32 %23, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i33 = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i33, label %lor.lhs.false8.if.then10_crit_edge, label %if.then.i37

lor.lhs.false8.if.then10_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then.i37:                                      ; preds = %lor.lhs.false8
  %elevator.i34 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %24 = ptrtoint ptr %elevator.i34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %elevator.i34, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %allow_merge.i35 = getelementptr inbounds %struct.elevator_type, ptr %27, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %allow_merge.i35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %allow_merge.i35, align 4
  %tobool1.not.i36 = icmp eq ptr %29, null
  br i1 %tobool1.not.i36, label %if.then.i37.if.then10_crit_edge, label %blk_mq_sched_allow_merge.exit41

if.then.i37.if.then10_crit_edge:                  ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

blk_mq_sched_allow_merge.exit41:                  ; preds = %if.then.i37
  %call.i38 = tail call zeroext i1 %29(ptr noundef %q, ptr noundef %rq, ptr noundef %bio) #10
  br i1 %call.i38, label %blk_mq_sched_allow_merge.exit41.if.then10_crit_edge, label %blk_mq_sched_allow_merge.exit41.return_crit_edge

blk_mq_sched_allow_merge.exit41.return_crit_edge: ; preds = %blk_mq_sched_allow_merge.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

blk_mq_sched_allow_merge.exit41.if.then10_crit_edge: ; preds = %blk_mq_sched_allow_merge.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10

if.then10:                                        ; preds = %blk_mq_sched_allow_merge.exit41.if.then10_crit_edge, %if.then.i37.if.then10_crit_edge, %lor.lhs.false8.if.then10_crit_edge, %sw.bb6.if.then10_crit_edge
  %call11 = tail call fastcc i32 @bio_attempt_front_merge(ptr noundef %rq, ptr noundef %bio, i32 noundef %nr_segs)
  br label %return

sw.bb13:                                          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call fastcc i32 @bio_attempt_discard_merge(ptr noundef %q, ptr noundef %rq, ptr noundef %bio)
  br label %return

return:                                           ; preds = %sw.bb13, %if.then10, %blk_mq_sched_allow_merge.exit41.return_crit_edge, %if.then3, %blk_mq_sched_allow_merge.exit.return_crit_edge, %blk_try_merge.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call14, %sw.bb13 ], [ %call11, %if.then10 ], [ %call4, %if.then3 ], [ 1, %entry.return_crit_edge ], [ 1, %blk_try_merge.exit.return_crit_edge ], [ 2, %blk_mq_sched_allow_merge.exit41.return_crit_edge ], [ 2, %blk_mq_sched_allow_merge.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_bio_list_merge(ptr noundef %q, ptr noundef readonly %list, ptr noundef %bio, i32 noundef %nr_segs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %checked.0 = phi i32 [ 8, %entry ], [ %dec, %if.end.for.cond_crit_edge ]
  %list.pn = phi ptr [ %list, %entry ], [ %.pn, %if.end.for.cond_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.list_head, ptr %list.pn, i32 0, i32 1
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %checked.0)
  %tobool.not = icmp eq i32 %checked.0, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.cond.cleanup.loopexit_crit_edge, label %if.end

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

if.end:                                           ; preds = %for.cond
  %rq.0 = getelementptr i8, ptr %.pn, i32 -56
  %dec = add nsw i32 %checked.0, -1
  %call = tail call fastcc i32 @blk_attempt_bio_merge(ptr noundef %q, ptr noundef %rq.0, ptr noundef %bio, i32 noundef %nr_segs, i1 noundef zeroext true)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call, label %if.end.for.cond_crit_edge [
    i32 2, label %if.end.cleanup_crit_edge
    i32 0, label %if.end.cleanup.loopexit_crit_edge
  ]

if.end.cleanup.loopexit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

cleanup.loopexit:                                 ; preds = %if.end.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  %2 = xor i1 %or.cond, true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %2, %cleanup.loopexit ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @blk_mq_sched_try_merge(ptr noundef %q, ptr noundef %bio, i32 noundef %nr_segs, ptr nocapture noundef writeonly %merged_request) #0 align 64 {
entry:
  %rq = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rq) #10
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rq, align 4, !annotation !48
  %call = call i32 @elv_merge(ptr noundef %q, ptr noundef nonnull %rq, ptr noundef %bio) #10
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb8
    i32 3, label %sw.bb20
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq, align 4
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end_crit_edge, label %if.then.i

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %sw.bb
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %6 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elevator.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %allow_merge.i = getelementptr inbounds %struct.elevator_type, ptr %9, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %allow_merge.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %allow_merge.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.then.i.if.end_crit_edge, label %blk_mq_sched_allow_merge.exit

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

blk_mq_sched_allow_merge.exit:                    ; preds = %if.then.i
  %call.i = call zeroext i1 %11(ptr noundef %q, ptr noundef %3, ptr noundef %bio) #10
  br i1 %call.i, label %blk_mq_sched_allow_merge.exit.if.end_crit_edge, label %blk_mq_sched_allow_merge.exit.cleanup_crit_edge

blk_mq_sched_allow_merge.exit.cleanup_crit_edge:  ; preds = %blk_mq_sched_allow_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

blk_mq_sched_allow_merge.exit.if.end_crit_edge:   ; preds = %blk_mq_sched_allow_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %blk_mq_sched_allow_merge.exit.if.end_crit_edge, %if.then.i.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %12 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rq, align 4
  %call2 = call fastcc i32 @bio_attempt_back_merge(ptr noundef %13, ptr noundef %bio, i32 noundef %nr_segs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %14 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rq, align 4
  %call.i39 = call ptr @elv_latter_request(ptr noundef %q, ptr noundef %15) #10
  %tobool.not.i40 = icmp eq ptr %call.i39, null
  br i1 %tobool.not.i40, label %attempt_back_merge.exit.thread, label %attempt_back_merge.exit

attempt_back_merge.exit.thread:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %merged_request to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %merged_request, align 4
  br label %if.then6

attempt_back_merge.exit:                          ; preds = %if.end4
  %call1.i = call fastcc ptr @attempt_merge(ptr noundef %q, ptr noundef %15, ptr noundef nonnull %call.i39) #10
  %17 = ptrtoint ptr %merged_request to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i, ptr %merged_request, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %attempt_back_merge.exit.if.then6_crit_edge, label %attempt_back_merge.exit.cleanup_crit_edge

attempt_back_merge.exit.cleanup_crit_edge:        ; preds = %attempt_back_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

attempt_back_merge.exit.if.then6_crit_edge:       ; preds = %attempt_back_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %attempt_back_merge.exit.if.then6_crit_edge, %attempt_back_merge.exit.thread
  %18 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rq, align 4
  call void @elv_merged_request(ptr noundef %q, ptr noundef %19, i32 noundef 2) #10
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %20 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rq, align 4
  %rq_flags.i43 = getelementptr inbounds %struct.request, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %rq_flags.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rq_flags.i43, align 8
  %and.i44 = and i32 %23, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i45 = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i45, label %sw.bb8.if.end11_crit_edge, label %if.then.i49

sw.bb8.if.end11_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then.i49:                                      ; preds = %sw.bb8
  %elevator.i46 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %24 = ptrtoint ptr %elevator.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %elevator.i46, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %allow_merge.i47 = getelementptr inbounds %struct.elevator_type, ptr %27, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %allow_merge.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %allow_merge.i47, align 4
  %tobool1.not.i48 = icmp eq ptr %29, null
  br i1 %tobool1.not.i48, label %if.then.i49.if.end11_crit_edge, label %blk_mq_sched_allow_merge.exit53

if.then.i49.if.end11_crit_edge:                   ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

blk_mq_sched_allow_merge.exit53:                  ; preds = %if.then.i49
  %call.i50 = call zeroext i1 %29(ptr noundef %q, ptr noundef %21, ptr noundef %bio) #10
  br i1 %call.i50, label %blk_mq_sched_allow_merge.exit53.if.end11_crit_edge, label %blk_mq_sched_allow_merge.exit53.cleanup_crit_edge

blk_mq_sched_allow_merge.exit53.cleanup_crit_edge: ; preds = %blk_mq_sched_allow_merge.exit53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

blk_mq_sched_allow_merge.exit53.if.end11_crit_edge: ; preds = %blk_mq_sched_allow_merge.exit53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %blk_mq_sched_allow_merge.exit53.if.end11_crit_edge, %if.then.i49.if.end11_crit_edge, %sw.bb8.if.end11_crit_edge
  %30 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rq, align 4
  %call12 = call fastcc i32 @bio_attempt_front_merge(ptr noundef %31, ptr noundef %bio, i32 noundef %nr_segs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %32 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rq, align 4
  %call.i54 = call ptr @elv_former_request(ptr noundef %q, ptr noundef %33) #10
  %tobool.not.i55 = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i55, label %attempt_front_merge.exit.thread, label %attempt_front_merge.exit

attempt_front_merge.exit.thread:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %merged_request to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %merged_request, align 4
  br label %if.then18

attempt_front_merge.exit:                         ; preds = %if.end15
  %call1.i56 = call fastcc ptr @attempt_merge(ptr noundef %q, ptr noundef nonnull %call.i54, ptr noundef %33) #10
  %35 = ptrtoint ptr %merged_request to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call1.i56, ptr %merged_request, align 4
  %tobool17.not = icmp eq ptr %call1.i56, null
  br i1 %tobool17.not, label %attempt_front_merge.exit.if.then18_crit_edge, label %attempt_front_merge.exit.cleanup_crit_edge

attempt_front_merge.exit.cleanup_crit_edge:       ; preds = %attempt_front_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

attempt_front_merge.exit.if.then18_crit_edge:     ; preds = %attempt_front_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.then18:                                        ; preds = %attempt_front_merge.exit.if.then18_crit_edge, %attempt_front_merge.exit.thread
  %36 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rq, align 4
  call void @elv_merged_request(ptr noundef %q, ptr noundef %37, i32 noundef 1) #10
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rq, align 4
  %call21 = call fastcc i32 @bio_attempt_discard_merge(ptr noundef %q, ptr noundef %39, ptr noundef %bio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %if.then18, %attempt_front_merge.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %blk_mq_sched_allow_merge.exit53.cleanup_crit_edge, %if.then6, %attempt_back_merge.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %blk_mq_sched_allow_merge.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp22, %sw.bb20 ], [ false, %blk_mq_sched_allow_merge.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then6 ], [ true, %attempt_back_merge.exit.cleanup_crit_edge ], [ false, %blk_mq_sched_allow_merge.exit53.cleanup_crit_edge ], [ false, %if.end11.cleanup_crit_edge ], [ true, %if.then18 ], [ true, %attempt_front_merge.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rq) #10
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bio_attempt_back_merge(ptr noundef %req, ptr noundef %bio, i32 noundef %nr_segs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %call = tail call i32 @ll_back_merge_fn(ptr noundef %req, ptr noundef %bio, i32 noundef %nr_segs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @trace_block_bio_backmerge(ptr noundef %bio)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %rq_qos.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_qos.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.rq_qos_merge.exit_crit_edge, label %if.then.i

if.end.rq_qos_merge.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rq_qos_merge.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__rq_qos_merge(ptr noundef nonnull %5, ptr noundef %req, ptr noundef %bio) #10
  br label %rq_qos_merge.exit

rq_qos_merge.exit:                                ; preds = %if.then.i, %if.end.rq_qos_merge.exit_crit_edge
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %8 = xor i32 %7, %1
  %9 = and i32 %8, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %rq_qos_merge.exit.if.end7_crit_edge, label %if.then6

rq_qos_merge.exit.if.end7_crit_edge:              ; preds = %rq_qos_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %rq_qos_merge.exit
  %10 = and i32 %7, 1792
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_flags.i, align 8
  %and2.i = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i24 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i24, label %if.end.i, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i:                                         ; preds = %if.then6
  %bio3.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %13 = ptrtoint ptr %bio3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bio.068.i = load ptr, ptr %bio3.i, align 8
  %tobool4.not69.i = icmp eq ptr %bio.068.i, null
  br i1 %tobool4.not69.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %if.end45.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %bio.070.i = phi ptr [ %bio.0.i, %if.end45.i.for.body.i_crit_edge ], [ %bio.068.i, %if.end.i.for.body.i_crit_edge ]
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.070.i, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_opf.i, align 8
  %16 = and i32 %15, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp.i = icmp ne i32 %16, %10
  %spec.select.i = select i1 %tobool7.not.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %land.rhs16.i, label %for.body.i.if.end45.i_crit_edge

for.body.i.if.end45.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

land.rhs16.i:                                     ; preds = %for.body.i
  %.b67.i = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  br i1 %.b67.i, label %land.rhs16.i.if.end45.i_crit_edge, label %if.then23.i, !prof !46

land.rhs16.i.if.end45.i_crit_edge:                ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then23.i:                                      ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 734, i32 noundef 9, ptr noundef null) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then23.i, %land.rhs16.i.if.end45.i_crit_edge, %for.body.i.if.end45.i_crit_edge
  %17 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf.i, align 8
  %or.i = or i32 %18, %10
  store i32 %or.i, ptr %bi_opf.i, align 8
  %19 = ptrtoint ptr %bio.070.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bio.0.i = load ptr, ptr %bio.070.i, align 8
  %tobool4.not.i = icmp eq ptr %bio.0.i, null
  br i1 %tobool4.not.i, label %if.end45.i.for.end.i_crit_edge, label %if.end45.i.for.body.i_crit_edge

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end45.i.for.end.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end45.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %20 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rq_flags.i, align 8
  %or55.i = or i32 %21, 32
  store i32 %or55.i, ptr %rq_flags.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %for.end.i, %if.then6.if.end7_crit_edge, %rq_qos_merge.exit.if.end7_crit_edge
  %biotail = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 11
  %22 = ptrtoint ptr %biotail to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %biotail, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %bio, ptr %23, align 8
  store ptr %bio, ptr %biotail, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_size, align 8
  %__data_len = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %27 = ptrtoint ptr %__data_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %__data_len, align 8
  %add = add i32 %28, %26
  store i32 %add, ptr %__data_len, align 8
  %bi_crypt_context.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %29 = ptrtoint ptr %bi_crypt_context.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_crypt_context.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %30, null
  br i1 %tobool.i.not.i, label %if.end7.bio_crypt_free_ctx.exit_crit_edge, label %if.then.i25

if.end7.bio_crypt_free_ctx.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_crypt_free_ctx.exit

if.then.i25:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__bio_crypt_free_ctx(ptr noundef %bio) #10
  br label %bio_crypt_free_ctx.exit

bio_crypt_free_ctx.exit:                          ; preds = %if.then.i25, %if.end7.bio_crypt_free_ctx.exit_crit_edge
  tail call fastcc void @blk_account_io_merge_bio(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %bio_crypt_free_ctx.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bio_crypt_free_ctx.exit ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_merged_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bio_attempt_front_merge(ptr noundef %req, ptr noundef %bio, i32 noundef %nr_segs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf, align 8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %bio1.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 10
  %4 = ptrtoint ptr %bio1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bio1.i.i, align 8
  %call.i.i = tail call fastcc zeroext i1 @bio_will_gap(ptr noundef %3, ptr noundef null, ptr noundef %bio, ptr noundef %5) #10
  br i1 %call.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags.i.i, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.end4.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %9 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_opf, align 8
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.bio_integrity.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.bio_integrity.exit.i.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 16
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  br label %bio_integrity.exit.i.i

bio_integrity.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true.i.bio_integrity.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %14, %if.then.i.i.i ], [ null, %land.lhs.true.i.bio_integrity.exit.i.i_crit_edge ]
  %15 = ptrtoint ptr %bio1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bio1.i.i, align 8
  %bi_opf.i8.i.i = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %bi_opf.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bi_opf.i8.i.i, align 8
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i9.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i9.i.i, label %bio_integrity.exit.i.i.bio_integrity.exit12.i.i_crit_edge, label %if.then.i10.i.i

bio_integrity.exit.i.i.bio_integrity.exit12.i.i_crit_edge: ; preds = %bio_integrity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_integrity.exit12.i.i

if.then.i10.i.i:                                  ; preds = %bio_integrity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = getelementptr inbounds %struct.bio, ptr %16, i32 0, i32 16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  br label %bio_integrity.exit12.i.i

bio_integrity.exit12.i.i:                         ; preds = %if.then.i10.i.i, %bio_integrity.exit.i.i.bio_integrity.exit12.i.i_crit_edge
  %retval.0.i11.i.i = phi ptr [ %22, %if.then.i10.i.i ], [ null, %bio_integrity.exit.i.i.bio_integrity.exit12.i.i_crit_edge ]
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req, align 8
  %bip_vec.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %bip_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bip_vec.i.i, align 4
  %bip_vcnt.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %bip_vcnt.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bip_vcnt.i.i, align 4
  %conv.i.i = zext i16 %28 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %virt_boundary_mask.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %24, i32 0, i32 37, i32 2
  %29 = ptrtoint ptr %virt_boundary_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %virt_boundary_mask.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i13.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i13.i.i, label %bio_integrity.exit12.i.i.if.end4.i_crit_edge, label %if.end.i.i.i

bio_integrity.exit12.i.i.if.end4.i_crit_edge:     ; preds = %bio_integrity.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.end.i.i.i:                                     ; preds = %bio_integrity.exit12.i.i
  %bip_vec3.i.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i11.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %bip_vec3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bip_vec3.i.i, align 4
  %bv_offset.i.i = getelementptr inbounds %struct.bio_vec, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bv_offset.i.i, align 4
  %and.i.i.i.i = and i32 %34, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %integrity_req_gap_front_merge.exit.i, label %if.end.i.i.i.cleanup_crit_edge

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

integrity_req_gap_front_merge.exit.i:             ; preds = %if.end.i.i.i
  %bv_offset.i.i.i.i = getelementptr %struct.bio_vec, ptr %26, i32 %sub.i.i, i32 2
  %35 = ptrtoint ptr %bv_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_offset.i.i.i.i, align 4
  %bv_len.i.i.i.i = getelementptr %struct.bio_vec, ptr %26, i32 %sub.i.i, i32 1
  %37 = ptrtoint ptr %bv_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bv_len.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %38, %36
  %and2.i.i.i.i = and i32 %add.i.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.i.i.i.not.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.i.i.i.not.i, label %integrity_req_gap_front_merge.exit.i.if.end4.i_crit_edge, label %integrity_req_gap_front_merge.exit.i.cleanup_crit_edge

integrity_req_gap_front_merge.exit.i.cleanup_crit_edge: ; preds = %integrity_req_gap_front_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

integrity_req_gap_front_merge.exit.i.if.end4.i_crit_edge: ; preds = %integrity_req_gap_front_merge.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %integrity_req_gap_front_merge.exit.i.if.end4.i_crit_edge, %bio_integrity.exit12.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %bi_crypt_context.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %39 = ptrtoint ptr %bi_crypt_context.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bi_crypt_context.i.i, align 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_size.i.i, align 8
  %crypt_ctx.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 21
  %43 = ptrtoint ptr %crypt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %crypt_ctx.i.i, align 8
  %call.i28.i = tail call zeroext i1 @bio_crypt_ctx_mergeable(ptr noundef %40, i32 noundef %42, ptr noundef %44) #10
  br i1 %call.i28.i, label %if.end7.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4.i
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %45 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i.i = lshr i32 %46, 9
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %47 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_size.i.i, align 8
  %shr.i = lshr i32 %48, 9
  %add.i = add nuw nsw i32 %shr.i, %shr.i.i
  %49 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bi_iter.i, align 8
  %51 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %req, align 8
  %53 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd_flags.i.i, align 4
  %55 = and i32 %54, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %55)
  %56 = icmp eq i32 %55, 34
  br i1 %56, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_hw_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 3
  %57 = ptrtoint ptr %max_hw_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_hw_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit.i

if.end.i.i:                                       ; preds = %if.end7.i
  %chunk_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 5
  %59 = ptrtoint ptr %chunk_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chunk_sectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i.i = icmp eq i32 %60, 0
  %.pre.i.i = trunc i32 %54 to i8
  br i1 %tobool.not.i.i, label %if.then7.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %61 = zext i8 %.pre.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %.pre.i.i, label %if.end7.i.i.i [
    i8 5, label %lor.lhs.false.i.i.if.then.i.i29.i_crit_edge
    i8 3, label %lor.lhs.false.i.i.if.then.i.i29.i_crit_edge54
  ], !prof !57

lor.lhs.false.i.i.if.then.i.i29.i_crit_edge54:    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i29.i

lor.lhs.false.i.i.if.then.i.i29.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i29.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %62 = zext i8 %.pre.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %.pre.i.i, label %if.end23.i.i.i [
    i8 5, label %if.then7.i.i.if.then.i.i29.i_crit_edge
    i8 3, label %if.then7.i.i.if.then.i.i29.i_crit_edge55
    i8 7, label %if.then11.i.i.i
    i8 9, label %if.then21.i.i.i
  ], !prof !58

if.then7.i.i.if.then.i.i29.i_crit_edge55:         ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i29.i

if.then7.i.i.if.then.i.i29.i_crit_edge:           ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i29.i

if.then.i.i29.i:                                  ; preds = %if.then7.i.i.if.then.i.i29.i_crit_edge, %if.then7.i.i.if.then.i.i29.i_crit_edge55, %lor.lhs.false.i.i.if.then.i.i29.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i29.i_crit_edge54
  %max_discard_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 13
  %63 = ptrtoint ptr %max_discard_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_discard_sectors.i.i.i, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 8388607) #10
  br label %blk_rq_get_max_sectors.exit.i

if.then11.i.i.i:                                  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 15
  %66 = ptrtoint ptr %max_write_same_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_write_same_sectors.i.i.i, align 4
  br label %blk_rq_get_max_sectors.exit.i

if.then21.i.i.i:                                  ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 16
  %68 = ptrtoint ptr %max_write_zeroes_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max_write_zeroes_sectors.i.i.i, align 4
  br label %blk_rq_get_max_sectors.exit.i

if.end23.i.i.i:                                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 6
  %70 = ptrtoint ptr %max_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_sectors.i.i.i, align 4
  br label %blk_rq_get_max_sectors.exit.i

if.end7.i.i.i:                                    ; preds = %lor.lhs.false.i.i
  %72 = tail call i32 @llvm.ctpop.i32(i32 %60) #10, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp1.i.i.i.i = icmp ult i32 %72, 2
  br i1 %cmp1.i.i.i.i, label %if.then10.i.i.i, label %if.else185.i.i.i, !prof !46

if.then10.i.i.i:                                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %60, -1
  %73 = trunc i64 %50 to i32
  %74 = and i32 %sub.i.i.i, %73
  br label %blk_max_size_offset.exit.i.i

if.else185.i.i.i:                                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %50)
  %cmp187.i.i.i = icmp ult i64 %50, 4294967296
  br i1 %cmp187.i.i.i, label %if.then195.i.i.i, label %if.else201.i.i.i, !prof !46

if.then195.i.i.i:                                 ; preds = %if.else185.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv196.i.i.i = trunc i64 %50 to i32
  %rem197.i.i.i = urem i32 %conv196.i.i.i, %60
  br label %blk_max_size_offset.exit.i.i

if.else201.i.i.i:                                 ; preds = %if.else185.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %60, i64 %50) #13, !srcloc !47
  %asmresult.i.i.i.i = extractvalue { i64, i64 } %75, 0
  %shr.i.i.i.i = lshr i64 %asmresult.i.i.i.i, 32
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %blk_max_size_offset.exit.i.i

blk_max_size_offset.exit.i.i:                     ; preds = %if.else201.i.i.i, %if.then195.i.i.i, %if.then10.i.i.i
  %.pn.i.i.i = phi i32 [ %74, %if.then10.i.i.i ], [ %rem197.i.i.i, %if.then195.i.i.i ], [ %conv.i.i.i.i, %if.else201.i.i.i ]
  %chunk_sectors.addr.1.i.i.i = sub i32 %60, %.pn.i.i.i
  %max_sectors210.i.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 6
  %76 = ptrtoint ptr %max_sectors210.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_sectors210.i.i.i, align 4
  %78 = tail call i32 @llvm.umin.i32(i32 %77, i32 %chunk_sectors.addr.1.i.i.i) #10
  %79 = zext i8 %.pre.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %.pre.i.i, label %blk_max_size_offset.exit.i.i.blk_queue_get_max_sectors.exit39.i.i_crit_edge [
    i8 9, label %if.then21.i35.i.i
    i8 7, label %if.then11.i33.i.i
  ], !prof !59

blk_max_size_offset.exit.i.i.blk_queue_get_max_sectors.exit39.i.i_crit_edge: ; preds = %blk_max_size_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_get_max_sectors.exit39.i.i

if.then11.i33.i.i:                                ; preds = %blk_max_size_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i32.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 15
  br label %blk_queue_get_max_sectors.exit39.i.sink.split.i

if.then21.i35.i.i:                                ; preds = %blk_max_size_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i34.i.i = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 37, i32 16
  br label %blk_queue_get_max_sectors.exit39.i.sink.split.i

blk_queue_get_max_sectors.exit39.i.sink.split.i:  ; preds = %if.then21.i35.i.i, %if.then11.i33.i.i
  %max_write_zeroes_sectors.i34.i.sink.i = phi ptr [ %max_write_zeroes_sectors.i34.i.i, %if.then21.i35.i.i ], [ %max_write_same_sectors.i32.i.i, %if.then11.i33.i.i ]
  %80 = ptrtoint ptr %max_write_zeroes_sectors.i34.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_write_zeroes_sectors.i34.i.sink.i, align 4
  br label %blk_queue_get_max_sectors.exit39.i.i

blk_queue_get_max_sectors.exit39.i.i:             ; preds = %blk_queue_get_max_sectors.exit39.i.sink.split.i, %blk_max_size_offset.exit.i.i.blk_queue_get_max_sectors.exit39.i.i_crit_edge
  %retval.0.i38.i.i = phi i32 [ %77, %blk_max_size_offset.exit.i.i.blk_queue_get_max_sectors.exit39.i.i_crit_edge ], [ %81, %blk_queue_get_max_sectors.exit39.i.sink.split.i ]
  %82 = tail call i32 @llvm.umin.i32(i32 %78, i32 %retval.0.i38.i.i) #10
  br label %blk_rq_get_max_sectors.exit.i

blk_rq_get_max_sectors.exit.i:                    ; preds = %blk_queue_get_max_sectors.exit39.i.i, %if.end23.i.i.i, %if.then21.i.i.i, %if.then11.i.i.i, %if.then.i.i29.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %58, %if.then.i.i ], [ %82, %blk_queue_get_max_sectors.exit39.i.i ], [ %65, %if.then.i.i29.i ], [ %67, %if.then11.i.i.i ], [ %69, %if.then21.i.i.i ], [ %71, %if.end23.i.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %retval.0.i.i)
  %cmp.i = icmp ugt i32 %add.i, %retval.0.i.i
  br i1 %cmp.i, label %if.then11.i, label %if.end12.i

if.then11.i:                                      ; preds = %blk_rq_get_max_sectors.exit.i
  %83 = or i32 %54, 16384
  %84 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %cmd_flags.i.i, align 4
  %85 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %52, align 8
  %cmp.i.i = icmp eq ptr %86, %req
  br i1 %cmp.i.i, label %if.then.i31.i, label %if.then11.i.cleanup_crit_edge

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i31.i:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %52, align 8
  br label %cleanup

if.end12.i:                                       ; preds = %blk_rq_get_max_sectors.exit.i
  %call.i33.i = tail call zeroext i1 @blk_integrity_merge_bio(ptr noundef %52, ptr noundef %req, ptr noundef %bio) #10
  br i1 %call.i33.i, label %if.end.i35.i, label %if.end12.i.no_merge.i.i_crit_edge

if.end12.i.no_merge.i.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge.i.i

if.end.i35.i:                                     ; preds = %if.end12.i
  %88 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cmd_flags.i.i, align 4
  %and.i.i = and i32 %89, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp2.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp2.i.i, label %if.end.i35.i.if.end_crit_edge, label %if.end5.i.i

if.end.i35.i.if.end_crit_edge:                    ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.i.i:                                      ; preds = %if.end.i35.i
  %nr_phys_segments.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %90 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %nr_phys_segments.i.i, align 4
  %conv6.i.i = zext i16 %91 to i32
  %add.i.i = add i32 %conv6.i.i, %nr_segs
  %92 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %req, align 8
  %max_segments.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %93, i32 0, i32 37, i32 21
  %94 = ptrtoint ptr %max_segments.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %retval.0.in.i.i.i = load i16, ptr %max_segments.i.i.i.i, align 4
  %retval.0.i.i36.i = zext i16 %retval.0.in.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i36.i)
  %cmp8.i.i = icmp ugt i32 %add.i.i, %retval.0.i.i36.i
  br i1 %cmp8.i.i, label %if.end5.i.i.no_merge.i.i_crit_edge, label %if.end11.i.i

if.end5.i.i.no_merge.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge.i.i

if.end11.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = trunc i32 %nr_segs to i16
  %conv15.i.i = add i16 %91, %95
  %96 = ptrtoint ptr %nr_phys_segments.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv15.i.i, ptr %nr_phys_segments.i.i, align 4
  br label %if.end

no_merge.i.i:                                     ; preds = %if.end5.i.i.no_merge.i.i_crit_edge, %if.end12.i.no_merge.i.i_crit_edge
  %97 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %req, align 8
  %99 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cmd_flags.i.i, align 4
  %101 = or i32 %100, 16384
  store i32 %101, ptr %cmd_flags.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %98, align 8
  %cmp.i26.i.i = icmp eq ptr %103, %req
  br i1 %cmp.i26.i.i, label %if.then.i.i37.i, label %no_merge.i.i.cleanup_crit_edge

no_merge.i.i.cleanup_crit_edge:                   ; preds = %no_merge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i37.i:                                  ; preds = %no_merge.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %98, align 8
  br label %cleanup

if.end:                                           ; preds = %if.end11.i.i, %if.end.i35.i.if.end_crit_edge
  tail call fastcc void @trace_block_bio_frontmerge(ptr noundef %bio)
  %105 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %req, align 8
  %rq_qos.i = getelementptr inbounds %struct.request_queue, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rq_qos.i, align 4
  %tobool.not.i = icmp eq ptr %108, null
  br i1 %tobool.not.i, label %if.end.rq_qos_merge.exit_crit_edge, label %if.then.i

if.end.rq_qos_merge.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rq_qos_merge.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__rq_qos_merge(ptr noundef nonnull %108, ptr noundef %req, ptr noundef %bio) #10
  br label %rq_qos_merge.exit

rq_qos_merge.exit:                                ; preds = %if.then.i, %if.end.rq_qos_merge.exit_crit_edge
  %109 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cmd_flags.i.i, align 4
  %111 = xor i32 %110, %1
  %112 = and i32 %111, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.not = icmp eq i32 %112, 0
  br i1 %cmp.not, label %rq_qos_merge.exit.if.end7_crit_edge, label %if.then6

rq_qos_merge.exit.if.end7_crit_edge:              ; preds = %rq_qos_merge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %rq_qos_merge.exit
  %113 = and i32 %110, 1792
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %114 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rq_flags.i, align 8
  %and2.i = and i32 %115, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i30 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i30, label %if.end.i31, label %if.then6.if.end7_crit_edge

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end.i31:                                       ; preds = %if.then6
  %116 = ptrtoint ptr %bio1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %bio.068.i = load ptr, ptr %bio1.i.i, align 8
  %tobool4.not69.i = icmp eq ptr %bio.068.i, null
  br i1 %tobool4.not69.i, label %if.end.i31.for.end.i_crit_edge, label %if.end.i31.for.body.i_crit_edge

if.end.i31.for.body.i_crit_edge:                  ; preds = %if.end.i31
  br label %for.body.i

if.end.i31.for.end.i_crit_edge:                   ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %if.end45.i.for.body.i_crit_edge, %if.end.i31.for.body.i_crit_edge
  %bio.070.i = phi ptr [ %bio.0.i, %if.end45.i.for.body.i_crit_edge ], [ %bio.068.i, %if.end.i31.for.body.i_crit_edge ]
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.070.i, i32 0, i32 2
  %117 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bi_opf.i, align 8
  %119 = and i32 %118, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool7.not.i = icmp ne i32 %119, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %113)
  %cmp.i32 = icmp ne i32 %119, %113
  %spec.select.i = select i1 %tobool7.not.i, i1 %cmp.i32, i1 false
  br i1 %spec.select.i, label %land.rhs16.i, label %for.body.i.if.end45.i_crit_edge

for.body.i.if.end45.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

land.rhs16.i:                                     ; preds = %for.body.i
  %.b67.i = load i1, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  br i1 %.b67.i, label %land.rhs16.i.if.end45.i_crit_edge, label %if.then23.i, !prof !46

land.rhs16.i.if.end45.i_crit_edge:                ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then23.i:                                      ; preds = %land.rhs16.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @blk_rq_set_mixed_merge.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 734, i32 noundef 9, ptr noundef null) #10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then23.i, %land.rhs16.i.if.end45.i_crit_edge, %for.body.i.if.end45.i_crit_edge
  %120 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bi_opf.i, align 8
  %or.i = or i32 %121, %113
  store i32 %or.i, ptr %bi_opf.i, align 8
  %122 = ptrtoint ptr %bio.070.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %bio.0.i = load ptr, ptr %bio.070.i, align 8
  %tobool4.not.i = icmp eq ptr %bio.0.i, null
  br i1 %tobool4.not.i, label %if.end45.i.for.end.i_crit_edge, label %if.end45.i.for.body.i_crit_edge

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end45.i.for.end.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %if.end45.i.for.end.i_crit_edge, %if.end.i31.for.end.i_crit_edge
  %123 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rq_flags.i, align 8
  %or55.i = or i32 %124, 32
  store i32 %or55.i, ptr %rq_flags.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %for.end.i, %if.then6.if.end7_crit_edge, %rq_qos_merge.exit.if.end7_crit_edge
  %125 = ptrtoint ptr %bio1.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bio1.i.i, align 8
  %127 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %bio, align 8
  store ptr %bio, ptr %bio1.i.i, align 8
  %128 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %bi_iter.i, align 8
  %__sector = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %130 = ptrtoint ptr %__sector to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %__sector, align 8
  %131 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %bi_size.i.i, align 8
  %133 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %__data_len.i.i.i, align 8
  %add = add i32 %134, %132
  store i32 %add, ptr %__data_len.i.i.i, align 8
  %135 = ptrtoint ptr %bi_crypt_context.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bi_crypt_context.i.i, align 8
  %tobool.i.not.i34 = icmp eq ptr %136, null
  br i1 %tobool.i.not.i34, label %if.end7.bio_crypt_do_front_merge.exit_crit_edge, label %if.then.i35

if.end7.bio_crypt_do_front_merge.exit_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_crypt_do_front_merge.exit

if.then.i35:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %crypt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %crypt_ctx.i.i, align 8
  %bc_dun.i = getelementptr inbounds %struct.bio_crypt_ctx, ptr %138, i32 0, i32 1
  %bc_dun1.i = getelementptr inbounds %struct.bio_crypt_ctx, ptr %136, i32 0, i32 1
  %139 = call ptr @memcpy(ptr %bc_dun.i, ptr %bc_dun1.i, i32 32)
  br label %bio_crypt_do_front_merge.exit

bio_crypt_do_front_merge.exit:                    ; preds = %if.then.i35, %if.end7.bio_crypt_do_front_merge.exit_crit_edge
  tail call fastcc void @blk_account_io_merge_bio(ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %bio_crypt_do_front_merge.exit, %if.then.i.i37.i, %no_merge.i.i.cleanup_crit_edge, %if.then.i31.i, %if.then11.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %integrity_req_gap_front_merge.exit.i.cleanup_crit_edge, %if.end.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bio_crypt_do_front_merge.exit ], [ 2, %entry.cleanup_crit_edge ], [ 2, %integrity_req_gap_front_merge.exit.i.cleanup_crit_edge ], [ 2, %if.end4.i.cleanup_crit_edge ], [ 2, %if.then11.i.cleanup_crit_edge ], [ 2, %if.then.i31.i ], [ 2, %no_merge.i.i.cleanup_crit_edge ], [ 2, %if.then.i.i37.i ], [ 2, %if.end.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bio_attempt_discard_merge(ptr nocapture noundef %q, ptr noundef %req, ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %0 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nr_phys_segments.i, align 4
  %2 = tail call i16 @llvm.umax.i16(i16 %1, i16 1) #10
  %max_discard_segments.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 23
  %3 = ptrtoint ptr %max_discard_segments.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_discard_segments.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp.not = icmp ult i16 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.no_merge_crit_edge

entry.no_merge_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge

if.end:                                           ; preds = %entry
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %5 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %6, 9
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %8, 9
  %add = add nuw nsw i32 %shr, %shr.i
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %9 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %__sector.i, align 8
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 8
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_flags.i.i, align 4
  %15 = and i32 %14, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %15)
  %16 = icmp eq i32 %15, 34
  br i1 %16, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 3
  %17 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_hw_sectors.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end.i:                                         ; preds = %if.end
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 5
  %19 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chunk_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %.pre.i = trunc i32 %14 to i8
  br i1 %tobool.not.i, label %if.then7.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %21 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %.pre.i, label %if.end7.i.i [
    i8 5, label %lor.lhs.false.i.if.then.i.i_crit_edge
    i8 3, label %lor.lhs.false.i.if.then.i.i_crit_edge55
  ], !prof !57

lor.lhs.false.i.if.then.i.i_crit_edge55:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then7.i:                                       ; preds = %if.end.i
  %22 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %.pre.i, label %if.end23.i.i [
    i8 5, label %if.then7.i.if.then.i.i_crit_edge
    i8 3, label %if.then7.i.if.then.i.i_crit_edge56
    i8 7, label %if.then11.i.i
    i8 9, label %if.then21.i.i
  ], !prof !58

if.then7.i.if.then.i.i_crit_edge56:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then7.i.if.then.i.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then7.i.if.then.i.i_crit_edge, %if.then7.i.if.then.i.i_crit_edge56, %lor.lhs.false.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge55
  %max_discard_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 13
  %23 = ptrtoint ptr %max_discard_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_discard_sectors.i.i, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 8388607) #10
  br label %blk_rq_get_max_sectors.exit

if.then11.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 15
  %26 = ptrtoint ptr %max_write_same_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_write_same_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.then21.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 16
  %28 = ptrtoint ptr %max_write_zeroes_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_write_zeroes_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end23.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 6
  %30 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end7.i.i:                                      ; preds = %lor.lhs.false.i
  %32 = tail call i32 @llvm.ctpop.i32(i32 %20) #10, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp1.i.i.i = icmp ult i32 %32, 2
  br i1 %cmp1.i.i.i, label %if.then10.i.i, label %if.else185.i.i, !prof !46

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %20, -1
  %33 = trunc i64 %10 to i32
  %34 = and i32 %sub.i.i, %33
  br label %blk_max_size_offset.exit.i

if.else185.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %10)
  %cmp187.i.i = icmp ult i64 %10, 4294967296
  br i1 %cmp187.i.i, label %if.then195.i.i, label %if.else201.i.i, !prof !46

if.then195.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv196.i.i = trunc i64 %10 to i32
  %rem197.i.i = urem i32 %conv196.i.i, %20
  br label %blk_max_size_offset.exit.i

if.else201.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %20, i64 %10) #13, !srcloc !47
  %asmresult.i.i.i = extractvalue { i64, i64 } %35, 0
  %shr.i.i.i = lshr i64 %asmresult.i.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %blk_max_size_offset.exit.i

blk_max_size_offset.exit.i:                       ; preds = %if.else201.i.i, %if.then195.i.i, %if.then10.i.i
  %.pn.i.i = phi i32 [ %34, %if.then10.i.i ], [ %rem197.i.i, %if.then195.i.i ], [ %conv.i.i.i, %if.else201.i.i ]
  %chunk_sectors.addr.1.i.i = sub i32 %20, %.pn.i.i
  %max_sectors210.i.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 6
  %36 = ptrtoint ptr %max_sectors210.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_sectors210.i.i, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %chunk_sectors.addr.1.i.i) #10
  %39 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %.pre.i, label %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge [
    i8 9, label %if.then21.i35.i
    i8 7, label %if.then11.i33.i
  ], !prof !59

blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge: ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_get_max_sectors.exit39.i

if.then11.i33.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i32.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 15
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

if.then21.i35.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i34.i = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 37, i32 16
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

blk_queue_get_max_sectors.exit39.i.sink.split:    ; preds = %if.then21.i35.i, %if.then11.i33.i
  %max_write_zeroes_sectors.i34.i.sink = phi ptr [ %max_write_zeroes_sectors.i34.i, %if.then21.i35.i ], [ %max_write_same_sectors.i32.i, %if.then11.i33.i ]
  %40 = ptrtoint ptr %max_write_zeroes_sectors.i34.i.sink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_write_zeroes_sectors.i34.i.sink, align 4
  br label %blk_queue_get_max_sectors.exit39.i

blk_queue_get_max_sectors.exit39.i:               ; preds = %blk_queue_get_max_sectors.exit39.i.sink.split, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge
  %retval.0.i38.i = phi i32 [ %37, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge ], [ %41, %blk_queue_get_max_sectors.exit39.i.sink.split ]
  %42 = tail call i32 @llvm.umin.i32(i32 %38, i32 %retval.0.i38.i) #10
  br label %blk_rq_get_max_sectors.exit

blk_rq_get_max_sectors.exit:                      ; preds = %blk_queue_get_max_sectors.exit39.i, %if.end23.i.i, %if.then21.i.i, %if.then11.i.i, %if.then.i.i, %if.then.i
  %retval.0.i = phi i32 [ %18, %if.then.i ], [ %42, %blk_queue_get_max_sectors.exit39.i ], [ %25, %if.then.i.i ], [ %27, %if.then11.i.i ], [ %29, %if.then21.i.i ], [ %31, %if.end23.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i)
  %cmp7 = icmp ugt i32 %add, %retval.0.i
  br i1 %cmp7, label %blk_rq_get_max_sectors.exit.no_merge_crit_edge, label %if.end10

blk_rq_get_max_sectors.exit.no_merge_crit_edge:   ; preds = %blk_rq_get_max_sectors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge

if.end10:                                         ; preds = %blk_rq_get_max_sectors.exit
  %rq_qos.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 4
  %43 = ptrtoint ptr %rq_qos.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rq_qos.i, align 4
  %tobool.not.i35 = icmp eq ptr %44, null
  br i1 %tobool.not.i35, label %if.end10.rq_qos_merge.exit_crit_edge, label %if.then.i36

if.end10.rq_qos_merge.exit_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rq_qos_merge.exit

if.then.i36:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__rq_qos_merge(ptr noundef nonnull %44, ptr noundef %req, ptr noundef %bio) #10
  br label %rq_qos_merge.exit

rq_qos_merge.exit:                                ; preds = %if.then.i36, %if.end10.rq_qos_merge.exit_crit_edge
  %biotail = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 11
  %45 = ptrtoint ptr %biotail to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %biotail, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bio, ptr %46, align 8
  store ptr %bio, ptr %biotail, align 4
  %48 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_size, align 8
  %50 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %__data_len.i.i, align 8
  %add14 = add i32 %51, %49
  store i32 %add14, ptr %__data_len.i.i, align 8
  %add16 = add nuw i16 %2, 1
  %52 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %add16, ptr %nr_phys_segments.i, align 4
  tail call fastcc void @blk_account_io_merge_bio(ptr noundef %req)
  br label %cleanup

no_merge:                                         ; preds = %blk_rq_get_max_sectors.exit.no_merge_crit_edge, %entry.no_merge_crit_edge
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %53 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cmd_flags.i, align 4
  %55 = or i32 %54, 16384
  store i32 %55, ptr %cmd_flags.i, align 4
  %56 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %q, align 8
  %cmp.i = icmp eq ptr %57, %req
  br i1 %cmp.i, label %if.then.i38, label %no_merge.cleanup_crit_edge

no_merge.cleanup_crit_edge:                       ; preds = %no_merge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i38:                                      ; preds = %no_merge
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %q, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i38, %no_merge.cleanup_crit_edge, %rq_qos_merge.exit
  %retval.0 = phi i32 [ 0, %rq_qos_merge.exit ], [ 2, %no_merge.cleanup_crit_edge ], [ 2, %if.then.i38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @bio_will_gap(ptr nocapture noundef readonly %q, ptr noundef readonly %prev_rq, ptr noundef readonly %prev, ptr nocapture noundef readonly %next) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %prev, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %prev, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %prev, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %3 to i8
  %4 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %trunc.i, label %lor.lhs.false [
    i8 3, label %land.lhs.true2.i.cleanup_crit_edge
    i8 5, label %land.lhs.true2.i.cleanup_crit_edge82
    i8 9, label %land.lhs.true2.i.cleanup_crit_edge83
  ]

land.lhs.true2.i.cleanup_crit_edge83:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i.cleanup_crit_edge82:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true2.i
  %virt_boundary_mask.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 2
  %5 = ptrtoint ptr %virt_boundary_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %virt_boundary_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %prev_rq, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bio = getelementptr inbounds %struct.request, ptr %prev_rq, i32 0, i32 10
  %7 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bio, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %prev.sink75 = phi ptr [ %8, %if.then3 ], [ %prev, %if.end.if.end4_crit_edge ]
  %bi_io_vec.i22 = getelementptr inbounds %struct.bio, ptr %prev.sink75, i32 0, i32 20
  %9 = ptrtoint ptr %bi_io_vec.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_io_vec.i22, align 8
  %bi_idx.i23 = getelementptr inbounds %struct.bio, ptr %prev.sink75, i32 0, i32 8, i32 2
  %11 = ptrtoint ptr %bi_idx.i23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_idx.i23, align 4
  %bi_bvec_done.i27 = getelementptr inbounds %struct.bio, ptr %prev.sink75, i32 0, i32 8, i32 3
  %13 = ptrtoint ptr %bi_bvec_done.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_bvec_done.i27, align 8
  %bv_offset13.i29 = getelementptr %struct.bio_vec, ptr %10, i32 %12, i32 2
  %15 = ptrtoint ptr %bv_offset13.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bv_offset13.i29, align 4
  %add.i30 = add i32 %16, %14
  %and = and i32 %add.i30, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %17 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %iter.sroa.6.0.copyload.i = load i32, ptr %bi_size.i, align 8
  %iter.sroa.13.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %prev, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %iter.sroa.13.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %iter.sroa.13.0.copyload.i = load i32, ptr %iter.sroa.13.0.bi_iter.sroa_idx.i, align 4
  %iter.sroa.18.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %prev, i32 0, i32 8, i32 3
  %19 = ptrtoint ptr %iter.sroa.18.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %iter.sroa.18.0.copyload.i = load i32, ptr %iter.sroa.18.0.bi_iter.sroa_idx.i, align 8
  %bi_io_vec.i.i = getelementptr inbounds %struct.bio, ptr %prev, i32 0, i32 20
  %20 = ptrtoint ptr %bi_io_vec.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bi_io_vec.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter.sroa.13.0.copyload.i
  %bv_len7.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter.sroa.13.0.copyload.i, i32 1
  %22 = ptrtoint ptr %bv_len7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bv_len7.i.i, align 4
  %sub.i.i = sub i32 %23, %iter.sroa.18.0.copyload.i
  %24 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.0.copyload.i, i32 %sub.i.i) #10
  %bv_offset13.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %iter.sroa.13.0.copyload.i, i32 2
  %25 = ptrtoint ptr %bv_offset13.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_offset13.i.i, align 4
  %add.i.i = add i32 %26, %iter.sroa.18.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %iter.sroa.6.0.copyload.i, i32 %sub.i.i)
  %cmp.i.not = icmp ugt i32 %iter.sroa.6.0.copyload.i, %sub.i.i
  br i1 %cmp.i.not, label %if.end.i34, label %if.end8.bio_get_last_bvec.exit_crit_edge

if.end8.bio_get_last_bvec.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %bio_get_last_bvec.exit

if.end.i34:                                       ; preds = %if.end8
  %27 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bi_opf.i, align 8
  %and.i.i.i = and i32 %28, 255
  %29 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %29, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %bio_advance_iter.exit.i, label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.end.i34
  %add.i.i.i = add i32 %iter.sroa.18.0.copyload.i, %iter.sroa.6.0.copyload.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %tobool40.not3.i.i.i = icmp eq i32 %add.i.i.i, 0
  br i1 %tobool40.not3.i.i.i, label %if.end38.i.i.i.if.end5.thread.i_crit_edge, label %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge

if.end38.i.i.i.land.rhs41.i.i.i_crit_edge:        ; preds = %if.end38.i.i.i
  br label %land.rhs41.i.i.i

if.end38.i.i.i.if.end5.thread.i_crit_edge:        ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.thread.i

land.rhs41.i.i.i:                                 ; preds = %while.body.i.i.i.land.rhs41.i.i.i_crit_edge, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge
  %bytes.addr.05.i.i.i = phi i32 [ %sub46.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %add.i.i.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %idx.04.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %iter.sroa.13.0.copyload.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %21, i32 %idx.04.i.i.i, i32 1
  %30 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i, i32 %31)
  %cmp42.not.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i, %31
  br i1 %cmp42.not.i.i.i, label %land.rhs41.i.i.i.if.then8.i_crit_edge, label %while.body.i.i.i

land.rhs41.i.i.i.if.then8.i_crit_edge:            ; preds = %land.rhs41.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

while.body.i.i.i:                                 ; preds = %land.rhs41.i.i.i
  %sub46.i.i.i = sub i32 %bytes.addr.05.i.i.i, %31
  %inc.i.i.i = add i32 %idx.04.i.i.i, 1
  %tobool40.not.i.i.i = icmp eq i32 %sub46.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %while.body.i.i.i.if.end5.thread.i_crit_edge, label %while.body.i.i.i.land.rhs41.i.i.i_crit_edge

while.body.i.i.i.land.rhs41.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs41.i.i.i

while.body.i.i.i.if.end5.thread.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.thread.i

bio_advance_iter.exit.i:                          ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.18.0.copyload.i)
  %tobool.not.i35 = icmp eq i32 %iter.sroa.18.0.copyload.i, 0
  br i1 %tobool.not.i35, label %bio_advance_iter.exit.i.if.end5.thread.i_crit_edge, label %bio_advance_iter.exit.i.if.then8.i_crit_edge

bio_advance_iter.exit.i.if.then8.i_crit_edge:     ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8.i

bio_advance_iter.exit.i.if.end5.thread.i_crit_edge: ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.thread.i

if.end5.thread.i:                                 ; preds = %bio_advance_iter.exit.i.if.end5.thread.i_crit_edge, %while.body.i.i.i.if.end5.thread.i_crit_edge, %if.end38.i.i.i.if.end5.thread.i_crit_edge
  %iter.sroa.13.035.i = phi i32 [ %iter.sroa.13.0.copyload.i, %bio_advance_iter.exit.i.if.end5.thread.i_crit_edge ], [ %iter.sroa.13.0.copyload.i, %if.end38.i.i.i.if.end5.thread.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.if.end5.thread.i_crit_edge ]
  %sub.i36 = add i32 %iter.sroa.13.035.i, -1
  %arrayidx48.i = getelementptr %struct.bio_vec, ptr %21, i32 %sub.i36
  %pb.sroa.9.0.arrayidx48.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx48.i, i32 4
  %32 = ptrtoint ptr %pb.sroa.9.0.arrayidx48.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %pb.sroa.9.0.copyload = load i32, ptr %pb.sroa.9.0.arrayidx48.i.sroa_idx, align 4
  br label %bio_get_last_bvec.exit.sink.split

if.then8.i:                                       ; preds = %bio_advance_iter.exit.i.if.then8.i_crit_edge, %land.rhs41.i.i.i.if.then8.i_crit_edge
  %idx.04.i.i.lcssa.sink.i = phi i32 [ %iter.sroa.13.0.copyload.i, %bio_advance_iter.exit.i.if.then8.i_crit_edge ], [ %idx.04.i.i.i, %land.rhs41.i.i.i.if.then8.i_crit_edge ]
  %iter.sroa.18.03354.i = phi i32 [ %iter.sroa.18.0.copyload.i, %bio_advance_iter.exit.i.if.then8.i_crit_edge ], [ %bytes.addr.05.i.i.i, %land.rhs41.i.i.i.if.then8.i_crit_edge ]
  %arrayidx.i37 = getelementptr %struct.bio_vec, ptr %21, i32 %idx.04.i.i.lcssa.sink.i
  br label %bio_get_last_bvec.exit.sink.split

bio_get_last_bvec.exit.sink.split:                ; preds = %if.then8.i, %if.end5.thread.i
  %arrayidx48.i.sink = phi ptr [ %arrayidx48.i, %if.end5.thread.i ], [ %arrayidx.i37, %if.then8.i ]
  %pb.sroa.9.0.ph = phi i32 [ %pb.sroa.9.0.copyload, %if.end5.thread.i ], [ %iter.sroa.18.03354.i, %if.then8.i ]
  %pb.sroa.16.0.arrayidx48.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx48.i.sink, i32 8
  %33 = ptrtoint ptr %pb.sroa.16.0.arrayidx48.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %pb.sroa.16.0.copyload = load i32, ptr %pb.sroa.16.0.arrayidx48.i.sroa_idx, align 4
  br label %bio_get_last_bvec.exit

bio_get_last_bvec.exit:                           ; preds = %bio_get_last_bvec.exit.sink.split, %if.end8.bio_get_last_bvec.exit_crit_edge
  %pb.sroa.16.1 = phi i32 [ %add.i.i, %if.end8.bio_get_last_bvec.exit_crit_edge ], [ %pb.sroa.16.0.copyload, %bio_get_last_bvec.exit.sink.split ]
  %pb.sroa.9.0 = phi i32 [ %24, %if.end8.bio_get_last_bvec.exit_crit_edge ], [ %pb.sroa.9.0.ph, %bio_get_last_bvec.exit.sink.split ]
  %pb.sroa.0.0.in = phi ptr [ %arrayidx.i.i, %if.end8.bio_get_last_bvec.exit_crit_edge ], [ %arrayidx48.i.sink, %bio_get_last_bvec.exit.sink.split ]
  %34 = ptrtoint ptr %pb.sroa.0.0.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %pb.sroa.0.0 = load ptr, ptr %pb.sroa.0.0.in, align 4
  %bi_io_vec.i38 = getelementptr inbounds %struct.bio, ptr %next, i32 0, i32 20
  %35 = ptrtoint ptr %bi_io_vec.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bi_io_vec.i38, align 8
  %bi_idx.i39 = getelementptr inbounds %struct.bio, ptr %next, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %bi_idx.i39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_idx.i39, align 4
  %arrayidx.i40 = getelementptr %struct.bio_vec, ptr %36, i32 %38
  %39 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i40, align 4
  %bi_bvec_done.i43 = getelementptr inbounds %struct.bio, ptr %next, i32 0, i32 8, i32 3
  %41 = ptrtoint ptr %bi_bvec_done.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_bvec_done.i43, align 8
  %bv_offset13.i45 = getelementptr %struct.bio_vec, ptr %36, i32 %38, i32 2
  %43 = ptrtoint ptr %bv_offset13.i45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_offset13.i45, align 4
  %add.i46 = add i32 %44, %42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pb.sroa.0.0 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %46 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i49 = add i32 %sub.ptr.div.i, %46
  %shl.i = shl i32 %add.i49, 12
  %add1.i = add i32 %shl.i, %pb.sroa.16.1
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub5.i = sub i32 %sub.ptr.lhs.cast3.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div6.i = sdiv exact i32 %sub.ptr.sub5.i, 36
  %add7.i = add i32 %sub.ptr.div6.i, %46
  %shl8.i = shl i32 %add7.i, 12
  %add10.i = add i32 %shl8.i, %add.i46
  %add11.i = add i32 %add1.i, %pb.sroa.9.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %add10.i)
  %cmp.not.i = icmp eq i32 %add11.i, %add10.i
  br i1 %cmp.not.i, label %biovec_phys_mergeable.exit, label %bio_get_last_bvec.exit.if.end11_crit_edge

bio_get_last_bvec.exit.if.end11_crit_edge:        ; preds = %bio_get_last_bvec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

biovec_phys_mergeable.exit:                       ; preds = %bio_get_last_bvec.exit
  %bi_size.i41 = getelementptr inbounds %struct.bio, ptr %next, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %bi_size.i41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_size.i41, align 8
  %bv_len7.i42 = getelementptr %struct.bio_vec, ptr %36, i32 %38, i32 1
  %49 = ptrtoint ptr %bv_len7.i42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bv_len7.i42, align 4
  %sub.i44 = sub i32 %50, %42
  %51 = tail call i32 @llvm.umin.i32(i32 %48, i32 %sub.i44) #10
  %seg_boundary_mask.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 1
  %52 = ptrtoint ptr %seg_boundary_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %seg_boundary_mask.i.i, align 4
  %or.i = or i32 %53, %add1.i
  %add13.i = add i32 %add10.i, -1
  %sub.i50 = add i32 %add13.i, %51
  %or14.i = or i32 %sub.i50, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %or14.i)
  %cmp15.not.i = icmp eq i32 %or.i, %or14.i
  br i1 %cmp15.not.i, label %biovec_phys_mergeable.exit.cleanup_crit_edge, label %biovec_phys_mergeable.exit.if.end11_crit_edge

biovec_phys_mergeable.exit.if.end11_crit_edge:    ; preds = %biovec_phys_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

biovec_phys_mergeable.exit.cleanup_crit_edge:     ; preds = %biovec_phys_mergeable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %biovec_phys_mergeable.exit.if.end11_crit_edge, %bio_get_last_bvec.exit.if.end11_crit_edge
  %and.i = and i32 %add.i46, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i53 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i53, label %lor.rhs.i, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %add.i56 = add i32 %pb.sroa.9.0, %pb.sroa.16.1
  %and2.i = and i32 %add.i56, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.i = icmp ne i32 %and2.i, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i, %if.end11.cleanup_crit_edge, %biovec_phys_mergeable.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true2.i.cleanup_crit_edge82, %land.lhs.true2.i.cleanup_crit_edge83, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ true, %if.end4.cleanup_crit_edge ], [ false, %biovec_phys_mergeable.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %land.lhs.true2.i.cleanup_crit_edge ], [ false, %land.lhs.true2.i.cleanup_crit_edge82 ], [ false, %land.lhs.true2.i.cleanup_crit_edge83 ], [ true, %if.end11.cleanup_crit_edge ], [ %tobool3.i, %lor.rhs.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bio_crypt_ctx_mergeable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @req_attempt_discard_merge(ptr nocapture noundef %q, ptr noundef %req, ptr nocapture noundef readonly %next) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %0 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nr_phys_segments.i, align 4
  %2 = tail call i16 @llvm.umax.i16(i16 %1, i16 1) #10
  %max_discard_segments.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 37, i32 23
  %3 = ptrtoint ptr %max_discard_segments.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %max_discard_segments.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp.not = icmp ult i16 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.no_merge_crit_edge

entry.no_merge_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge

if.end:                                           ; preds = %entry
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %5 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %6, 9
  %bio = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 10
  %7 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bio, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %10, 9
  %add = add nuw nsw i32 %shr, %shr.i
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %11 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %__sector.i, align 8
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 8
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_flags.i.i, align 4
  %17 = and i32 %16, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %17)
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 3
  %19 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_hw_sectors.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end.i:                                         ; preds = %if.end
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 5
  %21 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chunk_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  %.pre.i = trunc i32 %16 to i8
  br i1 %tobool.not.i, label %if.then7.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %23 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %.pre.i, label %if.end7.i.i [
    i8 5, label %lor.lhs.false.i.if.then.i.i_crit_edge
    i8 3, label %lor.lhs.false.i.if.then.i.i_crit_edge42
  ], !prof !57

lor.lhs.false.i.if.then.i.i_crit_edge42:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then7.i:                                       ; preds = %if.end.i
  %24 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %.pre.i, label %if.end23.i.i [
    i8 5, label %if.then7.i.if.then.i.i_crit_edge
    i8 3, label %if.then7.i.if.then.i.i_crit_edge43
    i8 7, label %if.then11.i.i
    i8 9, label %if.then21.i.i
  ], !prof !58

if.then7.i.if.then.i.i_crit_edge43:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then7.i.if.then.i.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then7.i.if.then.i.i_crit_edge, %if.then7.i.if.then.i.i_crit_edge43, %lor.lhs.false.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge42
  %max_discard_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 13
  %25 = ptrtoint ptr %max_discard_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_discard_sectors.i.i, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 8388607) #10
  br label %blk_rq_get_max_sectors.exit

if.then11.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 15
  %28 = ptrtoint ptr %max_write_same_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_write_same_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.then21.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 16
  %30 = ptrtoint ptr %max_write_zeroes_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_write_zeroes_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end23.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 6
  %32 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end7.i.i:                                      ; preds = %lor.lhs.false.i
  %34 = tail call i32 @llvm.ctpop.i32(i32 %22) #10, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp1.i.i.i = icmp ult i32 %34, 2
  br i1 %cmp1.i.i.i, label %if.then10.i.i, label %if.else185.i.i, !prof !46

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %22, -1
  %35 = trunc i64 %12 to i32
  %36 = and i32 %sub.i.i, %35
  br label %blk_max_size_offset.exit.i

if.else185.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %12)
  %cmp187.i.i = icmp ult i64 %12, 4294967296
  br i1 %cmp187.i.i, label %if.then195.i.i, label %if.else201.i.i, !prof !46

if.then195.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv196.i.i = trunc i64 %12 to i32
  %rem197.i.i = urem i32 %conv196.i.i, %22
  br label %blk_max_size_offset.exit.i

if.else201.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %12) #13, !srcloc !47
  %asmresult.i.i.i = extractvalue { i64, i64 } %37, 0
  %shr.i.i.i = lshr i64 %asmresult.i.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %blk_max_size_offset.exit.i

blk_max_size_offset.exit.i:                       ; preds = %if.else201.i.i, %if.then195.i.i, %if.then10.i.i
  %.pn.i.i = phi i32 [ %36, %if.then10.i.i ], [ %rem197.i.i, %if.then195.i.i ], [ %conv.i.i.i, %if.else201.i.i ]
  %chunk_sectors.addr.1.i.i = sub i32 %22, %.pn.i.i
  %max_sectors210.i.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 6
  %38 = ptrtoint ptr %max_sectors210.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_sectors210.i.i, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %chunk_sectors.addr.1.i.i) #10
  %41 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %.pre.i, label %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge [
    i8 9, label %if.then21.i35.i
    i8 7, label %if.then11.i33.i
  ], !prof !59

blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge: ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_get_max_sectors.exit39.i

if.then11.i33.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i32.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 15
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

if.then21.i35.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i34.i = getelementptr inbounds %struct.request_queue, ptr %14, i32 0, i32 37, i32 16
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

blk_queue_get_max_sectors.exit39.i.sink.split:    ; preds = %if.then21.i35.i, %if.then11.i33.i
  %max_write_zeroes_sectors.i34.i.sink = phi ptr [ %max_write_zeroes_sectors.i34.i, %if.then21.i35.i ], [ %max_write_same_sectors.i32.i, %if.then11.i33.i ]
  %42 = ptrtoint ptr %max_write_zeroes_sectors.i34.i.sink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_write_zeroes_sectors.i34.i.sink, align 4
  br label %blk_queue_get_max_sectors.exit39.i

blk_queue_get_max_sectors.exit39.i:               ; preds = %blk_queue_get_max_sectors.exit39.i.sink.split, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge
  %retval.0.i38.i = phi i32 [ %39, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge ], [ %43, %blk_queue_get_max_sectors.exit39.i.sink.split ]
  %44 = tail call i32 @llvm.umin.i32(i32 %40, i32 %retval.0.i38.i) #10
  br label %blk_rq_get_max_sectors.exit

blk_rq_get_max_sectors.exit:                      ; preds = %blk_queue_get_max_sectors.exit39.i, %if.end23.i.i, %if.then21.i.i, %if.then11.i.i, %if.then.i.i, %if.then.i
  %retval.0.i = phi i32 [ %20, %if.then.i ], [ %44, %blk_queue_get_max_sectors.exit39.i ], [ %27, %if.then.i.i ], [ %29, %if.then11.i.i ], [ %31, %if.then21.i.i ], [ %33, %if.end23.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i)
  %cmp7 = icmp ugt i32 %add, %retval.0.i
  br i1 %cmp7, label %blk_rq_get_max_sectors.exit.no_merge_crit_edge, label %if.end10

blk_rq_get_max_sectors.exit.no_merge_crit_edge:   ; preds = %blk_rq_get_max_sectors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %no_merge

if.end10:                                         ; preds = %blk_rq_get_max_sectors.exit
  call void @__sanitizer_cov_trace_pc() #12
  %nr_phys_segments.i24 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 19
  %45 = ptrtoint ptr %nr_phys_segments.i24 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %nr_phys_segments.i24, align 4
  %47 = tail call i16 @llvm.umax.i16(i16 %46, i16 1) #10
  %add14 = add i16 %47, %2
  %48 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %add14, ptr %nr_phys_segments.i, align 4
  br label %cleanup

no_merge:                                         ; preds = %blk_rq_get_max_sectors.exit.no_merge_crit_edge, %entry.no_merge_crit_edge
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %49 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd_flags.i, align 4
  %51 = or i32 %50, 16384
  store i32 %51, ptr %cmd_flags.i, align 4
  %52 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %q, align 8
  %cmp.i = icmp eq ptr %53, %req
  br i1 %cmp.i, label %if.then.i25, label %no_merge.cleanup_crit_edge

no_merge.cleanup_crit_edge:                       ; preds = %no_merge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i25:                                      ; preds = %no_merge
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %q, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %no_merge.cleanup_crit_edge, %if.end10
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %no_merge.cleanup_crit_edge ], [ false, %if.then.i25 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ll_merge_requests_fn(ptr noundef %q, ptr noundef %req, ptr noundef %next) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bio = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 10
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio, align 8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %biotail.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 11
  %4 = ptrtoint ptr %biotail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %biotail.i, align 4
  %call.i = tail call fastcc zeroext i1 @bio_will_gap(ptr noundef %3, ptr noundef %req, ptr noundef %5, ptr noundef %1) #10
  br i1 %call.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 8
  %6 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %7, 9
  %__data_len.i.i39 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 8
  %8 = ptrtoint ptr %__data_len.i.i39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__data_len.i.i39, align 8
  %shr.i40 = lshr i32 %9, 9
  %add = add nuw nsw i32 %shr.i40, %shr.i
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %10 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %__sector.i, align 8
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 8
  %cmd_flags.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %cmd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_flags.i.i, align 4
  %16 = and i32 %15, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %16)
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 3
  %18 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_hw_sectors.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end.i:                                         ; preds = %if.end
  %chunk_sectors.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 5
  %20 = ptrtoint ptr %chunk_sectors.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chunk_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  %.pre.i = trunc i32 %15 to i8
  br i1 %tobool.not.i, label %if.then7.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %22 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %.pre.i, label %if.end7.i.i [
    i8 5, label %lor.lhs.false.i.if.then.i.i_crit_edge
    i8 3, label %lor.lhs.false.i.if.then.i.i_crit_edge43
  ], !prof !57

lor.lhs.false.i.if.then.i.i_crit_edge43:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then7.i:                                       ; preds = %if.end.i
  %23 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %.pre.i, label %if.end23.i.i [
    i8 5, label %if.then7.i.if.then.i.i_crit_edge
    i8 3, label %if.then7.i.if.then.i.i_crit_edge44
    i8 7, label %if.then11.i.i
    i8 9, label %if.then21.i.i
  ], !prof !58

if.then7.i.if.then.i.i_crit_edge44:               ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then7.i.if.then.i.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then7.i.if.then.i.i_crit_edge, %if.then7.i.if.then.i.i_crit_edge44, %lor.lhs.false.i.if.then.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i_crit_edge43
  %max_discard_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 13
  %24 = ptrtoint ptr %max_discard_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_discard_sectors.i.i, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 8388607) #10
  br label %blk_rq_get_max_sectors.exit

if.then11.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 15
  %27 = ptrtoint ptr %max_write_same_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_write_same_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.then21.i.i:                                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 16
  %29 = ptrtoint ptr %max_write_zeroes_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_write_zeroes_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end23.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 6
  %31 = ptrtoint ptr %max_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_sectors.i.i, align 4
  br label %blk_rq_get_max_sectors.exit

if.end7.i.i:                                      ; preds = %lor.lhs.false.i
  %33 = tail call i32 @llvm.ctpop.i32(i32 %21) #10, !range !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp1.i.i.i = icmp ult i32 %33, 2
  br i1 %cmp1.i.i.i, label %if.then10.i.i, label %if.else185.i.i, !prof !46

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %21, -1
  %34 = trunc i64 %11 to i32
  %35 = and i32 %sub.i.i, %34
  br label %blk_max_size_offset.exit.i

if.else185.i.i:                                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp187.i.i = icmp ult i64 %11, 4294967296
  br i1 %cmp187.i.i, label %if.then195.i.i, label %if.else201.i.i, !prof !46

if.then195.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv196.i.i = trunc i64 %11 to i32
  %rem197.i.i = urem i32 %conv196.i.i, %21
  br label %blk_max_size_offset.exit.i

if.else201.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %21, i64 %11) #13, !srcloc !47
  %asmresult.i.i.i = extractvalue { i64, i64 } %36, 0
  %shr.i.i.i = lshr i64 %asmresult.i.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %blk_max_size_offset.exit.i

blk_max_size_offset.exit.i:                       ; preds = %if.else201.i.i, %if.then195.i.i, %if.then10.i.i
  %.pn.i.i = phi i32 [ %35, %if.then10.i.i ], [ %rem197.i.i, %if.then195.i.i ], [ %conv.i.i.i, %if.else201.i.i ]
  %chunk_sectors.addr.1.i.i = sub i32 %21, %.pn.i.i
  %max_sectors210.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 6
  %37 = ptrtoint ptr %max_sectors210.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_sectors210.i.i, align 4
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %chunk_sectors.addr.1.i.i) #10
  %40 = zext i8 %.pre.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %.pre.i, label %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge [
    i8 9, label %if.then21.i35.i
    i8 7, label %if.then11.i33.i
  ], !prof !59

blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge: ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %blk_queue_get_max_sectors.exit39.i

if.then11.i33.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_same_sectors.i32.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 15
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

if.then21.i35.i:                                  ; preds = %blk_max_size_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %max_write_zeroes_sectors.i34.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 16
  br label %blk_queue_get_max_sectors.exit39.i.sink.split

blk_queue_get_max_sectors.exit39.i.sink.split:    ; preds = %if.then21.i35.i, %if.then11.i33.i
  %max_write_zeroes_sectors.i34.i.sink = phi ptr [ %max_write_zeroes_sectors.i34.i, %if.then21.i35.i ], [ %max_write_same_sectors.i32.i, %if.then11.i33.i ]
  %41 = ptrtoint ptr %max_write_zeroes_sectors.i34.i.sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_write_zeroes_sectors.i34.i.sink, align 4
  br label %blk_queue_get_max_sectors.exit39.i

blk_queue_get_max_sectors.exit39.i:               ; preds = %blk_queue_get_max_sectors.exit39.i.sink.split, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge
  %retval.0.i38.i = phi i32 [ %38, %blk_max_size_offset.exit.i.blk_queue_get_max_sectors.exit39.i_crit_edge ], [ %42, %blk_queue_get_max_sectors.exit39.i.sink.split ]
  %43 = tail call i32 @llvm.umin.i32(i32 %39, i32 %retval.0.i38.i) #10
  br label %blk_rq_get_max_sectors.exit

blk_rq_get_max_sectors.exit:                      ; preds = %blk_queue_get_max_sectors.exit39.i, %if.end23.i.i, %if.then21.i.i, %if.then11.i.i, %if.then.i.i, %if.then.i
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ %43, %blk_queue_get_max_sectors.exit39.i ], [ %26, %if.then.i.i ], [ %28, %if.then11.i.i ], [ %30, %if.then21.i.i ], [ %32, %if.end23.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i)
  %cmp = icmp ugt i32 %add, %retval.0.i
  br i1 %cmp, label %blk_rq_get_max_sectors.exit.cleanup_crit_edge, label %if.end6

blk_rq_get_max_sectors.exit.cleanup_crit_edge:    ; preds = %blk_rq_get_max_sectors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %blk_rq_get_max_sectors.exit
  %nr_phys_segments = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 19
  %44 = ptrtoint ptr %nr_phys_segments to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nr_phys_segments, align 4
  %conv = zext i16 %45 to i32
  %nr_phys_segments7 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 19
  %46 = ptrtoint ptr %nr_phys_segments7 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nr_phys_segments7, align 4
  %conv8 = zext i16 %47 to i32
  %add9 = add nuw nsw i32 %conv8, %conv
  %and.i = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 3
  %max_discard_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 23
  %max_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 21
  %retval.0.in.in.i = select i1 %cmp.i, ptr %max_discard_segments.i.i, ptr %max_segments.i.i
  %48 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %retval.0.in.i = load i16, ptr %retval.0.in.in.i, align 4
  %retval.0.i41 = zext i16 %retval.0.in.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %retval.0.i41)
  %cmp11 = icmp ugt i32 %add9, %retval.0.i41
  br i1 %cmp11, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = tail call zeroext i1 @blk_integrity_merge_rq(ptr noundef %q, ptr noundef %req, ptr noundef %next) #10
  br i1 %call15, label %if.end20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %crypt_ctx.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 21
  %49 = ptrtoint ptr %crypt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %crypt_ctx.i, align 8
  %51 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %__data_len.i.i, align 8
  %crypt_ctx1.i = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 21
  %53 = ptrtoint ptr %crypt_ctx1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %crypt_ctx1.i, align 8
  %call2.i = tail call zeroext i1 @bio_crypt_ctx_mergeable(ptr noundef %50, i32 noundef %52, ptr noundef %54) #10
  br i1 %call2.i, label %if.end23, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %conv24 = trunc i32 %add9 to i16
  %55 = ptrtoint ptr %nr_phys_segments to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv24, ptr %nr_phys_segments, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %blk_rq_get_max_sectors.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %blk_rq_get_max_sectors.exit.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_merge_requests(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_account_io_merge_request(ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end46_crit_edge, label %blk_do_io_stat.exit

entry.if.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

blk_do_io_stat.exit:                              ; preds = %entry
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk.i, align 8
  %tobool1.i.not = icmp eq ptr %5, null
  br i1 %tobool1.i.not, label %blk_do_io_stat.exit.if.end46_crit_edge, label %do.body

blk_do_io_stat.exit.if.end46_crit_edge:           ; preds = %blk_do_io_stat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

do.body:                                          ; preds = %blk_do_io_stat.exit
  %6 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  %part = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 13
  %10 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part, align 8
  %bd_stats = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bd_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_stats, align 8
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.i.i = icmp eq i32 %and, 3
  %and.i3.i = and i32 %15, 1
  %retval.0.i = select i1 %cmp.i.i, i32 2, i32 %and.i3.i
  %arrayidx = getelementptr %struct.disk_stats, ptr %13, i32 0, i32 3, i32 %retval.0.i
  %16 = ptrtoint ptr %arrayidx to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i54 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i54 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add13 = add i32 %25, 1
  store i32 %add13, ptr %23, align 4
  %26 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %bd_partno to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bd_partno, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %do.body.do.body44_crit_edge, label %if.then17

do.body.do.body44_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body44

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 17
  %30 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0, align 4
  %bd_stats29 = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %bd_stats29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bd_stats29, align 8
  %36 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_flags, align 4
  %and32 = and i32 %37, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and32)
  %cmp.i.i55 = icmp eq i32 %and32, 3
  %and.i3.i56 = and i32 %37, 1
  %retval.0.i57 = select i1 %cmp.i.i55, i32 2, i32 %and.i3.i56
  %arrayidx34 = getelementptr %struct.disk_stats, ptr %35, i32 0, i32 3, i32 %retval.0.i57
  %38 = ptrtoint ptr %arrayidx34 to i32
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %arrayidx38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %42, %38
  %43 = inttoptr i32 %add39 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add40 = add i32 %45, 1
  store i32 %add40, ptr %43, align 4
  br label %do.body44

do.body44:                                        ; preds = %if.then17, %do.body.do.body44_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %46 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i52 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i52 to ptr
  %preempt_count.i.i53 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i53, align 4
  %sub.i = add i32 %49, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i53, align 4
  br label %if.end46

if.end46:                                         ; preds = %do.body44, %blk_do_io_stat.exit.if.end46_crit_edge, %entry.if.end46_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_rq_merge(ptr noundef %rq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_merge, i32 0, i32 1), ptr blockaddress(@trace_block_rq_merge, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !46

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %call42 = tail call i32 @__traceiter_block_rq_merge(ptr noundef null, ptr noundef %rq) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  %13 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !46

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_merge, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_merge, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_rq_merge.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_block_rq_merge.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 223, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_integrity_merge_rq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_bio_backmerge(ptr noundef %bio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_backmerge, i32 0, i32 1), ptr blockaddress(@trace_block_bio_backmerge, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !46

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  %call42 = tail call i32 @__traceiter_block_bio_backmerge(ptr noundef null, ptr noundef %bio) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !65
  %13 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !46

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_backmerge, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_backmerge, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_bio_backmerge.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_block_bio_backmerge.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 313, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blk_account_io_merge_bio(ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end46_crit_edge, label %blk_do_io_stat.exit

entry.do.end46_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

blk_do_io_stat.exit:                              ; preds = %entry
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk.i, align 8
  %tobool1.i.not = icmp eq ptr %5, null
  br i1 %tobool1.i.not, label %blk_do_io_stat.exit.do.end46_crit_edge, label %do.body

blk_do_io_stat.exit.do.end46_crit_edge:           ; preds = %blk_do_io_stat.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.body:                                          ; preds = %blk_do_io_stat.exit
  %6 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %9, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %part = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 13
  %10 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %part, align 8
  %bd_stats = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bd_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_stats, align 8
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %14 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %15, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.i.i = icmp eq i32 %and, 3
  %and.i3.i = and i32 %15, 1
  %retval.0.i = select i1 %cmp.i.i, i32 2, i32 %and.i3.i
  %arrayidx = getelementptr %struct.disk_stats, ptr %13, i32 0, i32 3, i32 %retval.0.i
  %16 = ptrtoint ptr %arrayidx to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i54 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i54 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %22, %16
  %23 = inttoptr i32 %add to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add13 = add i32 %25, 1
  store i32 %add13, ptr %23, align 4
  %26 = ptrtoint ptr %part to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %part, align 8
  %bd_partno = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %bd_partno to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bd_partno, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %do.body.do.body45_crit_edge, label %if.then17

do.body.do.body45_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body45

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %27, i32 0, i32 17
  %30 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bd_disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0, align 4
  %bd_stats29 = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %bd_stats29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bd_stats29, align 8
  %36 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_flags, align 4
  %and32 = and i32 %37, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and32)
  %cmp.i.i55 = icmp eq i32 %and32, 3
  %and.i3.i56 = and i32 %37, 1
  %retval.0.i57 = select i1 %cmp.i.i55, i32 2, i32 %and.i3.i56
  %arrayidx34 = getelementptr %struct.disk_stats, ptr %35, i32 0, i32 3, i32 %retval.0.i57
  %38 = ptrtoint ptr %arrayidx34 to i32
  %39 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu, align 4
  %arrayidx38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx38, align 4
  %add39 = add i32 %42, %38
  %43 = inttoptr i32 %add39 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add40 = add i32 %45, 1
  store i32 %add40, ptr %43, align 4
  br label %do.body45

do.body45:                                        ; preds = %if.then17, %do.body.do.body45_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %46 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i52 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i52 to ptr
  %preempt_count.i.i53 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i53, align 4
  %sub.i = add i32 %49, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i53, align 4
  br label %do.end46

do.end46:                                         ; preds = %do.body45, %blk_do_io_stat.exit.do.end46_crit_edge, %entry.do.end46_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_backmerge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rq_qos_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_crypt_free_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_latter_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_bio_frontmerge(ptr noundef %bio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_frontmerge, i32 0, i32 1), ptr blockaddress(@trace_block_bio_frontmerge, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !50

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !46

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  %call42 = tail call i32 @__traceiter_block_bio_frontmerge(ptr noundef null, ptr noundef %bio) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %13 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !46

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_frontmerge, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_frontmerge, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_bio_frontmerge.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_block_bio_frontmerge.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 324, ptr noundef nonnull @.str.2) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !54
  %31 = tail call i32 @llvm.read_register.i32(metadata !35) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_frontmerge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_former_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !26, !28, !29, !31, !32, !34}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__ksymtab_blk_queue_split, !1, !"__ksymtab_blk_queue_split", i1 false, i1 false}
!1 = !{!"../block/blk-merge.c", i32 394, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/blk-merge.c", i32 570, i32 2}
!4 = !{ptr @__ksymtab___blk_rq_map_sg, !5, !"__ksymtab___blk_rq_map_sg", i1 false, i1 false}
!5 = !{!"../block/blk-merge.c", i32 574, i32 1}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../block/blk-merge.c", i32 733, i32 3}
!8 = !{ptr @__ksymtab_blk_bio_list_merge, !9, !"__ksymtab_blk_bio_list_merge", i1 false, i1 false}
!9 = !{!"../block/blk-merge.c", i32 1129, i32 1}
!10 = !{ptr @__ksymtab_blk_mq_sched_try_merge, !11, !"__ksymtab_blk_mq_sched_try_merge", i1 false, i1 false}
!11 = !{!"../block/blk-merge.c", i32 1161, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/trace/events/block.h", i32 418, i32 1}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!22 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/blk-merge.c", i32 744, i32 3}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/trace/events/block.h", i32 218, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/trace/events/block.h", i32 310, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/trace/events/block.h", i32 321, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148629833, i64 2148630113, i64 2148630447, i64 2148630781}
!48 = !{!"auto-init"}
!49 = !{i32 0, i32 33}
!50 = !{i64 2148721114, i64 2148721119, i64 2148721132, i64 2148721176, i64 2148721210, i64 2148721231}
!51 = !{i64 2155041942}
!52 = !{i64 2155042157}
!53 = !{i64 2149394327}
!54 = !{i64 2149395363}
!55 = !{i64 2154340479, i64 2154340971, i64 2154340516, i64 2154340572, i64 2154340606, i64 2154340630, i64 2154340671, i64 2154340692, i64 2154340720, i64 2154340754}
!56 = !{i64 2154342089, i64 2154342581, i64 2154342126, i64 2154342182, i64 2154342216, i64 2154342240, i64 2154342281, i64 2154342302, i64 2154342330, i64 2154342364}
!57 = !{!"branch_weights", i32 1, i32 1, i32 1}
!58 = !{!"branch_weights", i32 4000000, i32 4004001, i32 4004001, i32 2001, i32 2000}
!59 = !{!"branch_weights", i32 4000000, i32 2000, i32 2001}
!60 = !{i64 2155708330}
!61 = !{i64 2155729695}
!62 = !{i64 2154888683}
!63 = !{i64 2154888878}
!64 = !{i64 2154941428}
!65 = !{i64 2154941635}
!66 = !{i64 2155734129}
!67 = !{i64 2155755494}
!68 = !{i64 2154957757}
!69 = !{i64 2154957966}
