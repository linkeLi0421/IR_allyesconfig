; ModuleID = '/llk/IR_all_yes/block/mq-deadline.c_pt.bc'
source_filename = "../block/mq-deadline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.elv_fs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blk_mq_debugfs_attr = type { ptr, i16, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.dd_per_prio = type { %struct.list_head, [2 x %struct.rb_root], [2 x %struct.list_head], [2 x ptr], %struct.io_stats_per_prio }
%struct.rb_root = type { ptr }
%struct.io_stats_per_prio = type { i32, i32, i32, %struct.atomic_t }
%struct.deadline_data = type { [3 x %struct.dd_per_prio], i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blk_mq_hw_ctx = type { %struct.anon.3, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.3 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.71, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.78, %union.anon.79, %union.anon.80, %union.anon.83, ptr, ptr }
%union.anon.71 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%union.anon.79 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.80 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, %struct.list_head, ptr }
%union.anon.83 = type { i64, [8 x i8] }
%struct.blk_mq_alloc_data = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID_alias325 = internal constant [38 x i8] c"mq_deadline.alias=mq-deadline-iosched\00", section ".modinfo", align 1
@mq_deadline = internal global { %struct.elevator_type, [32 x i8] } { %struct.elevator_type { ptr null, %struct.elevator_mq_ops { ptr @dd_init_sched, ptr @dd_exit_sched, ptr @dd_init_hctx, ptr null, ptr @dd_depth_updated, ptr null, ptr @dd_bio_merge, ptr @dd_request_merge, ptr @dd_request_merged, ptr @dd_merged_requests, ptr @dd_limit_depth, ptr @dd_prepare_request, ptr @dd_finish_request, ptr @dd_insert_requests, ptr @dd_dispatch_request, ptr @dd_has_work, ptr null, ptr null, ptr @elv_rb_former_request, ptr @elv_rb_latter_request, ptr null, ptr null }, i32 0, i32 0, ptr @deadline_attrs, ptr @.str, ptr @.str.1, i32 1, ptr null, ptr @deadline_queue_debugfs_attrs, ptr null, [22 x i8] zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_mq_deadline__326_1167_deadline_init6 = internal global ptr @deadline_init, section ".initcall6.init", align 4
@__exitcall_deadline_exit = internal global ptr @deadline_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [66 x i8] c"mq_deadline.author=Jens Axboe, Damien Le Moal and Bart Van Assche\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [35 x i8] c"mq_deadline.file=block/mq-deadline\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [24 x i8] c"mq_deadline.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [49 x i8] c"mq_deadline.description=MQ deadline IO scheduler\00", section ".modinfo", align 1
@deadline_attrs = internal global { [8 x %struct.elv_fs_entry], [32 x i8] } { [8 x %struct.elv_fs_entry] [%struct.elv_fs_entry { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deadline_read_expire_show, ptr @deadline_read_expire_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deadline_write_expire_show, ptr @deadline_write_expire_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deadline_writes_starved_show, ptr @deadline_writes_starved_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deadline_front_merges_show, ptr @deadline_front_merges_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deadline_async_depth_show, ptr @deadline_async_depth_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deadline_fifo_batch_show, ptr @deadline_fifo_batch_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @deadline_prio_aging_expire_show, ptr @deadline_prio_aging_expire_store }, %struct.elv_fs_entry zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mq-deadline\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"deadline\00", [23 x i8] zeroinitializer }, align 32
@deadline_queue_debugfs_attrs = internal constant { [21 x %struct.blk_mq_debugfs_attr], [124 x i8] } { [21 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.20, i16 256, ptr null, ptr null, ptr @deadline_read0_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.21, i16 256, ptr null, ptr null, ptr @deadline_write0_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.22, i16 256, ptr null, ptr null, ptr @deadline_read1_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.23, i16 256, ptr null, ptr null, ptr @deadline_write1_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.24, i16 256, ptr null, ptr null, ptr @deadline_read2_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.25, i16 256, ptr null, ptr null, ptr @deadline_write2_fifo_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.26, i16 256, ptr @deadline_read0_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.27, i16 256, ptr @deadline_write0_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.28, i16 256, ptr @deadline_read1_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.29, i16 256, ptr @deadline_write1_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.30, i16 256, ptr @deadline_read2_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.31, i16 256, ptr @deadline_write2_next_rq_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.32, i16 256, ptr @deadline_batching_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.33, i16 256, ptr @deadline_starved_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.16, i16 256, ptr @dd_async_depth_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.34, i16 256, ptr null, ptr null, ptr @deadline_dispatch0_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.35, i16 256, ptr null, ptr null, ptr @deadline_dispatch1_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.36, i16 256, ptr null, ptr null, ptr @deadline_dispatch2_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.37, i16 256, ptr @dd_owned_by_driver_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.38, i16 256, ptr @dd_queued_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], [124 x i8] zeroinitializer }, align 32
@dd_init_sched.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dd->lock\00", [22 x i8] zeroinitializer }, align 32
@dd_init_sched.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dd->zone_lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dd_exit_sched.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"block/mq-deadline.c\00", [44 x i8] zeroinitializer }, align 32
@dd_exit_sched.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@dd_exit_sched.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"statistics for priority %d: i %u m %u d %u c %u\0A\00", [47 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ioprio_class_to_prio = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__tracepoint_block_rq_insert = external dso_local global %struct.tracepoint, align 4
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_rq_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_expire\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_expire\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"writes_starved\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"front_merges\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"async_depth\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fifo_batch\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"prio_aging_expire\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read0_fifo_list\00", [16 x i8] zeroinitializer }, align 32
@deadline_read0_fifo_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_read0_fifo_start, ptr @deadline_read0_fifo_stop, ptr @deadline_read0_fifo_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write0_fifo_list\00", [47 x i8] zeroinitializer }, align 32
@deadline_write0_fifo_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_write0_fifo_start, ptr @deadline_write0_fifo_stop, ptr @deadline_write0_fifo_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read1_fifo_list\00", [16 x i8] zeroinitializer }, align 32
@deadline_read1_fifo_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_read1_fifo_start, ptr @deadline_read1_fifo_stop, ptr @deadline_read1_fifo_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write1_fifo_list\00", [47 x i8] zeroinitializer }, align 32
@deadline_write1_fifo_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_write1_fifo_start, ptr @deadline_write1_fifo_stop, ptr @deadline_write1_fifo_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read2_fifo_list\00", [16 x i8] zeroinitializer }, align 32
@deadline_read2_fifo_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_read2_fifo_start, ptr @deadline_read2_fifo_stop, ptr @deadline_read2_fifo_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write2_fifo_list\00", [47 x i8] zeroinitializer }, align 32
@deadline_write2_fifo_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_write2_fifo_start, ptr @deadline_write2_fifo_stop, ptr @deadline_write2_fifo_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read0_next_rq\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write0_next_rq\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read1_next_rq\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write1_next_rq\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read2_next_rq\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write2_next_rq\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"batching\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"starved\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dispatch0\00", [22 x i8] zeroinitializer }, align 32
@deadline_dispatch0_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_dispatch0_start, ptr @deadline_dispatch0_stop, ptr @deadline_dispatch0_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dispatch1\00", [22 x i8] zeroinitializer }, align 32
@deadline_dispatch1_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_dispatch1_start, ptr @deadline_dispatch1_stop, ptr @deadline_dispatch1_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dispatch2\00", [22 x i8] zeroinitializer }, align 32
@deadline_dispatch2_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @deadline_dispatch2_start, ptr @deadline_dispatch2_stop, ptr @deadline_dispatch2_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"owned_by_driver\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queued\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u %u %u\0A\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 9, i64 13]
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"mq_deadline\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1126, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"deadline_attrs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 907, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1150, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1151, i32 20 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"deadline_queue_debugfs_attrs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1100, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 642, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 643, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 590, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 597, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [21 x i8] c"ioprio_class_to_prio\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 111, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 190, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 108, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 908, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 909, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 910, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 911, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 912, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 913, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 914, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 863, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1101, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"deadline_read0_fifo_seq_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 971, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1102, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [29 x i8] c"deadline_write0_fifo_seq_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 972, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1103, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"deadline_read1_fifo_seq_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 973, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1104, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [29 x i8] c"deadline_write1_fifo_seq_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 974, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1105, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [28 x i8] c"deadline_read2_fifo_seq_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 975, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1106, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [29 x i8] c"deadline_write2_fifo_seq_ops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 976, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1107, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1108, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1109, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1110, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1111, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1112, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1113, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1114, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1116, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"deadline_dispatch0_seq_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1090, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1117, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"deadline_dispatch1_seq_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1091, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1118, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"deadline_dispatch2_seq_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1092, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1119, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1120, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 984, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [23 x i8] c"../block/mq-deadline.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1046, i32 16 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__exitcall_deadline_exit, ptr @__initcall__kmod_mq_deadline__326_1167_deadline_init6, ptr @deadline_exit, ptr @mq_deadline, ptr @deadline_attrs, ptr @.str, ptr @.str.1, ptr @deadline_queue_debugfs_attrs, ptr @dd_init_sched.__key, ptr @.str.2, ptr @dd_init_sched.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @ioprio_class_to_prio, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @deadline_read0_fifo_seq_ops, ptr @.str.21, ptr @deadline_write0_fifo_seq_ops, ptr @.str.22, ptr @deadline_read1_fifo_seq_ops, ptr @.str.23, ptr @deadline_write1_fifo_seq_ops, ptr @.str.24, ptr @deadline_read2_fifo_seq_ops, ptr @.str.25, ptr @deadline_write2_fifo_seq_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @deadline_dispatch0_seq_ops, ptr @.str.35, ptr @deadline_dispatch1_seq_ops, ptr @.str.36, ptr @deadline_dispatch2_seq_ops, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mq_deadline to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_attrs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_queue_debugfs_attrs to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dd_init_sched.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dd_init_sched.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioprio_class_to_prio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_read0_fifo_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_write0_fifo_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_read1_fifo_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_write1_fifo_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_read2_fifo_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_write2_fifo_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_dispatch0_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_dispatch1_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadline_dispatch2_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @deadline_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @elv_unregister(ptr noundef nonnull @mq_deadline) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @elv_register(ptr noundef nonnull @mq_deadline) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dd_init_sched(ptr noundef %q, ptr noundef %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @elevator_alloc(ptr noundef %q, ptr noundef %e) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 296) #14
  %tobool2.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not, label %put_eq, label %if.end4

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %elevator_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i.i.i, ptr %elevator_data, align 4
  %2 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call.i.i.i, ptr %call.i.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i.i, ptr %prev.i, align 4
  %fifo_list = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %fifo_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %fifo_list, ptr %fifo_list, align 8
  %prev.i48 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 0, i32 2, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fifo_list, ptr %prev.i48, align 4
  %arrayidx8 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %arrayidx8, ptr %arrayidx8, align 8
  %prev.i49 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx8, ptr %prev.i49, align 4
  %sort_list = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %sort_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sort_list, align 8
  %arrayidx11 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx11, align 4
  %arrayidx.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.1, ptr %arrayidx.1, align 8
  %prev.i.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.1, ptr %prev.i.1, align 4
  %fifo_list.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %fifo_list.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %fifo_list.1, ptr %fifo_list.1, align 8
  %prev.i48.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1, i32 2, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i48.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %fifo_list.1, ptr %prev.i48.1, align 4
  %arrayidx8.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx8.1, ptr %arrayidx8.1, align 8
  %prev.i49.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i49.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx8.1, ptr %prev.i49.1, align 4
  %sort_list.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %sort_list.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sort_list.1, align 8
  %arrayidx11.1 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx11.1, align 4
  %arrayidx.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx.2, ptr %arrayidx.2, align 8
  %prev.i.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.2, ptr %prev.i.2, align 4
  %fifo_list.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %fifo_list.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %fifo_list.2, ptr %fifo_list.2, align 8
  %prev.i48.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2, i32 2, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i48.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %fifo_list.2, ptr %prev.i48.2, align 4
  %arrayidx8.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2, i32 2, i32 1
  %22 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx8.2, ptr %arrayidx8.2, align 8
  %prev.i49.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i49.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx8.2, ptr %prev.i49.2, align 4
  %sort_list.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %sort_list.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %sort_list.2, align 8
  %arrayidx11.2 = getelementptr [3 x %struct.dd_per_prio], ptr %call.i.i.i, i32 0, i32 2, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx11.2, align 4
  %fifo_expire = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %fifo_expire to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 50, ptr %fifo_expire, align 4
  %arrayidx16 = getelementptr %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 500, ptr %arrayidx16, align 8
  %writes_starved = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %writes_starved to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %writes_starved, align 8
  %front_merges = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %front_merges to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %front_merges, align 4
  %last_dir = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %last_dir to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %last_dir, align 8
  %fifo_batch = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %fifo_batch to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16, ptr %fifo_batch, align 4
  %prio_aging_expire = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %prio_aging_expire to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1000, ptr %prio_aging_expire, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @dd_init_sched.__key, i16 noundef signext 3) #11
  %zone_lock = getelementptr inbounds %struct.deadline_data, ptr %call.i.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %zone_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @dd_init_sched.__key.3, i16 noundef signext 3) #11
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %33 = ptrtoint ptr %elevator to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call, ptr %elevator, align 4
  br label %cleanup

put_eq:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %kobj = getelementptr inbounds %struct.elevator_queue, ptr %call, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %kobj) #11
  br label %cleanup

cleanup:                                          ; preds = %put_eq, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %put_eq ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dd_exit_sched(ptr nocapture noundef readonly %e) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 10
  %dep_map.i = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 10, i32 0, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end148.for.body_crit_edge, %entry
  %prio.0183 = phi i32 [ 0, %entry ], [ %inc, %if.end148.for.body_crit_edge ]
  %stats2 = getelementptr [3 x %struct.dd_per_prio], ptr %1, i32 0, i32 %prio.0183, i32 4
  %fifo_list = getelementptr [3 x %struct.dd_per_prio], ptr %1, i32 0, i32 %prio.0183, i32 2
  %2 = ptrtoint ptr %fifo_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %fifo_list, align 4
  %cmp.i.not = icmp eq ptr %3, %fifo_list
  br i1 %cmp.i.not, label %for.body.if.end32_crit_edge, label %land.rhs

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.rhs:                                         ; preds = %for.body
  %.b179 = load i1, ptr @dd_exit_sched.__already_done, align 1
  br i1 %.b179, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !133

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dd_exit_sched.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 590, i32 noundef 9, ptr noundef null) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %arrayidx42 = getelementptr [3 x %struct.dd_per_prio], ptr %1, i32 0, i32 %prio.0183, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx42, align 4
  %cmp.i180.not = icmp eq ptr %5, %arrayidx42
  br i1 %cmp.i180.not, label %if.end32.if.end91_crit_edge, label %land.rhs53

if.end32.if.end91_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

land.rhs53:                                       ; preds = %if.end32
  %.b175178 = load i1, ptr @dd_exit_sched.__already_done.6, align 1
  br i1 %.b175178, label %land.rhs53.if.end91_crit_edge, label %if.then64, !prof !133

land.rhs53.if.end91_crit_edge:                    ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then64:                                        ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dd_exit_sched.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 591, i32 noundef 9, ptr noundef null) #11
  br label %if.end91

if.end91:                                         ; preds = %if.then64, %land.rhs53.if.end91_crit_edge, %if.end32.if.end91_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end91.dd_queued.exit_crit_edge, label %land.rhs.i

if.end91.dd_queued.exit_crit_edge:                ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit

land.rhs.i:                                       ; preds = %if.end91
  %call.i.i182 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %cmp.not.i = icmp eq i32 %call.i.i182, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.dd_queued.exit_crit_edge, !prof !134

land.rhs.i.dd_queued.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit

dd_queued.exit:                                   ; preds = %do.end.i, %land.rhs.i.dd_queued.exit_crit_edge, %if.end91.dd_queued.exit_crit_edge
  %7 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stats2, align 4
  %completed.i = getelementptr [3 x %struct.dd_per_prio], ptr %1, i32 0, i32 %prio.0183, i32 4, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %completed.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp102.not = icmp eq i32 %8, %10
  br i1 %cmp102.not, label %dd_queued.exit.if.end148_crit_edge, label %land.rhs109

dd_queued.exit.if.end148_crit_edge:               ; preds = %dd_queued.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

land.rhs109:                                      ; preds = %dd_queued.exit
  %.b176177 = load i1, ptr @dd_exit_sched.__already_done.7, align 1
  br i1 %.b176177, label %land.rhs109.if.end148_crit_edge, label %if.then120, !prof !133

land.rhs109.if.end148_crit_edge:                  ; preds = %land.rhs109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then120:                                       ; preds = %land.rhs109
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dd_exit_sched.__already_done.7, align 1
  %11 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stats2, align 4
  %merged = getelementptr [3 x %struct.dd_per_prio], ptr %1, i32 0, i32 %prio.0183, i32 4, i32 1
  %13 = ptrtoint ptr %merged to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %merged, align 4
  %dispatched = getelementptr [3 x %struct.dd_per_prio], ptr %1, i32 0, i32 %prio.0183, i32 4, i32 2
  %15 = ptrtoint ptr %dispatched to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dispatched, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %completed.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 600, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %prio.0183, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #11
  br label %if.end148

if.end148:                                        ; preds = %if.then120, %land.rhs109.if.end148_crit_edge, %dd_queued.exit.if.end148_crit_edge
  %inc = add nuw nsw i32 %prio.0183, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %if.end148.for.body_crit_edge

if.end148.for.body_crit_edge:                     ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dd_init_hctx(ptr nocapture noundef readonly %hctx, i32 noundef %hctx_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue.i, align 8
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator.i, align 4
  %elevator_data.i = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data.i, align 4
  %sched_tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 20
  %6 = ptrtoint ptr %sched_tags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_tags.i, align 4
  %nr_requests.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %nr_requests.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_requests.i, align 8
  %mul.i = mul i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 4
  %div7.i = lshr i32 %mul.i, 2
  %cond.i = select i1 %cmp.i, i32 1, i32 %div7.i
  %async_depth.i = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %async_depth.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond.i, ptr %async_depth.i, align 4
  %bitmap_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 3
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %bitmap_tags.i, i32 noundef %cond.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dd_depth_updated(ptr nocapture noundef readonly %hctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 20
  %6 = ptrtoint ptr %sched_tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_tags, align 4
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_requests, align 8
  %mul = mul i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul)
  %cmp = icmp ult i32 %mul, 4
  %div7 = lshr i32 %mul, 2
  %cond = select i1 %cmp, i32 1, i32 %div7
  %async_depth = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %async_depth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %async_depth, align 4
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 3
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %bitmap_tags, i32 noundef %cond) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dd_bio_merge(ptr noundef %q, ptr noundef %bio, i32 noundef %nr_segs) #2 align 64 {
entry:
  %free = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %free) #11
  %4 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %free, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %call = call zeroext i1 @blk_mq_sched_try_merge(ptr noundef %q, ptr noundef %bio, i32 noundef %nr_segs, ptr noundef nonnull %free) #11
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  %5 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %free, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @blk_mq_free_request(ptr noundef nonnull %6) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %free) #11
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dd_request_merge(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %rq, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %4 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_size, align 8
  %shr5 = lshr i32 %7, 9
  %conv6 = zext i32 %shr5 to i64
  %add = add i64 %5, %conv6
  %front_merges = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %front_merges to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %front_merges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bi_ioprio = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 4
  %10 = ptrtoint ptr %bi_ioprio to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_ioprio, align 2
  %12 = lshr i16 %11, 13
  %conv1 = zext i16 %12 to i32
  %arrayidx = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %conv1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %15 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %16, 1
  %arrayidx9 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %14, i32 1, i32 %and.i
  %call10 = tail call ptr @elv_rb_find(ptr noundef %arrayidx9, i64 noundef %add) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %__sector.i = getelementptr inbounds %struct.request, ptr %call10, i32 0, i32 9
  %17 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %__sector.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %18)
  %cmp.not = icmp eq i64 %add, %18
  br i1 %cmp.not, label %do.end24, label %do.body18, !prof !133

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/mq-deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 672, 0\0A.popsection", ""() #11, !srcloc !135
  unreachable

do.end24:                                         ; preds = %do.body
  %call25 = tail call zeroext i1 @elv_bio_merge_ok(ptr noundef nonnull %call10, ptr noundef %bio) #11
  br i1 %call25, label %if.then26, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %do.end24
  %19 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call10, ptr %rq, align 4
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %call10, i32 0, i32 3
  %20 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_flags.i, align 4
  %and.i47 = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i47)
  %cmp.i = icmp eq i32 %and.i47, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call10, align 8
  %max_discard_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %23, i32 0, i32 37, i32 23
  %24 = ptrtoint ptr %max_discard_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %max_discard_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp1.i = icmp ugt i16 %25, 1
  %spec.select = select i1 %cmp1.i, i32 3, i32 1
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true.i, %if.then26.cleanup_crit_edge, %do.end24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end24.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.then26.cleanup_crit_edge ], [ %spec.select, %land.lhs.true.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dd_request_merged(ptr nocapture noundef readonly %q, ptr noundef %req, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ioprio.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 24
  %0 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ioprio.i.i, align 2
  %2 = lshr i16 %1, 13
  %conv1.i = zext i16 %2 to i32
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %3 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %conv1.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %10, 1
  %arrayidx.i = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 %8, i32 1, i32 %and.i.i
  tail call void @elv_rb_del(ptr noundef %arrayidx.i, ptr noundef %req) #11
  %11 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i.i = and i32 %12, 1
  %arrayidx.i.i = getelementptr [3 x %struct.dd_per_prio], ptr %6, i32 0, i32 %8, i32 1, i32 %and.i.i.i
  tail call void @elv_rb_add(ptr noundef %arrayidx.i.i, ptr noundef %req) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dd_merged_requests(ptr noundef %q, ptr noundef %req, ptr noundef %next) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %ioprio.i.i = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 24
  %4 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ioprio.i.i, align 2
  %6 = lshr i16 %5, 13
  %conv1.i = zext i16 %6 to i32
  %arrayidx = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %conv1.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !134

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 213, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %merged = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %8, i32 4, i32 1
  %10 = ptrtoint ptr %merged to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %merged, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %merged, align 4
  %12 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %12, align 4
  %cmp.i.not = icmp eq ptr %14, %12
  br i1 %cmp.i.not, label %if.end.if.end36_crit_edge, label %land.lhs.true

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %15 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %15, align 4
  %cmp.i52.not = icmp eq ptr %17, %15
  br i1 %cmp.i52.not, label %land.lhs.true.if.end36_crit_edge, label %if.then30

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then30:                                        ; preds = %land.lhs.true
  %18 = getelementptr inbounds %struct.request, ptr %next, i32 0, i32 31
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  %conv = trunc i64 %20 to i32
  %21 = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 31
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %21, align 8
  %conv31 = trunc i64 %23 to i32
  %sub = sub i32 %conv, %conv31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp32 = icmp slt i32 %sub, 0
  br i1 %cmp32, label %if.then34, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %if.then30
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.__list_del_entry.exit.i_crit_edge

if.then34.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 12, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then34.__list_del_entry.exit.i_crit_edge
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %15, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %12, ptr noundef %15, ptr noundef %31) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %12, ptr %prev1.i.i2.i, align 4
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %12, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 12, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %15, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %12, ptr %15, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %36 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %18, align 8
  %38 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %21, align 8
  br label %if.end36

if.end36:                                         ; preds = %list_move.exit, %if.then30.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %arrayidx25 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 %8
  tail call fastcc void @deadline_remove_request(ptr noundef %q, ptr noundef %arrayidx25, ptr noundef %next)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dd_limit_depth(i32 noundef %op, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %op, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  %0 = and i32 %op, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i = icmp eq i32 %0, 0
  %.not = and i1 %cmp.i, %tobool.i
  %and.i4 = and i32 %op, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.i5 = icmp ne i32 %and.i4, 0
  %or.cond = or i1 %tobool.i5, %.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %elevator = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elevator_data, align 4
  %async_depth = getelementptr inbounds %struct.deadline_data, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %async_depth to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %async_depth, align 4
  %shallow_depth = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %shallow_depth to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %shallow_depth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @dd_prepare_request(ptr nocapture noundef writeonly %rq) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dd_finish_request(ptr noundef %rq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %ioprio.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 24
  %6 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ioprio.i.i, align 2
  %8 = lshr i16 %7, 13
  %conv1.i = zext i16 %8 to i32
  %arrayidx = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %conv1.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %priv = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %completed = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 %10, i32 4, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %completed, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %completed, i32 1, i32 3, i32 1) #11
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %completed, ptr %completed, i32 1, ptr elementtype(i32) %completed) #11, !srcloc !136
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 27
  %14 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %zone_lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 11
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %zone_lock) #11
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 4
  %16 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rq_flags.i, align 8
  %and.i = and i32 %17, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then6.blk_req_zone_write_unlock.exit_crit_edge, label %if.then.i

if.then6.blk_req_zone_write_unlock.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_req_zone_write_unlock.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__blk_req_zone_write_unlock(ptr noundef %rq) #11
  br label %blk_req_zone_write_unlock.exit

blk_req_zone_write_unlock.exit:                   ; preds = %if.then.i, %if.then6.blk_req_zone_write_unlock.exit_crit_edge
  %arrayidx12 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 %10, i32 2, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx12, align 4
  %cmp.i.not = icmp eq ptr %19, %arrayidx12
  br i1 %cmp.i.not, label %blk_req_zone_write_unlock.exit.if.end16_crit_edge, label %if.then15

blk_req_zone_write_unlock.exit.if.end16_crit_edge: ; preds = %blk_req_zone_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %blk_req_zone_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %mq_hctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 2
  %20 = ptrtoint ptr %mq_hctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mq_hctx, align 8
  tail call void @blk_mq_sched_mark_restart_hctx(ptr noundef %21) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %blk_req_zone_write_unlock.exit.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zone_lock, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dd_insert_requests(ptr nocapture noundef readonly %hctx, ptr noundef %list, i1 noundef zeroext %at_head) #2 align 64 {
entry:
  %free.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %cmp.i.not11 = icmp eq ptr %7, %list
  br i1 %cmp.i.not11, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %8 = getelementptr inbounds %struct.list_head, ptr %free.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %dd_insert_request.exit.while.body_crit_edge, %while.body.lr.ph
  %9 = phi ptr [ %7, %while.body.lr.ph ], [ %81, %dd_insert_request.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %9, i32 -56
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %9, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue, align 8
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %elevator.i, align 4
  %elevator_data.i = getelementptr inbounds %struct.elevator_queue, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %elevator_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %elevator_data.i, align 4
  %cmd_flags.i = getelementptr i8, ptr %9, i32 -44
  %24 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %25, 1
  %ioprio.i.i = getelementptr i8, ptr %9, i32 58
  %26 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ioprio.i.i, align 2
  %28 = lshr i16 %27, 13
  %conv3.i = zext i16 %28 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %free.i) #11
  %29 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free.i, ptr %free.i, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %free.i, ptr %8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %31 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %list_del_init.exit.if.end.i_crit_edge, label %land.rhs.i

list_del_init.exit.if.end.i_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %list_del_init.exit
  %dep_map.i = getelementptr inbounds %struct.deadline_data, ptr %23, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i7 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %cmp.not.i = icmp eq i32 %call.i.i7, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !134

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 721, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %list_del_init.exit.if.end.i_crit_edge
  %rq_flags.i.i = getelementptr i8, ptr %9, i32 -40
  %32 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rq_flags.i.i, align 8
  %and.i84.i = and i32 %33, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %tobool.not.i.i = icmp eq i32 %and.i84.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.blk_req_zone_write_unlock.exit.i_crit_edge, label %if.then.i.i

if.end.i.blk_req_zone_write_unlock.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_req_zone_write_unlock.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__blk_req_zone_write_unlock(ptr noundef %add.ptr) #11
  br label %blk_req_zone_write_unlock.exit.i

blk_req_zone_write_unlock.exit.i:                 ; preds = %if.then.i.i, %if.end.i.blk_req_zone_write_unlock.exit.i_crit_edge
  %arrayidx.i = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %conv3.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %arrayidx30.i = getelementptr [3 x %struct.dd_per_prio], ptr %23, i32 0, i32 %35
  %priv.i = getelementptr i8, ptr %9, i32 96
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i, align 4
  %tobool32.not.i = icmp eq ptr %37, null
  br i1 %tobool32.not.i, label %if.then33.i, label %blk_req_zone_write_unlock.exit.i.if.end36.i_crit_edge

blk_req_zone_write_unlock.exit.i.if.end36.i_crit_edge: ; preds = %blk_req_zone_write_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.i

if.then33.i:                                      ; preds = %blk_req_zone_write_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %stats.i = getelementptr [3 x %struct.dd_per_prio], ptr %23, i32 0, i32 %35, i32 4
  %38 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stats.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %stats.i, align 4
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 1 to ptr), ptr %priv.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %blk_req_zone_write_unlock.exit.i.if.end36.i_crit_edge
  %call37.i = call zeroext i1 @blk_mq_sched_try_insert_merge(ptr noundef %19, ptr noundef %add.ptr, ptr noundef nonnull %free.i) #11
  br i1 %call37.i, label %if.then38.i, label %if.end39.i

if.then38.i:                                      ; preds = %if.end36.i
  %41 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %free.i, align 4
  %cmp.i.not3.i.i = icmp eq ptr %42, %free.i
  br i1 %cmp.i.not3.i.i, label %if.then38.i.dd_insert_request.exit_crit_edge, label %if.then38.i.while.body.i.i_crit_edge

if.then38.i.while.body.i.i_crit_edge:             ; preds = %if.then38.i
  br label %while.body.i.i

if.then38.i.dd_insert_request.exit_crit_edge:     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_insert_request.exit

while.body.i.i:                                   ; preds = %list_del_init.exit.i.i.while.body.i.i_crit_edge, %if.then38.i.while.body.i.i_crit_edge
  %43 = phi ptr [ %53, %list_del_init.exit.i.i.while.body.i.i_crit_edge ], [ %42, %if.then38.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 -56
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %43) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del_init.exit.i.i_crit_edge

while.body.i.i.list_del_init.exit.i.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del_init.exit.i.i_crit_edge
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %43, ptr %43, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %43, ptr %prev.i3.i.i.i, align 4
  call void @blk_mq_free_request(ptr noundef %add.ptr.i.i) #11
  %52 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %free.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %53, %free.i
  br i1 %cmp.i.not.i.i, label %list_del_init.exit.i.i.dd_insert_request.exit_crit_edge, label %list_del_init.exit.i.i.while.body.i.i_crit_edge

list_del_init.exit.i.i.while.body.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

list_del_init.exit.i.i.dd_insert_request.exit_crit_edge: ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_insert_request.exit

if.end39.i:                                       ; preds = %if.end36.i
  call fastcc void @trace_block_rq_insert(ptr noundef %add.ptr) #11
  br i1 %at_head, label %if.then41.i, label %if.else.i

if.then41.i:                                      ; preds = %if.end39.i
  %54 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx30.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %arrayidx30.i, ptr noundef %55) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then41.i.dd_insert_request.exit_crit_edge

if.then41.i.dd_insert_request.exit_crit_edge:     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_insert_request.exit

if.end.i.i.i:                                     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  br label %dd_insert_request.exit.sink.split

if.else.i:                                        ; preds = %if.end39.i
  %56 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i.i.i = and i32 %57, 1
  %arrayidx.i.i.i = getelementptr [3 x %struct.dd_per_prio], ptr %23, i32 0, i32 %35, i32 1, i32 %and.i.i.i.i
  call void @elv_rb_add(ptr noundef %arrayidx.i.i.i, ptr noundef %add.ptr) #11
  %58 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd_flags.i, align 4
  %60 = and i32 %59, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %60)
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %if.else.i.if.end48.i_crit_edge, label %if.end.i.i9

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.end.i.i9:                                      ; preds = %if.else.i
  %trunc.i.i = trunc i32 %59 to i8
  %62 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i.i, label %if.end12.i.i [
    i8 2, label %if.end.i.i9.if.end48.i_crit_edge
    i8 9, label %if.end.i.i9.if.end48.i_crit_edge13
    i8 13, label %if.end.i.i9.if.end48.i_crit_edge14
  ]

if.end.i.i9.if.end48.i_crit_edge14:               ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.end.i.i9.if.end48.i_crit_edge13:               ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.end.i.i9.if.end48.i_crit_edge:                 ; preds = %if.end.i.i9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.end12.i.i:                                     ; preds = %if.end.i.i9
  %63 = and i32 %59, 409600
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i86.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i86.i, label %rq_mergeable.exit.i, label %if.end12.i.i.if.end48.i_crit_edge

if.end12.i.i.if.end48.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

rq_mergeable.exit.i:                              ; preds = %if.end12.i.i
  %64 = ptrtoint ptr %rq_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rq_flags.i.i, align 8
  %and17.i.i = and i32 %65, 262170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then43.i, label %rq_mergeable.exit.i.if.end48.i_crit_edge

rq_mergeable.exit.i.if.end48.i_crit_edge:         ; preds = %rq_mergeable.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.then43.i:                                      ; preds = %rq_mergeable.exit.i
  call void @elv_rqhash_add(ptr noundef %19, ptr noundef %add.ptr) #11
  %66 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %19, align 8
  %tobool44.not.i = icmp eq ptr %67, null
  br i1 %tobool44.not.i, label %if.then45.i, label %if.then43.i.if.end48.i_crit_edge

if.then43.i.if.end48.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr, ptr %19, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.then43.i.if.end48.i_crit_edge, %rq_mergeable.exit.i.if.end48.i_crit_edge, %if.end12.i.i.if.end48.i_crit_edge, %if.end.i.i9.if.end48.i_crit_edge, %if.end.i.i9.if.end48.i_crit_edge13, %if.end.i.i9.if.end48.i_crit_edge14, %if.else.i.if.end48.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %arrayidx49.i = getelementptr %struct.deadline_data, ptr %23, i32 0, i32 4, i32 %and.i.i
  %70 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx49.i, align 4
  %add.i = add i32 %71, %69
  %conv50.i = zext i32 %add.i to i64
  %72 = getelementptr i8, ptr %9, i32 112
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv50.i, ptr %72, align 8
  %arrayidx51.i = getelementptr [3 x %struct.dd_per_prio], ptr %23, i32 0, i32 %35, i32 2, i32 %and.i.i
  %prev.i.i10 = getelementptr [3 x %struct.dd_per_prio], ptr %23, i32 0, i32 %35, i32 2, i32 %and.i.i, i32 1
  %74 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i10, align 4
  %call.i.i88.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %75, ptr noundef %arrayidx51.i) #11
  br i1 %call.i.i88.i, label %if.end48.i.dd_insert_request.exit.sink.split_crit_edge, label %if.end48.i.dd_insert_request.exit_crit_edge

if.end48.i.dd_insert_request.exit_crit_edge:      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_insert_request.exit

if.end48.i.dd_insert_request.exit.sink.split_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_insert_request.exit.sink.split

dd_insert_request.exit.sink.split:                ; preds = %if.end48.i.dd_insert_request.exit.sink.split_crit_edge, %if.end.i.i.i
  %prev1.i.i.i8.sink = phi ptr [ %prev1.i.i.i8, %if.end.i.i.i ], [ %prev.i.i10, %if.end48.i.dd_insert_request.exit.sink.split_crit_edge ]
  %.sink = phi ptr [ %55, %if.end.i.i.i ], [ %arrayidx51.i, %if.end48.i.dd_insert_request.exit.sink.split_crit_edge ]
  %arrayidx30.i.sink12 = phi ptr [ %arrayidx30.i, %if.end.i.i.i ], [ %75, %if.end48.i.dd_insert_request.exit.sink.split_crit_edge ]
  %76 = ptrtoint ptr %prev1.i.i.i8.sink to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %9, ptr %prev1.i.i.i8.sink, align 4
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %.sink, ptr %9, align 4
  %78 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx30.i.sink12, ptr %prev.i3.i, align 4
  %79 = ptrtoint ptr %arrayidx30.i.sink12 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %9, ptr %arrayidx30.i.sink12, align 4
  br label %dd_insert_request.exit

dd_insert_request.exit:                           ; preds = %dd_insert_request.exit.sink.split, %if.end48.i.dd_insert_request.exit_crit_edge, %if.then41.i.dd_insert_request.exit_crit_edge, %list_del_init.exit.i.i.dd_insert_request.exit_crit_edge, %if.then38.i.dd_insert_request.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %free.i) #11
  %80 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %81, %list
  br i1 %cmp.i.not, label %dd_insert_request.exit.while.end_crit_edge, label %dd_insert_request.exit.while.body_crit_edge

dd_insert_request.exit.while.body_crit_edge:      ; preds = %dd_insert_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

dd_insert_request.exit.while.end_crit_edge:       ; preds = %dd_insert_request.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %dd_insert_request.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dd_dispatch_request(ptr nocapture noundef readonly %hctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.dd_queued.exit.i_crit_edge, label %land.rhs.i

entry.dd_queued.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !134

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 489, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.dd_queued.exit.i_crit_edge, label %land.rhs.i.i

if.end.i.dd_queued.exit.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dd_queued.exit.i_crit_edge, !prof !134

land.rhs.i.i.dd_queued.exit.i_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit.i

dd_queued.exit.i:                                 ; preds = %do.end.i.i, %land.rhs.i.i.dd_queued.exit.i_crit_edge, %if.end.i.dd_queued.exit.i_crit_edge, %entry.dd_queued.exit.i_crit_edge
  %stats1.i.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 0, i32 4
  %8 = ptrtoint ptr %stats1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats1.i.i, align 4
  %completed.i.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %completed.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %completed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %tobool25.i = icmp ne i32 %9, %11
  %lnot.ext29.i = zext i1 %tobool25.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i63.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i63.i, label %dd_queued.exit.i.dd_queued.exit73.i_crit_edge, label %land.rhs.i67.i

dd_queued.exit.i.dd_queued.exit73.i_crit_edge:    ; preds = %dd_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit73.i

land.rhs.i67.i:                                   ; preds = %dd_queued.exit.i
  %dep_map.i64.i = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i65.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i64.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65.i)
  %cmp.not.i66.i = icmp eq i32 %call.i.i65.i, 0
  br i1 %cmp.not.i66.i, label %do.end.i68.i, label %land.rhs.i67.i.dd_queued.exit73.i_crit_edge, !prof !134

land.rhs.i67.i.dd_queued.exit73.i_crit_edge:      ; preds = %land.rhs.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit73.i

do.end.i68.i:                                     ; preds = %land.rhs.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit73.i

dd_queued.exit73.i:                               ; preds = %do.end.i68.i, %land.rhs.i67.i.dd_queued.exit73.i_crit_edge, %dd_queued.exit.i.dd_queued.exit73.i_crit_edge
  %stats1.i69.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %stats1.i69.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stats1.i69.i, align 4
  %completed.i70.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 4, i32 3
  %call.i.i.i71.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i70.i, i32 noundef 4) #11
  %15 = ptrtoint ptr %completed.i70.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %completed.i70.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %tobool31.i = icmp ne i32 %14, %16
  %lnot.ext35.i = zext i1 %tobool31.i to i32
  %add.i = add nuw nsw i32 %lnot.ext35.i, %lnot.ext29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i74.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i74.i, label %dd_queued.exit73.i.dd_queued.exit84.i_crit_edge, label %land.rhs.i78.i

dd_queued.exit73.i.dd_queued.exit84.i_crit_edge:  ; preds = %dd_queued.exit73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit84.i

land.rhs.i78.i:                                   ; preds = %dd_queued.exit73.i
  %dep_map.i75.i = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i76.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i75.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76.i)
  %cmp.not.i77.i = icmp eq i32 %call.i.i76.i, 0
  br i1 %cmp.not.i77.i, label %do.end.i79.i, label %land.rhs.i78.i.dd_queued.exit84.i_crit_edge, !prof !134

land.rhs.i78.i.dd_queued.exit84.i_crit_edge:      ; preds = %land.rhs.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit84.i

do.end.i79.i:                                     ; preds = %land.rhs.i78.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit84.i

dd_queued.exit84.i:                               ; preds = %do.end.i79.i, %land.rhs.i78.i.dd_queued.exit84.i_crit_edge, %dd_queued.exit73.i.dd_queued.exit84.i_crit_edge
  %stats1.i80.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %stats1.i80.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stats1.i80.i, align 4
  %completed.i81.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 4, i32 3
  %call.i.i.i82.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i81.i, i32 noundef 4) #11
  %20 = ptrtoint ptr %completed.i81.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %completed.i81.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %tobool37.i = icmp ne i32 %19, %21
  %lnot.ext41.i = zext i1 %tobool37.i to i32
  %add42.i = add nuw nsw i32 %add.i, %lnot.ext41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add42.i)
  %cmp43.i = icmp ult i32 %add42.i, 2
  br i1 %cmp43.i, label %dd_queued.exit84.i.for.cond.preheader_crit_edge, label %for.cond.preheader.i

dd_queued.exit84.i.for.cond.preheader_crit_edge:  ; preds = %dd_queued.exit84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

for.cond.preheader.i:                             ; preds = %dd_queued.exit84.i
  %prio_aging_expire.i = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 9
  %arrayidx.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %prio_aging_expire.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prio_aging_expire.i, align 4
  %sub.i = sub i32 %6, %23
  %call47.i = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %5, ptr noundef %arrayidx.i, i32 noundef %sub.i) #11
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %dd_dispatch_prio_aged_requests.exit, label %for.cond.preheader.i.unlock_crit_edge

for.cond.preheader.i.unlock_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

dd_dispatch_prio_aged_requests.exit:              ; preds = %for.cond.preheader.i
  %arrayidx.1.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %prio_aging_expire.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %prio_aging_expire.i, align 4
  %sub.1.i = sub i32 %6, %25
  %call47.1.i = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %5, ptr noundef %arrayidx.1.i, i32 noundef %sub.1.i) #11
  %tobool.not = icmp eq ptr %call47.1.i, null
  br i1 %tobool.not, label %dd_dispatch_prio_aged_requests.exit.for.cond.preheader_crit_edge, label %dd_dispatch_prio_aged_requests.exit.unlock_crit_edge

dd_dispatch_prio_aged_requests.exit.unlock_crit_edge: ; preds = %dd_dispatch_prio_aged_requests.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

dd_dispatch_prio_aged_requests.exit.for.cond.preheader_crit_edge: ; preds = %dd_dispatch_prio_aged_requests.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %dd_dispatch_prio_aged_requests.exit.for.cond.preheader_crit_edge, %dd_queued.exit84.i.for.cond.preheader_crit_edge
  %dep_map.i20 = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10, i32 0, i32 0, i32 4
  %call1 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %5, ptr noundef %5, i32 noundef %6)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.lhs.false, label %for.cond.preheader.unlock_crit_edge

for.cond.preheader.unlock_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.cond:                                         ; preds = %dd_queued.exit
  %arrayidx.1 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1
  %call1.1 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %5, ptr noundef %arrayidx.1, i32 noundef %6)
  %tobool2.not.1 = icmp eq ptr %call1.1, null
  br i1 %tobool2.not.1, label %lor.lhs.false.1, label %for.cond.unlock_crit_edge

for.cond.unlock_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false.1:                                  ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i19.1 = icmp eq i32 %26, 0
  br i1 %tobool.not.i19.1, label %lor.lhs.false.1.dd_queued.exit.1_crit_edge, label %land.rhs.i23.1

lor.lhs.false.1.dd_queued.exit.1_crit_edge:       ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit.1

land.rhs.i23.1:                                   ; preds = %lor.lhs.false.1
  %call.i.i21.1 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i20, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.1)
  %cmp.not.i22.1 = icmp eq i32 %call.i.i21.1, 0
  br i1 %cmp.not.i22.1, label %do.end.i24.1, label %land.rhs.i23.1.dd_queued.exit.1_crit_edge, !prof !134

land.rhs.i23.1.dd_queued.exit.1_crit_edge:        ; preds = %land.rhs.i23.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit.1

do.end.i24.1:                                     ; preds = %land.rhs.i23.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit.1

dd_queued.exit.1:                                 ; preds = %do.end.i24.1, %land.rhs.i23.1.dd_queued.exit.1_crit_edge, %lor.lhs.false.1.dd_queued.exit.1_crit_edge
  %27 = ptrtoint ptr %stats1.i69.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stats1.i69.i, align 4
  %call.i.i.i25.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i70.i, i32 noundef 4) #11
  %29 = ptrtoint ptr %completed.i70.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %completed.i70.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %tobool4.not.1 = icmp eq i32 %28, %30
  br i1 %tobool4.not.1, label %for.cond.1, label %dd_queued.exit.1.unlock_crit_edge

dd_queued.exit.1.unlock_crit_edge:                ; preds = %dd_queued.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

for.cond.1:                                       ; preds = %dd_queued.exit.1
  %arrayidx.2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2
  %call1.2 = tail call fastcc ptr @__dd_dispatch_request(ptr noundef %5, ptr noundef %arrayidx.2, i32 noundef %6)
  %tobool2.not.2 = icmp eq ptr %call1.2, null
  br i1 %tobool2.not.2, label %lor.lhs.false.2, label %for.cond.1.unlock_crit_edge

for.cond.1.unlock_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false.2:                                  ; preds = %for.cond.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %31 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i19.2 = icmp eq i32 %31, 0
  br i1 %tobool.not.i19.2, label %lor.lhs.false.2.dd_queued.exit.2_crit_edge, label %land.rhs.i23.2

lor.lhs.false.2.dd_queued.exit.2_crit_edge:       ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit.2

land.rhs.i23.2:                                   ; preds = %lor.lhs.false.2
  %call.i.i21.2 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i20, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21.2)
  %cmp.not.i22.2 = icmp eq i32 %call.i.i21.2, 0
  br i1 %cmp.not.i22.2, label %do.end.i24.2, label %land.rhs.i23.2.dd_queued.exit.2_crit_edge, !prof !134

land.rhs.i23.2.dd_queued.exit.2_crit_edge:        ; preds = %land.rhs.i23.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit.2

do.end.i24.2:                                     ; preds = %land.rhs.i23.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit.2

dd_queued.exit.2:                                 ; preds = %do.end.i24.2, %land.rhs.i23.2.dd_queued.exit.2_crit_edge, %lor.lhs.false.2.dd_queued.exit.2_crit_edge
  %call.i.i.i25.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i81.i, i32 noundef 4) #11
  %32 = ptrtoint ptr %completed.i81.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %completed.i81.i, align 4
  br label %unlock

lor.lhs.false:                                    ; preds = %for.cond.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i19 = icmp eq i32 %34, 0
  br i1 %tobool.not.i19, label %lor.lhs.false.dd_queued.exit_crit_edge, label %land.rhs.i23

lor.lhs.false.dd_queued.exit_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit

land.rhs.i23:                                     ; preds = %lor.lhs.false
  %call.i.i21 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i20, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.not.i22 = icmp eq i32 %call.i.i21, 0
  br i1 %cmp.not.i22, label %do.end.i24, label %land.rhs.i23.dd_queued.exit_crit_edge, !prof !134

land.rhs.i23.dd_queued.exit_crit_edge:            ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit

do.end.i24:                                       ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit

dd_queued.exit:                                   ; preds = %do.end.i24, %land.rhs.i23.dd_queued.exit_crit_edge, %lor.lhs.false.dd_queued.exit_crit_edge
  %35 = ptrtoint ptr %stats1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stats1.i.i, align 4
  %call.i.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i.i, i32 noundef 4) #11
  %37 = ptrtoint ptr %completed.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %completed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %tobool4.not = icmp eq i32 %36, %38
  br i1 %tobool4.not, label %for.cond, label %dd_queued.exit.unlock_crit_edge

dd_queued.exit.unlock_crit_edge:                  ; preds = %dd_queued.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

unlock:                                           ; preds = %dd_queued.exit.unlock_crit_edge, %dd_queued.exit.2, %for.cond.1.unlock_crit_edge, %dd_queued.exit.1.unlock_crit_edge, %for.cond.unlock_crit_edge, %for.cond.preheader.unlock_crit_edge, %dd_dispatch_prio_aged_requests.exit.unlock_crit_edge, %for.cond.preheader.i.unlock_crit_edge
  %rq.1 = phi ptr [ %call47.1.i, %dd_dispatch_prio_aged_requests.exit.unlock_crit_edge ], [ %call47.i, %for.cond.preheader.i.unlock_crit_edge ], [ %call1, %for.cond.preheader.unlock_crit_edge ], [ null, %dd_queued.exit.unlock_crit_edge ], [ %call1.1, %for.cond.unlock_crit_edge ], [ null, %dd_queued.exit.1.unlock_crit_edge ], [ %call1.2, %for.cond.1.unlock_crit_edge ], [ null, %dd_queued.exit.2 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret ptr %rq.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dd_has_work(ptr nocapture noundef readonly %hctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i.i = icmp eq ptr %7, %5
  br i1 %cmp.i.not.i.i, label %list_empty_careful.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %dd_has_work_for_prio.exit
  %arrayidx.1 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i.i.1 = icmp eq ptr %9, %arrayidx.1
  br i1 %cmp.i.not.i.i.1, label %list_empty_careful.exit.i.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

list_empty_careful.exit.i.1:                      ; preds = %for.cond
  %prev.i.i.1 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %11, %arrayidx.1
  br i1 %cmp.i.not.i.1, label %lor.lhs.false.i.1, label %list_empty_careful.exit.i.1.cleanup_crit_edge

list_empty_careful.exit.i.1.cleanup_crit_edge:    ; preds = %list_empty_careful.exit.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.1:                                ; preds = %list_empty_careful.exit.i.1
  %fifo_list.i.1 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %fifo_list.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %fifo_list.i.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i9.i.1 = icmp eq ptr %13, %fifo_list.i.1
  br i1 %cmp.i.not.i9.i.1, label %list_empty_careful.exit14.i.1, label %lor.lhs.false.i.1.cleanup_crit_edge

lor.lhs.false.i.1.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

list_empty_careful.exit14.i.1:                    ; preds = %lor.lhs.false.i.1
  %prev.i10.i.1 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i10.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i10.i.1, align 4
  %cmp.i11.not.i.1 = icmp eq ptr %15, %fifo_list.i.1
  br i1 %cmp.i11.not.i.1, label %lor.rhs.i.1, label %list_empty_careful.exit14.i.1.cleanup_crit_edge

list_empty_careful.exit14.i.1.cleanup_crit_edge:  ; preds = %list_empty_careful.exit14.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i.1:                                      ; preds = %list_empty_careful.exit14.i.1
  %arrayidx4.i.1 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx4.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx4.i.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i15.i.1 = icmp eq ptr %17, %arrayidx4.i.1
  br i1 %cmp.i.not.i15.i.1, label %dd_has_work_for_prio.exit.1, label %lor.rhs.i.1.cleanup_crit_edge

lor.rhs.i.1.cleanup_crit_edge:                    ; preds = %lor.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dd_has_work_for_prio.exit.1:                      ; preds = %lor.rhs.i.1
  %prev.i16.i.1 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i16.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i16.i.1, align 4
  %cmp.i17.i.not.1 = icmp eq ptr %19, %arrayidx4.i.1
  br i1 %cmp.i17.i.not.1, label %for.cond.1, label %dd_has_work_for_prio.exit.1.cleanup_crit_edge

dd_has_work_for_prio.exit.1.cleanup_crit_edge:    ; preds = %dd_has_work_for_prio.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.1:                                       ; preds = %dd_has_work_for_prio.exit.1
  %arrayidx.2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i.i.2 = icmp eq ptr %21, %arrayidx.2
  br i1 %cmp.i.not.i.i.2, label %list_empty_careful.exit.i.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

list_empty_careful.exit.i.2:                      ; preds = %for.cond.1
  %prev.i.i.2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %23, %arrayidx.2
  br i1 %cmp.i.not.i.2, label %lor.lhs.false.i.2, label %list_empty_careful.exit.i.2.cleanup_crit_edge

list_empty_careful.exit.i.2.cleanup_crit_edge:    ; preds = %list_empty_careful.exit.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.2:                                ; preds = %list_empty_careful.exit.i.2
  %fifo_list.i.2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %fifo_list.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %fifo_list.i.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i9.i.2 = icmp eq ptr %25, %fifo_list.i.2
  br i1 %cmp.i.not.i9.i.2, label %list_empty_careful.exit14.i.2, label %lor.lhs.false.i.2.cleanup_crit_edge

lor.lhs.false.i.2.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

list_empty_careful.exit14.i.2:                    ; preds = %lor.lhs.false.i.2
  %prev.i10.i.2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i10.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i10.i.2, align 4
  %cmp.i11.not.i.2 = icmp eq ptr %27, %fifo_list.i.2
  br i1 %cmp.i11.not.i.2, label %lor.rhs.i.2, label %list_empty_careful.exit14.i.2.cleanup_crit_edge

list_empty_careful.exit14.i.2.cleanup_crit_edge:  ; preds = %list_empty_careful.exit14.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i.2:                                      ; preds = %list_empty_careful.exit14.i.2
  %arrayidx4.i.2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx4.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx4.i.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i15.i.2 = icmp eq ptr %29, %arrayidx4.i.2
  br i1 %cmp.i.not.i15.i.2, label %dd_has_work_for_prio.exit.2, label %lor.rhs.i.2.cleanup_crit_edge

lor.rhs.i.2.cleanup_crit_edge:                    ; preds = %lor.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dd_has_work_for_prio.exit.2:                      ; preds = %lor.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i16.i.2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i16.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i16.i.2, align 4
  %cmp.i17.i.not.2 = icmp ne ptr %31, %arrayidx4.i.2
  br label %cleanup

list_empty_careful.exit.i:                        ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %33, %5
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %list_empty_careful.exit.i.cleanup_crit_edge

list_empty_careful.exit.i.cleanup_crit_edge:      ; preds = %list_empty_careful.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %list_empty_careful.exit.i
  %fifo_list.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %fifo_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %fifo_list.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i9.i = icmp eq ptr %35, %fifo_list.i
  br i1 %cmp.i.not.i9.i, label %list_empty_careful.exit14.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

list_empty_careful.exit14.i:                      ; preds = %lor.lhs.false.i
  %prev.i10.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i10.i, align 4
  %cmp.i11.not.i = icmp eq ptr %37, %fifo_list.i
  br i1 %cmp.i11.not.i, label %lor.rhs.i, label %list_empty_careful.exit14.i.cleanup_crit_edge

list_empty_careful.exit14.i.cleanup_crit_edge:    ; preds = %list_empty_careful.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.rhs.i:                                        ; preds = %list_empty_careful.exit14.i
  %arrayidx4.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %arrayidx4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !137
  %cmp.i.not.i15.i = icmp eq ptr %39, %arrayidx4.i
  br i1 %cmp.i.not.i15.i, label %dd_has_work_for_prio.exit, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

dd_has_work_for_prio.exit:                        ; preds = %lor.rhs.i
  %prev.i16.i = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 0, i32 2, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i16.i, align 4
  %cmp.i17.i.not = icmp eq ptr %41, %arrayidx4.i
  br i1 %cmp.i17.i.not, label %for.cond, label %dd_has_work_for_prio.exit.cleanup_crit_edge

dd_has_work_for_prio.exit.cleanup_crit_edge:      ; preds = %dd_has_work_for_prio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %dd_has_work_for_prio.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge, %list_empty_careful.exit14.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %list_empty_careful.exit.i.cleanup_crit_edge, %dd_has_work_for_prio.exit.2, %lor.rhs.i.2.cleanup_crit_edge, %list_empty_careful.exit14.i.2.cleanup_crit_edge, %lor.lhs.false.i.2.cleanup_crit_edge, %list_empty_careful.exit.i.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %dd_has_work_for_prio.exit.1.cleanup_crit_edge, %lor.rhs.i.1.cleanup_crit_edge, %list_empty_careful.exit14.i.1.cleanup_crit_edge, %lor.lhs.false.i.1.cleanup_crit_edge, %list_empty_careful.exit.i.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %lor.rhs.i.cleanup_crit_edge ], [ true, %lor.lhs.false.i.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ true, %list_empty_careful.exit.i.cleanup_crit_edge ], [ true, %list_empty_careful.exit14.i.cleanup_crit_edge ], [ true, %dd_has_work_for_prio.exit.cleanup_crit_edge ], [ true, %for.cond.cleanup_crit_edge ], [ true, %list_empty_careful.exit.i.1.cleanup_crit_edge ], [ true, %lor.lhs.false.i.1.cleanup_crit_edge ], [ true, %list_empty_careful.exit14.i.1.cleanup_crit_edge ], [ true, %lor.rhs.i.1.cleanup_crit_edge ], [ true, %dd_has_work_for_prio.exit.1.cleanup_crit_edge ], [ true, %for.cond.1.cleanup_crit_edge ], [ true, %list_empty_careful.exit.i.2.cleanup_crit_edge ], [ true, %lor.lhs.false.i.2.cleanup_crit_edge ], [ true, %list_empty_careful.exit14.i.2.cleanup_crit_edge ], [ true, %lor.rhs.i.2.cleanup_crit_edge ], [ %cmp.i17.i.not.2, %dd_has_work_for_prio.exit.2 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_rb_former_request(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_rb_latter_request(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elevator_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_min_shallow_depth(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_sched_try_merge(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elv_rb_find(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @elv_bio_merge_ok(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_rb_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_rb_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deadline_remove_request(ptr noundef %q, ptr noundef %per_prio, ptr noundef %rq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %0, ptr %0, align 4
  %prev.i3.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 12, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %0, ptr %prev.i3.i, align 4
  %9 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 29
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %12 = ptrtoint ptr %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp = icmp eq i32 %11, %12
  br i1 %cmp, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %13 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %14, 1
  %arrayidx.i = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 3, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %16, %rq
  br i1 %cmp.i, label %if.then.i, label %if.then.deadline_del_rq_rb.exit_crit_edge

if.then.deadline_del_rq_rb.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %deadline_del_rq_rb.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i12 = tail call ptr @rb_next(ptr noundef %9) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i12, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i12, i32 -136
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  br label %deadline_del_rq_rb.exit

deadline_del_rq_rb.exit:                          ; preds = %if.then.i, %if.then.deadline_del_rq_rb.exit_crit_edge
  %18 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i.i = and i32 %19, 1
  %arrayidx.i.i = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 1, i32 %and.i.i.i
  tail call void @elv_rb_del(ptr noundef %arrayidx.i.i, ptr noundef %rq) #11
  br label %if.end

if.end:                                           ; preds = %deadline_del_rq_rb.exit, %list_del_init.exit.if.end_crit_edge
  tail call void @elv_rqhash_del(ptr noundef %q, ptr noundef %rq) #11
  %20 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q, align 8
  %cmp1 = icmp eq ptr %21, %rq
  br i1 %cmp1, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %q, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_rqhash_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_sched_mark_restart_hctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_req_zone_write_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_sched_try_insert_merge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_rq_insert(ptr noundef %rq) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 1), ptr blockaddress(@trace_block_rq_insert, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !138

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !139
  %call42 = tail call i32 @__traceiter_block_rq_insert(ptr noundef null, ptr noundef %rq) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_rq_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_block_rq_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 195, ptr noundef nonnull @.str.10) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !142
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
declare dso_local void @elv_rqhash_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dd_dispatch_request(ptr noundef %dd, ptr noundef %per_prio, i32 noundef %latest_start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !134

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 374, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %per_prio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %per_prio, align 4
  %cmp.i.not = icmp eq ptr %2, %per_prio
  br i1 %cmp.i.not, label %if.end32, label %if.then26

if.then26:                                        ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %2, i32 -56
  %3 = getelementptr i8, ptr %2, i32 112
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %conv.i172 = trunc i64 %5 to i32
  %cmd_flags.i = getelementptr i8, ptr %2, i32 -44
  %6 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags.i, align 4
  %and.i.i = and i32 %7, 1
  %arrayidx.i = getelementptr %struct.deadline_data, ptr %dd, i32 0, i32 4, i32 %and.i.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %sub.neg.i = sub i32 %latest_start, %conv.i172
  %sub2.i = add i32 %sub.neg.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i)
  %cmp.i173 = icmp slt i32 %sub2.i, 0
  br i1 %cmp.i173, label %if.then26.cleanup_crit_edge, label %if.end31

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end31:                                         ; preds = %if.then26
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end31.list_del_init.exit_crit_edge

if.end31.list_del_init.exit_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end31.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %2, ptr %prev.i3.i, align 4
  br label %done

if.end32:                                         ; preds = %if.end
  %last_dir = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 1
  %18 = ptrtoint ptr %last_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_dir, align 4
  %call33 = tail call fastcc ptr @deadline_next_request(ptr noundef %dd, ptr noundef %per_prio, i32 noundef %19)
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.if.end37_crit_edge, label %land.lhs.true

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end32
  %batching = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 2
  %20 = ptrtoint ptr %batching to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %batching, align 4
  %fifo_batch = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 5
  %22 = ptrtoint ptr %fifo_batch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp35 = icmp ult i32 %21, %23
  br i1 %cmp35, label %land.lhs.true.dispatch_request_crit_edge, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.lhs.true.dispatch_request_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %dispatch_request

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  %fifo_list = getelementptr inbounds %struct.dd_per_prio, ptr %per_prio, i32 0, i32 2
  %24 = ptrtoint ptr %fifo_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %fifo_list, align 4
  %cmp.i174.not = icmp eq ptr %25, %fifo_list
  br i1 %cmp.i174.not, label %if.end70, label %do.end44

do.end44:                                         ; preds = %if.end37
  %sort_list = getelementptr inbounds %struct.dd_per_prio, ptr %per_prio, i32 0, i32 1
  %26 = ptrtoint ptr %sort_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %sort_list, align 4
  %cmp47 = icmp eq ptr %27, null
  br i1 %cmp47, label %do.body55, label %do.end63, !prof !134

do.body55:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/mq-deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 399, 0\0A.popsection", ""() #11, !srcloc !143
  unreachable

do.end63:                                         ; preds = %do.end44
  %call64 = tail call fastcc ptr @deadline_fifo_request(ptr noundef %dd, ptr noundef %per_prio, i32 noundef 1)
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %do.end63.dispatch_find_request_crit_edge, label %land.lhs.true66

do.end63.dispatch_find_request_crit_edge:         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %dispatch_find_request

land.lhs.true66:                                  ; preds = %do.end63
  %starved = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 3
  %28 = ptrtoint ptr %starved to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %starved, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %starved, align 4
  %writes_starved = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 6
  %30 = ptrtoint ptr %writes_starved to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %writes_starved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp67.not = icmp ult i32 %29, %31
  br i1 %cmp67.not, label %land.lhs.true66.dispatch_find_request_crit_edge, label %land.lhs.true66.do.end79_crit_edge

land.lhs.true66.do.end79_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

land.lhs.true66.dispatch_find_request_crit_edge:  ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %dispatch_find_request

if.end70:                                         ; preds = %if.end37
  %arrayidx72 = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx72, align 4
  %cmp.i176.not = icmp eq ptr %33, %arrayidx72
  br i1 %cmp.i176.not, label %if.end70.cleanup_crit_edge, label %if.end70.do.end79_crit_edge

if.end70.do.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end79

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end79:                                         ; preds = %if.end70.do.end79_crit_edge, %land.lhs.true66.do.end79_crit_edge
  %arrayidx82 = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx82, align 4
  %cmp84 = icmp eq ptr %35, null
  br i1 %cmp84, label %do.body92, label %do.end100, !prof !134

do.body92:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22block/mq-deadline.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !144
  unreachable

do.end100:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %starved101 = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 3
  %36 = ptrtoint ptr %starved101 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %starved101, align 4
  br label %dispatch_find_request

dispatch_find_request:                            ; preds = %do.end100, %land.lhs.true66.dispatch_find_request_crit_edge, %do.end63.dispatch_find_request_crit_edge
  %data_dir.0 = phi i32 [ 1, %do.end100 ], [ 0, %land.lhs.true66.dispatch_find_request_crit_edge ], [ 0, %do.end63.dispatch_find_request_crit_edge ]
  %call103 = tail call fastcc ptr @deadline_next_request(ptr noundef %dd, ptr noundef %per_prio, i32 noundef %data_dir.0)
  %arrayidx.i178 = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 2, i32 %data_dir.0
  %37 = ptrtoint ptr %arrayidx.i178 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i178, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %40 = getelementptr i8, ptr %38, i32 112
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %40, align 8
  %conv.i179 = trunc i64 %42 to i32
  %43 = xor i32 %39, -1
  %44 = add i32 %conv.i179, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool105.not = icmp slt i32 %44, 0
  %tobool106.not = icmp eq ptr %call103, null
  %or.cond = select i1 %tobool105.not, i1 true, i1 %tobool106.not
  br i1 %or.cond, label %if.end109, label %dispatch_find_request.if.end112_crit_edge

dispatch_find_request.if.end112_crit_edge:        ; preds = %dispatch_find_request
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.end109:                                        ; preds = %dispatch_find_request
  %call108 = tail call fastcc ptr @deadline_fifo_request(ptr noundef %dd, ptr noundef %per_prio, i32 noundef %data_dir.0)
  %tobool110.not = icmp eq ptr %call108, null
  br i1 %tobool110.not, label %if.end109.cleanup_crit_edge, label %if.end109.if.end112_crit_edge

if.end109.if.end112_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end112:                                        ; preds = %if.end109.if.end112_crit_edge, %dispatch_find_request.if.end112_crit_edge
  %rq.0194 = phi ptr [ %call108, %if.end109.if.end112_crit_edge ], [ %call103, %dispatch_find_request.if.end112_crit_edge ]
  %45 = ptrtoint ptr %last_dir to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %data_dir.0, ptr %last_dir, align 4
  %batching114 = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 2
  %46 = ptrtoint ptr %batching114 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %batching114, align 4
  br label %dispatch_request

dispatch_request:                                 ; preds = %if.end112, %land.lhs.true.dispatch_request_crit_edge
  %rq.1 = phi ptr [ %call33, %land.lhs.true.dispatch_request_crit_edge ], [ %rq.0194, %if.end112 ]
  %47 = getelementptr inbounds %struct.request, ptr %rq.1, i32 0, i32 31
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %47, align 8
  %conv.i180 = trunc i64 %49 to i32
  %cmd_flags.i181 = getelementptr inbounds %struct.request, ptr %rq.1, i32 0, i32 3
  %50 = ptrtoint ptr %cmd_flags.i181 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cmd_flags.i181, align 4
  %and.i.i182 = and i32 %51, 1
  %arrayidx.i183 = getelementptr %struct.deadline_data, ptr %dd, i32 0, i32 4, i32 %and.i.i182
  %52 = ptrtoint ptr %arrayidx.i183 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i183, align 4
  %sub.neg.i184 = sub i32 %latest_start, %conv.i180
  %sub2.i185 = add i32 %sub.neg.i184, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i185)
  %cmp.i186 = icmp slt i32 %sub2.i185, 0
  br i1 %cmp.i186, label %dispatch_request.cleanup_crit_edge, label %if.end117

dispatch_request.cleanup_crit_edge:               ; preds = %dispatch_request
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end117:                                        ; preds = %dispatch_request
  call void @__sanitizer_cov_trace_pc() #13
  %batching118 = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 2
  %54 = ptrtoint ptr %batching118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %batching118, align 4
  %inc119 = add i32 %55, 1
  store i32 %inc119, ptr %batching118, align 4
  %56 = ptrtoint ptr %cmd_flags.i181 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmd_flags.i181, align 4
  %and.i.i188 = and i32 %57, 1
  %58 = getelementptr inbounds %struct.request, ptr %rq.1, i32 0, i32 29
  %call.i.i189 = tail call ptr @rb_next(ptr noundef %58) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i189, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i189, i32 -136
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %arrayidx.i190 = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 3, i32 %and.i.i188
  %59 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i.i, ptr %arrayidx.i190, align 4
  %60 = ptrtoint ptr %rq.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rq.1, align 8
  tail call fastcc void @deadline_remove_request(ptr noundef %61, ptr noundef %per_prio, ptr noundef nonnull %rq.1) #11
  br label %done

done:                                             ; preds = %if.end117, %list_del_init.exit
  %rq.2 = phi ptr [ %rq.1, %if.end117 ], [ %add.ptr, %list_del_init.exit ]
  %ioprio.i.i = getelementptr inbounds %struct.request, ptr %rq.2, i32 0, i32 24
  %62 = ptrtoint ptr %ioprio.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ioprio.i.i, align 2
  %64 = lshr i16 %63, 13
  %conv1.i = zext i16 %64 to i32
  %arrayidx121 = getelementptr [4 x i32], ptr @ioprio_class_to_prio, i32 0, i32 %conv1.i
  %65 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx121, align 4
  %dispatched = getelementptr [3 x %struct.dd_per_prio], ptr %dd, i32 0, i32 %66, i32 4, i32 2
  %67 = ptrtoint ptr %dispatched to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dispatched, align 4
  %inc124 = add i32 %68, 1
  store i32 %inc124, ptr %dispatched, align 4
  %call.i191 = tail call zeroext i1 @blk_req_needs_zone_write_lock(ptr noundef %rq.2) #11
  br i1 %call.i191, label %if.then.i, label %done.blk_req_zone_write_lock.exit_crit_edge

done.blk_req_zone_write_lock.exit_crit_edge:      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_req_zone_write_lock.exit

if.then.i:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__blk_req_zone_write_lock(ptr noundef %rq.2) #11
  br label %blk_req_zone_write_lock.exit

blk_req_zone_write_lock.exit:                     ; preds = %if.then.i, %done.blk_req_zone_write_lock.exit_crit_edge
  %rq_flags = getelementptr inbounds %struct.request, ptr %rq.2, i32 0, i32 4
  %69 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rq_flags, align 8
  %or = or i32 %70, 2
  store i32 %or, ptr %rq_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %blk_req_zone_write_lock.exit, %dispatch_request.cleanup_crit_edge, %if.end109.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %retval.0 = phi ptr [ %rq.2, %blk_req_zone_write_lock.exit ], [ null, %if.then26.cleanup_crit_edge ], [ null, %if.end70.cleanup_crit_edge ], [ null, %if.end109.cleanup_crit_edge ], [ null, %dispatch_request.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @deadline_next_request(ptr noundef %dd, ptr nocapture noundef readonly %per_prio, i32 noundef %data_dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 3, i32 %data_dir
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_dir)
  %cmp = icmp eq i32 %data_dir, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %4 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %while.body.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %lor.lhs.false
  %zone_lock = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 11
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %zone_lock) #11
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.preheader
  %rq.028 = phi ptr [ %add.ptr.i, %if.end12.while.body_crit_edge ], [ %1, %while.body.preheader ]
  %call.i = tail call zeroext i1 @blk_req_needs_zone_write_lock(ptr noundef nonnull %rq.028) #11
  br i1 %call.i, label %if.end.i, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i:                                         ; preds = %while.body
  %6 = ptrtoint ptr %rq.028 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rq.028, align 8
  %seq_zones_wlock.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %seq_zones_wlock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seq_zones_wlock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.while.end_crit_edge, label %land.rhs.i.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.i.i:                                     ; preds = %if.end.i
  %zoned.i.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 27
  %10 = ptrtoint ptr %zoned.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zoned.i.i.i.i.i.i, align 4
  %call.off.i.i.i.i.i = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i.i)
  %switch.i.i.i.i.i = icmp ult i32 %call.off.i.i.i.i.i, 2
  br i1 %switch.i.i.i.i.i, label %cond.end10.i.i.i.i, label %land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge

land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_req_can_dispatch_to_zone.exit

cond.end10.i.i.i.i:                               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %__sector.i.i.i.i = getelementptr inbounds %struct.request, ptr %rq.028, i32 0, i32 9
  %12 = ptrtoint ptr %__sector.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %__sector.i.i.i.i, align 8
  %chunk_sectors.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 37, i32 5
  %14 = ptrtoint ptr %chunk_sectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chunk_sectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %15, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #11, !range !145
  %sub.i.op.i.i.i.i.i = xor i32 %16, 31
  %sub.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i.i
  %sh_prom.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  %shr.i.i.i.i = lshr i64 %13, %sh_prom.i.i.i.i
  %conv12.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %blk_req_can_dispatch_to_zone.exit

blk_req_can_dispatch_to_zone.exit:                ; preds = %cond.end10.i.i.i.i, %land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv12.i.i.i.i, %cond.end10.i.i.i.i ], [ 0, %land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %retval.0.i.i.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %9, i32 %div3.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 31
  %19 = shl nuw i32 1, %and.i.i.i
  %20 = and i32 %19, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.i.i = icmp eq i32 %20, 0
  br i1 %tobool4.i.i, label %blk_req_can_dispatch_to_zone.exit.while.end_crit_edge, label %if.end12

blk_req_can_dispatch_to_zone.exit.while.end_crit_edge: ; preds = %blk_req_can_dispatch_to_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end12:                                         ; preds = %blk_req_can_dispatch_to_zone.exit
  %21 = getelementptr inbounds %struct.request, ptr %rq.028, i32 0, i32 29
  %call.i24 = tail call ptr @rb_next(ptr noundef %21) #11
  %tobool.not.i = icmp eq ptr %call.i24, null
  %add.ptr.i = getelementptr i8, ptr %call.i24, i32 -136
  %tobool9.not32 = icmp eq ptr %add.ptr.i, null
  %tobool9.not = or i1 %tobool.not.i, %tobool9.not32
  br i1 %tobool9.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %blk_req_can_dispatch_to_zone.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge, %while.body.while.end_crit_edge
  %rq.0.lcssa.ph = phi ptr [ null, %if.end12.while.end_crit_edge ], [ %rq.028, %blk_req_can_dispatch_to_zone.exit.while.end_crit_edge ], [ %rq.028, %while.body.while.end_crit_edge ], [ %rq.028, %if.end.i.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zone_lock, i32 noundef %call6) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rq.0.lcssa.ph, %while.end ], [ null, %entry.cleanup_crit_edge ], [ %1, %lor.lhs.false.cleanup_crit_edge ], [ %1, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @deadline_fifo_request(ptr noundef %dd, ptr noundef %per_prio, i32 noundef %data_dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 2, i32 %data_dir
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %1, %arrayidx
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_dir)
  %cmp = icmp eq i32 %data_dir, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 27
  %4 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %do.body6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body6:                                         ; preds = %lor.lhs.false
  %zone_lock = getelementptr inbounds %struct.deadline_data, ptr %dd, i32 0, i32 11
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %zone_lock) #11
  %arrayidx15 = getelementptr %struct.dd_per_prio, ptr %per_prio, i32 0, i32 2, i32 1
  br label %for.cond

for.cond:                                         ; preds = %blk_req_can_dispatch_to_zone.exit.for.cond_crit_edge, %do.body6
  %.pn.in = phi ptr [ %arrayidx15, %do.body6 ], [ %.pn, %blk_req_can_dispatch_to_zone.exit.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp21.not = icmp eq ptr %.pn, %arrayidx15
  br i1 %cmp21.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body:                                         ; preds = %for.cond
  %rq.0 = getelementptr i8, ptr %.pn, i32 -56
  %call.i = tail call zeroext i1 @blk_req_needs_zone_write_lock(ptr noundef %rq.0) #11
  br i1 %call.i, label %if.end.i, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i:                                         ; preds = %for.body
  %7 = ptrtoint ptr %rq.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rq.0, align 8
  %seq_zones_wlock.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 41
  %9 = ptrtoint ptr %seq_zones_wlock.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %seq_zones_wlock.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.out_crit_edge, label %land.rhs.i.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.rhs.i.i:                                     ; preds = %if.end.i
  %zoned.i.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 37, i32 27
  %11 = ptrtoint ptr %zoned.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %zoned.i.i.i.i.i.i, align 4
  %call.off.i.i.i.i.i = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i.i.i.i)
  %switch.i.i.i.i.i = icmp ult i32 %call.off.i.i.i.i.i, 2
  br i1 %switch.i.i.i.i.i, label %cond.end10.i.i.i.i, label %land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge

land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %blk_req_can_dispatch_to_zone.exit

cond.end10.i.i.i.i:                               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %__sector.i.i.i.i = getelementptr i8, ptr %.pn, i32 -16
  %13 = ptrtoint ptr %__sector.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %__sector.i.i.i.i, align 8
  %chunk_sectors.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 37, i32 5
  %15 = ptrtoint ptr %chunk_sectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chunk_sectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %16, 0
  %17 = tail call i32 @llvm.ctlz.i32(i32 %16, i1 true) #11, !range !145
  %sub.i.op.i.i.i.i.i = xor i32 %17, 31
  %sub.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i.i.i
  %sh_prom.i.i.i.i = zext i32 %sub.i.i.i.i.i to i64
  %shr.i.i.i.i = lshr i64 %14, %sh_prom.i.i.i.i
  %conv12.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  br label %blk_req_can_dispatch_to_zone.exit

blk_req_can_dispatch_to_zone.exit:                ; preds = %cond.end10.i.i.i.i, %land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv12.i.i.i.i, %cond.end10.i.i.i.i ], [ 0, %land.rhs.i.i.blk_req_can_dispatch_to_zone.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %retval.0.i.i.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %10, i32 %div3.i.i.i
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 31
  %20 = shl nuw i32 1, %and.i.i.i
  %21 = and i32 %20, %19
  %tobool4.i.i = icmp eq i32 %21, 0
  br i1 %tobool4.i.i, label %blk_req_can_dispatch_to_zone.exit.out_crit_edge, label %blk_req_can_dispatch_to_zone.exit.for.cond_crit_edge

blk_req_can_dispatch_to_zone.exit.for.cond_crit_edge: ; preds = %blk_req_can_dispatch_to_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

blk_req_can_dispatch_to_zone.exit.out_crit_edge:  ; preds = %blk_req_can_dispatch_to_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %blk_req_can_dispatch_to_zone.exit.out_crit_edge, %if.end.i.out_crit_edge, %for.body.out_crit_edge, %for.cond.out_crit_edge
  %rq.1 = phi ptr [ %rq.0, %blk_req_can_dispatch_to_zone.exit.out_crit_edge ], [ null, %for.cond.out_crit_edge ], [ %rq.0, %for.body.out_crit_edge ], [ %rq.0, %if.end.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %zone_lock, i32 noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rq.1, %out ], [ null, %entry.cleanup_crit_edge ], [ %add.ptr, %lor.lhs.false.cleanup_crit_edge ], [ %add.ptr, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_req_needs_zone_write_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__blk_req_zone_write_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_read_expire_show(ptr nocapture noundef readonly %e, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %fifo_expire = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fifo_expire to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_expire, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.19, i32 noundef %call) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_read_expire_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %__data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__data) #11
  %2 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %__data, align 4, !annotation !146
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %__data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %__data, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.then2, %if.end.if.else.i_crit_edge
  %6 = phi i32 [ %4, %if.end.if.else.i_crit_edge ], [ 0, %if.then2 ]
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %6) #11
  %fifo_expire = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %fifo_expire to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %fifo_expire, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_write_expire_show(ptr nocapture noundef readonly %e, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr %struct.deadline_data, ptr %1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.19, i32 noundef %call) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_write_expire_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %__data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__data) #11
  %2 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %__data, align 4, !annotation !146
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %__data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %__data, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.then2, %if.end.if.else.i_crit_edge
  %6 = phi i32 [ %4, %if.end.if.else.i_crit_edge ], [ 0, %if.then2 ]
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %6) #11
  %arrayidx = getelementptr %struct.deadline_data, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_writes_starved_show(ptr nocapture noundef readonly %e, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %writes_starved = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %writes_starved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writes_starved, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.19, i32 noundef %3) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_writes_starved_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %__data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__data) #11
  %2 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %__data, align 4, !annotation !146
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %__data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__data, align 4
  %writes_starved = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %writes_starved to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %writes_starved, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_front_merges_show(ptr nocapture noundef readonly %e, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %front_merges = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %front_merges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %front_merges, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.19, i32 noundef %3) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_front_merges_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %__data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__data) #11
  %2 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %__data, align 4, !annotation !146
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %__data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %__data, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp3 = icmp ugt i32 %4, 1
  br i1 %cmp3, label %if.then4, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %__data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else.if.end6_crit_edge, %if.then2
  %7 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %__data, align 4
  %front_merges = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %front_merges to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %front_merges, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_async_depth_show(ptr nocapture noundef readonly %e, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %async_depth = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %async_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %async_depth, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.19, i32 noundef %3) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_async_depth_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %__data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__data) #11
  %2 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %__data, align 4, !annotation !146
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %__data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp1 = icmp slt i32 %4, 1
  br i1 %cmp1, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %__data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %6 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data, align 4
  %async_depth = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %async_depth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %async_depth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_fifo_batch_show(ptr nocapture noundef readonly %e, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %fifo_batch = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %fifo_batch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_batch, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.19, i32 noundef %3) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_fifo_batch_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %__data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__data) #11
  %2 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %__data, align 4, !annotation !146
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %__data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %__data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %6 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %__data, align 4
  %fifo_batch = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %fifo_batch to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %fifo_batch, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__data) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_prio_aging_expire_show(ptr nocapture noundef readonly %e, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %prio_aging_expire = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %prio_aging_expire to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prio_aging_expire, align 4
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %3) #11
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.19, i32 noundef %call) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_prio_aging_expire_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %__data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__data) #11
  %2 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %__data, align 4, !annotation !146
  %call = call i32 @kstrtoint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %__data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %__data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %__data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %__data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %__data, align 4
  br label %if.else.i

if.else.i:                                        ; preds = %if.then2, %if.end.if.else.i_crit_edge
  %6 = phi i32 [ %4, %if.end.if.else.i_crit_edge ], [ 0, %if.then2 ]
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %6) #11
  %prio_aging_expire = getelementptr inbounds %struct.deadline_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %prio_aging_expire to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %prio_aging_expire, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__data) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_read0_next_rq_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %next_rq = getelementptr inbounds %struct.dd_per_prio, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %next_rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_rq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_write0_next_rq_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %arrayidx2 = getelementptr %struct.dd_per_prio, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_read1_next_rq_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %next_rq = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %next_rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_rq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_write1_next_rq_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %arrayidx2 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 1, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_read2_next_rq_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %next_rq = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %next_rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next_rq, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_write2_next_rq_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %arrayidx2 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 2, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @__blk_mq_debugfs_rq_show(ptr noundef %m, ptr noundef nonnull %5) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_batching_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %batching = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %batching to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %batching, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deadline_starved_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %starved = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %starved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %starved, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dd_async_depth_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %async_depth = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %async_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %async_depth, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dd_owned_by_driver_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.dd_owned_by_driver.exit_crit_edge, label %land.rhs.i

entry.dd_owned_by_driver.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_owned_by_driver.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.dd_owned_by_driver.exit_crit_edge, !prof !134

land.rhs.i.dd_owned_by_driver.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_owned_by_driver.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1028, i32 noundef 9, ptr noundef null) #11
  br label %dd_owned_by_driver.exit

dd_owned_by_driver.exit:                          ; preds = %do.end.i, %land.rhs.i.dd_owned_by_driver.exit_crit_edge, %entry.dd_owned_by_driver.exit_crit_edge
  %dispatched.i = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %dispatched.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dispatched.i, align 4
  %merged.i = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %merged.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %merged.i, align 4
  %completed.i = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 0, i32 4, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i, i32 noundef 4) #11
  %9 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %completed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i8 = icmp eq i32 %11, 0
  br i1 %tobool.not.i8, label %dd_owned_by_driver.exit.dd_owned_by_driver.exit20_crit_edge, label %land.rhs.i12

dd_owned_by_driver.exit.dd_owned_by_driver.exit20_crit_edge: ; preds = %dd_owned_by_driver.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_owned_by_driver.exit20

land.rhs.i12:                                     ; preds = %dd_owned_by_driver.exit
  %dep_map.i9 = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i10 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i9, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp.not.i11 = icmp eq i32 %call.i.i10, 0
  br i1 %cmp.not.i11, label %do.end.i13, label %land.rhs.i12.dd_owned_by_driver.exit20_crit_edge, !prof !134

land.rhs.i12.dd_owned_by_driver.exit20_crit_edge: ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_owned_by_driver.exit20

do.end.i13:                                       ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1028, i32 noundef 9, ptr noundef null) #11
  br label %dd_owned_by_driver.exit20

dd_owned_by_driver.exit20:                        ; preds = %do.end.i13, %land.rhs.i12.dd_owned_by_driver.exit20_crit_edge, %dd_owned_by_driver.exit.dd_owned_by_driver.exit20_crit_edge
  %dispatched.i14 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 1, i32 4, i32 2
  %12 = ptrtoint ptr %dispatched.i14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dispatched.i14, align 4
  %merged.i15 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 1, i32 4, i32 1
  %14 = ptrtoint ptr %merged.i15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %merged.i15, align 4
  %completed.i17 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 1, i32 4, i32 3
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i17, i32 noundef 4) #11
  %16 = ptrtoint ptr %completed.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %completed.i17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %18 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i21 = icmp eq i32 %18, 0
  br i1 %tobool.not.i21, label %dd_owned_by_driver.exit20.dd_owned_by_driver.exit33_crit_edge, label %land.rhs.i25

dd_owned_by_driver.exit20.dd_owned_by_driver.exit33_crit_edge: ; preds = %dd_owned_by_driver.exit20
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_owned_by_driver.exit33

land.rhs.i25:                                     ; preds = %dd_owned_by_driver.exit20
  %dep_map.i22 = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i23 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i22, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %cmp.not.i24 = icmp eq i32 %call.i.i23, 0
  br i1 %cmp.not.i24, label %do.end.i26, label %land.rhs.i25.dd_owned_by_driver.exit33_crit_edge, !prof !134

land.rhs.i25.dd_owned_by_driver.exit33_crit_edge: ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_owned_by_driver.exit33

do.end.i26:                                       ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1028, i32 noundef 9, ptr noundef null) #11
  br label %dd_owned_by_driver.exit33

dd_owned_by_driver.exit33:                        ; preds = %do.end.i26, %land.rhs.i25.dd_owned_by_driver.exit33_crit_edge, %dd_owned_by_driver.exit20.dd_owned_by_driver.exit33_crit_edge
  %add.i16 = add i32 %15, %13
  %sub.i19 = sub i32 %add.i16, %17
  %add.i = add i32 %8, %6
  %sub.i = sub i32 %add.i, %10
  %dispatched.i27 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 2, i32 4, i32 2
  %19 = ptrtoint ptr %dispatched.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dispatched.i27, align 4
  %merged.i28 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 2, i32 4, i32 1
  %21 = ptrtoint ptr %merged.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %merged.i28, align 4
  %add.i29 = add i32 %22, %20
  %completed.i30 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 2, i32 4, i32 3
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i30, i32 noundef 4) #11
  %23 = ptrtoint ptr %completed.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %completed.i30, align 4
  %sub.i32 = sub i32 %add.i29, %24
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %sub.i, i32 noundef %sub.i19, i32 noundef %sub.i32) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dd_queued_show(ptr nocapture noundef readonly %data, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.dd_queued.exit_crit_edge, label %land.rhs.i

entry.dd_queued.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.dd_queued.exit_crit_edge, !prof !134

land.rhs.i.dd_queued.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit

dd_queued.exit:                                   ; preds = %do.end.i, %land.rhs.i.dd_queued.exit_crit_edge, %entry.dd_queued.exit_crit_edge
  %stats1.i = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 0, i32 4
  %5 = ptrtoint ptr %stats1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stats1.i, align 4
  %completed.i = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 0, i32 4, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %completed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %completed.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i8 = icmp eq i32 %9, 0
  br i1 %tobool.not.i8, label %dd_queued.exit.dd_queued.exit18_crit_edge, label %land.rhs.i12

dd_queued.exit.dd_queued.exit18_crit_edge:        ; preds = %dd_queued.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit18

land.rhs.i12:                                     ; preds = %dd_queued.exit
  %dep_map.i9 = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i10 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i9, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp.not.i11 = icmp eq i32 %call.i.i10, 0
  br i1 %cmp.not.i11, label %do.end.i13, label %land.rhs.i12.dd_queued.exit18_crit_edge, !prof !134

land.rhs.i12.dd_queued.exit18_crit_edge:          ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit18

do.end.i13:                                       ; preds = %land.rhs.i12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit18

dd_queued.exit18:                                 ; preds = %do.end.i13, %land.rhs.i12.dd_queued.exit18_crit_edge, %dd_queued.exit.dd_queued.exit18_crit_edge
  %stats1.i14 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %stats1.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats1.i14, align 4
  %completed.i15 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 1, i32 4, i32 3
  %call.i.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i15, i32 noundef 4) #11
  %12 = ptrtoint ptr %completed.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %completed.i15, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i19 = icmp eq i32 %14, 0
  br i1 %tobool.not.i19, label %dd_queued.exit18.dd_queued.exit29_crit_edge, label %land.rhs.i23

dd_queued.exit18.dd_queued.exit29_crit_edge:      ; preds = %dd_queued.exit18
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit29

land.rhs.i23:                                     ; preds = %dd_queued.exit18
  %dep_map.i20 = getelementptr inbounds %struct.deadline_data, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 4
  %call.i.i21 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i20, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i21)
  %cmp.not.i22 = icmp eq i32 %call.i.i21, 0
  br i1 %cmp.not.i22, label %do.end.i24, label %land.rhs.i23.dd_queued.exit29_crit_edge, !prof !134

land.rhs.i23.dd_queued.exit29_crit_edge:          ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #13
  br label %dd_queued.exit29

do.end.i24:                                       ; preds = %land.rhs.i23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %dd_queued.exit29

dd_queued.exit29:                                 ; preds = %do.end.i24, %land.rhs.i23.dd_queued.exit29_crit_edge, %dd_queued.exit18.dd_queued.exit29_crit_edge
  %sub.i17 = sub i32 %11, %13
  %sub.i = sub i32 %6, %8
  %stats1.i25 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 2, i32 4
  %15 = ptrtoint ptr %stats1.i25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stats1.i25, align 4
  %completed.i26 = getelementptr [3 x %struct.dd_per_prio], ptr %3, i32 0, i32 2, i32 4, i32 3
  %call.i.i.i27 = tail call zeroext i1 @__kasan_check_read(ptr noundef %completed.i26, i32 noundef 4) #11
  %17 = ptrtoint ptr %completed.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %completed.i26, align 4
  %sub.i28 = sub i32 %16, %18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %sub.i, i32 noundef %sub.i17, i32 noundef %sub.i28) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_read0_fifo_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %fifo_list = getelementptr inbounds %struct.dd_per_prio, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %fifo_list, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_read0_fifo_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_read0_fifo_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %fifo_list = getelementptr inbounds %struct.dd_per_prio, ptr %5, i32 0, i32 2
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %fifo_list, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_debugfs_rq_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_write0_fifo_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %arrayidx2 = getelementptr %struct.dd_per_prio, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx2, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_write0_fifo_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_write0_fifo_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %arrayidx2 = getelementptr %struct.dd_per_prio, ptr %5, i32 0, i32 2, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx2, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_read1_fifo_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %fifo_list = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %fifo_list, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_read1_fifo_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_read1_fifo_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %fifo_list = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %fifo_list, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_write1_fifo_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %arrayidx2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx2, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_write1_fifo_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_write1_fifo_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %arrayidx2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1, i32 2, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx2, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_read2_fifo_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %fifo_list = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %fifo_list, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_read2_fifo_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_read2_fifo_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %fifo_list = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %fifo_list, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_write2_fifo_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %arrayidx2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2, i32 1
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx2, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_write2_fifo_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_write2_fifo_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %arrayidx2 = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2, i32 2, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx2, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_mq_debugfs_rq_show(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_dispatch0_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %5, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_dispatch0_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_dispatch0_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %5, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_dispatch1_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_dispatch1_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_dispatch1_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_dispatch2_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx, i64 noundef %7) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deadline_dispatch2_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %lock = getelementptr inbounds %struct.deadline_data, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @deadline_dispatch2_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr [3 x %struct.dd_per_prio], ptr %5, i32 0, i32 2
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__UNIQUE_ID_alias325, !1, !"__UNIQUE_ID_alias325", i1 false, i1 false}
!1 = !{!"../block/mq-deadline.c", i32 1155, i32 1}
!2 = !{ptr @__initcall__kmod_mq_deadline__326_1167_deadline_init6, !3, !"__initcall__kmod_mq_deadline__326_1167_deadline_init6", i1 false, i1 false}
!3 = !{!"../block/mq-deadline.c", i32 1167, i32 1}
!4 = !{ptr @__exitcall_deadline_exit, !5, !"__exitcall_deadline_exit", i1 false, i1 false}
!5 = !{!"../block/mq-deadline.c", i32 1168, i32 1}
!6 = !{ptr @__UNIQUE_ID_author327, !7, !"__UNIQUE_ID_author327", i1 false, i1 false}
!7 = !{!"../block/mq-deadline.c", i32 1170, i32 1}
!8 = !{ptr @__UNIQUE_ID_file328, !9, !"__UNIQUE_ID_file328", i1 false, i1 false}
!9 = !{!"../block/mq-deadline.c", i32 1171, i32 1}
!10 = !{ptr @__UNIQUE_ID_license329, !9, !"__UNIQUE_ID_license329", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description330, !12, !"__UNIQUE_ID_description330", i1 false, i1 false}
!12 = !{!"../block/mq-deadline.c", i32 1172, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../block/mq-deadline.c", i32 1150, i32 19}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../block/mq-deadline.c", i32 1151, i32 20}
!17 = !{ptr @mq_deadline, !18, !"mq_deadline", i1 false, i1 false}
!18 = !{!"../block/mq-deadline.c", i32 1126, i32 29}
!19 = !{ptr @dd_init_sched.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../block/mq-deadline.c", i32 642, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dd_init_sched.__key.3, !23, !"__key", i1 false, i1 false}
!23 = !{!"../block/mq-deadline.c", i32 643, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../block/mq-deadline.c", i32 590, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../block/mq-deadline.c", i32 591, i32 3}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../block/mq-deadline.c", i32 597, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ioprio_class_to_prio, !34, !"ioprio_class_to_prio", i1 false, i1 false}
!34 = !{!"../block/mq-deadline.c", i32 111, i32 27}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/trace/events/block.h", i32 190, i32 1}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!39 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../block/mq-deadline.c", i32 908, i32 2}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../block/mq-deadline.c", i32 909, i32 2}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../block/mq-deadline.c", i32 910, i32 2}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../block/mq-deadline.c", i32 911, i32 2}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../block/mq-deadline.c", i32 912, i32 2}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../block/mq-deadline.c", i32 913, i32 2}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../block/mq-deadline.c", i32 914, i32 2}
!57 = !{ptr @deadline_attrs, !58, !"deadline_attrs", i1 false, i1 false}
!58 = !{!"../block/mq-deadline.c", i32 907, i32 28}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../block/mq-deadline.c", i32 863, i32 1}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../block/mq-deadline.c", i32 1101, i32 2}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../block/mq-deadline.c", i32 1102, i32 2}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../block/mq-deadline.c", i32 1103, i32 2}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../block/mq-deadline.c", i32 1104, i32 2}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../block/mq-deadline.c", i32 1105, i32 2}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../block/mq-deadline.c", i32 1106, i32 2}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../block/mq-deadline.c", i32 1107, i32 2}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../block/mq-deadline.c", i32 1108, i32 2}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../block/mq-deadline.c", i32 1109, i32 2}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../block/mq-deadline.c", i32 1110, i32 2}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../block/mq-deadline.c", i32 1111, i32 2}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../block/mq-deadline.c", i32 1112, i32 2}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../block/mq-deadline.c", i32 1113, i32 3}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../block/mq-deadline.c", i32 1114, i32 3}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../block/mq-deadline.c", i32 1116, i32 3}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../block/mq-deadline.c", i32 1117, i32 3}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../block/mq-deadline.c", i32 1118, i32 3}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../block/mq-deadline.c", i32 1119, i32 3}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../block/mq-deadline.c", i32 1120, i32 3}
!99 = !{ptr @deadline_queue_debugfs_attrs, !100, !"deadline_queue_debugfs_attrs", i1 false, i1 false}
!100 = !{!"../block/mq-deadline.c", i32 1100, i32 41}
!101 = !{ptr @deadline_read0_fifo_seq_ops, !102, !"deadline_read0_fifo_seq_ops", i1 false, i1 false}
!102 = !{!"../block/mq-deadline.c", i32 971, i32 1}
!103 = !{ptr @deadline_write0_fifo_seq_ops, !104, !"deadline_write0_fifo_seq_ops", i1 false, i1 false}
!104 = !{!"../block/mq-deadline.c", i32 972, i32 1}
!105 = !{ptr @deadline_read1_fifo_seq_ops, !106, !"deadline_read1_fifo_seq_ops", i1 false, i1 false}
!106 = !{!"../block/mq-deadline.c", i32 973, i32 1}
!107 = !{ptr @deadline_write1_fifo_seq_ops, !108, !"deadline_write1_fifo_seq_ops", i1 false, i1 false}
!108 = !{!"../block/mq-deadline.c", i32 974, i32 1}
!109 = !{ptr @deadline_read2_fifo_seq_ops, !110, !"deadline_read2_fifo_seq_ops", i1 false, i1 false}
!110 = !{!"../block/mq-deadline.c", i32 975, i32 1}
!111 = !{ptr @deadline_write2_fifo_seq_ops, !112, !"deadline_write2_fifo_seq_ops", i1 false, i1 false}
!112 = !{!"../block/mq-deadline.c", i32 976, i32 1}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../block/mq-deadline.c", i32 984, i32 16}
!115 = !{ptr @deadline_dispatch0_seq_ops, !116, !"deadline_dispatch0_seq_ops", i1 false, i1 false}
!116 = !{!"../block/mq-deadline.c", i32 1090, i32 1}
!117 = !{ptr @deadline_dispatch1_seq_ops, !118, !"deadline_dispatch1_seq_ops", i1 false, i1 false}
!118 = !{!"../block/mq-deadline.c", i32 1091, i32 1}
!119 = !{ptr @deadline_dispatch2_seq_ops, !120, !"deadline_dispatch2_seq_ops", i1 false, i1 false}
!120 = !{!"../block/mq-deadline.c", i32 1092, i32 1}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../block/mq-deadline.c", i32 1046, i32 16}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2155264598, i64 2155265082, i64 2155264635, i64 2155264691, i64 2155264725, i64 2155264749, i64 2155264790, i64 2155264811, i64 2155264839, i64 2155264873}
!136 = !{i64 2148240162, i64 2148240188, i64 2148240217, i64 2148240251, i64 2148240282, i64 2148240305}
!137 = !{i64 2148959567}
!138 = !{i64 2148721977, i64 2148721982, i64 2148721995, i64 2148722039, i64 2148722073, i64 2148722094}
!139 = !{i64 2154840511}
!140 = !{i64 2154840708}
!141 = !{i64 2149503702}
!142 = !{i64 2149504738}
!143 = !{i64 2155248165, i64 2155248649, i64 2155248202, i64 2155248258, i64 2155248292, i64 2155248316, i64 2155248357, i64 2155248378, i64 2155248406, i64 2155248440}
!144 = !{i64 2155255970, i64 2155256454, i64 2155256007, i64 2155256063, i64 2155256097, i64 2155256121, i64 2155256162, i64 2155256183, i64 2155256211, i64 2155256245}
!145 = !{i32 0, i32 33}
!146 = !{!"auto-init"}
