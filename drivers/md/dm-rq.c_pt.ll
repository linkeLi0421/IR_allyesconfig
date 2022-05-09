; ModuleID = '/llk/IR_all_yes/drivers/md/dm-rq.c_pt.bc'
source_filename = "../drivers/md/dm-rq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_get_reserved_rq_based_ios\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_get_reserved_rq_based_ios\09\09\09\09"
module asm "\09.long\09__crc_dm_get_reserved_rq_based_ios\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_get_reserved_rq_based_ios:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_get_reserved_rq_based_ios\22\09\09\09\09\09"
module asm "__kstrtabns_dm_get_reserved_rq_based_ios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dm_mq_kick_requeue_list\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_mq_kick_requeue_list\09\09\09\09"
module asm "\09.long\09__crc_dm_mq_kick_requeue_list\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_mq_kick_requeue_list:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_mq_kick_requeue_list\22\09\09\09\09\09"
module asm "__kstrtabns_dm_mq_kick_requeue_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.80 }
%union.anon.80 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.81 }
%struct.atomic_t = type { i32 }
%union.anon.81 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mapped_device = type { %struct.mutex, %struct.mutex, %struct.list_head, ptr, i32, %struct.mutex, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, [16 x i8], ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.spinlock, %struct.bio_list, ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, i32, %struct.bio_set, %struct.bio_set, ptr, %struct.hd_geometry, %struct.dm_kobject_holder, i32, %struct.semaphore, %struct.mutex, %struct.dm_stats, ptr, i8, %struct.srcu_struct, i32, ptr, %struct.dm_ima_measurements }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.hlist_node = type { ptr, ptr }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.dm_kobject_holder = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dm_stats = type { %struct.mutex, %struct.list_head, ptr, i64, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_ima_measurements = type { %struct.dm_ima_device_table_metadata, %struct.dm_ima_device_table_metadata, i32 }
%struct.dm_ima_device_table_metadata = type { ptr, i32, i32, ptr, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.75, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.82, %union.anon.83, %union.anon.84, %union.anon.87, ptr, ptr }
%union.anon.75 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%union.anon.83 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i32, %struct.list_head, ptr }
%union.anon.87 = type { i64, [8 x i8] }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.dm_rq_target_io = type { ptr, ptr, ptr, ptr, %struct.kthread_work, i8, %union.map_info, %struct.dm_stats_aux, i32, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%union.map_info = type { ptr }
%struct.dm_stats_aux = type { i8, i64 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@reserved_rq_based_ios = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__kstrtab_dm_get_reserved_rq_based_ios = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_get_reserved_rq_based_ios = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_get_reserved_rq_based_ios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_get_reserved_rq_based_ios to i32), ptr @__kstrtab_dm_get_reserved_rq_based_ios, ptr @__kstrtabns_dm_get_reserved_rq_based_ios }, section "___ksymtab_gpl+dm_get_reserved_rq_based_ios", align 4
@__kstrtab_dm_mq_kick_requeue_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_mq_kick_requeue_list = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_mq_kick_requeue_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_mq_kick_requeue_list to i32), ptr @__kstrtab_dm_mq_kick_requeue_list, ptr @__kstrtabns_dm_mq_kick_requeue_list }, section "___ksymtab+dm_mq_kick_requeue_list", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@dm_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @dm_mq_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm_softirq_done, ptr null, ptr null, ptr @dm_mq_init_request, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__param_str_reserved_rq_based_ios = internal constant [29 x i8] c"dm_mod.reserved_rq_based_ios\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_reserved_rq_based_ios = internal constant %struct.kernel_param { ptr @__param_str_reserved_rq_based_ios, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @reserved_rq_based_ios } }, section "__param", align 4
@__UNIQUE_ID_reserved_rq_based_iostype335 = internal constant [43 x i8] c"dm_mod.parmtype=reserved_rq_based_ios:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_reserved_rq_based_ios336 = internal constant [73 x i8] c"dm_mod.parm=reserved_rq_based_ios:Reserved IOs in request-based mempools\00", section ".modinfo", align 1
@__param_str_use_blk_mq = internal constant [18 x i8] c"dm_mod.use_blk_mq\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_blk_mq = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_use_blk_mq = internal constant %struct.kernel_param { ptr @__param_str_use_blk_mq, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @use_blk_mq } }, section "__param", align 4
@__UNIQUE_ID_use_blk_mqtype337 = internal constant [32 x i8] c"dm_mod.parmtype=use_blk_mq:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_use_blk_mq338 = internal constant [73 x i8] c"dm_mod.parm=use_blk_mq:Use block multiqueue for request-based DM devices\00", section ".modinfo", align 1
@__param_str_dm_mq_nr_hw_queues = internal constant [26 x i8] c"dm_mod.dm_mq_nr_hw_queues\00", align 1
@dm_mq_nr_hw_queues = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_dm_mq_nr_hw_queues = internal constant %struct.kernel_param { ptr @__param_str_dm_mq_nr_hw_queues, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @dm_mq_nr_hw_queues } }, section "__param", align 4
@__UNIQUE_ID_dm_mq_nr_hw_queuestype339 = internal constant [40 x i8] c"dm_mod.parmtype=dm_mq_nr_hw_queues:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dm_mq_nr_hw_queues340 = internal constant [89 x i8] c"dm_mod.parm=dm_mq_nr_hw_queues:Number of hardware queues for request-based dm-mq devices\00", section ".modinfo", align 1
@__param_str_dm_mq_queue_depth = internal constant [25 x i8] c"dm_mod.dm_mq_queue_depth\00", align 1
@dm_mq_queue_depth = internal global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@__param_dm_mq_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_dm_mq_queue_depth, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.80 { ptr @dm_mq_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_dm_mq_queue_depthtype341 = internal constant [39 x i8] c"dm_mod.parmtype=dm_mq_queue_depth:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dm_mq_queue_depth342 = internal constant [74 x i8] c"dm_mod.parm=dm_mq_queue_depth:Queue depth for request-based dm-mq devices\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@map_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014device-mapper: core-rq: unimplemented target map return value: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"map_request\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/md/dm-rq.c\00", [45 x i8] zeroinitializer }, align 32
@map_request._entry_ptr = internal global ptr @map_request._entry, section ".printk_index", align 4
@__tracepoint_block_rq_remap = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_rq_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dm_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014device-mapper: core-rq: unimplemented target endio return value: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dm_done\00", [24 x i8] zeroinitializer }, align 32
@dm_done._entry_ptr = internal global ptr @dm_done._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 13]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 13]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 7, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"reserved_rq_based_ios\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 39, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 432, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"dm_mq_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 532, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [11 x i8] c"use_blk_mq\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 593, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"dm_mq_nr_hw_queues\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 32, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"dm_mq_queue_depth\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 33, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 422, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 498, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 108, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [22 x i8] c"../drivers/md/dm-rq.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 245, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_dm_mq_nr_hw_queues340, ptr @__UNIQUE_ID_dm_mq_nr_hw_queuestype339, ptr @__UNIQUE_ID_dm_mq_queue_depth342, ptr @__UNIQUE_ID_dm_mq_queue_depthtype341, ptr @__UNIQUE_ID_reserved_rq_based_ios336, ptr @__UNIQUE_ID_reserved_rq_based_iostype335, ptr @__UNIQUE_ID_use_blk_mq338, ptr @__UNIQUE_ID_use_blk_mqtype337, ptr @__ksymtab_dm_get_reserved_rq_based_ios, ptr @__ksymtab_dm_mq_kick_requeue_list, ptr @__param_dm_mq_nr_hw_queues, ptr @__param_dm_mq_queue_depth, ptr @__param_reserved_rq_based_ios, ptr @__param_use_blk_mq, ptr @dm_done._entry, ptr @dm_done._entry_ptr, ptr @map_request._entry, ptr @map_request._entry_ptr, ptr @reserved_rq_based_ios, ptr @.str, ptr @dm_mq_ops, ptr @use_blk_mq, ptr @dm_mq_nr_hw_queues, ptr @dm_mq_queue_depth, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_rq_based_ios to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_blk_mq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_mq_nr_hw_queues to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_mq_queue_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_get_reserved_rq_based_ios() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__dm_get_module_param(ptr noundef nonnull @reserved_rq_based_ios, i32 noundef 256, i32 noundef 1024) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dm_get_module_param(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_request_based(ptr nocapture noundef readonly %md) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i = icmp ne ptr %3, null
  %conv = zext i1 %tobool.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_start_queue(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @blk_mq_unquiesce_queue(ptr noundef %q) #13
  tail call void @blk_mq_kick_requeue_list(ptr noundef %q) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_kick_requeue_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_stop_queue(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @blk_mq_quiesce_queue(ptr noundef %q) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_mq_kick_requeue_list(ptr nocapture noundef readonly %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_delay_kick_requeue_list(ptr noundef %1, i32 noundef 0) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_attr_rq_based_seq_io_merge_deadline_show(ptr nocapture noundef readnone %md, ptr nocapture noundef writeonly %buf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_attr_rq_based_seq_io_merge_deadline_store(ptr nocapture noundef readnone %md, ptr nocapture noundef readnone %buf, i32 noundef returned %count) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_mq_init_request_queue(ptr noundef %md, ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 184) #16
  %tag_set = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 36
  %1 = ptrtoint ptr %tag_set to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i.i, ptr %tag_set, align 8
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %numa_node_id = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 7
  %ops = getelementptr inbounds %struct.blk_mq_tag_set, ptr %call.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dm_mq_ops, ptr %ops, align 8
  %call.i = tail call i32 @__dm_get_module_param(ptr noundef nonnull @dm_mq_queue_depth, i32 noundef 2048, i32 noundef 10240) #13
  %3 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tag_set, align 8
  %queue_depth = getelementptr inbounds %struct.blk_mq_tag_set, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %queue_depth, align 4
  %6 = ptrtoint ptr %numa_node_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numa_node_id, align 8
  %8 = load ptr, ptr %tag_set, align 8
  %numa_node = getelementptr inbounds %struct.blk_mq_tag_set, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %numa_node, align 4
  %10 = load ptr, ptr %tag_set, align 8
  %flags = getelementptr inbounds %struct.blk_mq_tag_set, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %flags, align 4
  %call.i57 = tail call i32 @__dm_get_module_param(ptr noundef nonnull @dm_mq_nr_hw_queues, i32 noundef 1, i32 noundef 32) #13
  %12 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tag_set, align 8
  %nr_hw_queues = getelementptr inbounds %struct.blk_mq_tag_set, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i57, ptr %nr_hw_queues, align 4
  %15 = load ptr, ptr %tag_set, align 8
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %md, ptr %driver_data, align 4
  %17 = load ptr, ptr %tag_set, align 8
  %cmd_size = getelementptr inbounds %struct.blk_mq_tag_set, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 80, ptr %cmd_size, align 4
  %call12 = tail call ptr @dm_table_get_immutable_target(ptr noundef %t) #13
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %call12, i32 0, i32 10
  %19 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %per_io_data_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end19_crit_edge, label %if.then15

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tag_set, align 8
  %cmd_size18 = getelementptr inbounds %struct.blk_mq_tag_set, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %cmd_size18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_size18, align 4
  %add = add i32 %24, %20
  store i32 %add, ptr %cmd_size18, align 4
  %init_tio_pdu = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 37
  %25 = ptrtoint ptr %init_tio_pdu to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %init_tio_pdu, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %init_tio_pdu, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %26 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tag_set, align 8
  %call21 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.out_kfree_tag_set_crit_edge

if.end19.out_kfree_tag_set_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_kfree_tag_set

if.end24:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tag_set, align 8
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue, align 4
  %call26 = tail call i32 @blk_mq_init_allocated_queue(ptr noundef %29, ptr noundef %31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.cleanup_crit_edge, label %out_tag_set

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

out_tag_set:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tag_set, align 8
  tail call void @blk_mq_free_tag_set(ptr noundef %33) #13
  br label %out_kfree_tag_set

out_kfree_tag_set:                                ; preds = %out_tag_set, %if.end19.out_kfree_tag_set_crit_edge
  %err.0 = phi i32 [ %call21, %if.end19.out_kfree_tag_set_crit_edge ], [ %call26, %out_tag_set ]
  %34 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tag_set, align 8
  tail call void @kfree(ptr noundef %35) #13
  %36 = ptrtoint ptr %tag_set to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %tag_set, align 8
  br label %cleanup

cleanup:                                          ; preds = %out_kfree_tag_set, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_kfree_tag_set ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_immutable_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_init_allocated_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_mq_cleanup_mapped_device(ptr nocapture noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tag_set = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 36
  %0 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tag_set, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blk_mq_free_tag_set(ptr noundef nonnull %1) #13
  %2 = ptrtoint ptr %tag_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag_set, align 8
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %tag_set to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tag_set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_delay_kick_requeue_list(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @dm_mq_queue_rq(ptr nocapture noundef readnone %hctx, ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  %clone.i51 = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %immutable_target = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %immutable_target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %immutable_target, align 8
  %flags = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !69

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.then15, label %if.end.if.end18_crit_edge, !prof !70

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #13
  %8 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !71
  %call16 = call ptr @dm_get_live_table(ptr noundef %3, ptr noundef nonnull %srcu_idx) #13
  %call17 = call ptr @dm_table_find_target(ptr noundef %call16, i64 noundef 0) #13
  %9 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srcu_idx, align 4
  call void @dm_put_live_table(ptr noundef %3, i32 noundef %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #13
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end.if.end18_crit_edge
  %ti.0 = phi ptr [ %call17, %if.then15 ], [ %5, %if.end.if.end18_crit_edge ]
  %type = getelementptr inbounds %struct.dm_target, ptr %ti.0, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %busy = getelementptr inbounds %struct.target_type, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %busy, align 4
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %land.lhs.true

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %call22 = call i32 %14(ptr noundef %ti.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  call void @blk_mq_start_request(ptr noundef %1) #13
  %list.i.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 35, i32 1
  %15 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %16, %list.i.i
  br i1 %cmp.i.i.not.i, label %if.end25.dm_start_request.exit_crit_edge, label %if.then.i, !prof !69

if.end25.dm_start_request.exit_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_start_request.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  %stats.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %duration_jiffies.i = getelementptr %struct.request, ptr %1, i32 1, i32 13
  %18 = ptrtoint ptr %duration_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %duration_jiffies.i, align 8
  %__data_len.i.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %__data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %__data_len.i.i.i, align 8
  %shr.i.i = lshr i32 %20, 9
  %n_sectors.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i, i32 0, i32 9
  %21 = ptrtoint ptr %n_sectors.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i.i, ptr %n_sectors.i, align 4
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %23, 1
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %__sector.i.i, align 8
  %stats_aux.i = getelementptr %struct.request, ptr %1, i32 1, i32 10
  call void @dm_stats_account_io(ptr noundef %stats.i, i32 noundef %and.i.i, i64 noundef %25, i32 noundef %shr.i.i, i1 noundef zeroext false, i32 noundef 0, ptr noundef %stats_aux.i) #13
  br label %dm_start_request.exit

dm_start_request.exit:                            ; preds = %if.then.i, %if.end25.dm_start_request.exit_crit_edge
  call void @dm_get(ptr noundef %3) #13
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %add.ptr.i, align 8
  %ti.i = getelementptr %struct.request, ptr %1, i32 1, i32 1
  %27 = ptrtoint ptr %ti.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ti.i, align 4
  %clone.i = getelementptr %struct.request, ptr %1, i32 1, i32 3
  %28 = ptrtoint ptr %clone.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %clone.i, align 4
  %orig.i = getelementptr %struct.request, ptr %1, i32 1, i32 2
  %29 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %orig.i, align 8
  %error.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i, i32 0, i32 5
  %30 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %error.i, align 4
  %completed.i = getelementptr %struct.request, ptr %1, i32 1, i32 14
  %31 = ptrtoint ptr %completed.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %completed.i, align 8
  %init_tio_pdu.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 37
  %32 = ptrtoint ptr %init_tio_pdu.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %init_tio_pdu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %bf.cast.not.i, label %if.then.i50, label %dm_start_request.exit.init_tio.exit_crit_edge

dm_start_request.exit.init_tio.exit_crit_edge:    ; preds = %dm_start_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %init_tio.exit

if.then.i50:                                      ; preds = %dm_start_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  %info.i = getelementptr %struct.request, ptr %1, i32 1, i32 9
  %33 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %info.i, align 8
  br label %init_tio.exit

init_tio.exit:                                    ; preds = %if.then.i50, %dm_start_request.exit.init_tio.exit_crit_edge
  %34 = ptrtoint ptr %ti.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ti.0, ptr %ti.i, align 4
  %35 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %orig.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clone.i51) #13
  %37 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %clone.i51, align 4
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %type, align 4
  %clone_and_map_rq.i = getelementptr inbounds %struct.target_type, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %clone_and_map_rq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clone_and_map_rq.i, align 8
  %info.i53 = getelementptr %struct.request, ptr %1, i32 1, i32 9
  %call.i = call i32 %41(ptr noundef %ti.0, ptr noundef %36, ptr noundef %info.i53, ptr noundef nonnull %clone.i51) #13
  %42 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.end.i [
    i32 0, label %init_tio.exit.map_request.exit_crit_edge
    i32 1, label %sw.bb.i
    i32 2, label %init_tio.exit.map_request.exit_crit_edge74
    i32 3, label %sw.bb21.i
    i32 4, label %sw.bb22.i
  ]

init_tio.exit.map_request.exit_crit_edge74:       ; preds = %init_tio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_request.exit

init_tio.exit.map_request.exit_crit_edge:         ; preds = %init_tio.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_request.exit

sw.bb.i:                                          ; preds = %init_tio.exit
  %43 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clone.i51, align 4
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %bs.i.i = getelementptr inbounds %struct.mapped_device, ptr %46, i32 0, i32 28
  %call.i.i = call i32 @blk_rq_prep_clone(ptr noundef %44, ptr noundef %36, ptr noundef %bs.i.i, i32 noundef 2592, ptr noundef nonnull @dm_rq_bio_constructor, ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %if.then.i54

if.then.i54:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %type, align 4
  %release_clone_rq.i = getelementptr inbounds %struct.target_type, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %release_clone_rq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %release_clone_rq.i, align 4
  %51 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clone.i51, align 4
  call void %50(ptr noundef %52, ptr noundef %info.i53) #13
  br label %map_request.exit.thread71

if.end.i:                                         ; preds = %sw.bb.i
  %end_io.i.i = getelementptr inbounds %struct.request, ptr %44, i32 0, i32 32
  %53 = ptrtoint ptr %end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @end_clone_request, ptr %end_io.i.i, align 8
  %end_io_data.i.i = getelementptr inbounds %struct.request, ptr %44, i32 0, i32 33
  %54 = ptrtoint ptr %end_io_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i, ptr %end_io_data.i.i, align 4
  %55 = ptrtoint ptr %clone.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %44, ptr %clone.i, align 4
  %56 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clone.i51, align 4
  %call6.i = call ptr @dm_disk(ptr noundef %3) #13
  %58 = ptrtoint ptr %call6.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %call6.i, align 8
  %shl.i.i = shl i32 %59, 20
  %first_minor.i.i = getelementptr inbounds %struct.gendisk, ptr %call6.i, i32 0, i32 1
  %60 = ptrtoint ptr %first_minor.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %first_minor.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %61
  %__sector.i.i55 = getelementptr inbounds %struct.request, ptr %36, i32 0, i32 9
  %62 = ptrtoint ptr %__sector.i.i55 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %__sector.i.i55, align 8
  call fastcc void @trace_block_rq_remap(ptr noundef %57, i32 noundef %or.i.i, i64 noundef %63) #13
  %64 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clone.i51, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %queue_flags.i.i, align 4
  %70 = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i53.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i53.i, label %if.end.i.if.end.i55.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i55.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i55.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %rq_flags.i.i = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 4
  %71 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rq_flags.i.i, align 8
  %or.i54.i = or i32 %72, 8192
  store i32 %or.i54.i, ptr %rq_flags.i.i, align 8
  br label %if.end.i55.i

if.end.i55.i:                                     ; preds = %if.then.i.i, %if.end.i.if.end.i55.i_crit_edge
  %call.i.i.i = call i64 @ktime_get() #13
  %start_time_ns.i.i = getelementptr inbounds %struct.request, ptr %65, i32 0, i32 15
  %73 = ptrtoint ptr %start_time_ns.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %call.i.i.i, ptr %start_time_ns.i.i, align 8
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %65, align 8
  %call3.i.i = call zeroext i8 @blk_insert_cloned_request(ptr noundef %75, ptr noundef %65) #13
  %76 = zext i8 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %call3.i.i, label %if.then12.i.i [
    i8 9, label %if.end.i55.i.if.then14.i_crit_edge
    i8 13, label %if.end.i55.i.if.then14.i_crit_edge75
    i8 0, label %if.end.i55.i.map_request.exit.thread_crit_edge
  ]

if.end.i55.i.map_request.exit.thread_crit_edge:   ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_request.exit.thread

if.end.i55.i.if.then14.i_crit_edge75:             ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i

if.end.i55.i.if.then14.i_crit_edge:               ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i

if.then12.i.i:                                    ; preds = %if.end.i55.i
  %add.ptr.i.i.i.i.i = getelementptr %struct.request, ptr %36, i32 1
  %error1.i.i.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i.i.i.i, i32 0, i32 5
  %77 = ptrtoint ptr %error1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %call3.i.i, ptr %error1.i.i.i, align 4
  %78 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %36, align 8
  %queue_flags.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %queue_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %queue_flags.i.i.i.i, align 4
  %82 = and i32 %81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i.i.i, label %if.then12.i.i.if.then.i.i.i_crit_edge, label %blk_should_fake_timeout.exit.i.i.i

if.then12.i.i.if.then.i.i.i_crit_edge:            ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

blk_should_fake_timeout.exit.i.i.i:               ; preds = %if.then12.i.i
  %call1.i.i.i.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %79) #13
  br i1 %call1.i.i.i.i, label %blk_should_fake_timeout.exit.i.i.i.dm_dispatch_clone_request.exit.i_crit_edge, label %blk_should_fake_timeout.exit.i.i.i.if.then.i.i.i_crit_edge, !prof !70

blk_should_fake_timeout.exit.i.i.i.if.then.i.i.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

blk_should_fake_timeout.exit.i.i.i.dm_dispatch_clone_request.exit.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_dispatch_clone_request.exit.i

if.then.i.i.i:                                    ; preds = %blk_should_fake_timeout.exit.i.i.i.if.then.i.i.i_crit_edge, %if.then12.i.i.if.then.i.i.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %36) #13
  br label %dm_dispatch_clone_request.exit.i

dm_dispatch_clone_request.exit.i:                 ; preds = %if.then.i.i.i, %blk_should_fake_timeout.exit.i.i.i.dm_dispatch_clone_request.exit.i_crit_edge
  %83 = zext i8 %call3.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %call3.i.i, label %dm_dispatch_clone_request.exit.i.map_request.exit.thread_crit_edge [
    i8 9, label %dm_dispatch_clone_request.exit.i.if.then14.i_crit_edge
    i8 13, label %dm_dispatch_clone_request.exit.i.if.then14.i_crit_edge76
  ]

dm_dispatch_clone_request.exit.i.if.then14.i_crit_edge76: ; preds = %dm_dispatch_clone_request.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i

dm_dispatch_clone_request.exit.i.if.then14.i_crit_edge: ; preds = %dm_dispatch_clone_request.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then14.i

dm_dispatch_clone_request.exit.i.map_request.exit.thread_crit_edge: ; preds = %dm_dispatch_clone_request.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_request.exit.thread

if.then14.i:                                      ; preds = %dm_dispatch_clone_request.exit.i.if.then14.i_crit_edge, %dm_dispatch_clone_request.exit.i.if.then14.i_crit_edge76, %if.end.i55.i.if.then14.i_crit_edge, %if.end.i55.i.if.then14.i_crit_edge75
  %84 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clone.i51, align 4
  call void @blk_rq_unprep_clone(ptr noundef %85) #13
  %86 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clone.i51, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %mq_ops.i.i = getelementptr inbounds %struct.request_queue, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %mq_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mq_ops.i.i, align 8
  %cleanup_rq.i.i = getelementptr inbounds %struct.blk_mq_ops, ptr %91, i32 0, i32 14
  %92 = ptrtoint ptr %cleanup_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cleanup_rq.i.i, align 4
  %tobool.not.i56.i = icmp eq ptr %93, null
  br i1 %tobool.not.i56.i, label %if.then14.i.blk_mq_cleanup_rq.exit.i_crit_edge, label %if.then.i57.i

if.then14.i.blk_mq_cleanup_rq.exit.i_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %blk_mq_cleanup_rq.exit.i

if.then.i57.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #15
  call void %93(ptr noundef %87) #13
  br label %blk_mq_cleanup_rq.exit.i

blk_mq_cleanup_rq.exit.i:                         ; preds = %if.then.i57.i, %if.then14.i.blk_mq_cleanup_rq.exit.i_crit_edge
  %94 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ti.i, align 4
  %type16.i = getelementptr inbounds %struct.dm_target, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %type16.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %type16.i, align 4
  %release_clone_rq17.i = getelementptr inbounds %struct.target_type, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %release_clone_rq17.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %release_clone_rq17.i, align 4
  %100 = ptrtoint ptr %clone.i51 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clone.i51, align 4
  call void %99(ptr noundef %101, ptr noundef %info.i53) #13
  %102 = ptrtoint ptr %clone.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %clone.i, align 4
  br label %map_request.exit.thread71

sw.bb21.i:                                        ; preds = %init_tio.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @dm_requeue_original_request(ptr noundef %add.ptr.i, i1 noundef zeroext true) #13
  br label %map_request.exit.thread

sw.bb22.i:                                        ; preds = %init_tio.exit
  %rq_flags.i59.i = getelementptr inbounds %struct.request, ptr %36, i32 0, i32 4
  %103 = ptrtoint ptr %rq_flags.i59.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rq_flags.i59.i, align 8
  %or.i60.i = or i32 %104, 1024
  store i32 %or.i60.i, ptr %rq_flags.i59.i, align 8
  %add.ptr.i.i.i.i61.i = getelementptr %struct.request, ptr %36, i32 1
  %error1.i.i62.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i.i.i61.i, i32 0, i32 5
  %105 = ptrtoint ptr %error1.i.i62.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 10, ptr %error1.i.i62.i, align 4
  %106 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %36, align 8
  %queue_flags.i.i.i63.i = getelementptr inbounds %struct.request_queue, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %queue_flags.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %queue_flags.i.i.i63.i, align 4
  %110 = and i32 %109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i.i.i64.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i.i.i64.i, label %sw.bb22.i.if.then.i.i67.i_crit_edge, label %blk_should_fake_timeout.exit.i.i66.i

sw.bb22.i.if.then.i.i67.i_crit_edge:              ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i67.i

blk_should_fake_timeout.exit.i.i66.i:             ; preds = %sw.bb22.i
  %call1.i.i.i65.i = call zeroext i1 @__blk_should_fake_timeout(ptr noundef %107) #13
  br i1 %call1.i.i.i65.i, label %blk_should_fake_timeout.exit.i.i66.i.map_request.exit.thread_crit_edge, label %blk_should_fake_timeout.exit.i.i66.i.if.then.i.i67.i_crit_edge, !prof !70

blk_should_fake_timeout.exit.i.i66.i.if.then.i.i67.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i67.i

blk_should_fake_timeout.exit.i.i66.i.map_request.exit.thread_crit_edge: ; preds = %blk_should_fake_timeout.exit.i.i66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %map_request.exit.thread

if.then.i.i67.i:                                  ; preds = %blk_should_fake_timeout.exit.i.i66.i.if.then.i.i67.i_crit_edge, %sw.bb22.i.if.then.i.i67.i_crit_edge
  call void @blk_mq_complete_request(ptr noundef %36) #13
  br label %map_request.exit.thread

do.end.i:                                         ; preds = %init_tio.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call.i) #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-rq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #13, !srcloc !72
  unreachable

map_request.exit.thread:                          ; preds = %if.then.i.i67.i, %blk_should_fake_timeout.exit.i.i66.i.map_request.exit.thread_crit_edge, %sw.bb21.i, %dm_dispatch_clone_request.exit.i.map_request.exit.thread_crit_edge, %if.end.i55.i.map_request.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone.i51) #13
  br label %cleanup

map_request.exit.thread71:                        ; preds = %blk_mq_cleanup_rq.exit.i, %if.then.i54
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone.i51) #13
  br label %if.then28

map_request.exit:                                 ; preds = %init_tio.exit.map_request.exit_crit_edge, %init_tio.exit.map_request.exit_crit_edge74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clone.i51) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 2
  br i1 %cmp, label %map_request.exit.if.then28_crit_edge, label %map_request.exit.cleanup_crit_edge

map_request.exit.cleanup_crit_edge:               ; preds = %map_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

map_request.exit.if.then28_crit_edge:             ; preds = %map_request.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then28

if.then28:                                        ; preds = %map_request.exit.if.then28_crit_edge, %map_request.exit.thread71
  %111 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.i.not.i57 = icmp eq ptr %112, %list.i.i
  br i1 %cmp.i.i.not.i57, label %if.then28.rq_end_stats.exit_crit_edge, label %if.then.i66, !prof !69

if.then28.rq_end_stats.exit_crit_edge:            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %rq_end_stats.exit

if.then.i66:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  %stats.i58 = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  %duration_jiffies.i60 = getelementptr %struct.request, ptr %1, i32 1, i32 13
  %114 = ptrtoint ptr %duration_jiffies.i60 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %duration_jiffies.i60, align 8
  %sub.i = sub i32 %113, %115
  store i32 %sub.i, ptr %duration_jiffies.i60, align 8
  %cmd_flags.i61 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %116 = ptrtoint ptr %cmd_flags.i61 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cmd_flags.i61, align 4
  %and.i.i62 = and i32 %117, 1
  %__sector.i.i63 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 9
  %118 = ptrtoint ptr %__sector.i.i63 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %__sector.i.i63, align 8
  %n_sectors.i64 = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i, i32 0, i32 9
  %120 = ptrtoint ptr %n_sectors.i64 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %n_sectors.i64, align 4
  %stats_aux.i65 = getelementptr %struct.request, ptr %1, i32 1, i32 10
  call void @dm_stats_account_io(ptr noundef %stats.i58, i32 noundef %and.i.i62, i64 noundef %119, i32 noundef %121, i1 noundef zeroext true, i32 noundef %sub.i, ptr noundef %stats_aux.i65) #13
  br label %rq_end_stats.exit

rq_end_stats.exit:                                ; preds = %if.then.i66, %if.then28.rq_end_stats.exit_crit_edge
  call void @dm_put(ptr noundef %3) #13
  br label %cleanup

cleanup:                                          ; preds = %rq_end_stats.exit, %map_request.exit.cleanup_crit_edge, %map_request.exit.thread, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 9, %rq_end_stats.exit ], [ 9, %entry.cleanup_crit_edge ], [ 9, %land.lhs.true.cleanup_crit_edge ], [ 0, %map_request.exit.cleanup_crit_edge ], [ 0, %map_request.exit.thread ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_softirq_done(ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.request, ptr %rq, i32 1
  %clone1 = getelementptr %struct.request, ptr %rq, i32 1, i32 3
  %0 = ptrtoint ptr %clone1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clone1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %list.i.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 35, i32 1
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %5, %list.i.i
  br i1 %cmp.i.i.not.i, label %if.then.rq_end_stats.exit_crit_edge, label %if.then.i, !prof !69

if.then.rq_end_stats.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rq_end_stats.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %stats.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %duration_jiffies.i = getelementptr %struct.request, ptr %rq, i32 1, i32 13
  %7 = ptrtoint ptr %duration_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duration_jiffies.i, align 8
  %sub.i = sub i32 %6, %8
  store i32 %sub.i, ptr %duration_jiffies.i, align 8
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %10, 1
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %11 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %__sector.i.i, align 8
  %n_sectors.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %n_sectors.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_sectors.i, align 4
  %stats_aux.i = getelementptr %struct.request, ptr %rq, i32 1, i32 10
  tail call void @dm_stats_account_io(ptr noundef %stats.i, i32 noundef %and.i.i, i64 noundef %12, i32 noundef %14, i1 noundef zeroext true, i32 noundef %sub.i, ptr noundef %stats_aux.i) #13
  br label %rq_end_stats.exit

rq_end_stats.exit:                                ; preds = %if.then.i, %if.then.rq_end_stats.exit_crit_edge
  %error = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %error, align 4
  tail call void @blk_mq_end_request(ptr noundef %rq, i8 noundef zeroext %16) #13
  tail call void @dm_put(ptr noundef %3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %error6 = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %error6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %error6, align 4
  %end_io_data.i = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 33
  %19 = ptrtoint ptr %end_io_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end_io_data.i, align 4
  %ti.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ti.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ti.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.if.end7.i_crit_edge, label %if.then.i18

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then.i18:                                      ; preds = %if.end
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %23 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rq_flags, align 8
  %and = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp ne i32 %and, 0
  %type.i = getelementptr inbounds %struct.dm_target, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type.i, align 4
  %rq_end_io2.i = getelementptr inbounds %struct.target_type, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %rq_end_io2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rq_end_io2.i, align 4
  %tobool4.not.i = icmp eq ptr %28, null
  %or.cond.i = select i1 %tobool3.not, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %if.then.i18.if.end7.i_crit_edge, label %if.then5.i

if.then.i18.if.end7.i_crit_edge:                  ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #15
  %info.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %20, i32 0, i32 6
  %call.i = tail call i32 %28(ptr noundef nonnull %22, ptr noundef nonnull %1, i8 noundef zeroext %18, ptr noundef %info.i) #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i18.if.end7.i_crit_edge, %if.end.if.end7.i_crit_edge
  %r.0.i = phi i32 [ %call.i, %if.then5.i ], [ 0, %if.then.i18.if.end7.i_crit_edge ], [ 0, %if.end.if.end7.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp.i = icmp eq i8 %18, 5
  br i1 %cmp.i, label %if.then11.i, label %if.end7.i.if.end41.i_crit_edge, !prof !70

if.end7.i.if.end41.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then11.i:                                      ; preds = %if.end7.i
  %cmd_flags.i19 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %cmd_flags.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmd_flags.i19, align 4
  %trunc.i = trunc i32 %30 to i8
  %31 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %trunc.i, label %if.then11.i.if.end41.i_crit_edge [
    i8 3, label %land.lhs.true14.i
    i8 7, label %land.lhs.true21.i
    i8 9, label %land.lhs.true32.i
  ]

if.then11.i.if.end41.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

land.lhs.true14.i:                                ; preds = %if.then11.i
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %max_discard_sectors.i = getelementptr inbounds %struct.request_queue, ptr %33, i32 0, i32 37, i32 13
  %34 = ptrtoint ptr %max_discard_sectors.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_discard_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool15.not.i = icmp eq i32 %35, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %land.lhs.true14.i.if.end41.i_crit_edge

land.lhs.true14.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %20, align 8
  tail call void @disable_discard(ptr noundef %37) #13
  br label %if.end41.i

land.lhs.true21.i:                                ; preds = %if.then11.i
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %max_write_same_sectors.i = getelementptr inbounds %struct.request_queue, ptr %39, i32 0, i32 37, i32 15
  %40 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_write_same_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not.i = icmp eq i32 %41, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %land.lhs.true21.i.if.end41.i_crit_edge

land.lhs.true21.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then25.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %20, align 8
  tail call void @disable_write_same(ptr noundef %43) #13
  br label %if.end41.i

land.lhs.true32.i:                                ; preds = %if.then11.i
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %45, i32 0, i32 37, i32 16
  %46 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool35.not.i = icmp eq i32 %47, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %land.lhs.true32.i.if.end41.i_crit_edge

land.lhs.true32.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then36.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %20, align 8
  tail call void @disable_write_zeroes(ptr noundef %49) #13
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %land.lhs.true32.i.if.end41.i_crit_edge, %if.then25.i, %land.lhs.true21.i.if.end41.i_crit_edge, %if.then16.i, %land.lhs.true14.i.if.end41.i_crit_edge, %if.then11.i.if.end41.i_crit_edge, %if.end7.i.if.end41.i_crit_edge
  %50 = zext i32 %r.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %r.0.i, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end41.i.cleanup_crit_edge
    i32 2, label %sw.bb43.i
    i32 3, label %sw.bb44.i
  ]

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end41.i
  %51 = ptrtoint ptr %end_io_data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end_io_data.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %orig.i.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %orig.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %orig.i.i, align 8
  tail call void @blk_rq_unprep_clone(ptr noundef nonnull %1) #13
  %ti.i.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ti.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.dm_target, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %type.i.i, align 4
  %release_clone_rq.i.i = getelementptr inbounds %struct.target_type, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %release_clone_rq.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %release_clone_rq.i.i, align 4
  tail call void %62(ptr noundef nonnull %1, ptr noundef null) #13
  %list.i.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %54, i32 0, i32 35, i32 1
  %63 = ptrtoint ptr %list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %list.i.i.i.i, align 4
  %cmp.i.i.not.i.i.i = icmp eq ptr %64, %list.i.i.i.i
  br i1 %cmp.i.i.not.i.i.i, label %sw.bb.i.dm_end_request.exit.i_crit_edge, label %if.then.i.i.i, !prof !69

sw.bb.i.dm_end_request.exit.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_end_request.exit.i

if.then.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #15
  %stats.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %54, i32 0, i32 35
  %add.ptr.i.i.i.i.i = getelementptr %struct.request, ptr %56, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %duration_jiffies.i.i.i = getelementptr %struct.request, ptr %56, i32 1, i32 13
  %66 = ptrtoint ptr %duration_jiffies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %duration_jiffies.i.i.i, align 8
  %sub.i.i.i = sub i32 %65, %67
  store i32 %sub.i.i.i, ptr %duration_jiffies.i.i.i, align 8
  %cmd_flags.i.i.i = getelementptr inbounds %struct.request, ptr %56, i32 0, i32 3
  %68 = ptrtoint ptr %cmd_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cmd_flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %69, 1
  %__sector.i.i.i.i = getelementptr inbounds %struct.request, ptr %56, i32 0, i32 9
  %70 = ptrtoint ptr %__sector.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %__sector.i.i.i.i, align 8
  %n_sectors.i.i.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i.i.i.i, i32 0, i32 9
  %72 = ptrtoint ptr %n_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %n_sectors.i.i.i, align 4
  %stats_aux.i.i.i = getelementptr %struct.request, ptr %56, i32 1, i32 10
  tail call void @dm_stats_account_io(ptr noundef %stats.i.i.i, i32 noundef %and.i.i.i.i, i64 noundef %71, i32 noundef %73, i1 noundef zeroext true, i32 noundef %sub.i.i.i, ptr noundef %stats_aux.i.i.i) #13
  br label %dm_end_request.exit.i

dm_end_request.exit.i:                            ; preds = %if.then.i.i.i, %sw.bb.i.dm_end_request.exit.i_crit_edge
  tail call void @blk_mq_end_request(ptr noundef %56, i8 noundef zeroext %18) #13
  tail call void @dm_put(ptr noundef %54) #13
  br label %cleanup

sw.bb43.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dm_requeue_original_request(ptr noundef %20, i1 noundef zeroext false) #13
  br label %cleanup

sw.bb44.i:                                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @dm_requeue_original_request(ptr noundef %20, i1 noundef zeroext true) #13
  br label %cleanup

do.end.i:                                         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %r.0.i) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm-rq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 246, 0\0A.popsection", ""() #13, !srcloc !73
  unreachable

cleanup:                                          ; preds = %sw.bb44.i, %sw.bb43.i, %dm_end_request.exit.i, %if.end41.i.cleanup_crit_edge, %rq_end_stats.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dm_mq_init_request(ptr nocapture noundef readonly %set, ptr noundef %rq, i32 noundef %hctx_idx, i32 noundef %numa_node) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %rq, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %add.ptr.i, align 8
  %init_tio_pdu = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %init_tio_pdu to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %init_tio_pdu, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr %struct.request, ptr %rq, i32 1, i32 15
  %info = getelementptr %struct.request, ptr %rq, i32 1, i32 9
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_get_live_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_find_target(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_live_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_stats_account_io(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_rq_remap(ptr noundef %rq, i32 noundef %dev, i64 noundef %from) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_remap, i32 0, i32 1), ptr blockaddress(@trace_block_rq_remap, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !74

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !69

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  %call42 = tail call i32 @__traceiter_block_rq_remap(ptr noundef null, ptr noundef %rq, i32 noundef %dev, i64 noundef %from) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !76
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !69

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_remap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_remap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_rq_remap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_block_rq_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 530, ptr noundef nonnull @.str.5) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !78
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #13
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
declare dso_local ptr @dm_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_rq_unprep_clone(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_requeue_original_request(ptr nocapture noundef readonly %tio, i1 noundef zeroext %delay_requeue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tio, align 8
  %orig = getelementptr inbounds %struct.dm_rq_target_io, ptr %tio, i32 0, i32 2
  %2 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig, align 8
  %list.i.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 35, i32 1
  %4 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %5, %list.i.i
  br i1 %cmp.i.i.not.i, label %entry.rq_end_stats.exit_crit_edge, label %if.then.i, !prof !69

entry.rq_end_stats.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rq_end_stats.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %stats.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 35
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %3, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %duration_jiffies.i = getelementptr %struct.request, ptr %3, i32 1, i32 13
  %7 = ptrtoint ptr %duration_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duration_jiffies.i, align 8
  %sub.i = sub i32 %6, %8
  store i32 %sub.i, ptr %duration_jiffies.i, align 8
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %10, 1
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %__sector.i.i, align 8
  %n_sectors.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i.i, i32 0, i32 9
  %13 = ptrtoint ptr %n_sectors.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_sectors.i, align 4
  %stats_aux.i = getelementptr %struct.request, ptr %3, i32 1, i32 10
  tail call void @dm_stats_account_io(ptr noundef %stats.i, i32 noundef %and.i.i, i64 noundef %12, i32 noundef %14, i1 noundef zeroext true, i32 noundef %sub.i, ptr noundef %stats_aux.i) #13
  br label %rq_end_stats.exit

rq_end_stats.exit:                                ; preds = %if.then.i, %entry.rq_end_stats.exit_crit_edge
  %clone = getelementptr inbounds %struct.dm_rq_target_io, ptr %tio, i32 0, i32 3
  %15 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clone, align 4
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %rq_end_stats.exit.if.end_crit_edge, label %if.then

rq_end_stats.exit.if.end_crit_edge:               ; preds = %rq_end_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %rq_end_stats.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @blk_rq_unprep_clone(ptr noundef nonnull %16) #13
  %ti = getelementptr inbounds %struct.dm_rq_target_io, ptr %tio, i32 0, i32 1
  %17 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ti, align 4
  %type = getelementptr inbounds %struct.dm_target, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type, align 4
  %release_clone_rq = getelementptr inbounds %struct.target_type, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %release_clone_rq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release_clone_rq, align 4
  %23 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clone, align 4
  tail call void %22(ptr noundef %24, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %rq_end_stats.exit.if.end_crit_edge
  %cond = select i1 %delay_requeue, i32 100, i32 0
  tail call void @blk_mq_requeue_request(ptr noundef %3, i1 noundef zeroext false) #13
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  tail call void @blk_mq_delay_kick_requeue_list(ptr noundef %26, i32 noundef %cond) #13
  tail call void @dm_put(ptr noundef %1) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_prep_clone(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dm_rq_bio_constructor(ptr nocapture noundef writeonly %bio, ptr noundef %bio_orig, ptr noundef %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bio, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bio_orig, ptr %add.ptr, align 8
  %tio1 = getelementptr i8, ptr %bio, i32 -4
  %1 = ptrtoint ptr %tio1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %tio1, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 10
  %2 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @end_clone_bio, ptr %bi_end_io, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @end_clone_request(ptr nocapture noundef readonly %clone, i8 noundef zeroext %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io_data = getelementptr inbounds %struct.request, ptr %clone, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  %orig = getelementptr inbounds %struct.dm_rq_target_io, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig, align 8
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %3, i32 1
  %error1.i = getelementptr inbounds %struct.dm_rq_target_io, ptr %add.ptr.i.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %error1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %error, ptr %error1.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queue_flags.i.i, align 4
  %9 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %entry.if.then.i_crit_edge, label %blk_should_fake_timeout.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

blk_should_fake_timeout.exit.i:                   ; preds = %entry
  %call1.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %6) #13
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.dm_complete_request.exit_crit_edge, label %blk_should_fake_timeout.exit.i.if.then.i_crit_edge, !prof !70

blk_should_fake_timeout.exit.i.if.then.i_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

blk_should_fake_timeout.exit.i.dm_complete_request.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dm_complete_request.exit

if.then.i:                                        ; preds = %blk_should_fake_timeout.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @blk_mq_complete_request(ptr noundef %3) #13
  br label %dm_complete_request.exit

dm_complete_request.exit:                         ; preds = %if.then.i, %blk_should_fake_timeout.exit.i.dm_complete_request.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @end_clone_bio(ptr noundef %clone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %clone, i32 -8
  %tio1 = getelementptr i8, ptr %clone, i32 -4
  %0 = ptrtoint ptr %tio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tio1, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %3, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %clone, i32 0, i32 6
  %6 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bi_status, align 2
  %8 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clone, align 8
  %tobool.not = icmp eq ptr %9, null
  tail call void @bio_put(ptr noundef %clone) #13
  %error2 = getelementptr inbounds %struct.dm_rq_target_io, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %error2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %error2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %error2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %7, ptr %error2, align 4
  br label %exit

if.end7:                                          ; preds = %if.else
  %completed = getelementptr inbounds %struct.dm_rq_target_io, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %completed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %completed, align 8
  %add = add i32 %14, %5
  store i32 %add, ptr %completed, align 8
  br i1 %tobool.not, label %if.end7.exit_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %exit

exit:                                             ; preds = %if.end7.exit_crit_edge, %if.then5
  %orig10 = getelementptr inbounds %struct.dm_rq_target_io, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %orig10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %orig10, align 8
  %completed11 = getelementptr inbounds %struct.dm_rq_target_io, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %completed11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %completed11, align 8
  %call = tail call zeroext i1 @blk_update_request(ptr noundef %16, i8 noundef zeroext 0, i32 noundef %18) #13
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_remap(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_insert_cloned_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_discard(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_write_same(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_write_zeroes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !18, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !56, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__ksymtab_dm_get_reserved_rq_based_ios, !1, !"__ksymtab_dm_get_reserved_rq_based_ios", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-rq.c", i32 46, i32 1}
!2 = !{ptr @__ksymtab_dm_mq_kick_requeue_list, !3, !"__ksymtab_dm_mq_kick_requeue_list", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-rq.c", i32 179, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-rq.c", i32 432, i32 22}
!6 = !{ptr @__param_reserved_rq_based_ios, !7, !"__param_reserved_rq_based_ios", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-rq.c", i32 589, i32 1}
!8 = !{ptr @__UNIQUE_ID_reserved_rq_based_iostype335, !7, !"__UNIQUE_ID_reserved_rq_based_iostype335", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_reserved_rq_based_ios336, !10, !"__UNIQUE_ID_reserved_rq_based_ios336", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-rq.c", i32 590, i32 1}
!11 = !{ptr @__param_use_blk_mq, !12, !"__param_use_blk_mq", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-rq.c", i32 594, i32 1}
!13 = !{ptr @__UNIQUE_ID_use_blk_mqtype337, !12, !"__UNIQUE_ID_use_blk_mqtype337", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_use_blk_mq338, !15, !"__UNIQUE_ID_use_blk_mq338", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-rq.c", i32 595, i32 1}
!16 = !{ptr @__param_dm_mq_nr_hw_queues, !17, !"__param_dm_mq_nr_hw_queues", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-rq.c", i32 597, i32 1}
!18 = !{ptr @__UNIQUE_ID_dm_mq_nr_hw_queuestype339, !17, !"__UNIQUE_ID_dm_mq_nr_hw_queuestype339", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_dm_mq_nr_hw_queues340, !20, !"__UNIQUE_ID_dm_mq_nr_hw_queues340", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-rq.c", i32 598, i32 1}
!21 = !{ptr @__param_dm_mq_queue_depth, !22, !"__param_dm_mq_queue_depth", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-rq.c", i32 600, i32 1}
!23 = !{ptr @__UNIQUE_ID_dm_mq_queue_depthtype341, !22, !"__UNIQUE_ID_dm_mq_queue_depthtype341", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_dm_mq_queue_depth342, !25, !"__UNIQUE_ID_dm_mq_queue_depth342", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-rq.c", i32 601, i32 1}
!26 = !{ptr @reserved_rq_based_ios, !27, !"reserved_rq_based_ios", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-rq.c", i32 39, i32 17}
!28 = !{ptr @dm_mq_ops, !29, !"dm_mq_ops", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-rq.c", i32 532, i32 32}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-rq.c", i32 422, i32 3}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @map_request._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @map_request._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/trace/events/block.h", i32 498, i32 1}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-rq.c", i32 245, i32 3}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dm_done._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @dm_done._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__param_str_reserved_rq_based_ios, !7, !"__param_str_reserved_rq_based_ios", i1 false, i1 false}
!50 = !{ptr @__param_str_use_blk_mq, !12, !"__param_str_use_blk_mq", i1 false, i1 false}
!51 = !{ptr @use_blk_mq, !52, !"use_blk_mq", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-rq.c", i32 593, i32 13}
!53 = !{ptr @__param_str_dm_mq_nr_hw_queues, !17, !"__param_str_dm_mq_nr_hw_queues", i1 false, i1 false}
!54 = !{ptr @dm_mq_nr_hw_queues, !55, !"dm_mq_nr_hw_queues", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-rq.c", i32 32, i32 17}
!56 = !{ptr @__param_str_dm_mq_queue_depth, !22, !"__param_str_dm_mq_queue_depth", i1 false, i1 false}
!57 = !{ptr @dm_mq_queue_depth, !58, !"dm_mq_queue_depth", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-rq.c", i32 33, i32 17}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{!"auto-init"}
!72 = !{i64 2155581429, i64 2155581912, i64 2155581466, i64 2155581522, i64 2155581556, i64 2155581580, i64 2155581621, i64 2155581642, i64 2155581670, i64 2155581704}
!73 = !{i64 2155571809, i64 2155572292, i64 2155571846, i64 2155571902, i64 2155571936, i64 2155571960, i64 2155572001, i64 2155572022, i64 2155572050, i64 2155572084}
!74 = !{i64 2148270631, i64 2148270636, i64 2148270649, i64 2148270693, i64 2148270727, i64 2148270748}
!75 = !{i64 2155070273}
!76 = !{i64 2155070490}
!77 = !{i64 2149282827}
!78 = !{i64 2149283863}
