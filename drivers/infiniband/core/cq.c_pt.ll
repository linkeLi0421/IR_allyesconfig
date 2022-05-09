; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/cq.c_pt.bc'
source_filename = "../drivers/infiniband/core/cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_process_cq_direct\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_process_cq_direct\09\09\09\09"
module asm "\09.long\09__crc_ib_process_cq_direct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_process_cq_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_process_cq_direct\22\09\09\09\09\09"
module asm "__kstrtabns_ib_process_cq_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ib_alloc_cq\22, \22a\22\09"
module asm "\09.weak\09__crc___ib_alloc_cq\09\09\09\09"
module asm "\09.long\09__crc___ib_alloc_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ib_alloc_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22__ib_alloc_cq\22\09\09\09\09\09"
module asm "__kstrtabns___ib_alloc_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ib_alloc_cq_any\22, \22a\22\09"
module asm "\09.weak\09__crc___ib_alloc_cq_any\09\09\09\09"
module asm "\09.long\09__crc___ib_alloc_cq_any\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ib_alloc_cq_any:\09\09\09\09\09"
module asm "\09.asciz \09\22__ib_alloc_cq_any\22\09\09\09\09\09"
module asm "__kstrtabns___ib_alloc_cq_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_free_cq\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_free_cq\09\09\09\09"
module asm "\09.long\09__crc_ib_free_cq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_free_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_free_cq\22\09\09\09\09\09"
module asm "__kstrtabns_ib_free_cq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_cq_pool_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_cq_pool_get\09\09\09\09"
module asm "\09.long\09__crc_ib_cq_pool_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_cq_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_cq_pool_get\22\09\09\09\09\09"
module asm "__kstrtabns_ib_cq_pool_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_cq_pool_put\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_cq_pool_put\09\09\09\09"
module asm "\09.long\09__crc_ib_cq_pool_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_cq_pool_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_cq_pool_put\22\09\09\09\09\09"
module asm "__kstrtabns_ib_cq_pool_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.ib_wc = type { %union.anon.159, i32, i32, i32, i32, ptr, %union.anon.160, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.173, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.173 = type { %struct.work_struct }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_ib_process_cq_direct = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_process_cq_direct = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_process_cq_direct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_process_cq_direct to i32), ptr @__kstrtab_ib_process_cq_direct, ptr @__kstrtabns_ib_process_cq_direct }, section "___ksymtab+ib_process_cq_direct", align 4
@__ib_alloc_cq.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&cq->work)\00", [35 x i8] zeroinitializer }, align 32
@ib_comp_wq = external dso_local local_unnamed_addr global ptr, align 4
@ib_comp_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab___ib_alloc_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns___ib_alloc_cq = external dso_local constant [0 x i8], align 1
@__ksymtab___ib_alloc_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ib_alloc_cq to i32), ptr @__kstrtab___ib_alloc_cq, ptr @__kstrtabns___ib_alloc_cq }, section "___ksymtab+__ib_alloc_cq", align 4
@__ib_alloc_cq_any.counter = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab___ib_alloc_cq_any = external dso_local constant [0 x i8], align 1
@__kstrtabns___ib_alloc_cq_any = external dso_local constant [0 x i8], align 1
@__ksymtab___ib_alloc_cq_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ib_alloc_cq_any to i32), ptr @__kstrtab___ib_alloc_cq_any, ptr @__kstrtabns___ib_alloc_cq_any }, section "___ksymtab+__ib_alloc_cq_any", align 4
@ib_free_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/infiniband/core/cq.c\00", [35 x i8] zeroinitializer }, align 32
@ib_free_cq.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ib_free_cq.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ib_free_cq.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_ib_free_cq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_free_cq = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_free_cq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_free_cq to i32), ptr @__kstrtab_ib_free_cq, ptr @__kstrtabns_ib_free_cq }, section "___ksymtab+ib_free_cq", align 4
@ib_cq_pool_get.default_comp_vector = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ib_cq_pool_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ib_cq_pool_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_cq_pool_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_cq_pool_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_cq_pool_get to i32), ptr @__kstrtab_ib_cq_pool_get, ptr @__kstrtabns_ib_cq_pool_get }, section "___ksymtab+ib_cq_pool_get", align 4
@ib_cq_pool_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ib_cq_pool_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_cq_pool_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_cq_pool_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_cq_pool_put to i32), ptr @__kstrtab_ib_cq_pool_put, ptr @__kstrtabns_ib_cq_pool_put }, section "___ksymtab+ib_cq_pool_put", align 4
@__ib_process_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_cq_process = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/rdma_core.h\00", [63 x i8] zeroinitializer }, align 32
@trace_cq_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_cq_poll = external dso_local global %struct.tracepoint, align 4
@trace_cq_poll.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rdma_dim_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&dim->work)\00", [34 x i8] zeroinitializer }, align 32
@rdma_dim_prof = internal constant { [9 x %struct.dim_cq_moder], [56 x i8] } { [9 x %struct.dim_cq_moder] [%struct.dim_cq_moder { i16 1, i16 0, i16 1, i8 0 }, %struct.dim_cq_moder { i16 1, i16 0, i16 4, i8 0 }, %struct.dim_cq_moder { i16 2, i16 0, i16 4, i8 0 }, %struct.dim_cq_moder { i16 2, i16 0, i16 8, i8 0 }, %struct.dim_cq_moder { i16 4, i16 0, i16 8, i8 0 }, %struct.dim_cq_moder { i16 16, i16 0, i16 8, i8 0 }, %struct.dim_cq_moder { i16 16, i16 0, i16 16, i8 0 }, %struct.dim_cq_moder { i16 32, i16 0, i16 16, i8 0 }, %struct.dim_cq_moder { i16 32, i16 0, i16 32, i8 0 }], [56 x i8] zeroinitializer }, align 32
@__tracepoint_cq_modify = external dso_local global %struct.tracepoint, align 4
@trace_cq_modify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ib_cq_completion_direct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"got unsolicited completion for CQ 0x%p\0A\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_cq_schedule = external dso_local global %struct.tracepoint, align 4
@trace_cq_schedule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cq_reschedule = external dso_local global %struct.tracepoint, align 4
@trace_cq_reschedule.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cq_alloc = external dso_local global %struct.tracepoint, align 4
@trace_cq_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cq_alloc_error = external dso_local global %struct.tracepoint, align 4
@trace_cq_alloc_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__tracepoint_cq_free = external dso_local global %struct.tracepoint, align 4
@trace_cq_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ib_core\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 260, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 323, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 345, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"default_comp_vector\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 433, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant [36 x i8] c"../include/trace/events/rdma_core.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 91, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 108, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 72, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"rdma_dim_prof\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 28, i32 1 }
@___asan_gen_.44 = private constant [32 x i8] c"../drivers/infiniband/core/cq.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 149, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 3854, i32 9 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab___ib_alloc_cq, ptr @__ksymtab___ib_alloc_cq_any, ptr @__ksymtab_ib_cq_pool_get, ptr @__ksymtab_ib_cq_pool_put, ptr @__ksymtab_ib_free_cq, ptr @__ksymtab_ib_process_cq_direct, ptr @.str, ptr @.str.1, ptr @.str.5, ptr @ib_cq_pool_get.default_comp_vector, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rdma_dim_init.__key, ptr @.str.9, ptr @rdma_dim_prof, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_cq_pool_get.default_comp_vector to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_dim_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_dim_prof to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_process_cq_direct(ptr noundef %cq, i32 noundef %budget) #0 align 64 {
entry:
  %wcs = alloca [8 x %struct.ib_wc], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %wcs) #9
  %0 = call ptr @memset(ptr %wcs, i32 255, i32 512)
  %call = call fastcc i32 @__ib_process_cq(ptr noundef %cq, i32 noundef %budget, ptr noundef nonnull %wcs, i32 noundef 8)
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %wcs) #9
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ib_process_cq(ptr noundef %cq, i32 noundef %budget, ptr noundef %wcs, i32 noundef %batch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_cq_process(ptr noundef %cq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %budget)
  %cmp43.not = icmp eq i32 %budget, -1
  br label %while.cond

while.cond:                                       ; preds = %for.end.while.cond_crit_edge, %entry
  %completed.0 = phi i32 [ 0, %entry ], [ %add, %for.end.while.cond_crit_edge ]
  %sub = sub i32 %budget, %completed.0
  %0 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %batch)
  %1 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cq, align 8
  %poll_cq.i.i = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 1, i32 10
  %3 = ptrtoint ptr %poll_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %poll_cq.i.i, align 4
  %call.i.i = tail call i32 %4(ptr noundef %cq, i32 noundef %0, ptr noundef %wcs) #9
  tail call fastcc void @trace_cq_poll(ptr noundef %cq, i32 noundef %0, i32 noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1 = icmp sgt i32 %call.i.i, 0
  br i1 %cmp1, label %while.cond.for.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.for.body_crit_edge:                    ; preds = %while.cond
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %while.cond.for.body_crit_edge
  %i.069 = phi i32 [ %inc, %if.end41.for.body_crit_edge ], [ 0, %while.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ib_wc, ptr %wcs, i32 %i.069
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %cq, ptr noundef %arrayidx) #9
  br label %if.end41

if.else:                                          ; preds = %for.body
  %status = getelementptr %struct.ib_wc, ptr %wcs, i32 %i.069, i32 1
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %land.rhs, label %if.else.if.end41_crit_edge

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.rhs:                                         ; preds = %if.else
  %.b67 = load i1, ptr @__ib_process_cq.__already_done, align 1
  br i1 %.b67, label %land.rhs.if.end41_crit_edge, label %if.then11, !prof !86

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__ib_process_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 9, ptr noundef null) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then11, %land.rhs.if.end41_crit_edge, %if.else.if.end41_crit_edge, %if.then
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %call.i.i
  br i1 %exitcond.not, label %for.end, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end41
  %add = add i32 %call.i.i, %completed.0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %batch)
  %cmp42.not = icmp eq i32 %call.i.i, %batch
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp44.not = icmp slt i32 %add, %budget
  %or.cond = select i1 %cmp43.not, i1 true, i1 %cmp44.not
  %or.cond71 = select i1 %cmp42.not, i1 %or.cond, i1 false
  br i1 %or.cond71, label %for.end.while.cond_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.end.while.cond_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.cond.while.end_crit_edge
  %completed.1 = phi i32 [ %add, %for.end.while.end_crit_edge ], [ %completed.0, %while.cond.while.end_crit_edge ]
  ret i32 %completed.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ib_alloc_cq(ptr noundef %dev, ptr noundef %private, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, ptr noundef %caller) #0 align 64 {
entry:
  %cq_attr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cq_attr) #9
  %0 = getelementptr inbounds %struct.ib_cq_init_attr, ptr %cq_attr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_cq_init_attr, ptr %cq_attr, i32 0, i32 2
  %2 = ptrtoint ptr %cq_attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %nr_cqe, ptr %cq_attr, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %comp_vector, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %size_ib_cq = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 123
  %5 = ptrtoint ptr %size_ib_cq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size_ib_cq, align 4
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %call9.i.i.i, align 128
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %cq_context to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %private, ptr %cq_context, align 16
  %poll_ctx3 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %poll_ctx3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %poll_ctx, ptr %poll_ctx3, align 32
  %usecnt = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #9
  %10 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %usecnt, align 4
  %comp_vector4 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %comp_vector4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %comp_vector, ptr %comp_vector4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 1024) #13
  %wc = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %wc, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.out_free_cq_crit_edge, label %if.end9

if.end.out_free_cq_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_cq

if.end9:                                          ; preds = %if.end
  %res = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 17
  tail call void @rdma_restrack_new(ptr noundef %res, i32 noundef 1) #9
  tail call void @rdma_restrack_set_name(ptr noundef %res, ptr noundef %caller) #9
  %create_cq = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 50
  %14 = ptrtoint ptr %create_cq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %create_cq, align 4
  %call12 = call i32 %15(ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %cq_attr, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end9.out_free_wc_crit_edge

if.end9.out_free_wc_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_wc

if.end15:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call9.i.i.i, align 128
  %modify_cq.i = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 1, i32 51
  %18 = ptrtoint ptr %modify_cq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modify_cq.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end15.rdma_dim_init.exit_crit_edge, label %lor.lhs.false.i

if.end15.rdma_dim_init.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_dim_init.exit

lor.lhs.false.i:                                  ; preds = %if.end15
  %use_cq_dim.i = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 19
  %20 = ptrtoint ptr %use_cq_dim.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %use_cq_dim.i, align 4
  %21 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.i = icmp eq i8 %21, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.rdma_dim_init.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.rdma_dim_init.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_dim_init.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %22 = ptrtoint ptr %poll_ctx3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %poll_ctx3, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i = icmp eq i32 %23, 3
  br i1 %cmp.i, label %lor.lhs.false3.i.sw.bb_crit_edge, label %if.end.i

lor.lhs.false3.i.sw.bb_crit_edge:                 ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.i:                                         ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i82 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 128) #13
  %tobool4.not.i = icmp eq ptr %call7.i.i.i82, null
  br i1 %tobool4.not.i, label %if.end.i.rdma_dim_init.exit_crit_edge, label %if.end6.i

if.end.i.rdma_dim_init.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_dim_init.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %call7.i.i.i82 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %call7.i.i.i82, align 8
  %tune_state.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 8
  %26 = ptrtoint ptr %tune_state.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %tune_state.i, align 2
  %profile_ix.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 6
  %27 = ptrtoint ptr %profile_ix.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %profile_ix.i, align 8
  %priv.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 5
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call9.i.i.i, ptr %priv.i, align 4
  %dim7.i = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 13
  %29 = ptrtoint ptr %dim7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i82, ptr %dim7.i, align 32
  %work.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 4
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #9
  %30 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @rdma_dim_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry11.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry11.i, ptr %entry11.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 4, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry11.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.dim, ptr %call7.i.i.i82, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ib_cq_rdma_dim_work, ptr %func.i, align 4
  br label %rdma_dim_init.exit

rdma_dim_init.exit:                               ; preds = %if.end6.i, %if.end.i.rdma_dim_init.exit_crit_edge, %lor.lhs.false.i.rdma_dim_init.exit_crit_edge, %if.end15.rdma_dim_init.exit_crit_edge
  %34 = ptrtoint ptr %poll_ctx3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %poll_ctx3, align 32
  %35 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %sw.default [
    i32 3, label %rdma_dim_init.exit.sw.bb_crit_edge
    i32 0, label %sw.bb17
    i32 1, label %rdma_dim_init.exit.sw.bb20_crit_edge
    i32 2, label %rdma_dim_init.exit.sw.bb20_crit_edge95
  ]

rdma_dim_init.exit.sw.bb20_crit_edge95:           ; preds = %rdma_dim_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

rdma_dim_init.exit.sw.bb20_crit_edge:             ; preds = %rdma_dim_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

rdma_dim_init.exit.sw.bb_crit_edge:               ; preds = %rdma_dim_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %rdma_dim_init.exit.sw.bb_crit_edge, %lor.lhs.false3.i.sw.bb_crit_edge
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %comp_handler to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ib_cq_completion_direct, ptr %comp_handler, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %rdma_dim_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %comp_handler18 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %comp_handler18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ib_cq_completion_softirq, ptr %comp_handler18, align 8
  %38 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 11
  call void @irq_poll_init(ptr noundef %38, i32 noundef 256, ptr noundef nonnull @ib_poll_handler) #9
  %39 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call9.i.i.i, align 128
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %40, i32 0, i32 1, i32 12
  %41 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = call i32 %42(ptr noundef nonnull %call9.i.i.i, i32 noundef 2) #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %rdma_dim_init.exit.sw.bb20_crit_edge, %rdma_dim_init.exit.sw.bb20_crit_edge95
  %comp_handler21 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %comp_handler21 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @ib_cq_completion_workqueue, ptr %comp_handler21, align 8
  %44 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 11
  call void @__init_work(ptr noundef %44, i32 noundef 0) #9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %44, align 16
  %lockdep_map = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 11, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @__ib_alloc_cq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry22 = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 11, i32 0, i32 1
  %46 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry22, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 11, i32 0, i32 2
  %48 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ib_cq_poll_work, ptr %func, align 4
  %49 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call9.i.i.i, align 128
  %req_notify_cq.i83 = getelementptr inbounds %struct.ib_device, ptr %50, i32 0, i32 1, i32 12
  %51 = ptrtoint ptr %req_notify_cq.i83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %req_notify_cq.i83, align 4
  %call.i84 = call i32 %52(ptr noundef nonnull %call9.i.i.i, i32 noundef 2) #9
  %53 = ptrtoint ptr %poll_ctx3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %poll_ctx3, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp = icmp eq i32 %54, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ib_comp_wq to i32))
  %ib_comp_wq.val = load ptr, ptr @ib_comp_wq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ib_comp_unbound_wq to i32))
  %ib_comp_unbound_wq.val = load ptr, ptr @ib_comp_unbound_wq, align 4
  %cond = select i1 %cmp, ptr %ib_comp_wq.val, ptr %ib_comp_unbound_wq.val
  %comp_wq = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 12
  %55 = ptrtoint ptr %comp_wq to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cond, ptr %comp_wq, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %rdma_dim_init.exit
  %dim.i = getelementptr inbounds %struct.ib_cq, ptr %call9.i.i.i, i32 0, i32 13
  %56 = ptrtoint ptr %dim.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dim.i, align 32
  %tobool.not.i85 = icmp eq ptr %57, null
  br i1 %tobool.not.i85, label %sw.default.rdma_dim_destroy.exit_crit_edge, label %if.end.i88

sw.default.rdma_dim_destroy.exit_crit_edge:       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_dim_destroy.exit

if.end.i88:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %work.i86 = getelementptr inbounds %struct.dim, ptr %57, i32 0, i32 4
  %call.i87 = call zeroext i1 @cancel_work_sync(ptr noundef %work.i86) #9
  %58 = ptrtoint ptr %dim.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dim.i, align 32
  call void @kfree(ptr noundef %59) #9
  br label %rdma_dim_destroy.exit

rdma_dim_destroy.exit:                            ; preds = %if.end.i88, %sw.default.rdma_dim_destroy.exit_crit_edge
  %60 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call9.i.i.i, align 128
  %destroy_cq = getelementptr inbounds %struct.ib_device, ptr %61, i32 0, i32 1, i32 52
  %62 = ptrtoint ptr %destroy_cq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %destroy_cq, align 4
  %call28 = call i32 %63(ptr noundef nonnull %call9.i.i.i, ptr noundef null) #9
  br label %out_free_wc

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb17, %sw.bb
  call void @rdma_restrack_add(ptr noundef %res) #9
  call fastcc void @trace_cq_alloc(ptr noundef nonnull %call9.i.i.i, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx)
  br label %cleanup

out_free_wc:                                      ; preds = %rdma_dim_destroy.exit, %if.end9.out_free_wc_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end9.out_free_wc_crit_edge ], [ -22, %rdma_dim_destroy.exit ]
  %call30 = call i32 @rdma_restrack_put(ptr noundef %res) #9
  %64 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wc, align 4
  call void @kfree(ptr noundef %65) #9
  br label %out_free_cq

out_free_cq:                                      ; preds = %out_free_wc, %if.end.out_free_cq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free_wc ], [ -12, %if.end.out_free_cq_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  call fastcc void @trace_cq_alloc_error(i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %ret.1)
  %66 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out_free_cq, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %66, %out_free_cq ], [ %call9.i.i.i, %sw.epilog ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cq_attr) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_new(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_set_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_cq_completion_direct(ptr noundef %cq, ptr nocapture noundef readnone %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @ib_cq_completion_direct.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !86

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_cq_completion_direct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %cq) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_cq_completion_softirq(ptr noundef %cq, ptr nocapture noundef readnone %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_cq_schedule(ptr noundef %cq)
  %0 = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 11
  tail call void @irq_poll_sched(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_poll_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ib_poll_handler(ptr noundef %iop, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iop, i32 -48
  %dim1 = getelementptr i8, ptr %iop, i32 48
  %0 = ptrtoint ptr %dim1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dim1, align 8
  %wc = getelementptr i8, ptr %iop, i32 -12
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wc, align 4
  %call = tail call fastcc i32 @__ib_process_cq(ptr noundef %add.ptr, i32 noundef %budget, ptr noundef %3, i32 noundef 16)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void @irq_poll_complete(ptr noundef %iop) #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %7(ptr noundef %add.ptr, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp sgt i32 %call.i, 0
  br i1 %cmp3, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trace_cq_reschedule(ptr noundef %add.ptr)
  tail call void @irq_poll_sched(ptr noundef %iop) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end5.if.end7_crit_edge, label %if.then6

if.end5.if.end7_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv = sext i32 %call to i64
  tail call void @rdma_dim(ptr noundef nonnull %1, i64 noundef %conv) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5.if.end7_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_cq_completion_workqueue(ptr noundef %cq, ptr nocapture noundef readnone %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_cq_schedule(ptr noundef %cq)
  %comp_wq = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 12
  %0 = ptrtoint ptr %comp_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_wq, align 4
  %2 = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_cq_poll_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -48
  %wc = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 4
  %call = tail call fastcc i32 @__ib_process_cq(ptr noundef %add.ptr, i32 noundef 65536, ptr noundef %1, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call)
  %cmp = icmp sgt i32 %call, 65535
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp sgt i32 %call.i, 0
  br i1 %cmp2, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %comp_wq = getelementptr i8, ptr %work, i32 44
  %6 = ptrtoint ptr %comp_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %comp_wq, align 4
  %call.i14 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #9
  br label %if.end6

if.else:                                          ; preds = %lor.lhs.false
  %dim = getelementptr i8, ptr %work, i32 48
  %8 = ptrtoint ptr %dim to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dim, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else.if.end6_crit_edge, label %if.then4

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv = sext i32 %call to i64
  tail call void @rdma_dim(ptr noundef nonnull %9, i64 noundef %conv) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else.if.end6_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_restrack_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_alloc(ptr noundef %cq, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_alloc, i32 0, i32 1), ptr blockaddress(@trace_cq_alloc, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %call42 = tail call i32 @__traceiter_cq_alloc(ptr noundef null, ptr noundef %cq, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 219, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
declare dso_local i32 @rdma_restrack_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_alloc_error(i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %rc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_alloc_error, i32 0, i32 1), ptr blockaddress(@trace_cq_alloc_error, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %call42 = tail call i32 @__traceiter_cq_alloc_error(ptr noundef null, i32 noundef %nr_cqe, i32 noundef %comp_vector, i32 noundef %poll_ctx, i32 noundef %rc) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !93
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_alloc_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_alloc_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_alloc_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_alloc_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 249, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
define dso_local ptr @__ib_alloc_cq_any(ptr noundef %dev, ptr noundef %private, i32 noundef %nr_cqe, i32 noundef %poll_ctx, ptr noundef %caller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_comp_vectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @__ib_alloc_cq_any.counter, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr nonnull @__ib_alloc_cq_any.counter, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__ib_alloc_cq_any.counter, ptr nonnull @__ib_alloc_cq_any.counter, i32 1, ptr nonnull elementtype(i32) @__ib_alloc_cq_any.counter) #9, !srcloc !95
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  %3 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_comp_vectors, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %4, i32 %5)
  %rem = srem i32 %asmresult.i.i.i.i, %6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %comp_vector.0 = phi i32 [ %rem, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call4 = tail call ptr @__ib_alloc_cq(ptr noundef %dev, ptr noundef %private, i32 noundef %nr_cqe, i32 noundef %comp_vector.0, i32 noundef %poll_ctx, ptr noundef %caller)
  ret ptr %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_free_cq(ptr noundef %cq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usecnt = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #9
  %0 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b226 = load i1, ptr @ib_free_cq.__already_done, align 1
  br i1 %.b226, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !86

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_free_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 323, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end38:                                         ; preds = %entry
  %cqe_used = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 6
  %2 = ptrtoint ptr %cqe_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqe_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool40.not = icmp eq i32 %3, 0
  br i1 %tobool40.not, label %if.end95, label %land.rhs47

land.rhs47:                                       ; preds = %if.end38
  %.b220225 = load i1, ptr @ib_free_cq.__already_done.2, align 1
  br i1 %.b220225, label %land.rhs47.cleanup_crit_edge, label %if.then58, !prof !86

land.rhs47.cleanup_crit_edge:                     ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_free_cq.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 325, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end95:                                         ; preds = %if.end38
  %poll_ctx = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 8
  %4 = ptrtoint ptr %poll_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %poll_ctx, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %5, label %land.end104 [
    i32 3, label %if.end95.sw.epilog_crit_edge
    i32 0, label %sw.bb
    i32 1, label %if.end95.sw.bb96_crit_edge
    i32 2, label %if.end95.sw.bb96_crit_edge229
  ]

if.end95.sw.bb96_crit_edge229:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end95.sw.bb96_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb96

if.end95.sw.epilog_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  %7 = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 11
  tail call void @irq_poll_disable(ptr noundef %7) #9
  br label %sw.epilog

sw.bb96:                                          ; preds = %if.end95.sw.bb96_crit_edge, %if.end95.sw.bb96_crit_edge229
  %8 = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 11
  %call97 = tail call zeroext i1 @cancel_work_sync(ptr noundef %8) #9
  br label %sw.epilog

land.end104:                                      ; preds = %if.end95
  %.b221224 = load i1, ptr @ib_free_cq.__already_done.3, align 1
  br i1 %.b221224, label %land.end104.sw.epilog_crit_edge, label %if.then111, !prof !86

land.end104.sw.epilog_crit_edge:                  ; preds = %land.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then111:                                       ; preds = %land.end104
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_free_cq.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 339, i32 noundef 9, ptr noundef null) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then111, %land.end104.sw.epilog_crit_edge, %sw.bb96, %sw.bb, %if.end95.sw.epilog_crit_edge
  %dim.i = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 13
  %9 = ptrtoint ptr %dim.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dim.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %sw.epilog.rdma_dim_destroy.exit_crit_edge, label %if.end.i

sw.epilog.rdma_dim_destroy.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_dim_destroy.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %work.i = getelementptr inbounds %struct.dim, ptr %10, i32 0, i32 4
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %work.i) #9
  %11 = ptrtoint ptr %dim.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dim.i, align 8
  tail call void @kfree(ptr noundef %12) #9
  br label %rdma_dim_destroy.exit

rdma_dim_destroy.exit:                            ; preds = %if.end.i, %sw.epilog.rdma_dim_destroy.exit_crit_edge
  tail call fastcc void @trace_cq_free(ptr noundef %cq)
  %13 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cq, align 8
  %destroy_cq = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 1, i32 52
  %15 = ptrtoint ptr %destroy_cq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %destroy_cq, align 4
  %call146 = tail call i32 %16(ptr noundef %cq, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool148.not = icmp eq i32 %call146, 0
  br i1 %tobool148.not, label %rdma_dim_destroy.exit.if.end193_crit_edge, label %land.rhs155

rdma_dim_destroy.exit.if.end193_crit_edge:        ; preds = %rdma_dim_destroy.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

land.rhs155:                                      ; preds = %rdma_dim_destroy.exit
  %.b222223 = load i1, ptr @ib_free_cq.__already_done.4, align 1
  br i1 %.b222223, label %land.rhs155.if.end193_crit_edge, label %if.then166, !prof !86

land.rhs155.if.end193_crit_edge:                  ; preds = %land.rhs155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.then166:                                       ; preds = %land.rhs155
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_free_cq.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 345, i32 noundef 9, ptr noundef nonnull @.str.5) #9
  br label %if.end193

if.end193:                                        ; preds = %if.then166, %land.rhs155.if.end193_crit_edge, %rdma_dim_destroy.exit.if.end193_crit_edge
  %res = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 17
  tail call void @rdma_restrack_del(ptr noundef %res) #9
  %wc = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 9
  %17 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wc, align 4
  tail call void @kfree(ptr noundef %18) #9
  tail call void @kfree(ptr noundef %cq) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %if.then58, %land.rhs47.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_poll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_free(ptr noundef %cq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_free, i32 0, i32 1), ptr blockaddress(@trace_cq_free, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %call42 = tail call i32 @__traceiter_cq_free(ptr noundef null, ptr noundef %cq) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_free, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_free, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 267, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
declare dso_local void @rdma_restrack_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_cq_pool_cleanup(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ib_device, ptr %dev, i32 0, i32 27, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %cmp9.not54 = icmp eq ptr %1, %arrayidx
  br i1 %cmp9.not54, label %entry.for.inc38_crit_edge, label %entry.for.body10_crit_edge

entry.for.body10_crit_edge:                       ; preds = %entry
  br label %for.body10

entry.for.inc38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

for.body10:                                       ; preds = %list_del.exit.for.body10_crit_edge, %entry.for.body10_crit_edge
  %.pn.in55 = phi ptr [ %.pn58, %list_del.exit.for.body10_crit_edge ], [ %1, %entry.for.body10_crit_edge ]
  %cq.057 = getelementptr i8, ptr %.pn.in55, i32 -40
  %2 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn58 = load ptr, ptr %.pn.in55, align 8
  %cqe_used = getelementptr i8, ptr %.pn.in55, i32 -16
  %3 = ptrtoint ptr %cqe_used to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cqe_used, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body10.if.end_crit_edge, label %do.end, !prof !86

for.body10.if.end_crit_edge:                      ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body10.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in55) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in55, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in55 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in55, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in55, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %shared = getelementptr i8, ptr %.pn.in55, i32 72
  %13 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %shared, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %shared, align 8
  tail call void @ib_free_cq(ptr noundef %cq.057)
  %cmp9.not = icmp eq ptr %.pn58, %arrayidx
  br i1 %cmp9.not, label %list_del.exit.for.inc38_crit_edge, label %list_del.exit.for.body10_crit_edge

list_del.exit.for.body10_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

list_del.exit.for.inc38_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38

for.inc38:                                        ; preds = %list_del.exit.for.inc38_crit_edge, %entry.for.inc38_crit_edge
  %arrayidx.1 = getelementptr %struct.ib_device, ptr %dev, i32 0, i32 27, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 8
  %cmp9.not54.1 = icmp eq ptr %15, %arrayidx.1
  br i1 %cmp9.not54.1, label %for.inc38.for.inc38.1_crit_edge, label %for.inc38.for.body10.1_crit_edge

for.inc38.for.body10.1_crit_edge:                 ; preds = %for.inc38
  br label %for.body10.1

for.inc38.for.inc38.1_crit_edge:                  ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38.1

for.body10.1:                                     ; preds = %list_del.exit.1.for.body10.1_crit_edge, %for.inc38.for.body10.1_crit_edge
  %.pn.in55.1 = phi ptr [ %.pn58.1, %list_del.exit.1.for.body10.1_crit_edge ], [ %15, %for.inc38.for.body10.1_crit_edge ]
  %cq.057.1 = getelementptr i8, ptr %.pn.in55.1, i32 -40
  %16 = ptrtoint ptr %.pn.in55.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn58.1 = load ptr, ptr %.pn.in55.1, align 8
  %cqe_used.1 = getelementptr i8, ptr %.pn.in55.1, i32 -16
  %17 = ptrtoint ptr %cqe_used.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cqe_used.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1 = icmp eq i32 %18, 0
  br i1 %tobool.not.1, label %for.body10.1.if.end.1_crit_edge, label %do.end.1, !prof !86

for.body10.1.if.end.1_crit_edge:                  ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

do.end.1:                                         ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %if.end.1

if.end.1:                                         ; preds = %do.end.1, %for.body10.1.if.end.1_crit_edge
  %call.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in55.1) #9
  br i1 %call.i.i.1, label %if.end.i.i.1, label %if.end.1.list_del.exit.1_crit_edge

if.end.1.list_del.exit.1_crit_edge:               ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.1

if.end.i.i.1:                                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %.pn.in55.1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.1, align 4
  %21 = ptrtoint ptr %.pn.in55.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in55.1, align 4
  %prev1.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.1, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.1

list_del.exit.1:                                  ; preds = %if.end.i.i.1, %if.end.1.list_del.exit.1_crit_edge
  %25 = ptrtoint ptr %.pn.in55.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in55.1, align 4
  %prev.i.1 = getelementptr inbounds %struct.list_head, ptr %.pn.in55.1, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.1, align 4
  %shared.1 = getelementptr i8, ptr %.pn.in55.1, i32 72
  %27 = ptrtoint ptr %shared.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.1 = load i8, ptr %shared.1, align 8
  %bf.clear.1 = and i8 %bf.load.1, -65
  store i8 %bf.clear.1, ptr %shared.1, align 8
  tail call void @ib_free_cq(ptr noundef %cq.057.1)
  %cmp9.not.1 = icmp eq ptr %.pn58.1, %arrayidx.1
  br i1 %cmp9.not.1, label %list_del.exit.1.for.inc38.1_crit_edge, label %list_del.exit.1.for.body10.1_crit_edge

list_del.exit.1.for.body10.1_crit_edge:           ; preds = %list_del.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.1

list_del.exit.1.for.inc38.1_crit_edge:            ; preds = %list_del.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38.1

for.inc38.1:                                      ; preds = %list_del.exit.1.for.inc38.1_crit_edge, %for.inc38.for.inc38.1_crit_edge
  %arrayidx.2 = getelementptr %struct.ib_device, ptr %dev, i32 0, i32 27, i32 2
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.2, align 8
  %cmp9.not54.2 = icmp eq ptr %29, %arrayidx.2
  br i1 %cmp9.not54.2, label %for.inc38.1.for.inc38.2_crit_edge, label %for.inc38.1.for.body10.2_crit_edge

for.inc38.1.for.body10.2_crit_edge:               ; preds = %for.inc38.1
  br label %for.body10.2

for.inc38.1.for.inc38.2_crit_edge:                ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38.2

for.body10.2:                                     ; preds = %list_del.exit.2.for.body10.2_crit_edge, %for.inc38.1.for.body10.2_crit_edge
  %.pn.in55.2 = phi ptr [ %.pn58.2, %list_del.exit.2.for.body10.2_crit_edge ], [ %29, %for.inc38.1.for.body10.2_crit_edge ]
  %cq.057.2 = getelementptr i8, ptr %.pn.in55.2, i32 -40
  %30 = ptrtoint ptr %.pn.in55.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn58.2 = load ptr, ptr %.pn.in55.2, align 8
  %cqe_used.2 = getelementptr i8, ptr %.pn.in55.2, i32 -16
  %31 = ptrtoint ptr %cqe_used.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cqe_used.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.2 = icmp eq i32 %32, 0
  br i1 %tobool.not.2, label %for.body10.2.if.end.2_crit_edge, label %do.end.2, !prof !86

for.body10.2.if.end.2_crit_edge:                  ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2

do.end.2:                                         ; preds = %for.body10.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef 9, ptr noundef null) #9
  br label %if.end.2

if.end.2:                                         ; preds = %do.end.2, %for.body10.2.if.end.2_crit_edge
  %call.i.i.2 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in55.2) #9
  br i1 %call.i.i.2, label %if.end.i.i.2, label %if.end.2.list_del.exit.2_crit_edge

if.end.2.list_del.exit.2_crit_edge:               ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.2

if.end.i.i.2:                                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.2 = getelementptr inbounds %struct.list_head, ptr %.pn.in55.2, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.2, align 4
  %35 = ptrtoint ptr %.pn.in55.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn.in55.2, align 4
  %prev1.i.i.i.2 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.2, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit.2

list_del.exit.2:                                  ; preds = %if.end.i.i.2, %if.end.2.list_del.exit.2_crit_edge
  %39 = ptrtoint ptr %.pn.in55.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in55.2, align 4
  %prev.i.2 = getelementptr inbounds %struct.list_head, ptr %.pn.in55.2, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.2, align 4
  %shared.2 = getelementptr i8, ptr %.pn.in55.2, i32 72
  %41 = ptrtoint ptr %shared.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.2 = load i8, ptr %shared.2, align 8
  %bf.clear.2 = and i8 %bf.load.2, -65
  store i8 %bf.clear.2, ptr %shared.2, align 8
  tail call void @ib_free_cq(ptr noundef %cq.057.2)
  %cmp9.not.2 = icmp eq ptr %.pn58.2, %arrayidx.2
  br i1 %cmp9.not.2, label %list_del.exit.2.for.inc38.2_crit_edge, label %list_del.exit.2.for.body10.2_crit_edge

list_del.exit.2.for.body10.2_crit_edge:           ; preds = %list_del.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.2

list_del.exit.2.for.inc38.2_crit_edge:            ; preds = %list_del.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc38.2

for.inc38.2:                                      ; preds = %list_del.exit.2.for.inc38.2_crit_edge, %for.inc38.1.for.inc38.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ib_cq_pool_get(ptr noundef %dev, i32 noundef %nr_cqe, i32 noundef %comp_vector_hint, i32 noundef %poll_ctx) #0 align 64 {
entry:
  %tmp_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %poll_ctx)
  %cmp = icmp ugt i32 %poll_ctx, 2
  br i1 %cmp, label %land.end, label %if.end37

land.end:                                         ; preds = %entry
  %.b125 = load i1, ptr @ib_cq_pool_get.__already_done, align 1
  br i1 %.b125, label %land.end.cleanup_crit_edge, label %if.then8, !prof !86

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_cq_pool_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 439, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end37:                                         ; preds = %entry
  %num_comp_vectors38 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %num_comp_vectors38 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_comp_vectors38, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %2 = load volatile i32, ptr @__num_online_cpus, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %1, i32 %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %comp_vector_hint)
  %cmp42 = icmp slt i32 %comp_vector_hint, 0
  br i1 %cmp42, label %do.end46, label %if.end37.if.end57_crit_edge

if.end37.if.end57_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load volatile i32, ptr @ib_cq_pool_get.default_comp_vector, align 4
  %add = add i32 %4, 1
  %rem = urem i32 %add, %3
  store volatile i32 %rem, ptr @ib_cq_pool_get.default_comp_vector, align 4
  br label %if.end57

if.end57:                                         ; preds = %do.end46, %if.end37.if.end57_crit_edge
  %comp_vector_hint.addr.0 = phi i32 [ %rem, %do.end46 ], [ %comp_vector_hint, %if.end37.if.end57_crit_edge ]
  %rem58 = urem i32 %comp_vector_hint.addr.0, %3
  %cq_pools_lock = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 26
  %arrayidx = getelementptr %struct.ib_device, ptr %dev, i32 0, i32 27, i32 %poll_ctx
  %5 = getelementptr inbounds %struct.list_head, ptr %tmp_list.i, i32 0, i32 1
  %max_cqe.i = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 22, i32 14
  %6 = call i32 @llvm.umax.i32(i32 %nr_cqe, i32 4096) #9
  br label %while.cond

while.cond:                                       ; preds = %ib_alloc_cqs.exit.while.cond_crit_edge, %if.end57
  call void @_raw_spin_lock_irq(ptr noundef %cq_pools_lock) #9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn133 = load ptr, ptr %arrayidx, align 8
  %cmp65.not134 = icmp eq ptr %.pn133, %arrayidx
  br i1 %cmp65.not134, label %while.cond.if.end85_crit_edge, label %while.cond.for.body_crit_edge

while.cond.for.body_crit_edge:                    ; preds = %while.cond
  br label %for.body

while.cond.if.end85_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.cond.for.body_crit_edge
  %.pn135 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn133, %while.cond.for.body_crit_edge ]
  %comp_vector = getelementptr i8, ptr %.pn135, i32 76
  %8 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %comp_vector, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem58, i32 %9)
  %cmp68.not = icmp eq i32 %rem58, %9
  br i1 %cmp68.not, label %if.end70, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end70:                                         ; preds = %for.body
  %cqe_used = getelementptr i8, ptr %.pn135, i32 -16
  %10 = ptrtoint ptr %cqe_used to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cqe_used, align 8
  %add71 = add i32 %11, %nr_cqe
  %cqe = getelementptr i8, ptr %.pn135, i32 -20
  %12 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cqe, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add71, i32 %13)
  %cmp72 = icmp ugt i32 %add71, %13
  br i1 %cmp72, label %if.end70.for.inc_crit_edge, label %for.end

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end70.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn135 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn135, align 8
  %cmp65.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp65.not, label %for.inc.if.end85_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end85_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

for.end:                                          ; preds = %if.end70
  %cq.0.le = getelementptr i8, ptr %.pn135, i32 -40
  %tobool80.not = icmp eq ptr %cq.0.le, null
  br i1 %tobool80.not, label %for.end.if.end85_crit_edge, label %if.then81

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then81:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %cqe_used.le.le = getelementptr i8, ptr %.pn135, i32 -16
  %15 = ptrtoint ptr %cqe_used.le.le to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cqe_used.le.le, align 8
  %add83 = add i32 %16, %nr_cqe
  store i32 %add83, ptr %cqe_used.le.le, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %cq_pools_lock) #9
  br label %cleanup

if.end85:                                         ; preds = %for.end.if.end85_crit_edge, %for.inc.if.end85_crit_edge, %while.cond.if.end85_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %cq_pools_lock) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_list.i) #9
  %17 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tmp_list.i, ptr %tmp_list.i, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tmp_list.i, ptr %5, align 4
  %19 = ptrtoint ptr %max_cqe.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_cqe.i, align 8
  %21 = call i32 @llvm.umin.i32(i32 %20, i32 %6) #9
  %22 = ptrtoint ptr %num_comp_vectors38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_comp_vectors38, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %24 = load volatile i32, ptr @__num_online_cpus, align 4
  %25 = call i32 @llvm.umin.i32(i32 %23, i32 %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp52118.not.i = icmp eq i32 %25, 0
  br i1 %cmp52118.not.i, label %if.end85.for.end.i_crit_edge, label %if.end85.for.body.i_crit_edge

if.end85.for.body.i_crit_edge:                    ; preds = %if.end85
  br label %for.body.i

if.end85.for.end.i_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end85.for.body.i_crit_edge
  %i.0119.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.end85.for.body.i_crit_edge ]
  %call.i.i = call ptr @__ib_alloc_cq(ptr noundef %dev, ptr noundef null, i32 noundef %21, i32 noundef %i.0119.i, i32 noundef %poll_ctx, ptr noundef nonnull @.str.11) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then55.i, label %if.end57.i

if.then55.i:                                      ; preds = %for.body.i
  %26 = ptrtoint ptr %call.i.i to i32
  %27 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tmp_list.i, align 4
  %cmp68.not120.i = icmp eq ptr %28, %tmp_list.i
  br i1 %cmp68.not120.i, label %if.then55.i.ib_alloc_cqs.exit_crit_edge, label %if.then55.i.for.body71.i_crit_edge

if.then55.i.for.body71.i_crit_edge:               ; preds = %if.then55.i
  br label %for.body71.i

if.then55.i.ib_alloc_cqs.exit_crit_edge:          ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_alloc_cqs.exit

if.end57.i:                                       ; preds = %for.body.i
  %shared.i = getelementptr inbounds %struct.ib_cq, ptr %call.i.i, i32 0, i32 15
  %29 = ptrtoint ptr %shared.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %shared.i, align 8
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %shared.i, align 8
  %pool_entry.i = getelementptr inbounds %struct.ib_cq, ptr %call.i.i, i32 0, i32 10
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %call.i.i.i126 = call zeroext i1 @__list_add_valid(ptr noundef %pool_entry.i, ptr noundef %31, ptr noundef nonnull %tmp_list.i) #9
  br i1 %call.i.i.i126, label %if.end.i.i.i, label %if.end57.i.list_add_tail.exit.i_crit_edge

if.end57.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pool_entry.i, ptr %5, align 4
  %33 = ptrtoint ptr %pool_entry.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tmp_list.i, ptr %pool_entry.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ib_cq, ptr %call.i.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %pool_entry.i, ptr %31, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end57.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.0119.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %list_add_tail.exit.i.for.end.i_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_add_tail.exit.i.for.end.i_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %list_add_tail.exit.i.for.end.i_crit_edge, %if.end85.for.end.i_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %cq_pools_lock) #9
  %36 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %tmp_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %37, %tmp_list.i
  br i1 %cmp.i.not.i.i, label %for.end.i.list_splice.exit.i_crit_edge, label %if.then.i.i

for.end.i.list_splice.exit.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice.exit.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %prev3.i.i117.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx, ptr %prev3.i.i117.i, align 4
  store ptr %37, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %39, ptr %41, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev6.i.i.i, align 4
  br label %list_splice.exit.i

list_splice.exit.i:                               ; preds = %if.then.i.i, %for.end.i.list_splice.exit.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %cq_pools_lock) #9
  br label %ib_alloc_cqs.exit

for.body71.i:                                     ; preds = %for.body71.i.for.body71.i_crit_edge, %if.then55.i.for.body71.i_crit_edge
  %.pn.in121.i = phi ptr [ %.pn.i, %for.body71.i.for.body71.i_crit_edge ], [ %28, %if.then55.i.for.body71.i_crit_edge ]
  %cq.0.i = getelementptr i8, ptr %.pn.in121.i, i32 -40
  %45 = ptrtoint ptr %.pn.in121.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %.pn.in121.i, align 8
  %shared72.i = getelementptr i8, ptr %.pn.in121.i, i32 72
  %46 = ptrtoint ptr %shared72.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load73.i = load i8, ptr %shared72.i, align 8
  %bf.clear74.i = and i8 %bf.load73.i, -65
  store i8 %bf.clear74.i, ptr %shared72.i, align 8
  call void @ib_free_cq(ptr noundef %cq.0.i) #9
  %cmp68.not.i = icmp eq ptr %.pn.i, %tmp_list.i
  br i1 %cmp68.not.i, label %for.body71.i.ib_alloc_cqs.exit_crit_edge, label %for.body71.i.for.body71.i_crit_edge

for.body71.i.for.body71.i_crit_edge:              ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body71.i

for.body71.i.ib_alloc_cqs.exit_crit_edge:         ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ib_alloc_cqs.exit

ib_alloc_cqs.exit:                                ; preds = %for.body71.i.ib_alloc_cqs.exit_crit_edge, %list_splice.exit.i, %if.then55.i.ib_alloc_cqs.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %list_splice.exit.i ], [ %26, %if.then55.i.ib_alloc_cqs.exit_crit_edge ], [ %26, %for.body71.i.ib_alloc_cqs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_list.i) #9
  %tobool88.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool88.not, label %ib_alloc_cqs.exit.while.cond_crit_edge, label %if.then89

ib_alloc_cqs.exit.while.cond_crit_edge:           ; preds = %ib_alloc_cqs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then89:                                        ; preds = %ib_alloc_cqs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %47 = inttoptr i32 %retval.0.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %if.then81, %if.then8, %land.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %cq.0.le, %if.then81 ], [ %47, %if.then89 ], [ inttoptr (i32 -22 to ptr), %if.then8 ], [ inttoptr (i32 -22 to ptr), %land.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_cq_pool_put(ptr nocapture noundef %cq, i32 noundef %nr_cqe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_used = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 6
  %0 = ptrtoint ptr %cqe_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqe_used, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %nr_cqe)
  %cmp = icmp ult i32 %1, %nr_cqe
  br i1 %cmp, label %land.rhs, label %if.end37.critedge

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @ib_cq_pool_put.__already_done, align 1
  br i1 %.b47, label %land.rhs.return_crit_edge, label %if.then, !prof !86

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ib_cq_pool_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 501, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end37.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %cq_pools_lock = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 26
  tail call void @_raw_spin_lock_irq(ptr noundef %cq_pools_lock) #9
  %4 = ptrtoint ptr %cqe_used to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqe_used, align 8
  %sub = sub i32 %5, %nr_cqe
  store i32 %sub, ptr %cqe_used, align 8
  %6 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cq, align 8
  %cq_pools_lock40 = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 26
  tail call void @_raw_spin_unlock_irq(ptr noundef %cq_pools_lock40) #9
  br label %return

return:                                           ; preds = %if.end37.critedge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_process(ptr noundef %cq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_process, i32 0, i32 1), ptr blockaddress(@trace_cq_process, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !99
  %call42 = tail call i32 @__traceiter_cq_process(ptr noundef null, ptr noundef %cq) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_process, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_process, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_process.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_process.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
declare dso_local i32 @__traceiter_cq_process(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_poll(ptr noundef %cq, i32 noundef %requested, i32 noundef %rc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_poll, i32 0, i32 1), ptr blockaddress(@trace_cq_poll, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %call42 = tail call i32 @__traceiter_cq_poll(ptr noundef null, ptr noundef %cq, i32 noundef %requested, i32 noundef %rc) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_poll, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_poll, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_poll.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_poll.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 142, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
declare dso_local i32 @__traceiter_cq_poll(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_cq_rdma_dim_work(ptr nocapture noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -72
  %priv = getelementptr i8, ptr %w, i32 44
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %profile_ix = getelementptr i8, ptr %w, i32 48
  %2 = ptrtoint ptr %profile_ix to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %profile_ix, align 8
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [9 x %struct.dim_cq_moder], ptr @rdma_dim_prof, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %comps5 = getelementptr [9 x %struct.dim_cq_moder], ptr @rdma_dim_prof, i32 0, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %comps5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %comps5, align 2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr, align 8
  tail call fastcc void @trace_cq_modify(ptr noundef %1, i16 noundef zeroext %7, i16 noundef zeroext %5)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %modify_cq = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 51
  %11 = ptrtoint ptr %modify_cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %modify_cq, align 4
  %call = tail call i32 %12(ptr noundef %1, i16 noundef zeroext %7, i16 noundef zeroext %5) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_modify(ptr noundef %cq, i16 noundef zeroext %comps, i16 noundef zeroext %usec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_modify, i32 0, i32 1), ptr blockaddress(@trace_cq_modify, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %call42 = tail call i32 @__traceiter_cq_modify(ptr noundef null, ptr noundef %cq, i16 noundef zeroext %comps, i16 noundef zeroext %usec) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_modify, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_modify, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_modify.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_modify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 189, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
declare dso_local i32 @__traceiter_cq_modify(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_schedule(ptr noundef %cq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_schedule, i32 0, i32 1), ptr blockaddress(@trace_cq_schedule, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %call42 = tail call i32 @__traceiter_cq_schedule(ptr noundef null, ptr noundef %cq) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_schedule, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_schedule, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_schedule.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_schedule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 68, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
declare dso_local void @irq_poll_sched(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cq_schedule(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_poll_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cq_reschedule(ptr noundef %cq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_reschedule, i32 0, i32 1), ptr blockaddress(@trace_cq_reschedule, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !87

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !86

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %call42 = tail call i32 @__traceiter_cq_reschedule(ptr noundef null, ptr noundef %cq) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !86

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !76) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_reschedule, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cq_reschedule, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cq_reschedule.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cq_reschedule.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 89, ptr noundef nonnull @.str.7) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !91
  %31 = tail call i32 @llvm.read_register.i32(metadata !76) #9
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
declare dso_local void @rdma_dim(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cq_reschedule(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cq_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cq_alloc_error(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cq_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74}
!llvm.named.register.sp = !{!76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__ksymtab_ib_process_cq_direct, !1, !"__ksymtab_ib_process_cq_direct", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/cq.c", i32 145, i32 1}
!2 = !{ptr @__ib_alloc_cq.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/cq.c", i32 260, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab___ib_alloc_cq, !6, !"__ksymtab___ib_alloc_cq", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/core/cq.c", i32 285, i32 1}
!7 = !{ptr @__ib_alloc_cq_any.counter, !8, !"counter", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/core/cq.c", i32 302, i32 18}
!9 = !{ptr @__ksymtab___ib_alloc_cq_any, !10, !"__ksymtab___ib_alloc_cq_any", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/core/cq.c", i32 313, i32 1}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/cq.c", i32 323, i32 6}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/cq.c", i32 325, i32 6}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/cq.c", i32 339, i32 3}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/core/cq.c", i32 345, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ksymtab_ib_free_cq, !22, !"__ksymtab_ib_free_cq", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/cq.c", i32 350, i32 1}
!23 = !{ptr @ib_cq_pool_get.default_comp_vector, !24, !"default_comp_vector", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/core/cq.c", i32 433, i32 22}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/core/cq.c", i32 439, i32 3}
!27 = !{ptr @__ksymtab_ib_cq_pool_get, !28, !"__ksymtab_ib_cq_pool_get", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/core/cq.c", i32 492, i32 1}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/core/cq.c", i32 501, i32 6}
!31 = !{ptr @__ksymtab_ib_cq_pool_put, !32, !"__ksymtab_ib_cq_pool_put", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/cq.c", i32 508, i32 1}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/cq.c", i32 113, i32 5}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/trace/events/rdma_core.h", i32 91, i32 1}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/trace/events/rdma_core.h", i32 118, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{ptr @rdma_dim_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/core/cq.c", i32 72, i32 2}
!48 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rdma_dim_prof, !50, !"rdma_dim_prof", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/core/cq.c", i32 28, i32 1}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/rdma_core.h", i32 165, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/core/cq.c", i32 149, i32 2}
!56 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/trace/events/rdma_core.h", i32 49, i32 1}
!59 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/trace/events/rdma_core.h", i32 70, i32 1}
!62 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/trace/events/rdma_core.h", i32 191, i32 1}
!65 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/trace/events/rdma_core.h", i32 221, i32 1}
!68 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/rdma_core.h", i32 251, i32 1}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/core/cq.c", i32 377, i32 3}
!74 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/rdma/ib_verbs.h", i32 3854, i32 9}
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
!87 = !{i64 2148964258, i64 2148964263, i64 2148964276, i64 2148964320, i64 2148964354, i64 2148964375}
!88 = !{i64 2157964358}
!89 = !{i64 2157964603}
!90 = !{i64 2149375599}
!91 = !{i64 2149376635}
!92 = !{i64 2157981331}
!93 = !{i64 2157981588}
!94 = !{i64 2148436316}
!95 = !{i64 2148351601, i64 2148351633, i64 2148351662, i64 2148351696, i64 2148351727, i64 2148351750}
!96 = !{i64 2148436545}
!97 = !{i64 2157997351}
!98 = !{i64 2157997532}
!99 = !{i64 2157895306}
!100 = !{i64 2157895493}
!101 = !{i64 2157911275}
!102 = !{i64 2157911486}
!103 = !{i64 2157943500}
!104 = !{i64 2157943711}
!105 = !{i64 2157859888}
!106 = !{i64 2157860077}
!107 = !{i64 2157875527}
!108 = !{i64 2157879781}
